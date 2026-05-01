#!/usr/bin/env bash
# slack-app-sync.sh — Sync slack-app/manifest.yml with Slack workspace.
# Idempotent: creates app on first run, updates on subsequent runs.
#
# 사용:
#   SLACK_CONFIG_ACCESS_TOKEN=xoxe.xoxp-... scripts/slack-app-sync.sh
#   (또는 SLACK_CONFIG_REFRESH_TOKEN= 으로 자동 회전)
#
# 결과:
#   - state/slack-app.yml 에 app_id, signing_secret, client_*, refresh_token 저장.
#   - 토큰은 절대 stdout/log 에 노출 안 함.

set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ -z "${SLACK_CONFIG_ACCESS_TOKEN:-}" && -z "${SLACK_CONFIG_REFRESH_TOKEN:-}" ]]; then
  echo "ERROR: SLACK_CONFIG_ACCESS_TOKEN 또는 SLACK_CONFIG_REFRESH_TOKEN 가 필요합니다." >&2
  echo "       https://api.slack.com/apps → Manage tokens 에서 발급." >&2
  exit 1
fi

python3 - "$ROOT" <<'PY'
import os, sys, json, yaml, urllib.request, urllib.parse, urllib.error
from pathlib import Path

ROOT = Path(sys.argv[1])
MANIFEST = ROOT / "slack-app" / "manifest.yml"
STATE = ROOT / "state" / "slack-app.yml"

def post(url, data, headers=None):
    body = urllib.parse.urlencode(data).encode()
    req = urllib.request.Request(url, data=body, headers=headers or {})
    try:
        with urllib.request.urlopen(req) as r:
            return json.loads(r.read().decode())
    except urllib.error.HTTPError as e:
        print(f"HTTP {e.code} on {url}", file=sys.stderr)
        try:
            print(json.dumps(json.loads(e.read().decode()), indent=2, ensure_ascii=False), file=sys.stderr)
        except Exception:
            print(e.read().decode(), file=sys.stderr)
        sys.exit(2)

def die(msg, payload=None):
    print(f"ERROR: {msg}", file=sys.stderr)
    if payload is not None:
        print(json.dumps(payload, indent=2, ensure_ascii=False), file=sys.stderr)
    sys.exit(1)

state = {}
if STATE.exists():
    state = yaml.safe_load(STATE.read_text()) or {}

access = os.environ.get("SLACK_CONFIG_ACCESS_TOKEN")
refresh = os.environ.get("SLACK_CONFIG_REFRESH_TOKEN") or state.get("refresh_token")

if not access:
    if not refresh:
        die("no access or refresh token")
    res = post("https://slack.com/api/tooling.tokens.rotate", {"refresh_token": refresh})
    if not res.get("ok"):
        die("token rotation failed", res)
    access = res["token"]
    state["refresh_token"] = res["refresh_token"]

# Slack 의 manifest API 가 raw YAML 을 거부하는 경우가 있음 → JSON 으로 직렬화해서 전송.
manifest = json.dumps(yaml.safe_load(MANIFEST.read_text()), ensure_ascii=False)
app_id = state.get("app_id")

endpoint = "apps.manifest.update" if app_id else "apps.manifest.create"
payload = {"manifest": manifest}
if app_id:
    payload["app_id"] = app_id

res = post(
    f"https://slack.com/api/{endpoint}",
    payload,
    headers={"Authorization": f"Bearer {access}"}
)
if not res.get("ok"):
    die(f"{endpoint} failed", res)

new_app_id = res.get("app_id") or app_id
state["app_id"] = new_app_id
creds = res.get("credentials", {}) or {}
for k in ("signing_secret", "verification_token", "client_id", "client_secret"):
    if creds.get(k):
        state[k] = creds[k]

STATE.parent.mkdir(parents=True, exist_ok=True)
STATE.write_text(yaml.safe_dump(state, sort_keys=False, allow_unicode=True))

action = "CREATED" if endpoint.endswith("create") else "UPDATED"
print(f"✓ {action} app_id={new_app_id}")
print()
print("다음 단계 (UI 수동):")
print(f"  1. Install: https://api.slack.com/apps/{new_app_id}/install-on-team")
print(f"     → 'Bot User OAuth Token' (xoxb-...) 복사 → state/slack-app.yml 의 bot_token: 에 추가")
print(f"  2. App-Level Token: https://api.slack.com/apps/{new_app_id}/general")
print(f"     → 'App-Level Tokens' 섹션 → Generate Token (scope: connections:write)")
print(f"     → state/slack-app.yml 의 app_token: 에 추가 (xapp-...)")
print()
print("재동기화 (manifest 변경 시):")
print("  scripts/slack-app-sync.sh   # state 의 refresh_token 사용")
PY
