#!/usr/bin/env bash
# post-image-gen.sh — PostToolUse hook for mcp__my-genai__generate_image.
#
# 발화: 이미지가 생성되는 *모든* 호출 직후 (현재 Claude Code 세션 + tick.sh
# 가 spawn 한 claude -p 서브세션 모두). 프로젝트의 .claude/settings.json 이 매핑.
#
# 동작:
#   1. stdin 의 PostToolUse JSON 에서 prompt + tool_response 의 image URL 추출
#   2. scripts/slack-notify.sh 호출 — 이미지 인라인 + prompt 요약 (사용자 즉시 봄)
#
# 비고:
#   - repo 적재 (download + meta + timeline) 는 별도 — claude 가 save-image.sh 를
#     호출해야 비로소 outputs/ 안에 들어가고 timeline 에도 기록됨.
#   - 본 후크는 *생성 사실* 만 알린다. 적재는 의도(카테고리·캡션·소스) 가 필요한
#     별개 단계라 claude 가 직접 처리.

set -euo pipefail

INPUT=$(cat)

# 입력 파싱 (jq)
PROMPT=$(echo "$INPUT"   | jq -r '.tool_input.prompt    // ""')
WORKFLOW=$(echo "$INPUT" | jq -r '.tool_input.workflow  // ""')
WIDTH=$(echo "$INPUT"    | jq -r '.tool_input.width     // ""')
HEIGHT=$(echo "$INPUT"   | jq -r '.tool_input.height    // ""')
PROVIDER=$(echo "$INPUT" | jq -r '.tool_input.provider  // "comfyui"')
CWD=$(echo "$INPUT"      | jq -r '.cwd // ""')

# tool_response 형태가 가변 — JSON 객체일 수도, 직렬화된 문자열일 수도, 콘텐츠 블록 array 일 수도.
# 가장 단순: 전체 JSON 에서 첫 번째 url 필드 추출.
URL=$(echo "$INPUT" | jq -r '.. | objects | select(.url != null) | .url' 2>/dev/null | head -n1 || true)

# tool_response 가 string 으로 직렬화된 경우 한 번 더 파싱
if [ -z "$URL" ]; then
  RAW=$(echo "$INPUT" | jq -r '.tool_response // ""' 2>/dev/null || true)
  if [ -n "$RAW" ] && [ "$RAW" != "null" ]; then
    URL=$(echo "$RAW" | jq -r '.. | objects | select(.url != null) | .url' 2>/dev/null | head -n1 || true)
  fi
fi

if [ -z "$URL" ] || [ "$URL" = "null" ]; then
  echo "[post-image-gen] tool_response 에서 url 못 찾음 — slack 알림 skip" >&2
  exit 0                                                  # 후크 실패는 silent (이미지 생성 자체엔 영향 X)
fi

# slack-notify.sh 위치
ROOT="${CLAUDE_PROJECT_DIR:-$CWD}"
NOTIFY="$ROOT/scripts/slack-notify.sh"
if [ ! -x "$NOTIFY" ]; then
  echo "[post-image-gen] $NOTIFY 없음/실행 불가 — slack skip" >&2
  exit 0
fi

# 본문 (text comment) 빌드 — 업로드의 initial_comment 와 webhook fallback 양쪽에 사용
COMMENT=$(cat <<EOF
🎨 *이미지 생성*

*프롬프트*
\`\`\`
$(echo "$PROMPT" | head -c 700)
\`\`\`
$([ -n "$WIDTH" ] && [ -n "$HEIGHT" ] && [ "$WIDTH" != "null" ] && echo "*크기*: ${WIDTH}×${HEIGHT}")
$([ -n "$WORKFLOW" ] && [ "$WORKFLOW" != "null" ] && echo "*워크플로우*: \`$WORKFLOW\`")
$([ -n "$PROVIDER" ] && [ "$PROVIDER" != "null" ] && echo "*Provider*: \`$PROVIDER\`")

원본: <$URL|🔗 GenAI 서버에서 보기>
_생성 직후 — 조직이 \`save-image.sh\` 로 repo 적재 예정._
EOF
)

# 1차 시도: bot_token + files.uploadV2 로 채널에 인라인 업로드 (사용자 요청)
UPLOAD_OK=0
if "$ROOT/scripts/slack-upload-image.sh" "$URL" "🎨 이미지 (z-image-turbo)" "$COMMENT" 2>/dev/null; then
  UPLOAD_OK=1
fi

# Fallback: scope/채널 미설정 시 webhook + 링크
if [ "$UPLOAD_OK" -ne 1 ]; then
  echo "$COMMENT" | "$NOTIFY" --image-url "$URL" image_generated "🎨 이미지 생성" 2>/dev/null \
    || echo "[post-image-gen] slack 양쪽 다 실패 (계속 진행)" >&2
fi

exit 0
