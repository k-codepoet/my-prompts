#!/usr/bin/env bash
# check-image-paths.sh — outputs/writing/**/*.md 안 markdown img 참조가
# disk 위 실제 파일을 가리키는지 검증. publishing surface (view.html
# resolveRelativeRefs) regression 자리 1 호 — 파일 rename / 삭제 후
# 본문 안 src 가 silent 로 깨지는 결을 잡는다.
#
# 동작: broken 자리가 있으면 stderr 로 적고 exit 0 유지 (tick 차단 안 함).
# 슬랙 트리거가 켜져 있으면 알림.
#
# 책임자: implementer (charter §publishing surface, F-20260502-1252-content-illustrations-routing must_fix).

set -uo pipefail

ROOT="${ROOT:-$(cd "$(dirname "$0")/.." && pwd)}"

OUT="$(python3 - <<PY
import os, re

ROOT = "$ROOT"
img_re = re.compile(r'!\[[^\]]*\]\(([^)]+?)\)')
broken = []
relative = []
total = 0

base = os.path.join(ROOT, "outputs/writing")
for r, _, files in os.walk(base):
    for f in files:
        if not f.endswith(".md"):
            continue
        path = os.path.join(r, f)
        rel = os.path.relpath(path, ROOT)
        with open(path, "r", encoding="utf-8") as fh:
            for lineno, line in enumerate(fh, 1):
                for m in img_re.finditer(line):
                    src = m.group(1).split()[0].strip('"\'')
                    total += 1
                    if re.match(r'^(?:[a-z]+:|//|#)', src, re.I):
                        continue
                    if src.startswith("/"):
                        target = os.path.join(ROOT, src.lstrip("/"))
                    else:
                        md_dir = os.path.dirname(path)
                        target = os.path.normpath(os.path.join(md_dir, src))
                        relative.append((rel, lineno, src))
                    if not os.path.exists(target):
                        broken.append((rel, lineno, src))

print(f"checked={total}")
print(f"broken={len(broken)}")
print(f"relative={len(relative)}")
print("---broken---")
for r in broken:
    print(f"  {r[0]}:{r[1]}  {r[2]}")
print("---relative---")
for r in relative:
    print(f"  {r[0]}:{r[1]}  {r[2]}")
PY
)"

CHECKED=$(echo "$OUT" | sed -n '1p' | sed 's/checked=//')
BROKEN=$(echo "$OUT" | sed -n '2p' | sed 's/broken=//')
RELATIVE=$(echo "$OUT" | sed -n '3p' | sed 's/relative=//')
BROKEN_LIST=$(echo "$OUT" | awk '/^---broken---$/{f=1;next} /^---relative---$/{f=0} f')
RELATIVE_LIST=$(echo "$OUT" | awk '/^---relative---$/{f=1;next} f')

if [[ "${BROKEN:-0}" -gt 0 ]]; then
  echo "[check-image-paths] $BROKEN broken / $CHECKED checked (relative=$RELATIVE)" >&2
  echo "$BROKEN_LIST" >&2
  if [[ -x "$ROOT/scripts/slack-notify.sh" ]]; then
    BODY="$(echo "$BROKEN_LIST" | head -20)"
    "$ROOT/scripts/slack-notify.sh" \
      image_paths_broken \
      "🟠 publishing surface — $BROKEN broken img refs / $CHECKED checked" \
      "$BODY" >/dev/null 2>&1 || true
  fi
else
  echo "[check-image-paths] ok — $CHECKED img refs resolve (relative=$RELATIVE)"
fi

# 드리프트 telemetry — relative `../` 참조는 routing 룰 (F-20260502-1252-content-illustrations-routing
# rule 2) 위반. 깨지진 않으니 차단은 안 하지만 writer/critic 가 보도록 stderr 에 적음.
LAST_REL_FILE="$ROOT/state/last-relative-img-count"
LAST_REL=""
if [[ -f "$LAST_REL_FILE" ]]; then
  LAST_REL="$(tr -dc '0-9' < "$LAST_REL_FILE" 2>/dev/null || true)"
fi

if [[ "${RELATIVE:-0}" -gt 0 ]]; then
  echo "[check-image-paths] drift — $RELATIVE relative-path img refs (root-anchored 룰 위반)" >&2
  echo "$RELATIVE_LIST" | head -20 >&2
  # 직전 tick 대비 늘어났을 때만 슬랙 발화 (누적 noise 회피 — F-20260502-1252-content-illustrations-routing
  # rule 2 의 *regression direction* 만 알림으로 끌어올림).
  if [[ -n "$LAST_REL" && "$RELATIVE" -gt "$LAST_REL" ]]; then
    DELTA=$((RELATIVE - LAST_REL))
    echo "[check-image-paths] drift increase — +$DELTA (was $LAST_REL → now $RELATIVE)" >&2
    if [[ -x "$ROOT/scripts/slack-notify.sh" ]]; then
      BODY="$(echo "$RELATIVE_LIST" | head -20)"
      "$ROOT/scripts/slack-notify.sh" \
        image_paths_relative_drift_increase \
        "🟠 publishing surface — relative-path img drift +$DELTA (was $LAST_REL → now $RELATIVE)" \
        "$BODY" >/dev/null 2>&1 || true
    fi
  fi
fi

# 다음 tick 비교 baseline 캐시 — RELATIVE 가 비어 있을 땐 건드리지 않음.
if [[ -n "${RELATIVE:-}" ]]; then
  mkdir -p "$ROOT/state" 2>/dev/null || true
  echo "$RELATIVE" > "$LAST_REL_FILE" 2>/dev/null || true
fi

exit 0
