#!/usr/bin/env bash
# usage-budget.sh — 본 시스템의 cron 자체 사용량 추적 + 임계 도달 시 자동 OFF
#
# 주의: claude CLI 가 plan-level 사용량(43% 같은 수치)을 노출하지 않으므로,
# 본 스크립트는 *우리 시스템이 발생시킨* claude -p 호출의 누적량만 본다.
# 사용자 인터랙티브 사용량은 별도 — 사람이 직접 모니터링해야 함.
#
# 사용:
#   scripts/usage-budget.sh check                  # cron 마다 호출. 임계 평가 + 리셋.
#   scripts/usage-budget.sh add <usd> [model]      # tick 1 회분 비용 누적.
#   scripts/usage-budget.sh status                 # 현재 사용률 출력.
#   scripts/usage-budget.sh reset {session|weekly} # 강제 리셋 (디버그용).

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUDGET="$ROOT/state/budget.yml"

if [[ ! -f "$BUDGET" ]]; then
  echo "[usage-budget] state/budget.yml 없음 — .example 을 복사한 뒤 다시 시도." >&2
  exit 1
fi

CMD="${1:-check}"

run_python() {
  python3 - "$BUDGET" "$ROOT" "$@" <<'PY'
import sys, yaml, datetime, os, subprocess, pathlib
from datetime import datetime as dt, timezone, timedelta

KST = timezone(timedelta(hours=9))
BUDGET_PATH = sys.argv[1]
ROOT = sys.argv[2]
CMD = sys.argv[3]
ARGS = sys.argv[4:]

def load():
    with open(BUDGET_PATH) as f:
        return yaml.safe_load(f) or {}

def save(data):
    with open(BUDGET_PATH, "w") as f:
        yaml.safe_dump(data, f, allow_unicode=True, sort_keys=False)

def now_iso():
    return dt.now(KST).isoformat(timespec="seconds")

def parse_iso(s):
    if not s: return None
    return dt.fromisoformat(s)

def last_saturday_10am_kst(now):
    # 가장 최근 토요일 10:00 KST. 토요일이면 오늘 10:00, 그 외엔 직전 토.
    days_back = (now.weekday() - 5) % 7
    base = (now - timedelta(days=days_back)).replace(hour=10, minute=0, second=0, microsecond=0)
    if days_back == 0 and now < base:
        base -= timedelta(days=7)
    return base

def maybe_reset(data):
    s = data.setdefault("state", {})
    now = dt.now(KST)
    changed = []
    # 세션 리셋 (5h 롤링)
    started = parse_iso(s.get("session_started_at"))
    if not started or (now - started) > timedelta(hours=5):
        s["session_started_at"] = now_iso()
        s["session_usd_used"] = 0.0
        data.setdefault("tick_count", {})["session"] = 0
        changed.append("session")
    # 주간 리셋 (토요일 10:00 KST)
    last_sat = last_saturday_10am_kst(now)
    started_w = parse_iso(s.get("weekly_started_at"))
    if not started_w or started_w < last_sat:
        s["weekly_started_at"] = last_sat.isoformat(timespec="seconds")
        s["weekly_all_usd_used"] = 0.0
        s["weekly_sonnet_usd_used"] = 0.0
        data.setdefault("tick_count", {})["weekly"] = 0
        changed.append("weekly")
    s["last_check_at"] = now_iso()
    return changed

def score(data):
    s = data["state"]
    L = data["limits"]
    return {
        "session": (s["session_usd_used"] / L["session_5h_usd"]) if L["session_5h_usd"] else 0,
        "weekly_all": (s["weekly_all_usd_used"] / L["weekly_all_usd"]) if L["weekly_all_usd"] else 0,
        "weekly_sonnet": (s["weekly_sonnet_usd_used"] / L["weekly_sonnet_usd"]) if L["weekly_sonnet_usd"] else 0,
    }

def slack(trigger, title, body=""):
    try:
        subprocess.run(
            [os.path.join(ROOT, "scripts/slack-notify.sh"), trigger, title, body],
            check=False, timeout=10
        )
    except Exception as e:
        print(f"[usage-budget] slack failed: {e}", file=sys.stderr)

def toggle_off(reason):
    subprocess.run(
        [os.path.join(ROOT, "scripts/system-toggle.sh"), "off", reason],
        check=False, timeout=10
    )

if CMD == "check":
    data = load()
    resets = maybe_reset(data)
    sc = score(data)
    th = data["thresholds"]
    save(data)
    msg = f"session={sc['session']*100:.1f}% weekly_all={sc['weekly_all']*100:.1f}% weekly_sonnet={sc['weekly_sonnet']*100:.1f}%"
    print(msg)
    if resets:
        print(f"[usage-budget] reset: {', '.join(resets)}")
    # Pause 임계
    worst = max(sc.values())
    s = data["state"]
    last_warn = parse_iso(s.get("last_warn_sent_at"))
    if worst >= th["pause"]:
        if not s.get("paused_at"):
            data["state"]["paused_at"] = now_iso()
            data["state"]["pause_reason"] = f"usage {worst*100:.1f}% >= pause threshold"
            save(data)
            toggle_off(f"usage {worst*100:.1f}%")
            slack("budget_pause", "🔴 my-prompts OFF — 사용량 임계 도달", msg)
    elif worst >= th["warn"]:
        # 같은 윈도우에 중복 알림 방지 — 1h 쿨다운
        now = dt.now(KST)
        if not last_warn or (now - last_warn) > timedelta(hours=1):
            data["state"]["last_warn_sent_at"] = now_iso()
            save(data)
            slack("budget_warn", "⚠️ my-prompts 사용량 70% 경고", msg)
    sys.exit(0)

if CMD == "add":
    if len(ARGS) < 1:
        print("usage: add <usd> [sonnet|all]", file=sys.stderr); sys.exit(1)
    cost = float(ARGS[0])
    model_tag = ARGS[1] if len(ARGS) >= 2 else "all"
    data = load()
    maybe_reset(data)
    s = data["state"]
    s["session_usd_used"] = round(s.get("session_usd_used", 0) + cost, 4)
    s["weekly_all_usd_used"] = round(s.get("weekly_all_usd_used", 0) + cost, 4)
    if model_tag == "sonnet":
        s["weekly_sonnet_usd_used"] = round(s.get("weekly_sonnet_usd_used", 0) + cost, 4)
    tc = data.setdefault("tick_count", {})
    tc["session"] = tc.get("session", 0) + 1
    tc["weekly"] = tc.get("weekly", 0) + 1
    save(data)
    print(f"[usage-budget] +${cost:.4f} ({model_tag}) → session=${s['session_usd_used']} weekly=${s['weekly_all_usd_used']}")
    sys.exit(0)

if CMD == "status":
    data = load()
    sc = score(data)
    s = data["state"]
    print(f"session: ${s.get('session_usd_used',0):.2f} / ${data['limits']['session_5h_usd']} ({sc['session']*100:.1f}%)")
    print(f"weekly:  ${s.get('weekly_all_usd_used',0):.2f} / ${data['limits']['weekly_all_usd']} ({sc['weekly_all']*100:.1f}%)")
    print(f"sonnet:  ${s.get('weekly_sonnet_usd_used',0):.2f} / ${data['limits']['weekly_sonnet_usd']} ({sc['weekly_sonnet']*100:.1f}%)")
    print(f"paused:  {s.get('paused_at') or 'no'}")
    sys.exit(0)

if CMD == "reset":
    target = ARGS[0] if ARGS else "session"
    data = load()
    s = data["state"]
    if target == "session":
        s["session_started_at"] = now_iso()
        s["session_usd_used"] = 0.0
        data.setdefault("tick_count", {})["session"] = 0
    elif target == "weekly":
        s["weekly_started_at"] = last_saturday_10am_kst(dt.now(KST)).isoformat(timespec="seconds")
        s["weekly_all_usd_used"] = 0.0
        s["weekly_sonnet_usd_used"] = 0.0
        data.setdefault("tick_count", {})["weekly"] = 0
    else:
        print(f"unknown target: {target}", file=sys.stderr); sys.exit(1)
    save(data)
    print(f"[usage-budget] reset {target}")
    sys.exit(0)

print(f"unknown command: {CMD}", file=sys.stderr)
sys.exit(1)
PY
}

run_python "$@"
