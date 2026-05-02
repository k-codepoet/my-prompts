#!/usr/bin/env bash
# system-toggle.sh — current.md.paused 토글 + state/budget.yml.paused_at 동기 해제 + Slack 알림
# 사용:
#   scripts/system-toggle.sh on
#   scripts/system-toggle.sh off [<reason>]
#   scripts/system-toggle.sh status
#
# 주의: tick.sh 의 sanity 는 두 락을 모두 본다 (current.md.paused / budget.paused_at).
# 따라서 ON 명령은 두 락을 모두 풀어야 cron 이 다시 일을 시작한다.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CURRENT="$ROOT/current.md"
BUDGET="$ROOT/state/budget.yml"

if [[ ! -f "$CURRENT" ]]; then
  echo "[system-toggle] current.md 없음 — my-prompts 루트에서 실행하세요." >&2
  exit 1
fi

CMD="${1:-status}"
REASON="${2:-manual}"

read_paused() {
  python3 - "$CURRENT" <<'PY'
import sys, yaml
text = open(sys.argv[1]).read()
if not text.startswith("---"):
    print("?")
    sys.exit()
end = text.find("\n---", 3)
fm = yaml.safe_load(text[3:end]) or {}
print(str(fm.get("paused", False)).lower())
PY
}

set_paused() {
  local val="$1"
  python3 - "$CURRENT" "$val" <<'PY'
import sys, yaml, datetime
path, val = sys.argv[1], sys.argv[2] == "true"
text = open(path).read()
end = text.find("\n---", 3)
fm = yaml.safe_load(text[3:end]) or {}
fm["paused"] = val
fm["last_updated"] = datetime.datetime.now().astimezone().isoformat(timespec="seconds")
new_fm = yaml.safe_dump(fm, allow_unicode=True, sort_keys=False).rstrip()
open(path, "w").write("---\n" + new_fm + "\n---" + text[end+4:])
print("ok")
PY
}

# state/budget.yml.paused_at 박혀 있나? 박혀있으면 'yes (timestamp — reason)' 반환.
read_budget_paused() {
  [[ -f "$BUDGET" ]] || { echo "no"; return; }
  python3 - "$BUDGET" <<'PY'
import sys, yaml
data = yaml.safe_load(open(sys.argv[1])) or {}
state = data.get("state") or {}
pa = state.get("paused_at")
if pa:
    print(f"yes ({pa} — {state.get('pause_reason') or 'no reason'})")
else:
    print("no")
PY
}

# paused_at / pause_reason 만 클리어. 사용량 카운터(*_usd_used)는 보존.
clear_budget_pause() {
  [[ -f "$BUDGET" ]] || return 0
  python3 - "$BUDGET" <<'PY'
import sys, yaml
path = sys.argv[1]
data = yaml.safe_load(open(path)) or {}
state = data.setdefault("state", {})
state["paused_at"] = None
state["pause_reason"] = None
with open(path, "w") as f:
    yaml.safe_dump(data, f, allow_unicode=True, sort_keys=False)
PY
}

case "$CMD" in
  on)
    md_paused="$(read_paused)"
    budget_paused="$(read_budget_paused)"
    if [[ "$md_paused" == "false" && "$budget_paused" == "no" ]]; then
      echo "[system-toggle] already on (md=ok, budget=ok)"
      exit 0
    fi
    [[ "$md_paused" == "true" ]] && set_paused "false" >/dev/null
    [[ "$budget_paused" != "no" ]] && clear_budget_pause
    "$ROOT/scripts/slack-notify.sh" system_toggle "🟢 my-prompts ON" "사람이 시스템을 다시 켰습니다." || true
    echo "[system-toggle] turned ON (md_paused=$md_paused→false, budget_paused=$budget_paused→cleared)"
    ;;
  off)
    if [[ "$(read_paused)" == "true" ]]; then
      echo "[system-toggle] already off"
      exit 0
    fi
    set_paused "true" >/dev/null
    "$ROOT/scripts/slack-notify.sh" system_toggle "🔴 my-prompts OFF" "사유: $REASON" || true
    echo "[system-toggle] turned OFF (reason: $REASON)"
    ;;
  status)
    md="$(read_paused)"
    bp="$(read_budget_paused)"
    case "$md" in
      true)  md_label="OFF (paused)" ;;
      false) md_label="ON" ;;
      *)     md_label="UNKNOWN" ;;
    esac
    if [[ "$bp" == "no" ]]; then
      echo "$md_label"
    else
      echo "OFF (budget paused: $bp)"
    fi
    ;;
  *)
    echo "사용: $0 {on|off [reason]|status}" >&2
    exit 1
    ;;
esac
