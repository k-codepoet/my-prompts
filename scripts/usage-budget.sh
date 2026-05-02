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
# 사용량 소스 우선순위:
#   1) ccstatusline cache (~/.cache/ccstatusline/usage.json) — Anthropic 한도 % 직접.
#      'Max 20x' 플랜의 진짜 5h 세션 / 7일 주간 utilization 을 그대로 노출.
#   2) ccusage USD (보조) — burn rate, projected block cost 같은 부수 표시용.
#   3) self counter — 둘 다 실패 시 fallback (per_tick_usd 보수 추정).
# 임계 평가는 ccstatusline % 가 fresh 면 그것, 아니면 USD/limit 비율.
# ──────────────────────────────────────────────────────────
NPX = os.environ.get("NPX_BIN") or shutil.which("npx")
LIVE_FRESH_MIN = 15  # live_*_updated_at 이 이 분(min) 이내면 fresh = 1차 소스 사용.
CCSTATUSLINE_CACHE = os.path.expanduser("~/.cache/ccstatusline/usage.json")
CCSTATUSLINE_CACHE_STALE_SEC = 240  # 4 분 — 5 분 cron 직전에 갱신 트리거.

def read_ccstatusline_cache():
    """~/.cache/ccstatusline/usage.json 읽기. 없거나 invalid 면 None."""
    try:
        with open(CCSTATUSLINE_CACHE) as f:
            return json.load(f)
    except Exception:
        return None

def trigger_ccstatusline_refresh():
    """ccstatusline 호출해서 cache 갱신. statusline 도구라 stdin 에 dummy hook payload 필요.
    실패해도 무시 (best effort)."""
    if not NPX:
        return False
    try:
        dummy = json.dumps({
            "transcript_path": "/dev/null",
            "model": {"display_name": "opus"},
            "workspace": {"current_dir": "/tmp"},
            "session_id": "my-prompts-budget-check",
        })
        subprocess.run(
            [NPX, "-y", "ccstatusline@latest"],
            input=dummy, capture_output=True, text=True, timeout=15,
        )
        return True
    except Exception:
        return False

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
    """ccusage 활성 5h block. 실패 / npx 없음 / 타임아웃 시 None."""
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

def fetch_ccusage_total_since(start_iso):
    """ccusage daily --since YYYYMMDD 로 [start_iso, now] 구간 totalCost 합계.
    weekly_started_at(토요일 10:00 KST) 부터 오늘까지를 우리 'weekly' 로 본다."""
    if not NPX or not start_iso:
        return None
    try:
        start = dt.fromisoformat(start_iso)
    except Exception:
        return None
    since = start.strftime("%Y%m%d")
    try:
        result = subprocess.run(
            [NPX, "-y", "ccusage@latest", "daily", "--since", since, "--offline", "--json"],
            capture_output=True, text=True, timeout=15,
        )
        if result.returncode != 0:
            return None
        data = json.loads(result.stdout or "{}")
        days = data.get("daily") or []
        return sum(float(d.get("totalCost", 0) or 0) for d in days)
    except Exception:
        return None

def update_live(data):
    """state 의 live_* 필드 갱신.
    1) ccstatusline cache 가 stale 이면 refresh 트리거 → cache 읽기 → live_*_pct 박음.
    2) ccusage 부수 데이터 (burn rate / projected / weekly USD) → 보조 표시용 박음.
    부분 성공 시에도 True. 어떤 것도 못 박으면 False."""
    s = data.setdefault("state", {})

    # ── (1) ccstatusline pct (1차 소스) ──────────────────────
    cache_age_sec = float("inf")
    if os.path.exists(CCSTATUSLINE_CACHE):
        try:
            cache_age_sec = dt.now().timestamp() - os.path.getmtime(CCSTATUSLINE_CACHE)
        except Exception:
            pass
    if cache_age_sec > CCSTATUSLINE_CACHE_STALE_SEC:
        trigger_ccstatusline_refresh()
    pct_data = read_ccstatusline_cache()
    pct_ok = False
    if pct_data and pct_data.get("sessionUsage") is not None:
        s["live_session_pct"] = float(pct_data.get("sessionUsage") or 0)
        s["live_session_reset_at"] = pct_data.get("sessionResetAt")
        s["live_weekly_pct"] = float(pct_data.get("weeklyUsage") or 0)
        s["live_weekly_reset_at"] = pct_data.get("weeklyResetAt")
        s["live_pct_updated_at"] = now_iso()
        s["live_pct_source"] = "ccstatusline"
        pct_ok = True
    else:
        s["live_pct_source"] = None

    # ── (2) ccusage USD (보조 — burn rate, projected, weekly fallback) ──
    blk = fetch_ccusage_active_block()
    weekly_total = fetch_ccusage_total_since(s.get("weekly_started_at"))
    usd_ok = False
    if blk is not None:
        s["live_block_id"] = blk.get("id")
        s["live_block_start"] = blk.get("startTime")
        s["live_block_end"] = blk.get("endTime")
        s["live_block_cost_usd"] = round(float(blk.get("costUSD", 0) or 0), 4)
        burn = blk.get("burnRate") or {}
        s["live_burn_rate_usd_per_hour"] = round(float(burn.get("costPerHour", 0) or 0), 4)
        proj = blk.get("projection") or {}
        s["live_projected_block_cost_usd"] = round(float(proj.get("totalCost", 0) or 0), 4)
        usd_ok = True
    if weekly_total is not None:
        s["live_weekly_all_usd"] = round(weekly_total, 4)
        usd_ok = True
    if usd_ok:
        s["live_updated_at"] = now_iso()
        s["live_source"] = "ccusage"
    else:
        s["live_source"] = None

    return pct_ok or usd_ok

def _live_field_if_fresh(data, key):
    s = data.get("state") or {}
    val = s.get(key)
    upd = s.get("live_updated_at")
    if val is None or not upd:
        return None
    try:
        u = dt.fromisoformat(upd)
        if (dt.now(KST) - u) > timedelta(minutes=LIVE_FRESH_MIN):
            return None
    except Exception:
        return None
    return float(val)

def live_session_usd_if_fresh(data):
    return _live_field_if_fresh(data, "live_block_cost_usd")

def live_weekly_usd_if_fresh(data):
    return _live_field_if_fresh(data, "live_weekly_all_usd")

def _is_pct_fresh(s):
    upd = s.get("live_pct_updated_at")
    if not upd:
        return False
    try:
        u = dt.fromisoformat(upd)
        return (dt.now(KST) - u) <= timedelta(minutes=LIVE_FRESH_MIN)
    except Exception:
        return False

def score(data):
    """1차: ccstatusline 한도 % (Anthropic 플랜 진짜 utilization).
    Fallback: ccusage USD / limit 또는 self counter / limit.
    sc['src'] 가 'ccstatusline' / 'ccusage' / 'self' 중 하나로 출처를 명시."""
    s = data["state"]
    L = data["limits"]

    # 보조 USD 데이터 (표시 + fallback)
    self_session = float(s.get("session_usd_used", 0) or 0)
    live_session_usd = live_session_usd_if_fresh(data)
    eff_session_usd = max(self_session, live_session_usd) if live_session_usd is not None else self_session
    self_weekly = float(s.get("weekly_all_usd_used", 0) or 0)
    live_weekly_usd = live_weekly_usd_if_fresh(data)
    eff_weekly_usd = max(self_weekly, live_weekly_usd) if live_weekly_usd is not None else self_weekly
    self_sonnet = float(s.get("weekly_sonnet_usd_used", 0) or 0)

    # 1차 시도: ccstatusline 한도 %
    if _is_pct_fresh(s) and s.get("live_pct_source") == "ccstatusline":
        sess_pct_raw = float(s.get("live_session_pct") or 0)
        week_pct_raw = float(s.get("live_weekly_pct") or 0)
        return {
            "src": "ccstatusline",
            "pct": {
                "session": sess_pct_raw / 100.0,
                "weekly_all": week_pct_raw / 100.0,
                "weekly_sonnet": (self_sonnet / L["weekly_sonnet_usd"]) if L["weekly_sonnet_usd"] else 0,
            },
            "raw": {
                "session_pct_raw": sess_pct_raw,       # 0..100
                "weekly_pct_raw": week_pct_raw,        # 0..100
                "session_reset_at": s.get("live_session_reset_at"),
                "weekly_reset_at": s.get("live_weekly_reset_at"),
                "session_self_usd": self_session,
                "session_live_usd": live_session_usd,
                "session_eff_usd": eff_session_usd,
                "weekly_self_usd": self_weekly,
                "weekly_live_usd": live_weekly_usd,
                "weekly_eff_usd": eff_weekly_usd,
                "weekly_sonnet_self_usd": self_sonnet,
            },
        }

    # Fallback: USD / limit
    src = "ccusage" if (live_session_usd is not None or live_weekly_usd is not None) else "self"
    return {
        "src": src,
        "pct": {
            "session": (eff_session_usd / L["session_5h_usd"]) if L["session_5h_usd"] else 0,
            "weekly_all": (eff_weekly_usd / L["weekly_all_usd"]) if L["weekly_all_usd"] else 0,
            "weekly_sonnet": (self_sonnet / L["weekly_sonnet_usd"]) if L["weekly_sonnet_usd"] else 0,
        },
        "raw": {
            "session_pct_raw": None,
            "weekly_pct_raw": None,
            "session_reset_at": None,
            "weekly_reset_at": None,
            "session_self_usd": self_session,
            "session_live_usd": live_session_usd,
            "session_eff_usd": eff_session_usd,
            "weekly_self_usd": self_weekly,
            "weekly_live_usd": live_weekly_usd,
            "weekly_eff_usd": eff_weekly_usd,
            "weekly_sonnet_self_usd": self_sonnet,
        },
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
    update_live(data)  # ccstatusline + ccusage 둘 다 best-effort.
    sc = score(data)
    th = data["thresholds"]
    save(data)
    pct, raw = sc["pct"], sc["raw"]
    src = sc["src"]

    msg = (
        f"session={pct['session']*100:.1f}% "
        f"weekly={pct['weekly_all']*100:.1f}% "
        f"sonnet={pct['weekly_sonnet']*100:.1f}% "
        f"src={src}"
    )
    print(msg)
    if resets:
        print(f"[usage-budget] reset: {', '.join(resets)}")
    # 임계 평가 — pct 값만 본다 (raw USD 가 worst 에 새는 버그 방지).
    worst = max(pct.values())
    s = data["state"]
    last_warn = parse_iso(s.get("last_warn_sent_at"))
    if worst >= th["pause"]:
        if not s.get("paused_at"):
            data["state"]["paused_at"] = now_iso()
            data["state"]["pause_reason"] = f"usage {worst*100:.1f}% >= pause threshold"
            save(data)
            toggle_off(f"usage {worst*100:.1f}%")
            slack("budget_pause", "🔴 my-prompts OFF — 사용량 임계 도달", msg)
    elif s.get("paused_at"):
        # 자동 resume — budget side 가 박혀있고 임계 아래로 떨어진 상태.
        # current.md side 도 같이 풀어야 cron 이 다시 동작.
        # SILENT=1 로 호출해 system_toggle 알림 중복 발사 방지 (budget_resume 으로 한 번만).
        old_reason = s.get("pause_reason") or ""
        data["state"]["paused_at"] = None
        data["state"]["pause_reason"] = None
        save(data)
        env = os.environ.copy()
        env["SILENT"] = "1"
        subprocess.run(
            [os.path.join(ROOT, "scripts/system-toggle.sh"), "on"],
            env=env, check=False, timeout=10
        )
        slack(
            "budget_resume",
            "🟢 my-prompts AUTO-RESUME — 사용량 회복",
            f"{msg}\n이전 사유: {old_reason}\nbudget + current.md 양쪽 자동 해제. cron 자동 재개.",
        )
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
    pct, raw = sc["pct"], sc["raw"]
    src = sc["src"]
    pause_pct = data["thresholds"]["pause"] * 100

    def bar(p, w=10):
        n = max(0, min(w, int(round(p * w))))
        return "▓" * n + "░" * (w - n)

    if src == "ccstatusline":
        # 진짜 한도 % — Anthropic 직접.
        sr = raw.get("session_reset_at")
        wr = raw.get("weekly_reset_at")
        print(f"src     : ccstatusline (Anthropic Max plan utilization, pause @ {pause_pct:.0f}%)")
        print(f"session : {pct['session']*100:5.1f}%  [{bar(pct['session'])}]  resets {sr or '?'}")
        print(f"weekly  : {pct['weekly_all']*100:5.1f}%  [{bar(pct['weekly_all'])}]  resets {wr or '?'}")
        # 보조: USD 표시 (있으면)
        eff_usd = raw.get("session_eff_usd")
        if eff_usd is not None:
            burn = s.get("live_burn_rate_usd_per_hour")
            proj = s.get("live_projected_block_cost_usd")
            end = s.get("live_block_end")
            extra = f"  burn ${burn:.2f}/h, projected block ${proj:.2f}" if burn else ""
            print(f"  ccusage: 5h block ${eff_usd:.2f} ends {end}{extra}")
            wk_usd = raw.get("weekly_eff_usd") or 0.0
            print(f"           weekly $ {wk_usd:.2f} (since {s.get('weekly_started_at')})")
    else:
        # Fallback 표시 — USD/limit ratio.
        eff_s = raw["session_eff_usd"]
        eff_w = raw["weekly_eff_usd"]
        print(f"src     : {src} (USD/limit ratio — ccstatusline 미가용)")
        print(f"session : {pct['session']*100:5.1f}%  [{bar(pct['session'])}]  ${eff_s:.2f}/${L['session_5h_usd']}")
        print(f"weekly  : {pct['weekly_all']*100:5.1f}%  [{bar(pct['weekly_all'])}]  ${eff_w:.2f}/${L['weekly_all_usd']}")

    print(f"sonnet  : {pct['weekly_sonnet']*100:5.1f}%  [{bar(pct['weekly_sonnet'])}]")
    print(f"paused  : {s.get('paused_at') or 'no'}")
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
