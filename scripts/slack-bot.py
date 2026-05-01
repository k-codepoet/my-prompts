#!/usr/bin/env python3
"""
slack-bot.py — Slack HITL bridge for my-prompts.
Socket Mode bot. Slash command /myprompts + interactive buttons.
Ground truth = decisions/<state>/D-*.yml. Slack 은 UI surface 에 불과.

실행:
    .venv/bin/python scripts/slack-bot.py
또는 systemd 유닛 (slack-app/slack-bot.service) 사용.
"""

import datetime
import fcntl
import glob
import json
import os
import re
import subprocess
import sys
from pathlib import Path

import yaml
from slack_bolt import App
from slack_bolt.adapter.socket_mode import SocketModeHandler

ROOT = Path(__file__).resolve().parent.parent
STATE_FILE = ROOT / "state" / "slack-app.yml"


def load_tokens():
    if not STATE_FILE.exists():
        sys.exit(f"ERROR: {STATE_FILE} missing")
    cfg = yaml.safe_load(STATE_FILE.read_text()) or {}
    bot = cfg.get("bot_token")
    app_t = cfg.get("app_token")
    sig = cfg.get("signing_secret")
    if not bot or not app_t:
        sys.exit("ERROR: bot_token / app_token not set in state/slack-app.yml")
    return cfg, bot, app_t, sig


CFG, BOT_TOKEN, APP_TOKEN, SIGNING_SECRET = load_tokens()
app = App(token=BOT_TOKEN, signing_secret=SIGNING_SECRET)


# ──────────────────────────────────────────────────────────
# File helpers (locked)
# ──────────────────────────────────────────────────────────
def read_yaml(path):
    with open(path) as f:
        fcntl.flock(f.fileno(), fcntl.LOCK_SH)
        try:
            return yaml.safe_load(f) or {}
        finally:
            fcntl.flock(f.fileno(), fcntl.LOCK_UN)


def write_yaml(path, data):
    with open(path, "r+") as f:
        fcntl.flock(f.fileno(), fcntl.LOCK_EX)
        try:
            f.seek(0)
            f.truncate()
            yaml.safe_dump(data, f, sort_keys=False, allow_unicode=True)
        finally:
            fcntl.flock(f.fileno(), fcntl.LOCK_UN)


def now_iso():
    return datetime.datetime.now(datetime.timezone.utc).isoformat(timespec="seconds")


def list_open():
    return sorted(glob.glob(str(ROOT / "decisions" / "open" / "D-*.yml")))


def open_decision_path(did):
    p = ROOT / "decisions" / "open" / f"{did}.yml"
    return p if p.exists() else None


def run_script(rel, *args):
    res = subprocess.run(
        [str(ROOT / rel), *args],
        capture_output=True, text=True, cwd=str(ROOT),
    )
    return res.stdout + (("\n[stderr] " + res.stderr) if res.stderr else "")


def truncate(s, n=120):
    s = (s or "").strip()
    return s if len(s) <= n else s[: n - 1] + "…"


def parse_current_md():
    p = ROOT / "current.md"
    if not p.exists():
        return {}
    text = p.read_text()
    if not text.startswith("---"):
        return {}
    end = text.find("\n---", 3)
    return yaml.safe_load(text[3:end]) or {}


# ──────────────────────────────────────────────────────────
# Slash command
# ──────────────────────────────────────────────────────────
@app.command("/myprompts")
def handle_command(ack, command, respond):
    ack()
    text = (command.get("text") or "").strip()
    parts = text.split(maxsplit=1)
    sub = parts[0] if parts else "help"
    rest = parts[1] if len(parts) > 1 else ""

    handlers = {
        "list": lambda: cmd_list(respond),
        "decide": lambda: cmd_decide(respond, rest),
        "pause": lambda: cmd_pause(respond, rest),
        "resume": lambda: cmd_resume(respond),
        "status": lambda: cmd_status(respond),
        "help": lambda: cmd_help(respond),
        "": lambda: cmd_help(respond),
    }
    handler = handlers.get(sub)
    if handler:
        handler()
    else:
        respond(f"Unknown subcommand: `{sub}`. Try `/myprompts help`.")


def cmd_help(respond):
    respond(
        text=(
            "*my-prompts commands*\n"
            "• `/myprompts list` — open 결정 목록 + 버튼\n"
            "• `/myprompts decide D-id key=value [key=value ...]` — 응답 수동 채움\n"
            "• `/myprompts pause [reason]` — 시스템 OFF\n"
            "• `/myprompts resume` — 시스템 ON\n"
            "• `/myprompts status` — gen/cycle/usage 1줄 요약\n"
        )
    )


def cmd_list(respond):
    files = list_open()
    if not files:
        respond(text="📭 open 결정 없음.")
        return

    blocks = [
        {"type": "header",
         "text": {"type": "plain_text", "text": f"🟡 {len(files)} open decision(s)"}},
    ]

    for path in files:
        d = read_yaml(path)
        did = d.get("id", Path(path).stem)
        dtype = d.get("type", "?")
        title = truncate(d.get("title", "(no title)"), 200)
        rec = d.get("recommended") or {}

        rec_text = ""
        if isinstance(rec, dict) and rec:
            rec_pairs = [f"`{k}={v}`" for k, v in rec.items() if k != "reason_orgs" and k != "reason_world" and "reason" not in k]
            if rec_pairs:
                rec_text = "\n*추천*: " + ", ".join(rec_pairs)
        elif rec:
            rec_text = f"\n*추천*: `{rec}`"

        blocks.append({
            "type": "section",
            "text": {"type": "mrkdwn",
                     "text": f"*{did}* · Type {dtype}\n{title}{rec_text}"},
        })

        # Type-specific buttons
        if dtype == "A":
            blocks.append({
                "type": "actions",
                "elements": [
                    button_for(did, "yes", "✅ Go", style="primary"),
                    button_for(did, "no", "❌ No-Go", style="danger"),
                    button_for(did, "hold", "⏸ Hold"),
                ],
            })
        elif dtype == "B":
            opts = d.get("options") or []
            elements = []
            for opt in opts[:5]:                          # Slack 한 row 최대 5
                oid = opt.get("id", "?")
                summary = truncate(opt.get("summary", ""), 30)
                elements.append(button_for(did, oid, f"{oid}: {summary}"))
            blocks.append({"type": "actions", "elements": elements})
        elif dtype == "C":
            # Type C 는 자유 형식 — orgs / world 등 다중 필드.
            # 버튼으로는 cmd_decide 사용을 안내.
            blocks.append({
                "type": "context",
                "elements": [
                    {"type": "mrkdwn",
                     "text": ("Type C — 다중 필드. `/myprompts decide " + did +
                              " key=value ...` 로 응답하거나, repo 의 yml 직접 편집.")},
                ],
            })

        blocks.append({"type": "divider"})

    respond(blocks=blocks, response_type="ephemeral", text=f"{len(files)} open decision(s)")


def button_for(did, picked, label, style=None):
    el = {
        "type": "button",
        "text": {"type": "plain_text", "text": label},
        "action_id": f"decide_{did}_{picked}",
        "value": json.dumps({"id": did, "picked": picked}),
    }
    if style:
        el["style"] = style
    return el


def cmd_decide(respond, args):
    parts = args.split()
    if len(parts) < 2:
        respond(text="사용: `/myprompts decide D-id key=value [key=value ...]`")
        return

    did = parts[0]
    kvs = {}
    for p in parts[1:]:
        if "=" not in p:
            respond(text=f"잘못된 인자: `{p}` — `key=value` 형식 필요")
            return
        k, v = p.split("=", 1)
        # value 가 그냥 숫자면 정수로
        if v.isdigit():
            v = int(v)
        kvs[k] = v

    path = open_decision_path(did)
    if not path:
        respond(text=f"❌ `decisions/open/{did}.yml` 없음.")
        return

    try:
        d = read_yaml(path)
        d.setdefault("response", {})
        d["response"]["decided_at"] = now_iso()
        for k, v in kvs.items():
            d["response"][k] = v
        write_yaml(path, d)
        respond(text=f"✅ `{did}` 응답 기록. 필드: `{list(kvs.keys())}`\n_apply 단계는 `apply-decisions.sh` 작성 전까진 수동._")
    except Exception as e:
        respond(text=f"❌ {type(e).__name__}: {e}")


def cmd_pause(respond, reason):
    out = run_script("scripts/system-toggle.sh", "off", reason or "via Slack")
    respond(text=f"```\n{out.strip()}\n```")


def cmd_resume(respond):
    out = run_script("scripts/system-toggle.sh", "on")
    respond(text=f"```\n{out.strip()}\n```")


def cmd_status(respond):
    sys_state = run_script("scripts/system-toggle.sh", "status").strip()
    budget = run_script("scripts/usage-budget.sh", "status").strip()
    cur = parse_current_md()

    text = (
        f"*System*: {sys_state}\n"
        f"*Active*: gen=`{cur.get('gen')}` cycle=`{cur.get('cycle')}` "
        f"tick=`{cur.get('tick')}` open=`{cur.get('active_decisions') or []}`\n"
        f"*Budget*:\n```\n{budget}\n```"
    )
    respond(text=text)


# ──────────────────────────────────────────────────────────
# Button handler
# ──────────────────────────────────────────────────────────
@app.action(re.compile(r"^decide_.+"))
def handle_decide_button(ack, body, respond):
    ack()
    try:
        action = body["actions"][0]
        value = json.loads(action["value"])
        did = value["id"]
        picked = value["picked"]

        path = open_decision_path(did)
        if not path:
            respond(text=f"❌ `decisions/open/{did}.yml` 없음.", response_type="ephemeral")
            return

        d = read_yaml(path)
        d.setdefault("response", {})
        d["response"]["decided_at"] = now_iso()
        d["response"]["picked"] = picked
        write_yaml(path, d)

        user = body.get("user", {}).get("name", "unknown")
        respond(
            text=f"✅ `{did}` → picked: `{picked}` ({user})\n_apply 단계는 수동._",
            response_type="ephemeral",
        )
    except Exception as e:
        respond(text=f"❌ {type(e).__name__}: {e}", response_type="ephemeral")


# ──────────────────────────────────────────────────────────
# App mention — 가벼운 안내
# ──────────────────────────────────────────────────────────
@app.event("app_mention")
def handle_mention(event, say):
    say(channel=event["channel"], text="`/myprompts help` — 명령 목록")


# ──────────────────────────────────────────────────────────
# Main
# ──────────────────────────────────────────────────────────
if __name__ == "__main__":
    print(f"my-prompts bot starting (app_id={CFG.get('app_id')}) — press Ctrl+C to stop")
    handler = SocketModeHandler(app, APP_TOKEN)
    handler.start()
