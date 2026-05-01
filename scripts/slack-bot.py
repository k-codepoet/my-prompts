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
import urllib.error
import urllib.request
from pathlib import Path

import yaml                                                # 단방향 파싱용 (current.md frontmatter 등)
from ruamel.yaml import YAML
from slack_bolt import App
from slack_bolt.adapter.socket_mode import SocketModeHandler

ROOT = Path(__file__).resolve().parent.parent
STATE_FILE = ROOT / "state" / "slack-app.yml"

# decisions/*.yml 은 사람이 손으로 다듬는 ground truth.
# 봇이 일부 필드(response.*) 만 수정하더라도 주석·블록스칼라·정렬을 다 보존해야 함.
# → ruamel.yaml round-trip 모드. PyYAML safe_dump 는 사용 금지.
_rt = YAML(typ="rt")
_rt.preserve_quotes = True
_rt.indent(mapping=2, sequence=4, offset=2)               # 원본 스타일 (`  - id:` 처럼 2-space dash)
_rt.width = 4096                                          # 긴 한 줄 strings 자동 줄바꿈 방지


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
    """ruamel.yaml round-trip 로딩. 반환값은 CommentedMap — dict 처럼 쓰면 됨."""
    with open(path) as f:
        fcntl.flock(f.fileno(), fcntl.LOCK_SH)
        try:
            return _rt.load(f) or {}
        finally:
            fcntl.flock(f.fileno(), fcntl.LOCK_UN)


def write_yaml(path, data):
    """read_yaml 로 읽은 객체를 그대로 다시 쓸 때 주석·정렬·블록스칼라 보존."""
    with open(path, "r+") as f:
        fcntl.flock(f.fileno(), fcntl.LOCK_EX)
        try:
            f.seek(0)
            f.truncate()
            _rt.dump(data, f)
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


def _responded_summary(d):
    """response 의 의미있는 필드만 'k=v' 로 묶어 반환. 없으면 빈 문자열."""
    resp = d.get("response") or {}
    pairs = []
    for k, v in resp.items():
        if k == "decided_at" or v is None:
            continue
        pairs.append(f"`{k}`={v!r}")
    return ", ".join(pairs)


def build_list_blocks(files):
    """`/myprompts list` 의 블록 — open + (이미 응답된 것까지) 통째로 그린다.
    응답 완료된 카드는 버튼 대신 '✅ 응답됨 — k=v ...' 컨텍스트로 표시.
    handle_decide_button / handle_respond_submission 가 응답 후 동일 함수로 다시
    렌더해서 response_url 로 replace_original=true POST → 원본 메시지 inline 갱신.
    """
    if not files:
        return [
            {"type": "header",
             "text": {"type": "plain_text", "text": "📭 open 결정 없음"}},
        ]

    blocks = [
        {"type": "header",
         "text": {"type": "plain_text", "text": f"🟡 {len(files)} open decision(s)"}},
    ]

    for path in files:
        try:
            d = read_yaml(path)
        except Exception as e:
            blocks.append({
                "type": "section",
                "text": {"type": "mrkdwn",
                         "text": f"⚠️ `{Path(path).name}` 파싱 실패: `{type(e).__name__}` — yml 직접 확인 필요"},
            })
            blocks.append({"type": "divider"})
            continue

        did = d.get("id", Path(path).stem)
        dtype = d.get("type", "?")
        title = truncate(d.get("title", "(no title)"), 200)
        rec = d.get("recommended") or {}
        responded = bool((d.get("response") or {}).get("decided_at"))

        rec_text = ""
        if isinstance(rec, dict) and rec:
            rec_pairs = [f"`{k}={v}`" for k, v in rec.items() if "reason" not in k]
            if rec_pairs:
                rec_text = "\n*추천*: " + ", ".join(rec_pairs)
        elif rec:
            rec_text = f"\n*추천*: `{rec}`"

        status_dot = "✅" if responded else "🟡"
        blocks.append({
            "type": "section",
            "text": {"type": "mrkdwn",
                     "text": f"{status_dot} *{did}* · Type {dtype}\n{title}{rec_text}"},
        })

        if responded:
            # 응답 완료 — 버튼 대신 답변 요약.
            summary = _responded_summary(d) or "_(필드 비어 있음)_"
            decided_at = (d.get("response") or {}).get("decided_at")
            blocks.append({
                "type": "context",
                "elements": [{"type": "mrkdwn",
                              "text": f"✅ 응답됨 — {summary}\n_decided_at: `{decided_at}`_"}],
            })
        else:
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
                for opt in opts[:5]:                       # Slack 한 row 최대 5
                    oid = opt.get("id", "?")
                    summary = truncate(opt.get("summary", ""), 30)
                    elements.append(button_for(did, oid, f"{oid}: {summary}"))
                blocks.append({"type": "actions", "elements": elements})
            elif dtype == "C":
                if d.get("response_schema"):
                    blocks.append({
                        "type": "actions",
                        "elements": [{
                            "type": "button",
                            "text": {"type": "plain_text", "text": "✏️ 응답"},
                            "action_id": f"respond_modal_{did}",
                            "value": json.dumps({"id": did}),
                            "style": "primary",
                        }],
                    })
                    blocks.append({
                        "type": "context",
                        "elements": [{"type": "mrkdwn",
                                      "text": ("또는 `/myprompts decide " + did +
                                               " key=value ...` · repo 의 yml 직접 편집.")}],
                    })
                else:
                    blocks.append({
                        "type": "context",
                        "elements": [{"type": "mrkdwn",
                                      "text": ("Type C — 다중 필드. `/myprompts decide " + did +
                                               " key=value ...` 로 응답하거나, repo 의 yml 직접 편집.")}],
                    })

        blocks.append({"type": "divider"})

    return blocks


def post_replace_original(response_url, blocks, fallback_text):
    """버튼/모달 인터랙션의 response_url 로 replace_original=true POST.
    실패해도 봇이 죽으면 안 되니 조용히 로그만."""
    if not response_url:
        return
    payload = json.dumps({
        "replace_original": True,
        "response_type": "ephemeral",
        "blocks": blocks,
        "text": fallback_text,
    }).encode("utf-8")
    req = urllib.request.Request(
        response_url, data=payload,
        headers={"Content-Type": "application/json"}, method="POST")
    try:
        urllib.request.urlopen(req, timeout=5).read()
    except urllib.error.URLError as e:
        print(f"[post_replace_original] {response_url[:60]}… failed: {e}", flush=True)
    except Exception as e:
        print(f"[post_replace_original] unexpected: {type(e).__name__}: {e}", flush=True)


def cmd_list(respond):
    files = list_open()
    if not files:
        respond(text="📭 open 결정 없음.")
        return
    blocks = build_list_blocks(files)
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
    response_url = body.get("response_url")
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

        # 원본 list 메시지 inline 갱신 — 버튼이 '✅ 응답됨' 으로 바뀜.
        files = list_open()
        post_replace_original(response_url, build_list_blocks(files),
                              f"{len(files)} open decision(s)")
    except Exception as e:
        respond(text=f"❌ {type(e).__name__}: {e}", response_type="ephemeral")


# ──────────────────────────────────────────────────────────
# Type C modal — response_schema 기반 동적 폼
# ──────────────────────────────────────────────────────────
def _resolve_default(d, default_from):
    """default_from: 'recommended.orgs_pattern' → d['recommended']['orgs_pattern']."""
    if not default_from or "." not in default_from:
        return None
    head, tail = default_from.split(".", 1)
    return (d.get(head) or {}).get(tail)


def _radio_options(d, options_ref):
    """options_<x> 배열을 Slack option blocks 로 변환. (id, title) 사용."""
    items = d.get(options_ref) or []
    out = []
    for it in items:
        oid = it.get("id")
        if oid is None:
            continue
        title = it.get("title", "")
        text = f"{oid}: {title}".strip()
        if len(text) > 75:                                # plain_text 75 char limit
            text = text[:74] + "…"
        out.append({
            "text": {"type": "plain_text", "text": text},
            "value": str(oid),
        })
    return out


def build_modal_blocks(d):
    schema = d.get("response_schema") or []
    blocks = [
        {"type": "section",
         "text": {"type": "mrkdwn",
                  "text": f"*{truncate(d.get('title', ''), 240)}*\n_{d.get('id')}_"}},
        {"type": "divider"},
    ]

    for entry in schema:
        key = entry["key"]
        label = entry.get("label", key)
        typ = entry.get("type", "text")
        required = bool(entry.get("required"))
        default_val = _resolve_default(d, entry.get("default_from"))

        if typ == "radio":
            opts = _radio_options(d, entry["options_ref"])
            element = {"type": "radio_buttons", "action_id": "input", "options": opts}
            for o in opts:
                if default_val is not None and o["value"] == str(default_val):
                    element["initial_option"] = o
                    break
            blocks.append({
                "type": "input",
                "block_id": f"field_{key}",
                "label": {"type": "plain_text", "text": label},
                "element": element,
                "optional": not required,
            })

        elif typ == "radio_or_text":
            opts = _radio_options(d, entry["options_ref"])
            element = {"type": "radio_buttons", "action_id": "input", "options": opts}
            for o in opts:
                if default_val is not None and o["value"] == str(default_val):
                    element["initial_option"] = o
                    break
            blocks.append({
                "type": "input",
                "block_id": f"field_{key}_radio",
                "label": {"type": "plain_text", "text": label},
                "element": element,
                "optional": True,                          # 텍스트로 답해도 되니 항상 optional
            })
            blocks.append({
                "type": "input",
                "block_id": f"field_{key}_text",
                "label": {"type": "plain_text",
                          "text": entry.get("freeform_label", "직접 작성")},
                "element": {"type": "plain_text_input", "action_id": "input",
                            "multiline": False},
                "optional": True,
            })

        elif typ in ("textarea", "text"):
            blocks.append({
                "type": "input",
                "block_id": f"field_{key}",
                "label": {"type": "plain_text", "text": label},
                "element": {"type": "plain_text_input", "action_id": "input",
                            "multiline": (typ == "textarea")},
                "optional": not required,
            })

    return blocks


@app.action(re.compile(r"^respond_modal_.+"))
def open_respond_modal(ack, body, client):
    ack()
    try:
        action = body["actions"][0]
        did = json.loads(action["value"])["id"]

        path = open_decision_path(did)
        if not path:
            client.chat_postEphemeral(
                channel=body["channel"]["id"], user=body["user"]["id"],
                text=f"❌ `decisions/open/{did}.yml` 없음.")
            return

        d = read_yaml(path)
        view = {
            "type": "modal",
            "callback_id": f"respond_{did}",
            "private_metadata": json.dumps({
                "id": did,
                "channel": body.get("channel", {}).get("id"),
                "response_url": body.get("response_url"),    # ← list 메시지 inline 갱신용
            }),
            "title": {"type": "plain_text", "text": f"응답 · {did[:18]}"},
            "submit": {"type": "plain_text", "text": "제출"},
            "close": {"type": "plain_text", "text": "취소"},
            "blocks": build_modal_blocks(d),
        }
        client.views_open(trigger_id=body["trigger_id"], view=view)
    except Exception as e:
        try:
            client.chat_postEphemeral(
                channel=body.get("channel", {}).get("id"),
                user=body["user"]["id"],
                text=f"❌ modal 열기 실패: {type(e).__name__}: {e}")
        except Exception:
            pass


@app.view(re.compile(r"^respond_.+"))
def handle_respond_submission(ack, body, view, client):
    callback_id = view["callback_id"]
    did = callback_id[len("respond_"):]
    metadata = {}
    try:
        metadata = json.loads(view.get("private_metadata") or "{}")
    except Exception:
        pass

    path = open_decision_path(did)
    if not path:
        ack(response_action="errors", errors={"_": "yml 없음"})
        return

    try:
        d = read_yaml(path)
    except Exception as e:
        ack(response_action="errors", errors={"_": f"yml 파싱 실패: {e}"})
        return

    schema = d.get("response_schema") or []
    state_values = view["state"]["values"]
    update = {}
    errors = {}

    for entry in schema:
        key = entry["key"]
        typ = entry.get("type", "text")
        required = bool(entry.get("required"))

        if typ == "radio":
            block_id = f"field_{key}"
            sel = state_values.get(block_id, {}).get("input", {}).get("selected_option")
            if sel:
                v = sel["value"]
                update[key] = int(v) if v.isdigit() else v
            elif required:
                errors[block_id] = "선택 필요"

        elif typ == "radio_or_text":
            r_block = f"field_{key}_radio"
            t_block = f"field_{key}_text"
            sel = state_values.get(r_block, {}).get("input", {}).get("selected_option")
            txt = (state_values.get(t_block, {}).get("input", {}).get("value") or "").strip()
            if txt:
                update[key] = txt
            elif sel:
                v = sel["value"]
                update[key] = int(v) if v.isdigit() else v
            elif required:
                errors[r_block] = "라디오 또는 직접 작성 중 하나는 채워야 합니다"

        elif typ in ("textarea", "text"):
            block_id = f"field_{key}"
            v = (state_values.get(block_id, {}).get("input", {}).get("value") or "").strip()
            if v:
                update[key] = v
            elif required:
                errors[block_id] = "입력 필요"

    if errors:
        ack(response_action="errors", errors=errors)
        return

    try:
        d.setdefault("response", {})
        d["response"]["decided_at"] = now_iso()
        for k, v in update.items():
            d["response"][k] = v
        write_yaml(path, d)
    except Exception as e:
        ack(response_action="errors", errors={"_": f"yml 쓰기 실패: {e}"})
        return

    ack()                                                  # 모달 닫힘

    # 원본 list 메시지 inline 갱신 — 버튼 사라지고 '✅ 응답됨 — k=v...' 표시.
    # DM 은 보내지 않음 (사용자 요청: 맥락 끊기지 않게 같은 메시지 안에서 답)
    files = list_open()
    post_replace_original(metadata.get("response_url"),
                          build_list_blocks(files),
                          f"{len(files)} open decision(s)")


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
