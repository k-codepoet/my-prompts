#!/usr/bin/env bash
# save-image.sh — repo 안으로 이미지 적재 + 사이드카 meta.yml + outputs/timeline.md append.
#
# 사용:
#   scripts/save-image.sh <url-or-path> <dest-relative> \
#       --caption "한 줄 설명" \
#       --prompt "원본 프롬프트" \
#       [--negative "negative prompt"] \
#       [--workflow z-image-turbo] \
#       [--source-artifact path/to/source.md] \
#       [--source-section "## 핵심 메타포 #1"] \
#       [--category illustration] \
#       [--creator org:art-director]
#
# 호출 주체:
#   - 사람 (수동 테스트)
#   - org tick (`tick.sh --mode role --role art-director` 등) — claude 가 generate_image MCP
#     호출 후 반환된 URL 을 본 스크립트로 흡수
#   - apply-decisions (D 가 이미지 생성 지시를 포함할 때)
#
# 결과:
#   1. dest 경로에 이미지 저장 (없으면 디렉토리 생성)
#   2. dest.meta.yml 사이드카 (prompt + caption + 출처 + 시각)
#   3. outputs/timeline.md 표에 1 행 추가

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

URL=""
DEST=""
CAPTION=""
PROMPT=""
NEG_PROMPT=""
WORKFLOW=""
SOURCE_ARTIFACT=""
SOURCE_SECTION=""
CATEGORY="illustration"
CREATOR="${CREATOR:-tick}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --caption)         CAPTION="$2"; shift 2;;
    --prompt)          PROMPT="$2"; shift 2;;
    --negative)        NEG_PROMPT="$2"; shift 2;;
    --workflow)        WORKFLOW="$2"; shift 2;;
    --source-artifact) SOURCE_ARTIFACT="$2"; shift 2;;
    --source-section)  SOURCE_SECTION="$2"; shift 2;;
    --category)        CATEGORY="$2"; shift 2;;
    --creator)         CREATOR="$2"; shift 2;;
    -h|--help) sed -n '2,30p' "$0"; exit 0;;
    *)
      if [[ -z "$URL" ]]; then URL="$1"
      elif [[ -z "$DEST" ]]; then DEST="$1"
      else echo "unknown arg: $1" >&2; exit 1
      fi
      shift;;
  esac
done

[[ -n "$URL" && -n "$DEST" ]] || {
  echo "usage: $0 <url-or-path> <dest-relative> [opts]" >&2
  exit 2
}

# 절대 경로 처리
if [[ "$DEST" = /* ]]; then ABS_DEST="$DEST"; else ABS_DEST="$ROOT/$DEST"; fi
mkdir -p "$(dirname "$ABS_DEST")"

# 다운로드 또는 복사
if [[ "$URL" =~ ^https?:// ]]; then
  curl -fsSL "$URL" -o "$ABS_DEST" || { echo "download failed: $URL" >&2; exit 1; }
else
  [[ -f "$URL" ]] || { echo "source not found: $URL" >&2; exit 1; }
  cp "$URL" "$ABS_DEST"
fi

REL_DEST="${ABS_DEST#$ROOT/}"
echo "saved: $REL_DEST"

# meta.yml + timeline.md append (모든 멀티라인 인자 안전 처리 — env 로 전달)
URL="$URL" REL_DEST="$REL_DEST" ABS_DEST="$ABS_DEST" CAPTION="$CAPTION" \
  PROMPT="$PROMPT" NEG_PROMPT="$NEG_PROMPT" WORKFLOW="$WORKFLOW" \
  SOURCE_ARTIFACT="$SOURCE_ARTIFACT" SOURCE_SECTION="$SOURCE_SECTION" \
  CATEGORY="$CATEGORY" CREATOR="$CREATOR" python3 - "$ROOT" <<'PY'
import os, sys, datetime, subprocess
ROOT = sys.argv[1]

env = os.environ
url = env.get('URL', '')
rel = env.get('REL_DEST', '')
abspath = env.get('ABS_DEST', '')
caption = env.get('CAPTION', '').strip()
prompt = env.get('PROMPT', '').strip()
neg = env.get('NEG_PROMPT', '').strip()
workflow = env.get('WORKFLOW', '').strip()
src_art = env.get('SOURCE_ARTIFACT', '').strip()
src_sec = env.get('SOURCE_SECTION', '').strip()
category = env.get('CATEGORY', 'illustration').strip()
creator = env.get('CREATOR', 'tick').strip()

now = datetime.datetime.now(datetime.timezone.utc).isoformat(timespec='seconds')
img_id = os.path.splitext(os.path.basename(rel))[0]

# 이미지 사이즈 (file 명령 의존)
size = 'unknown'
try:
    out = subprocess.check_output(['file', abspath], text=True)
    import re
    m = re.search(r'(\d+)\s*x\s*(\d+)', out)
    if m:
        size = f'{m.group(1)}x{m.group(2)}'
except Exception:
    pass

def yblock(text, indent=2):
    """multi-line 을 YAML 블록 스칼라로."""
    if not text:
        return None
    pad = ' ' * indent
    return '|\n' + '\n'.join(pad + ln for ln in text.splitlines())

# meta.yml 작성
meta_path = abspath + '.meta.yml'
meta_lines = [
    f'id: {img_id}',
    f"created_at: '{now}'",
    f'creator: {creator}',
    f'category: {category}',
]
if caption:
    meta_lines.append('caption: ' + yblock(caption))
if prompt:
    meta_lines.append('prompt: ' + yblock(prompt))
if neg:
    meta_lines.append('negative_prompt: ' + yblock(neg))
if workflow:
    meta_lines.append(f'workflow: {workflow}')
if src_art:
    meta_lines.append(f'source_artifact: {src_art}')
if src_sec:
    meta_lines.append(f'source_section: "{src_sec}"')
meta_lines.append(f'size: {size}')
if url and url.startswith('http'):
    meta_lines.append(f'genai_origin_url: {url}')

with open(meta_path, 'w') as f:
    f.write('\n'.join(meta_lines) + '\n')
print(f'meta: {os.path.relpath(meta_path, ROOT)}')

# timeline.md append (표의 마지막 행 직전 = 표 다음 빈 줄 직전)
tl_path = os.path.join(ROOT, 'outputs', 'timeline.md')
title = caption.split('\n')[0].strip() if caption else img_id
row = f'| {now} | {category} | {title} | `{rel}` | {creator} |'

if not os.path.isfile(tl_path):
    print(f'WARNING: {tl_path} 없음 — timeline 항목 미기록', file=sys.stderr)
    sys.exit(0)

with open(tl_path) as f:
    text = f.read()
lines = text.split('\n')
out = []
inserted = False
in_table = False
for ln in lines:
    if ln.startswith('| 시각') or ln.startswith('|---'):
        in_table = True
    elif in_table and (ln.strip() == '' or not ln.startswith('|')):
        # 표 끝 — 직전에 새 행 삽입
        out.append(row)
        in_table = False
        inserted = True
    out.append(ln)
if not inserted:                                          # 표가 파일 끝에 끼어 있던 경우
    out.append(row)
with open(tl_path, 'w') as f:
    f.write('\n'.join(out))
print(f'timeline appended: {category} | {title}')
PY
