#!/usr/bin/env bash
# apply-decisions.sh — pick up decided decisions, run follow-up, move to closed/
#
# 사용:
#   scripts/apply-decisions.sh                        # 전체 dry-run (prompt 만 출력)
#   scripts/apply-decisions.sh D-XXX                  # 특정 1 건 dry-run
#   scripts/apply-decisions.sh --apply                # 실제 실행 (decided 모두)
#   scripts/apply-decisions.sh D-XXX --apply          # 특정 1 건 실행
#   scripts/apply-decisions.sh --apply --max-budget-usd 3.0
#
# 동작 (BOOTSTRAP §1 사용자 응답 통합 단계의 자동화):
#   1. decisions/open/D-*.yml 중 response.decided_at != null 픽업
#   2. 각 결정마다 follow-up prompt 빌드 → (apply 시) claude -p 호출
#   3. 작성된 파일 (WROTE: 줄) + 요약 (TICK_SUMMARY:) 추출
#   4. decision-traces/D-*.md 끝에 §⑤ "응답 + 적용 결과" append
#   5. open/D-*.yml → closed/ 이동
#   6. current.md 의 active_decisions 에서 제거 + last_updated 갱신
#   7. slack-notify.sh adhoc 알림
#
# 환경:
#   CLAUDE_BIN     (default: ~/.local/bin/claude)
#   MAX_BUDGET_USD (default: 1.50 — apply 는 tick 보다 무거움)

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

CLAUDE_BIN="${CLAUDE_BIN:-$HOME/.local/bin/claude}"
LOG="$ROOT/logs/cron.log"
TS="$(date -Iseconds)"

log() { echo "[$TS] [apply] $*" | tee -a "$LOG"; }
fail() { log "FAIL: $*"; exit 1; }

# ruamel.yaml 필수 (yml round-trip). repo .venv 우선, 없으면 system python.
PY="$ROOT/.venv/bin/python"
[[ -x "$PY" ]] || PY="python3"
"$PY" -c "import ruamel.yaml" 2>/dev/null || fail "ruamel.yaml 필요 — '$PY -m pip install ruamel.yaml' 또는 .venv 활성화"

# ──────────────────────────────────────────────────────────
# 인자 파싱
APPLY=0
TARGET=""
MAX_BUDGET_USD="${MAX_BUDGET_USD:-1.50}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --apply) APPLY=1; shift;;
    --max-budget-usd) MAX_BUDGET_USD="$2"; shift 2;;
    -h|--help) sed -n '2,22p' "$0"; exit 0;;
    D-*) TARGET="$1"; shift;;
    *) fail "unknown arg: $1";;
  esac
done

# ──────────────────────────────────────────────────────────
# 픽업 (decided_at != null)
mapfile -t CANDIDATES < <("$PY" - "$ROOT" "$TARGET" <<'PY'
import sys, glob, os
from ruamel.yaml import YAML
ROOT, TARGET = sys.argv[1], sys.argv[2]
rt = YAML(typ='rt')
for p in sorted(glob.glob(os.path.join(ROOT, 'decisions/open/D-*.yml'))):
    name = os.path.splitext(os.path.basename(p))[0]
    if TARGET and name != TARGET:
        continue
    try:
        with open(p) as f:
            d = rt.load(f) or {}
    except Exception as e:
        print(f"# parse-fail {p}: {e}", file=sys.stderr)
        continue
    if (d.get('response') or {}).get('decided_at'):
        print(p)
PY
)

if [[ ${#CANDIDATES[@]} -eq 0 ]]; then
  log "no decisions to apply${TARGET:+ ($TARGET)}"
  exit 0
fi

log "candidates: ${#CANDIDATES[@]}${TARGET:+ (target=$TARGET)} apply=$APPLY"

GEN=$("$PY" -c "import yaml; t=open('$ROOT/current.md').read(); end=t.find('\n---',3); print((yaml.safe_load(t[3:end]) or {}).get('gen', 1))")

# ──────────────────────────────────────────────────────────
# 결정마다 처리
for YML in "${CANDIDATES[@]}"; do
  DID=$(basename "$YML" .yml)
  log "── $DID ──"

  PROMPT_FILE="$(mktemp)"
  cat > "$PROMPT_FILE" <<EOF
my-prompts apply step — $DID.

응답이 박힌 결정을 산출물로 흡수하는 작업. BOOTSTRAP §1 (사용자 응답 통합) 의 자동화 단계.

읽기:
- $YML — 본 결정 (options_*, recommended, response, response_schema)
- constitution.md, seed.md, CHARTER.md (특히 §5 시드 역할 / §6 결정 프로토콜 / §9 진행 단계), BOOTSTRAP.md §⑦
- current.md (현 상태 포인터)

해야 할 일:
1. yml 의 response.* 를 읽고 picked 옵션의 의미를 확정
   - response_schema 가 있으면 각 key → options_<x>[picked] 매핑
   - response.notes 가 비어있지 않으면 그것을 사용자 추가 지시로 통째로 받아들일 것
2. 본 결정의 description / option pitches / option members / fits_seed / invariant_traps 를
   *직접 산출물로 변환*

가이드 (Type C with orgs+world 패턴 — D-001 형태):
   a. 픽된 orgs 옵션의 members 각각 → generations/gen-$(printf '%03d' "$GEN")/orgs/<id>.md (1 명당 1 페이지 charter)
      charter 형식 (각 절은 짧고 농축):
        # <id> Charter
        ## 도메인 (이 조직이 관할하는 파일 / 폴더 / 영역)
        ## 챔피언 (이 조직이 *옹호하는* 가치 — yml 의 champions 그대로)
        ## 트립와이어 (다른 조직과 충돌 시 본 조직이 발화하는 조건)
        ## 매니페스토 매핑 (seed.md §② 핵심어 7 단어 중 어느 것을 1차로 챔피언하는가)
        ## 첫 task 후보 2–3 개 (cy-001 첫 사이클에서 BOOTSTRAP §2 의 "다음 task 1 개" 로 발행 가능한 후보)
   b. 픽된 world 옵션 → outputs/worldbuilding/<slug>/bible-v0.1.md
      (slug = world title 의 영문 부분을 kebab-case 로. 예: title='여정 자체가 지도 (The Map is the Journey)' → 'the-map-is-the-journey')
      bible-v0.1 형식:
        # <world title> — Bible v0.1
        ## 한 줄 (yml 의 one_line 그대로 + 짧은 부연)
        ## 핵심 메타포 (pitch 의 2–3 핵심 이미지 — 시각화 가능한 구체)
        ## 자연·문화·시대 (세계의 물리/사회적 결 — 짧게)
        ## 매니페스토 핵심어 매핑 (yml 의 manifesto_keywords 각각이 본 세계에서 어떻게 *체화* 되는지)
        ## invariant_traps 자기 검증 (yml 의 invariant_traps 각 항목에 대한 본 v0.1 의 응답)
        ## 30 초 vertical slice 후보 3 개 (게임/단편/이미지 각 1 — yml 의 derivation_examples 구체화)

3. 작성한 *모든* 새 파일 경로를 다음 형식으로 stdout 에 출력 (apply-decisions.sh 가 이 줄을 추출):
       WROTE: <relative/path>
4. 마지막 줄:
       TICK_SUMMARY: <한 줄 요약>

제약:
- constitution.md / seed.md / CHARTER.md / STRUCTURE.md / BOOTSTRAP.md 수정 금지
- $YML 직접 수정 금지 — 이동·trace append 는 apply-decisions.sh 가 처리
- 활성 gen 폴더 = generations/gen-$(printf '%03d' "$GEN")
- 본 호출 budget cap: \$$MAX_BUDGET_USD
- 매니페스토 핵심어 (seed.md §② 의 7 단어) 가 산출물에서 *명시적으로* 매핑되도록 할 것
- yml 의 invariant_traps / cost / fits_seed 를 산출물에서 의식적으로 다룰 것
- 산출물은 *그 자체로 읽혀야* 함 (sub-context 가정 최소화)
EOF

  if [[ "$APPLY" -eq 0 ]]; then
    echo
    echo "===== DRY RUN: $DID ====="
    echo "Budget cap: \$$MAX_BUDGET_USD"
    echo "Prompt size: $(wc -c < "$PROMPT_FILE") bytes"
    echo "활성 gen: gen-$(printf '%03d' "$GEN")"
    echo "── prompt ──"
    cat "$PROMPT_FILE"
    echo "── end ──"
    rm -f "$PROMPT_FILE"
    continue
  fi

  # ────────────────────────────────────────────────────────
  # apply: claude -p 호출
  log "calling claude (budget=\$$MAX_BUDGET_USD)"
  CLAUDE_OUT="$(mktemp)"

  if "$CLAUDE_BIN" -p \
      --max-budget-usd "$MAX_BUDGET_USD" \
      --add-dir "$ROOT" \
      --add-dir "$HOME/k-codepoet" \
      --dangerously-skip-permissions \
      "$(cat "$PROMPT_FILE")" > "$CLAUDE_OUT" 2>&1; then
    STATUS="ok"
  else
    STATUS="error"
  fi

  rm -f "$PROMPT_FILE"

  if [[ "$STATUS" != "ok" ]]; then
    log "ERROR — $DID claude 실패. 마지막 20 줄 → $LOG"
    tail -20 "$CLAUDE_OUT" >> "$LOG"
    "$ROOT/scripts/slack-notify.sh" tick_failure "🟠 apply 실패 $DID" "$(tail -10 "$CLAUDE_OUT")" >/dev/null 2>&1 || true
    rm -f "$CLAUDE_OUT"
    continue
  fi

  WRITTEN=$(grep '^WROTE:' "$CLAUDE_OUT" | sed 's/^WROTE: *//' || echo "")
  SUMMARY=$(grep -m1 '^TICK_SUMMARY:' "$CLAUDE_OUT" | sed 's/^TICK_SUMMARY: *//' || echo "(no summary)")
  log "$DID done — $SUMMARY"
  if [[ -n "$WRITTEN" ]]; then
    log "files: $(echo "$WRITTEN" | tr '\n' ' ')"
  else
    log "WARNING: claude reported no WROTE: lines — git status 로 보강 추천"
  fi

  # ────────────────────────────────────────────────────────
  # trace append + yml 이동 + current.md 갱신 (atomic 한 묶음)
  "$PY" - "$ROOT" "$DID" "$YML" "$WRITTEN" "$SUMMARY" <<'PY'
import sys, os, datetime, shutil, io
from ruamel.yaml import YAML
ROOT, DID, YML, WRITTEN, SUMMARY = sys.argv[1:6]
rt = YAML(typ='rt')
rt.preserve_quotes = True
rt.indent(mapping=2, sequence=4, offset=2)
rt.width = 4096

with open(YML) as f:
    d = rt.load(f) or {}
trace_rel = d.get('trace', '')
trace_path = os.path.join(ROOT, trace_rel) if trace_rel else ''
resp = dict(d.get('response') or {})
applied_at = datetime.datetime.now(datetime.timezone.utc).isoformat(timespec='seconds')

# 1) trace md §⑤ append
files_md = '\n'.join(f'  - `{p}`' for p in WRITTEN.strip().splitlines() if p.strip()) or '  - (claude 가 WROTE: 줄을 출력 안 함 — git status 로 확인 필요)'
resp_table = '\n'.join(f'| `{k}` | `{v!r}` |' for k, v in resp.items() if v is not None) or '| (empty) | |'
append_text = f"""

---

## ⑤ 사용자 응답 + 적용 결과

| 항목 | 값 |
|------|----|
{resp_table}
| applied_at | {applied_at} |

**Summary**: {SUMMARY}

**작성된 파일**:
{files_md}
"""

if trace_path and os.path.isfile(trace_path):
    with open(trace_path, 'a') as f:
        f.write(append_text)
    print(f"trace appended: {trace_rel}")
else:
    print(f"WARNING: trace not found at {trace_path or '(empty)'} — skipped append", file=sys.stderr)

# 2) yml 이동 open/ → closed/
closed_dir = os.path.join(ROOT, 'decisions/closed')
os.makedirs(closed_dir, exist_ok=True)
new_path = os.path.join(closed_dir, os.path.basename(YML))
shutil.move(YML, new_path)
print(f"moved: decisions/open/{os.path.basename(YML)} → decisions/closed/")

# 3) current.md frontmatter 갱신
cur_path = os.path.join(ROOT, 'current.md')
text = open(cur_path).read()
end = text.find('\n---', 3)
fm = rt.load(text[3:end]) or {}
ad = list(fm.get('active_decisions') or [])
if DID in ad:
    ad.remove(DID)
    fm['active_decisions'] = ad
fm['last_updated'] = applied_at
buf = io.StringIO()
rt.dump(fm, buf)
new_fm = buf.getvalue().rstrip('\n')
new_text = '---\n' + new_fm + '\n---' + text[end+4:]
open(cur_path, 'w').write(new_text)
print(f"current.md: active_decisions={ad}")
PY

  # ────────────────────────────────────────────────────────
  # Slack notify
  {
    echo "$SUMMARY"
    echo
    echo "*작성된 파일*"
    echo "\`\`\`"
    echo "$WRITTEN"
    echo "\`\`\`"
    echo "_trace appended · open/ → closed/ · current.md updated_"
  } | "$ROOT/scripts/slack-notify.sh" adhoc "✅ $DID applied" >/dev/null 2>&1 || true

  rm -f "$CLAUDE_OUT"
  log "$DID applied — closed/ 이동 완료"
done

log "all done"
