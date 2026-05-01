#!/usr/bin/env bash
# slack-upload-image.sh — 이미지 URL/파일 → Slack files.uploadV2 로 채널에 인라인 업로드.
#
# 사용:
#   scripts/slack-upload-image.sh <url-or-path> "<title>" "<initial_comment>"
#
# 의존:
#   - state/slack-app.yml.bot_token (xoxb-...) — files:write scope 필수
#   - state/slack-config.yml.image_channel — 업로드할 채널 ID (Cxxxxxxxx 형식)
#
# 동작 (Slack files.uploadV2 3-step):
#   1. files.getUploadURLExternal → upload_url + file_id
#   2. POST 이미지 bytes → upload_url
#   3. files.completeUploadExternal (files + channel_id + initial_comment)
#
# 실패 (scope 없음, 채널 미설정, 네트워크 등) 시 exit != 0 — 호출자가 fallback 처리.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

URL="${1:?usage: $0 <url-or-path> <title> [comment]}"
TITLE="${2:-image}"
COMMENT="${3:-}"

# bot_token + 채널 로드
BOT_TOKEN=$(python3 -c "
import yaml, sys
try:
    cfg = yaml.safe_load(open('state/slack-app.yml')) or {}
    print(cfg.get('bot_token', ''), end='')
except Exception:
    pass
")
CHANNEL=$(python3 -c "
import yaml, sys
try:
    cfg = yaml.safe_load(open('state/slack-config.yml')) or {}
    print(cfg.get('image_channel', ''), end='')
except Exception:
    pass
")

[[ -n "$BOT_TOKEN" ]] || { echo "[slack-upload] bot_token 없음 (state/slack-app.yml)" >&2; exit 1; }
[[ -n "$CHANNEL"   ]] || { echo "[slack-upload] image_channel 미설정 (state/slack-config.yml)" >&2; exit 1; }

# 이미지 준비 — URL 이면 download, 로컬 파일이면 그대로
CLEANUP_TMP=""
if [[ "$URL" =~ ^https?:// ]]; then
  TMP="$(mktemp --suffix=.png)"
  CLEANUP_TMP="$TMP"
  trap '[[ -n "$CLEANUP_TMP" ]] && rm -f "$CLEANUP_TMP"' EXIT
  curl -fsSL "$URL" -o "$TMP" || { echo "[slack-upload] download 실패: $URL" >&2; exit 1; }
  FILE="$TMP"
  FILENAME=$(basename "$URL" | sed 's/[?#].*//')
else
  [[ -f "$URL" ]] || { echo "[slack-upload] 파일 없음: $URL" >&2; exit 1; }
  FILE="$URL"
  FILENAME=$(basename "$URL")
fi

SIZE=$(stat -c%s "$FILE")

# Step 1: getUploadURLExternal
S1=$(curl -sf -G \
  -H "Authorization: Bearer $BOT_TOKEN" \
  --data-urlencode "filename=$FILENAME" \
  --data-urlencode "length=$SIZE" \
  "https://slack.com/api/files.getUploadURLExternal" 2>/dev/null) \
  || { echo "[slack-upload] step1 HTTP 실패" >&2; exit 1; }

OK1=$(echo "$S1" | jq -r '.ok')
if [[ "$OK1" != "true" ]]; then
  ERR=$(echo "$S1" | jq -r '.error // "?"')
  echo "[slack-upload] step1 실패: $ERR (scope=files:write 필요한가?)" >&2
  exit 1
fi

UPLOAD_URL=$(echo "$S1" | jq -r '.upload_url')
FILE_ID=$(echo "$S1" | jq -r '.file_id')

# Step 2: POST bytes
curl -sf -F "filename=@$FILE" "$UPLOAD_URL" > /dev/null \
  || { echo "[slack-upload] step2 (bytes upload) 실패" >&2; exit 1; }

# Step 3: completeUploadExternal
PAYLOAD=$(jq -nc \
  --arg fid "$FILE_ID" \
  --arg title "$TITLE" \
  --arg ch "$CHANNEL" \
  --arg cm "$COMMENT" \
  '{files: [{id: $fid, title: $title}], channel_id: $ch, initial_comment: $cm}')

S3=$(curl -sf -X POST \
  -H "Authorization: Bearer $BOT_TOKEN" \
  -H "Content-Type: application/json; charset=utf-8" \
  --data "$PAYLOAD" \
  "https://slack.com/api/files.completeUploadExternal" 2>/dev/null) \
  || { echo "[slack-upload] step3 HTTP 실패" >&2; exit 1; }

OK3=$(echo "$S3" | jq -r '.ok')
if [[ "$OK3" != "true" ]]; then
  ERR=$(echo "$S3" | jq -r '.error // "?"')
  echo "[slack-upload] step3 실패: $ERR" >&2
  exit 1
fi

echo "[slack-upload] uploaded: $FILE_ID → $CHANNEL"
