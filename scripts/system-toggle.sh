#!/usr/bin/env bash
# system-toggle.sh — current.md.paused 토글 + Slack 알림
# 사용:
#   scripts/system-toggle.sh on
#   scripts/system-toggle.sh off [<reason>]
#   scripts/system-toggle.sh status

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CURRENT="$ROOT/current.md"

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

case "$CMD" in
  on)
    if [[ "$(read_paused)" == "false" ]]; then
      echo "[system-toggle] already on"
      exit 0
    fi
    set_paused "false" >/dev/null
    "$ROOT/scripts/slack-notify.sh" system_toggle "🟢 my-prompts ON" "사람이 시스템을 다시 켰습니다." || true
    echo "[system-toggle] turned ON"
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
    case "$(read_paused)" in
      true)  echo "OFF (paused)" ;;
      false) echo "ON" ;;
      *)     echo "UNKNOWN" ;;
    esac
    ;;
  *)
    echo "사용: $0 {on|off [reason]|status}" >&2
    exit 1
    ;;
esac
