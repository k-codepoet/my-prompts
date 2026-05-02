#!/usr/bin/env bash
# usage-budget.sh — 사용량 추적 + 임계 도달 시 자동 OFF
#
# 1차 소스: ccusage blocks --active --offline --json (5h billing block).
#          사용자 인터랙티브 + cron 모두 합산된 진짜 사용량.
# Fallback: 본 스크립트가 누적한 보수 추정값 (claude -p 성공할 때 per_tick_usd 박음).
#
# 사용:
#   scripts/usage-budget.sh check                  # cron 마다 호출. ccusage 갱신 + 임계 평가.
#   scripts/usage-budget.sh add <usd> [model]      # tick 1 회분 비용 누적 (fallback 카운터).
#   scripts/usage-budget.sh status                 # 현재 사용률 출력 (live + fallback 둘 다).
#   scripts/usage-budget.sh reset {session|weekly} # 강제 리셋 (디버그용).
#
# 환경:
#   NPX_BIN  — npx 절대경로 (default: PATH 에서 npx). cron 환경에서 PATH 설정 필요.

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
import sys, yaml, datetime, os, subprocess, pathlib, json, shutil
from datetime import datetime as dt, timezone, timedelta

KST = timezone(timedelta(hours=9))
BUDGET_PATH = sys.argv[1]
ROOT = sys.argv[2]
CMD = sys.argv[3]
ARGS = sys.argv[4:]

# ──────────────────────────────────────────────────────────
# ccusage 통합 (1차 소스) — 실패 시 graceful fallback to self-counter.
# ──────────────────────────────────────────────────────────
NPX = os.environ.get("NPX_BIN") or shutil.which("npx")
LIVE_FRESH_MIN = 15  # live_updated_at 이 이 분(min) 이내면 fresh = 1차 소스 사용.

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

def fetch_ccusage_active_block():
    """ccusage 호출. 실패 / npx 없음 / 타임아웃 시 None."""
    if not NPX:
        return None
    try:
        result = subprocess.run(
            [NPX, "-y", "ccusage@latest", "blocks", "--active", "--offline", "--json"],
            capture_output=True, text=True, timeout=15,
        )
        if result.returncode != 0:
            return None
        data = json.loads(result.stdout or "{}")
        blocks = data.get("blocks") or []
        return blocks[0] if blocks else None
    except Exception:
        return None

def update_live(data):
    """budget.yml.state 의 live_* 필드 갱신. 성공 시 True."""
    blk = fetch_ccusage_active_block()
    s = data.setdefault("state", {})
    if blk is None:
        s["live_source"] = None
        return False
    s["live_block_id"] = blk.get("id")
    s["live_block_start"] = blk.get("startTime")
    s["live_block_end"] = blk.get("endTime")
    s["live_block_cost_usd"] = round(float(blk.get("costUSD", 0) or 0), 4)
    burn = blk.get("burnRate") or {}
    s["live_burn_rate_usd_per_hour"] = round(float(burn.get("costPerHour", 0) or 0), 4)
    proj = blk.get("projection") or {}
    s["live_projected_block_cost_usd"] = round(float(proj.get("totalCost", 0) or 0), 4)
    s["live_updated_at"] = now_iso()
    s["live_source"] = "ccusage"
    return True

def live_session_usd_if_fresh(data):
    """live_block_cost_usd 가 fresh 면 그 값, 아니면 None."""
    s = data.get("state") or {}
    cost = s.get("live_block_cost_usd")
    upd = s.get("live_updated_at")
    if cost is None or not upd:
        return None
    try:
        u = dt.fromisoformat(upd)
        if (dt.now(KST) - u) > timedelta(minutes=LIVE_FRESH_MIN):
            return None
    except Exception:
        return None
    return float(cost)

def score(data):
    """session 은 live(fresh) 우선 + self counter 와 max. weekly 는 self 만 (ccusage weekly 는 v2)."""
    s = data["state"]
    L = data["limits"]
    self_session = s.get("session_usd_used", 0) or 0
    live_session = live_session_usd_if_fresh(data)
    effective_session = max(self_session, live_session) if live_session is not None else self_session
    return {
        "session": (effective_session / L["session_5h_usd"]) if L["session_5h_usd"] else 0,
        "weekly_all": (s["weekly_all_usd_used"] / L["weekly_all_usd"]) if L["weekly_all_usd"] else 0,
        "weekly_sonnet": (s["weekly_sonnet_usd_used"] / L["weekly_sonnet_usd"]) if L["weekly_sonnet_usd"] else 0,
        "_session_self": self_session,
        "_session_live": live_session,
        "_session_effective": effective_session,
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
    update_live(data)  # best-effort; ccusage 실패 시 live_source = None.
    sc = score(data)
    th = data["thresholds"]
    save(data)
    src = (data.get("state") or {}).get("live_source") or "self"
    msg = (
        f"session={sc['session']*100:.1f}% (src={src}, "
        f"self=${sc['_session_self']:.2f}"
        + (f", live=${sc['_session_live']:.2f}" if sc['_session_live'] is not None else "")
        + f") weekly_all={sc['weekly_all']*100:.1f}% weekly_sonnet={sc['weekly_sonnet']*100:.1f}%"
    )
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
    L = data["limits"]
    src = s.get("live_source")
    eff = sc["_session_effective"]
    self_s = sc["_session_self"]
    live_s = sc["_session_live"]
    if src == "ccusage" and live_s is not None:
        print(f"session: ${eff:.2f} / ${L['session_5h_usd']} ({sc['session']*100:.1f}%) [src=ccusage live, self=${self_s:.2f}]")
        burn = s.get("live_burn_rate_usd_per_hour")
        proj = s.get("live_projected_block_cost_usd")
        end = s.get("live_block_end")
        if burn is not None:
            print(f"  burn:    ${burn:.2f}/h, projected block end ${proj:.2f}, ends {end}")
    else:
        # live stale or 없음 → fallback
        stale = bool(s.get("live_updated_at")) and live_s is None
        suffix = " [src=self, ccusage stale]" if stale else " [src=self, no ccusage]"
        print(f"session: ${self_s:.2f} / ${L['session_5h_usd']} ({sc['session']*100:.1f}%){suffix}")
    print(f"weekly:  ${s.get('weekly_all_usd_used',0):.2f} / ${L['weekly_all_usd']} ({sc['weekly_all']*100:.1f}%) [self counter — ccusage weekly v2]")
    print(f"sonnet:  ${s.get('weekly_sonnet_usd_used',0):.2f} / ${L['weekly_sonnet_usd']} ({sc['weekly_sonnet']*100:.1f}%)")
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
