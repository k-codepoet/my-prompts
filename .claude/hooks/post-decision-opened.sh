#!/usr/bin/env bash
# post-decision-opened.sh — PostToolUse hook for Write tool when path matches
# decisions/open/D-*.yml. Fires Slack 'decision_opened' notification automatically
# so the human is alerted whenever an org/orchestrator opens a new HITL item.
#
# 발화: 모든 Write 콜에 대해 fire 되지만, file_path 가 decisions/open/D-*.yml
# 패턴 아니면 즉시 exit 0. Slack 호출은 매칭된 경우에만.

set -euo pipefail

INPUT=$(cat)
ROOT="${CLAUDE_PROJECT_DIR:-$PWD}"

FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // ""')

# Path 가드 — decisions/open/D-*.yml 만
if [[ ! "$FILE_PATH" =~ /decisions/open/D-[^/]+\.yml$ ]]; then
  exit 0
fi

# 파일 실재 확인 (Write 가 막 끝났으니 있어야 함)
[ -f "$FILE_PATH" ] || exit 0

DID=$(basename "$FILE_PATH" .yml)

# yml 파싱 — type / title / recommended / trace / options 추출
SUMMARY=$(python3 - "$FILE_PATH" <<'PY'
import sys, yaml
try:
    with open(sys.argv[1]) as f:
        d = yaml.safe_load(f) or {}
except Exception as e:
    print("PARSE_FAIL"); print(str(e))
    sys.exit(0)

typ   = d.get('type', '?')
title = (d.get('title') or '(no title)').strip()
trace = d.get('trace', '')
rec   = d.get('recommended')

print(f"TYPE={typ}")
print(f"TITLE={title[:200]}")
print(f"TRACE={trace}")

if isinstance(rec, dict) and rec:
    pairs = [f"{k}={v}" for k, v in rec.items() if "reason" not in k]
    print(f"REC={', '.join(pairs)}")
elif rec:
    print(f"REC={rec}")
else:
    print(f"REC=")

# 옵션 요약 (Type B/C 의 핵심)
opts = d.get('options') or d.get('options_world') or d.get('options_orgs') or []
if opts:
    summaries = []
    for o in opts[:3]:
        oid = o.get('id', '?')
        s = (o.get('summary') or o.get('one_line') or o.get('title') or '').strip().split('\n')[0][:80]
        summaries.append(f"  • `{oid}`: {s}")
    print(f"OPTIONS_BEGIN")
    print('\n'.join(summaries))
    print(f"OPTIONS_END")
PY
)

# 기본값
TYPE=$(echo "$SUMMARY" | sed -n 's/^TYPE=//p' | head -1)
TITLE=$(echo "$SUMMARY" | sed -n 's/^TITLE=//p' | head -1)
TRACE=$(echo "$SUMMARY" | sed -n 's/^TRACE=//p' | head -1)
REC=$(echo "$SUMMARY" | sed -n 's/^REC=//p' | head -1)

# Type C 면 시스템 자동 정지 알림 추가 (BOOTSTRAP §0 의 type_c_pending sanity)
PAUSE_NOTE=""
if [[ "$TYPE" == "C" ]]; then
  PAUSE_NOTE=$'\n*시스템 자동 정지* — 다음 tick 부터 \`blocked:type_c_pending\` (응답 대기). 응답 후 다음 tick 자동 재개.'
fi

# Body 빌드
BODY=$(cat <<EOF
*Type ${TYPE}* — ${TITLE}

$(echo "$SUMMARY" | sed -n '/^OPTIONS_BEGIN$/,/^OPTIONS_END$/p' | sed '1d;$d')
$([ -n "$REC" ] && echo "*추천*: $REC")
*Trace*: \`${TRACE}\`
*응답*: Slack \`/myprompts list\` 카드 또는 yml 직접 편집${PAUSE_NOTE}
EOF
)

NOTIFY="$ROOT/scripts/slack-notify.sh"
if [ ! -x "$NOTIFY" ]; then
  echo "[post-decision-opened] $NOTIFY 없음 — skip" >&2
  exit 0
fi

echo "$BODY" | "$NOTIFY" decision_opened "🟡 Decision needed: $DID" 2>/dev/null \
  || echo "[post-decision-opened] slack notify 실패 (계속 진행)" >&2

exit 0
