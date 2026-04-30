#!/usr/bin/env bash
# slack-notify.sh — Slack webhook 으로 메시지 전송
# 사용:
#   scripts/slack-notify.sh <trigger-id> <title> [body...]
#   echo "long body" | scripts/slack-notify.sh <trigger-id> <title>
#
# trigger-id 는 state/slack-config.yml 의 triggers.<id> 가 true 일 때만 전송.
# 알 수 없는 trigger-id 는 ad-hoc 으로 무조건 전송.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG="$ROOT/state/slack-config.yml"

if [[ ! -f "$CONFIG" ]]; then
  echo "[slack-notify] state/slack-config.yml 없음. .example 을 복사한 뒤 다시 시도." >&2
  exit 1
fi

TRIGGER_ID="${1:-adhoc}"
TITLE="${2:-(no title)}"
shift 2 || true
BODY="${*:-}"
if [[ -z "$BODY" ]] && [[ ! -t 0 ]]; then
  BODY="$(cat)"
fi

# Config 읽기 (Python — pyyaml 사용).
read -r WEBHOOK PREFIX ENABLED < <(python3 - "$CONFIG" "$TRIGGER_ID" <<'PY'
import sys, yaml
with open(sys.argv[1]) as f:
    cfg = yaml.safe_load(f) or {}
trig = sys.argv[2]
triggers = cfg.get("triggers", {}) or {}
enabled = triggers.get(trig, True)   # 정의 안 됐으면 ad-hoc 으로 보냄
print(cfg.get("webhook_url", ""), cfg.get("prefix", ""), str(enabled).lower())
PY
)

if [[ "$ENABLED" != "true" ]]; then
  echo "[slack-notify] trigger '$TRIGGER_ID' disabled by config — skipping"
  exit 0
fi

if [[ -z "$WEBHOOK" || "$WEBHOOK" == "null" ]]; then
  echo "[slack-notify] webhook_url empty in config" >&2
  exit 1
fi

PAYLOAD=$(jq -nc \
  --arg t "${PREFIX} ${TITLE}" \
  --arg b "$BODY" \
  '{
    text: $t,
    blocks: [
      {type: "header", text: {type: "plain_text", text: $t}},
      ($b | if . == "" then null else {type: "section", text: {type: "mrkdwn", text: $b}} end)
    ] | map(select(. != null))
  }')

HTTP_CODE=$(curl -s -o /tmp/slack-resp -w "%{http_code}" \
  -X POST "$WEBHOOK" \
  -H 'Content-Type: application/json' \
  --data "$PAYLOAD")

if [[ "$HTTP_CODE" != "200" ]]; then
  echo "[slack-notify] webhook returned $HTTP_CODE: $(cat /tmp/slack-resp)" >&2
  exit 2
fi

echo "[slack-notify] sent: $TRIGGER_ID — $TITLE"
