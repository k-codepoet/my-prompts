#!/usr/bin/env bash
# slack-notify.sh — Slack webhook 으로 메시지 전송
# 사용:
#   scripts/slack-notify.sh [--image-url <url>] <trigger-id> <title> [body...]
#   echo "long body" | scripts/slack-notify.sh [--image-url <url>] <trigger-id> <title>
#
# trigger-id 는 state/slack-config.yml 의 triggers.<id> 가 true 일 때만 전송.
# 알 수 없는 trigger-id 는 ad-hoc 으로 무조건 전송.
# --image-url 이 주어지면 메시지 끝에 이미지 블록 첨부 (Slack 이 인라인 렌더).

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG="$ROOT/state/slack-config.yml"

if [[ ! -f "$CONFIG" ]]; then
  echo "[slack-notify] state/slack-config.yml 없음. .example 을 복사한 뒤 다시 시도." >&2
  exit 1
fi

# 옵션 인자 (positional 앞에 위치)
IMAGE_URL=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --image-url) IMAGE_URL="$2"; shift 2;;
    --) shift; break;;
    -*) echo "[slack-notify] unknown option: $1" >&2; exit 2;;
    *) break;;
  esac
done

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

# 이미지 블록 (image_url) 은 Slack incoming-webhook 에서 외부 호스트일 때 종종
# invalid_blocks 로 거부됨. Block Kit 대신 본문 mrkdwn 에 링크로 박아 자동 unfurl
# 에 의존 (도달 가능하고 Slack 워크스페이스가 unfurl 켜져 있으면 thumbnail 도 보임).
if [[ -n "$IMAGE_URL" && "$IMAGE_URL" =~ ^https?:// ]]; then
  if [[ -n "$BODY" ]]; then
    BODY="$BODY"$'\n\n'"<$IMAGE_URL|🖼 이미지 보기 →>"
  else
    BODY="<$IMAGE_URL|🖼 이미지 보기 →>"
  fi
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
