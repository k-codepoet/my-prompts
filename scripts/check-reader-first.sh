#!/usr/bin/env bash
# check-reader-first.sh — deterministic reader-facing writing gate.
#
# Usage:
#   scripts/check-reader-first.sh outputs/writing/.../draft.md
#
# Checks:
#   - reader-facing portion only (frontmatter stripped, stops before meta/debug heading)
#   - first 500 Korean chars contain zero toxic world terms
#   - total toxic terms <= 3 per 1500 chars
#   - no paragraph contains more than one toxic term

set -euo pipefail

FILE="${1:-}"
[[ -n "$FILE" && -f "$FILE" ]] || {
  echo "usage: $0 <markdown-file>" >&2
  exit 2
}

python3 - "$FILE" <<'PY'
import math
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text(errors="ignore")

if text.startswith("---"):
    end = text.find("\n---", 3)
    if end >= 0:
        text = text[end + 4:].lstrip()

meta_markers = [
    r"^##\s+메타\b",
    r"^##\s+§?메타\b",
    r"^##\s+트립",
    r"^##\s+도메인\s+위반",
    r"^##\s+진화\s*룰",
]
lines = []
for line in text.splitlines():
    if any(re.search(pat, line) for pat in meta_markers):
        break
    lines.append(line)
reader = "\n".join(lines).strip()

terms = ["자국", "결", "손바닥", "손금", "새벽", "흙", "색조", "자국빛", "종이", "지도", "박힘", "자리", "박자", "본인", "옅게"]

def count_terms(s):
    return sum(s.count(term) for term in terms)

first_500 = reader[:500]
first_count = count_terms(first_500)
total_count = count_terms(reader)
chars = len(re.sub(r"\s+", "", reader))
allowed_total = max(3, math.ceil(chars / 1500) * 3) if chars else 0

paragraph_failures = []
for idx, para in enumerate([p.strip() for p in re.split(r"\n\s*\n", reader) if p.strip()], start=1):
    n = count_terms(para)
    if n > 1:
        paragraph_failures.append((idx, n, para[:80].replace("\n", " ")))

errors = []
if first_count:
    errors.append(f"first_500_toxic_terms={first_count} (expected 0)")
if total_count > allowed_total:
    errors.append(f"total_toxic_terms={total_count} (allowed {allowed_total}, chars={chars})")
if paragraph_failures:
    sample = "; ".join(f"p{idx}:{n} '{snippet}'" for idx, n, snippet in paragraph_failures[:5])
    errors.append(f"paragraph_toxic_terms>1: {sample}")

print(f"file={path}")
print(f"chars={chars}")
print(f"first_500_toxic_terms={first_count}")
print(f"total_toxic_terms={total_count}")
print(f"allowed_total={allowed_total}")

if errors:
    print("status=FAIL")
    for err in errors:
        print(f"ERROR: {err}")
    sys.exit(1)

print("status=PASS")
PY
