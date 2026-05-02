#!/usr/bin/env bash
# notify-new-writing.sh — outputs/writing/ 안 신규/변경 단편을 슬랙에 reader portion 만 첨부.
#
# 호출 시점:
#   - tick.sh 종료 직전 (자동, 매 tick — 새 단편 박혔는지 체크)
#   - 수동: scripts/notify-new-writing.sh
#
# 동작:
#   1. outputs/writing/**/*.md walk
#   2. 각 파일의 sha256 계산
#   3. state/notified-writings.txt 와 비교 → 새 hash 만 알림 대상
#   4. reader portion 추출 (frontmatter 제거 + 첫 내부 섹션 마커 직전까지)
#   5. /tmp 에 reader-only .md 임시 저장
#   6. scripts/slack-upload-image.sh 로 첨부 (파일 업로드 API, 텍스트 .md 도 OK)
#   7. 성공 시 hash 를 state/notified-writings.txt 에 append
#
# 의존:
#   - state/slack-app.yml.bot_token
#   - state/slack-config.yml.image_channel
#   - python3 (frontmatter + 마커 split)

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

STATE_FILE="$ROOT/state/notified-writings.txt"
WRITING_DIR="$ROOT/outputs/writing"

mkdir -p "$ROOT/state"
touch "$STATE_FILE"

[[ -d "$WRITING_DIR" ]] || { echo "[notify-writing] $WRITING_DIR 없음 — skip"; exit 0; }

# 신규/변경 단편을 찾고 reader portion 으로 분리.
PROCESS_OUTPUT=$(python3 - "$ROOT" "$STATE_FILE" "$WRITING_DIR" <<'PY'
import hashlib, json, os, re, sys, tempfile
from pathlib import Path

ROOT = Path(sys.argv[1])
STATE = Path(sys.argv[2])
WDIR = Path(sys.argv[3])

INTERNAL_HEADINGS = [
    re.compile(r"^##\s+메타\s*\(.*cold reader.*\)", re.IGNORECASE),
    re.compile(r"^##\s+.*cold reader.*안.*읽", re.IGNORECASE),
    re.compile(r"^##\s+메타\b"),
    re.compile(r"^##\s+§?메타\b"),
    re.compile(r"^##\s+트립\s*와이어?\s*자기?\s*검사"),
    re.compile(r"^##\s+도메인\s+위반"),
    re.compile(r"^##\s+v0\s*[→\-]\s*v0\+\s*보강"),
    re.compile(r"^##\s+§?\d+\.\s*진화\s*룰\s*후보"),
]

def strip_frontmatter(text):
    if not text.startswith("---"):
        return None, text
    end = text.find("\n---", 3)
    if end < 0:
        return None, text
    return text[3:end].strip(), text[end + 4:].lstrip("\n")

def split_reader(body):
    lines = body.split("\n")
    for i, line in enumerate(lines):
        if any(re.match(line) for re in INTERNAL_HEADINGS):
            return "\n".join(lines[:i]).rstrip()
    return body

def extract_title(fm_text):
    if not fm_text:
        return None
    for line in fm_text.splitlines():
        m = re.match(r"^title:\s*(.+?)\s*$", line)
        if m:
            return m.group(1).strip().strip("'\"")
    return None

def extract_fm_value(fm_text, key):
    if not fm_text:
        return None
    pat = re.compile(r"^" + re.escape(key) + r":\s*(.+?)\s*$")
    for line in fm_text.splitlines():
        m = pat.match(line)
        if m:
            return m.group(1).strip().strip("'\"")
    return None

# 알림 완료 hash 읽기
notified = set()
if STATE.exists():
    for line in STATE.read_text().splitlines():
        line = line.strip()
        if line and not line.startswith("#"):
            notified.add(line.split("\t")[0])

results = []
for p in sorted(WDIR.rglob("*.md")):
    if p.name.startswith("."):
        continue
    text = p.read_text(errors="ignore")
    h = hashlib.sha256(text.encode("utf-8")).hexdigest()
    if h in notified:
        continue
    fm, body = strip_frontmatter(text)
    reader_status = (extract_fm_value(fm, "reader_first_status") or "").lower()
    if reader_status in {"candidate", "fail", "failed"}:
        results.append({
            "hash": h,
            "path": str(p.relative_to(ROOT)),
            "skip": True,
            "reason": f"reader_first_status={reader_status}",
        })
        continue
    reader = split_reader(body)
    if len(reader.strip()) < 200:
        # 너무 짧으면 reader 분리가 잘못됐거나 빈 파일 — skip + mark notified
        results.append({"hash": h, "path": str(p.relative_to(ROOT)), "skip": True, "reason": "too_short"})
        continue
    title = extract_title(fm) or p.stem
    rel = p.relative_to(ROOT)
    # 임시 파일에 reader-only 저장
    tmp = tempfile.NamedTemporaryFile(mode="w", suffix=".md", delete=False, prefix=p.stem + "-reader-")
    tmp.write(f"# {title}\n\n*Source: {rel}*\n\n---\n\n{reader.strip()}\n")
    tmp.close()
    results.append({
        "hash": h,
        "path": str(rel),
        "title": title,
        "tmp": tmp.name,
        "size": len(reader),
        "skip": False,
    })

print(json.dumps(results, ensure_ascii=False))
PY
)

if [[ "$PROCESS_OUTPUT" == "[]" ]]; then
  echo "[notify-writing] 신규 단편 없음"
  exit 0
fi

# 결과 처리 — 각 신규 파일 알림
echo "$PROCESS_OUTPUT" | python3 -c "
import json, sys
items = json.load(sys.stdin)
for it in items:
    tmp_or_reason = it.get('reason', '') if it.get('skip') else it.get('tmp', '')
    print('\\t'.join([it['hash'], it['path'], '1' if it.get('skip') else '0', tmp_or_reason, it.get('title', '')]))
" | while IFS=$'\t' read -r HASH RELPATH SKIP TMPFILE TITLE; do
  if [[ "$SKIP" == "1" ]]; then
    REASON="${TMPFILE:-skipped}"
    echo "[notify-writing] skip ($REASON) — $RELPATH"
    echo "$HASH	$RELPATH	skipped:$REASON" >> "$STATE_FILE"
    continue
  fi
  URL="https://prompt.codepoet.site/view.html?path=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$RELPATH', safe=''))")"
  COMMENT="📖 *${TITLE}*

자율 루프가 박은 신규 단편. reader portion 만 첨부 (frontmatter / 메타 / audit 자기 검사 제외).

전체 보기 (디버그 포함): <${URL}|prompt.codepoet.site/view.html?path=${RELPATH}>"
  if "$ROOT/scripts/slack-upload-image.sh" "$TMPFILE" "$TITLE" "$COMMENT" 2>&1; then
    echo "[notify-writing] sent — $RELPATH"
    echo "$HASH	$RELPATH	sent	$(date -Iseconds)" >> "$STATE_FILE"
  else
    echo "[notify-writing] FAIL — $RELPATH (will retry next tick)"
  fi
  rm -f "$TMPFILE"
done
