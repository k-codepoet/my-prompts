#!/usr/bin/env bash
# tick.sh — my-prompts cron entry point
# 모든 cron tick 의 진입점. BOOTSTRAP.md §0 sanity check → claude -p 호출.
#
# 사용:
#   scripts/tick.sh                              # 기본 = checker mode (orchestrator)
#   scripts/tick.sh --mode checker               # 명시적
#   scripts/tick.sh --mode role --role <id>      # 특정 역할 1 회
#   scripts/tick.sh --mode role-rotate           # 활성 gen 의 orgs/ 를 라운드로빈
#
# 환경:
#   CLAUDE_BIN  (default: ~/.local/bin/claude)
#   MAX_BUDGET_USD  (default: state/budget.yml.per_tick_usd)

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

CLAUDE_BIN="${CLAUDE_BIN:-$HOME/.local/bin/claude}"
LOG="$ROOT/logs/cron.log"
TS="$(date -Iseconds)"

log() { echo "[$TS] [tick] $*" | tee -a "$LOG"; }
fail() { log "FAIL: $*"; exit 1; }

# ──────────────────────────────────────────────────────────
# 인자 파싱
MODE="checker"
ROLE=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --mode) MODE="$2"; shift 2;;
    --role) ROLE="$2"; shift 2;;
    -h|--help)
      sed -n '2,15p' "$0"; exit 0;;
    *) fail "unknown arg: $1";;
  esac
done

# ──────────────────────────────────────────────────────────
# Sanity check (BOOTSTRAP §0)
sanity() {
  python3 - "$ROOT" <<'PY'
import sys, yaml, os, glob
ROOT = sys.argv[1]
def fm(path):
    if not os.path.isfile(path): return {}
    text = open(path).read()
    if not text.startswith("---"): return {}
    end = text.find("\n---", 3)
    return yaml.safe_load(text[3:end]) or {}

# 1) current.md.paused
cur = fm(os.path.join(ROOT, "current.md"))
if cur.get("paused"):
    print("blocked:paused"); sys.exit(0)

# 2) seed.md.sealed
seed = fm(os.path.join(ROOT, "seed.md"))
if not seed.get("sealed"):
    print("blocked:seed_unsealed"); sys.exit(0)

# 3) decisions/open/ 임계
open_dir = os.path.join(ROOT, "decisions/open")
N = 5
ymls = [p for p in glob.glob(os.path.join(open_dir, "D-*.yml"))]
if len(ymls) >= N:
    print(f"blocked:queue_full({len(ymls)}>={N})"); sys.exit(0)

# 3.5) Type C (전략·비전·시드 영향) 미응답 자동 정지 (사용자 정책: 2 번)
#      응답 박힌 Type C 는 통과 — 다음 checker 가 apply-decisions 로 처리하게.
type_c_pending = []
for p in ymls:
    try:
        with open(p) as f:
            d = yaml.safe_load(f) or {}
    except Exception:
        continue
    if d.get("type") == "C" and not (d.get("response") or {}).get("decided_at"):
        type_c_pending.append(os.path.basename(p)[:-4])
if type_c_pending:
    print(f"blocked:type_c_pending({','.join(type_c_pending)})"); sys.exit(0)

# 4) gen 활성?
gen = cur.get("gen")
if gen is None:
    print("blocked:no_active_gen"); sys.exit(0)

# 5) 사용량 paused?
budget_path = os.path.join(ROOT, "state/budget.yml")
if os.path.isfile(budget_path):
    with open(budget_path) as f:
        b = yaml.safe_load(f) or {}
    if b.get("state", {}).get("paused_at"):
        print("blocked:budget_paused"); sys.exit(0)

print("ok")
PY
}

STATUS=$(sanity)
if [[ "$STATUS" != "ok" ]]; then
  log "$STATUS (mode=$MODE)"
  exit 0
fi

# ──────────────────────────────────────────────────────────
# Budget cap
PER_TICK_USD=$(python3 -c "import yaml; print(yaml.safe_load(open('$ROOT/state/budget.yml')).get('per_tick_usd', 0.30))")
MAX_BUDGET_USD="${MAX_BUDGET_USD:-$PER_TICK_USD}"

# ──────────────────────────────────────────────────────────
# 모드별 prompt 구성
PROMPT_FILE="$(mktemp)"
trap 'rm -f "$PROMPT_FILE"' EXIT

case "$MODE" in
  checker)
    cat > "$PROMPT_FILE" <<EOF
my-prompts orchestrator tick.

Read \`current.md\`, \`constitution.md\`, \`seed.md\`, and \`BOOTSTRAP.md\`.
Then execute exactly one tick following BOOTSTRAP §tick steps 0–5.

BOOTSTRAP §1 (사용자 응답 통합) 자동화:
- decisions/open/ 의 yml 중 response.decided_at 박힌 것이 있으면 직접 처리 말고
  scripts/apply-decisions.sh --apply <D-id> 를 호출. 그 스크립트가 trace append /
  closed/ 이동 / current.md 갱신 / Slack notify 까지 다 함.

Constraints:
- Do not modify constitution.md, seed.md, CHARTER.md, STRUCTURE.md, BOOTSTRAP.md.
- Active gen folder is generations/gen-N where N=current.md.gen.
- Append to ticks/, arguments/, decision-traces/ within that gen only.
- If a Type C (or any) decision needs to be opened, write decisions/open/D-<YYYYMMDD>-<seq>.yml
  from template.yml. **Immediately after writing**, call:
      scripts/slack-notify.sh decision_opened "🟡 Decision needed: <D-id>" "<short body with type, options summary, recommended pick, trace path>"
  This is mandatory — without it the human won't know a new HITL item exists.
- Keep this tick under \$$MAX_BUDGET_USD.
- Final user-facing summary: write a single line to stdout starting with TICK_SUMMARY:.

이미지 생성 프로토콜 (모든 모드 공통):
- 산출물 이해를 돕는 삽화가 필요하면 \`mcp__my-genai__generate_image\` 호출.
- **provider=comfyui (default), workflow="z-image-turbo"**. \`aspect_ratio\` 는 ComfyUI 에서
  무시 → 반드시 \`width\` + \`height\` 로 지정.
- 지원 비율 3 종 (sweet spot 2-5MP, 그 외 금지):
    | 의도              | width × height |
    |-------------------|----------------|
    | square (1:1)      | 1024 × 1024    |
    | landscape (16:9)  | 1344 × 768     |
    | portrait  (9:16)  | 768 × 1344     |
- *생성 직후*: \`.claude/hooks/post-image-gen.sh\` 가 자동으로 Slack 알림 발사 (사용자 즉시 봄).
  너는 별도 알림 안 해도 됨.
- *적재*: 반드시 \`scripts/save-image.sh\` 로 repo 안에 다운로드 + meta + timeline append:
    scripts/save-image.sh "<url>" "outputs/worldbuilding/<world>/illustrations/<slug>.png" \\
      --caption "<한 줄>" --prompt "<원본 prompt>" \\
      --source-artifact "<참조 md>" --source-section "<섹션>" \\
      --category illustration --creator "tick:<your-id>"
- 카테고리: illustration / location / character / event 중 적절한 것.
EOF
    ;;
  role)
    [[ -z "$ROLE" ]] && fail "--role required when --mode role"
    cat > "$PROMPT_FILE" <<EOF
my-prompts role tick — role: $ROLE.

Read \`generations/gen-N/orgs/$ROLE.md\` (your charter), \`current.md\`, and \`constitution.md\`.
Execute one task **strictly within your domain** per BOOTSTRAP §tick step 2.
Append your argument to generations/gen-N/cycles/cy-NNN/arguments/$ROLE-r<round>.md.

Constraints:
- Do not act outside your domain (other roles will object via trip-wires).
- Do not modify constitution.md, seed.md, CHARTER.md, STRUCTURE.md, BOOTSTRAP.md.
- Keep this tick under \$$MAX_BUDGET_USD.
- Final summary: TICK_SUMMARY: line.

이미지 생성 프로토콜 (필요 시):
- 도메인 이해 보강에 삽화가 도움되면 \`mcp__my-genai__generate_image\` 호출.
- **provider=comfyui, workflow="z-image-turbo"**. \`aspect_ratio\` 는 무시됨 → \`width\`+\`height\`.
  지원 3 종 (이 외 금지): 1024×1024 / 1344×768 / 768×1344.
- *생성 직후* Slack 알림은 \`.claude/hooks/post-image-gen.sh\` 가 자동 발사. 별도 호출 X.
- *적재*는 반드시 \`scripts/save-image.sh\` 로:
    scripts/save-image.sh "<url>" "outputs/worldbuilding/<world>/<category>/<slug>.png" \\
      --caption "<한 줄>" --prompt "<원본 prompt>" \\
      --source-artifact "<your argument or 참조 md>" \\
      --category illustration --creator "tick:$ROLE"
- art-director 는 본 프로토콜의 *주된 사용자*. 다른 조직도 자기 영역 시각화 가능하나,
  톤·매너 충돌 시 art-director 의견 우선.
EOF
    ;;
  role-rotate)
    # 활성 gen 의 orgs 중 하나를 round-robin 으로 선택.
    NEXT_ROLE=$(python3 - "$ROOT" <<'PY'
import sys, glob, os, yaml
ROOT = sys.argv[1]
state = os.path.join(ROOT, "state/.last-role")
cur_text = open(os.path.join(ROOT, "current.md")).read()
end = cur_text.find("\n---", 3)
gen = (yaml.safe_load(cur_text[3:end]) or {}).get("gen", 1)
orgs_dir = os.path.join(ROOT, f"generations/gen-{gen:03d}/orgs")
orgs = sorted(os.path.basename(p)[:-3] for p in glob.glob(os.path.join(orgs_dir, "*.md")))
if not orgs:
    print(""); sys.exit(0)
last = open(state).read().strip() if os.path.isfile(state) else ""
idx = (orgs.index(last) + 1) % len(orgs) if last in orgs else 0
print(orgs[idx])
open(state, "w").write(orgs[idx])
PY
    )
    if [[ -z "$NEXT_ROLE" ]]; then
      log "role-rotate: no orgs in active gen — skipping"
      exit 0
    fi
    ROLE="$NEXT_ROLE"
    log "role-rotate → $ROLE"
    cat > "$PROMPT_FILE" <<EOF
my-prompts role tick (rotated) — role: $ROLE.

Same protocol as --mode role for $ROLE.
Read your charter at generations/gen-N/orgs/$ROLE.md and act in-domain only.
TICK_SUMMARY: line at end. Cap \$$MAX_BUDGET_USD.
EOF
    ;;
  *) fail "unknown mode: $MODE";;
esac

# ──────────────────────────────────────────────────────────
# Claude 호출
log "calling claude (mode=$MODE${ROLE:+ role=$ROLE} budget=\$$MAX_BUDGET_USD)"
CLAUDE_OUT="$(mktemp)"
trap 'rm -f "$PROMPT_FILE" "$CLAUDE_OUT"' EXIT

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

# 결과 처리
SUMMARY=$(grep -m1 '^TICK_SUMMARY:' "$CLAUDE_OUT" | sed 's/^TICK_SUMMARY: *//' || echo "(no summary)")

if [[ "$STATUS" == "ok" ]]; then
  log "done — $SUMMARY"
  # 비용은 응답에서 정확히 못 뽑으므로 per_tick_usd 를 보수적으로 누적 (최악의 경우).
  "$ROOT/scripts/usage-budget.sh" add "$MAX_BUDGET_USD" all >>"$LOG" 2>&1 || true
  # publishing surface (prompt.codepoet.site) 자동 갱신 — manifest.json 재생성.
  # nginx + 클라이언트 렌더러가 이걸 읽어 네비게이션을 즉시 갱신.
  "$ROOT/scripts/generate-site-manifest.sh" >>"$LOG" 2>&1 || true
else
  log "ERROR — see $CLAUDE_OUT (last 20 lines logged)"
  tail -20 "$CLAUDE_OUT" >> "$LOG"
  # 트리거 켜져 있으면 알림
  "$ROOT/scripts/slack-notify.sh" tick_failure "🟠 tick 실패 ($MODE${ROLE:+/$ROLE})" "$(tail -10 "$CLAUDE_OUT")" >/dev/null 2>&1 || true
fi
