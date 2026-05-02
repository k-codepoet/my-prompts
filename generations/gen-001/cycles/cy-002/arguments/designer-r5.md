---
artifact: argument
org: designer
gen: 1
cycle: cy-002
round: r5 (cy-002 r2 묶음 종결 후 thin patch — A4 정식 룰 자가 적용 1 호 baseline + concept v0.2 r6 이월 박음)
authored_at: 2026-05-02
authored_by: designer
world: the-map-is-the-journey@v0.5
source_charter: generations/gen-001/orgs/designer.md
source_task_queue: generations/gen-001/cycles/cy-002/task-queue-r1-r2.md
source_evolution_rules: generations/gen-001/cycles/cy-002/evolution-rules-v1.md  # §A.A4
source_concept_v0_1: outputs/design/g-the-map-walker/concept-v0.1.md
source_designer_r4: generations/gen-001/cycles/cy-002/arguments/designer-r4.md
source_designer_r4_plus: generations/gen-001/cycles/cy-002/arguments/designer-r4+.md
source_walk_trace_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
source_manual_run_log_002: outputs/code/g-the-map-walker/manual-run-log-20260502-002.md
source_bible_v0_5_score: outputs/alignment/the-map-is-the-journey/bible-v0.5-score.md
source_prototype_main: outputs/code/g-the-map-walker/prototype/src/main.ts
champions_keywords_primary: [움직임]
champions_keywords_secondary: [시간이 곧 나, 진심]
target: |
  cy-002 r2 묶음 8/8 종결 후 (tick-055) designer 영역 thin patch 1 호.
  (1) A4 정식 룰 (`evolution-rules-v1 §A.A4`) 자가 적용 1 호 baseline 박음 — STEP_DISTANCE_RATIO 가드 v1 4 항을 *현 main.ts disk reality* 위에 검수 → drift 0.
  (2) concept v0.2 발행은 input A (manual-run-log-002 7/7) 미도달로 r6 이월 박음 — input B (bible v0.5 e=0.95) 만 도착.
  (3) 본 r5 처치 자리 침범 0 — 메카닉 PR 자리 부재 + concept v0.2 본문 본 r5 안 0 자리.
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 본문 직접 인용 0. 매니페스토 매핑은 charter §매니페스토 매핑 인용만.
  - #2 단일 진실: main.ts L14/L17/L23/L25 + walk-trace-spec-v0+ frontmatter L17 (`delta_from_v0`) + bible-v0.5-score frontmatter (`verdict: pass 9.74`) + manual-run-log-20260502-002 frontmatter (`status: instrumentation_ready / interactive_pending`) 직접 인용. 신규 사실 0 / 신규 hex 0 / 신규 인물 0.
  - #4 사람 결정 우회 금지: D-20260502-001 picked=`ambitious` §c r2 묶음 종결 후 자가 적용 자리. 신규 결정 발의 0.
  - #6 추적 가능성: A4 룰 자가 적용 1 호 baseline 박음 + concept v0.2 r6 이월 frontmatter 박음.
  - #7 수동 검증 우선 (Iron Law): 본 r5 = *spec_derived* — runtime 측정 자리 (manual-run-log-002 §7 항 *runtime spawn count* / *연속 4 자국 spawn 0.5 s 지연*) 는 implementer 영역 보전.
  - #8 현재성 단일: cy-002 vertical slice 1 호 표적 = the-map-walker 단일 유지.
  - forbidden-language-v0 §1~§8 grep — 본 본문 *영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히* 적중 0.
---

# designer r5 — A4 정식 룰 자가 적용 1 호 baseline + concept v0.2 r6 이월 박음 (cy-002 r2 묶음 종결 후 thin patch)

> 본 r5 = cy-002 r2 묶음 8/8 종결 (tick-055) 후 자리 designer 영역 thin patch 1 호.
> A4 정식 룰 (`evolution-rules-v1.md §A.A4`) 의 *자가 적용 1 호 baseline* — 메카닉 PR 부재 자리에서 *현 main.ts 상수 disk reality* 위에 가드 v1 4 항을 검수 박음 (forward-looking 가드의 baseline 자리 박음 1 호 사례).
> concept v0.2 발행은 input A (manual-run-log-20260502-002 7/7 인터랙티브 round) 미도달 자리 — r6 이월 박음 (영역 보전).

---

## 1 한 줄 — 본 r5 의 두 자리

- **자리 (a)**: STEP_DISTANCE_RATIO 가드 v1 (designer-r4 §3.2) 4 항을 *현 main.ts L14/L17/L23/L25* 위에 baseline 검수 → **drift 0 / spec PASS**. A4 정식 룰 자가 적용 1 호 사례 박음.
- **자리 (b)**: concept v0.2 발행 input A (manual-run-log-002 7/7) 미도달 → **r6 이월 박음** (input B = bible v0.5 e=0.95 도착 ✓ / input A 미도달 ✗ → 1/2 도착 자리 baseline 박음).

---

## 2 자리 (a) — A4 정식 룰 자가 적용 1 호 baseline 검수 (4 항)

### 2.1 disk reality 박음 (단일 진실 — main.ts 직접 인용)

| 상수 | 값 | main.ts 줄 |
|------|----|----------|
| `STEP_DISTANCE_RATIO` | `1 / 60` | L14 |
| `SIDE_RECEPTION_RADIUS_RATIO` | `1 / 32` | L17 |
| `TOGETHER_DIST_RATIO` | `1 / 16` | L23 |
| `FACING_HISTORY_N` | `8` | L25 |

→ designer-r4 §2.1 / §3.1 인용 표와 1:1 일치 = **drift 0 검수**.

### 2.2 가드 v1 4 항 검수 (designer-r4 §3.2)

| 항 | 룰 | 본 baseline 검수 | 결과 |
|---|------|--------------|------|
| 1 | *시각 자리 정합* — TOGETHER 1/16 = 3.75 step / SIDE 1/32 = 1.875 step / 자국빛 1/80 = 0.75 step / 첫 자국 자국빛 1/40 = 1.5 step 모두 [0.5, 5.0] step 범위 안 | 4 자리 모두 in-range (designer-r4 §3.1 표 인용) | **PASS** |
| 2 | *30 초 빌드 정합* — 8 step (concept v0.1 §2 3-8 초 자리) × `1/60` = 화면 폭의 13.33% — [8%, 25%] 범위 안 | `8/60 = 0.1333` ∈ [0.08, 0.25] | **PASS** |
| 3 | *5 분 세션 정합* — 5 분 안 누적 자국 ≥ 12 점 (concept v0.1 §7) + *빈 종이 ≥ 60%* (visual-bible §2) 정합 | spec_derived: 12 자국 × `(1/80)² × π × 0.5` ≈ 0.3% (자국빛 면적 ≤ 8% 캡 안) — *빈 종이 ≥ 60%* 임계 위반 0. **runtime 측정**은 manual-run-log-002 §7 *spawn count* + §3 *5 분 충돌 0* 자리 (implementer 영역) | **PASS (spec_derived)** + runtime 보류 |
| 4 | *walk-trace-spec frontmatter 박음* — `STEP_DISTANCE_RATIO=<new>` 가 `delta_from_v0` 줄에 1 줄 박힘 + 가드 통과 ack 1 줄 | walk-trace-spec-v0+ L17 `delta_from_v0` 자리 박힘 ✓ — **현재 상수 = 초기값 (변경 0)** → §4 trigger 자리 부재 = N/A (forward-looking 가드의 baseline 자리) | **N/A (baseline)** |

→ **baseline 평결 = spec PASS (3/3 trigger 항 + 1/1 forward-looking N/A)**. 가드 v1 의 *baseline 자리 박음 1 호 사례* = 룰 A4 자가 적용 1 호 사례 박음.

### 2.3 트립와이어 3 종 (가드 §3.3) 자가진단

| 트립 | 본 baseline 자가진단 | 발화? |
|------|----------|------|
| **T1** — 시각 자리 1 자리 이상 범위 외 (옆 점 ≥ 5 step 멀어 보임 / < 0.5 step 합쳐 보임) | 4 자리 모두 in-range (§2.2 §1) | 미발화 |
| **T2** — 30 초 빌드 8 step 시각 13% 범위 외 | 13.33% ∈ [8%, 25%] (§2.2 §2) | 미발화 |
| **T3** — 5 분 누적 12 점 화면 침범 (자국빛 ≤ 8% 캡 또는 *빈 종이 ≥ 60%* 위반) | 12 자국 × ~0.3% = 자국빛 면적 ≤ 4% (캡 안), runtime 보류 자리 (implementer §7 항) | 미발화 (spec_derived) |

### 2.4 charter §트립와이어 3 종 자가진단

| 트립 | 본 r5 자가진단 | 발화? |
|------|----------|------|
| 메카닉 약화 → 코어 루프 끊김 | 본 r5 = *baseline 검수* + *r6 이월 박음* — 메카닉 변동 0 | 미발화 |
| vertical slice 야심 → 30 초 빌드 못 보임 | 본 r5 = thin patch (자가 적용 1 호 baseline) — vertical slice 분량 변동 0 | 미발화 |
| lore 두꺼움 → 게임 *읽기 자료* 변질 | 본 r5 = baseline 검수 표 1 자리 — 게임 안 텍스트 추가 0 | 미발화 |

---

## 3 자리 (b) — concept v0.2 발행 input 도착 baseline + r6 이월 박음

### 3.1 input 도착 표 (단일 진실)

| input | 룰 | 도착 자리 | 도착 여부 |
|------|------|---------|--------|
| **A** — implementer manual-run-log-20260502-002 인터랙티브 round 7/7 도달 | designer-r4 §4 | manual-run-log-002 frontmatter `status: instrumentation_ready / interactive_pending` (직접 인용) | **미도달** ✗ |
| **B** — voice-keeper bible v0.4 e ≥ 0.95 (또는 v0.5 단독 e ≥ 0.95) | designer-r4 §4 + cy-002 evolution-rules §A.A3 | bible-v0.5-score frontmatter `verdict: pass (9.74 / 10 — *진심* / *연대* / *축복* 0.9 → 0.95 동시 격상)` (직접 인용) | **도착** ✓ |

→ **1/2 input 도착 자리 = concept v0.2 발행 임계 미도달**. r6 이월 박음 (영역 보전).

### 3.2 concept v0.2 r6 이월 박음 (영역 보전 명시)

본 r5 안 *concept v0.2* 본문 박음 0 자리. r6 (다음 designer 발언) 자리 보전:

- input A 도착 자리 = implementer 영역 — manual-run-log-002 7/7 도달 박음. 본 r5 침범 0.
- input B 도착 자리 = voice-keeper 영역 — bible v0.5-score 직접 인용만. 본 r5 침범 0.
- concept v0.2 본문 (3 안 *손바닥에 비친 지도* + *호흡 인식 자리* 후속) = designer r6 자리 보전 — 본 r5 박음 0.

### 3.3 r6 자리 박힘 조건 (forward-looking)

r6 진입 임계:
1. manual-run-log-20260502-002 frontmatter `status: pass (7/7)` 박힘 (implementer 영역).
2. bible v0.5 e ≥ 0.95 도착 ✓ (voice-keeper r3 cy-002 도달 박힘).

→ **1 → 2 순으로 도착 시 r6 진입 자리** 박음. r6 본문 = (a) 3 안 *손바닥에 비친 지도* (자립 7/7 도달) + (b) *호흡 인식 자리* M3 후속 (review.md §5.2 designer 인계).

---

## 4 자리 분리 박음 (영역 보전 — 7 조직 침범 0)

| 영역 | 본 r5 침범 자리 | 보전 |
|------|----------|------|
| implementer | manual-run-log-002 §7 항 runtime 측정 자리 침범 0 — frontmatter 직접 인용만 | ✓ |
| art-director | F9 처치 자리 (palette-patch §B.3 / visual-bible v0.4) 침범 0 — 본 r5 시각 룰 0 자리 | ✓ |
| writer | 인규 *업* 단편 무발화 회랑 후속 침범 0 — designer-r4 §5 인계만 | ✓ |
| loremaster | bible v0.5 / regions / objects-items / chronicle v1 침범 0 — frontmatter 직접 인용만 | ✓ |
| voice-keeper | bible v0.5-score 측정값 침범 0 — frontmatter 직접 인용만 | ✓ |
| critic | cold reader 5 인 시뮬 침범 0 — 본 r5 cold-read self-check 7 항만 | ✓ |
| orchestrator | 결정 발의 0 / review.md baseline 침범 0 — A4 자가 적용 1 호 ack 1 줄 인계만 | ✓ |

→ **자리 분리 박음 7/7** = designer-r4+ §2 *3 단계 자리 분리* 의 누적 사례 1 호 (catalog → 처치 → baseline 자가 적용 자리 분리).

---

## 5 협업 인계

- **implementer (r3 자리)**: 본 r5 §2.2 §3 항 (5 분 세션 정합 — runtime 측정 자리) + §3.3 (manual-run-log-002 7/7 도달 = r6 trigger) 두 자리가 implementer 영역 1 차 입력 자리. *runtime spawn count* + *연속 4 자국 spawn 0.5 s 지연 정확도 ± 0.1 s* 두 임계 measure 박음 자리 (designer-r4 §5 인계 1 호 누적).
- **art-director (r3 자리)**: 본 r5 §2.2 §1 항 (시각 자리 정합 4 자리 = TOGETHER / SIDE / 자국빛 / 첫 자국 자국빛) 이 visual-bible v0.4 §시간 룰 자리에 *step 단위 환산값* 1 줄 박음 자리 권고 (designer-r4 §5 누적 인계).
- **critic (r2 자리)**: 본 r5 §2.3 (T1 / T2 / T3 미발화) 가 cold reader 5 인 시뮬 외부 시선 마찰 0 자리 — critic r2 단편 +3 + 6 우표 cold-read 5/5 임계 인접.
- **loremaster (r3 자리)**: 본 r5 §3.3 (r6 진입 후 *호흡 인식 자리* M3 후속) 이 bible v0.5 §방향 자리 *지역* (의지소 / 자국빛 / 음습한 길 / 침대 박차 / 도착-아닌-여정) 후속 자리 인계 — *방향 흔들림 = M5 무발화 회랑* (designer-r4 §2.2) 의 lore 안 자리 인계.
- **voice-keeper (r4 자리)**: 본 r5 §3.1 (bible v0.5 e=0.95 도착 baseline) 이 *세 축 균형 대시보드 v1* 입력 자리 인계 (designer-r4 §5 누적).
- **writer (r5 자리)**: 본 r5 §3.3 (r6 *호흡 인식 자리* M3) 이 인규 *업* 단편 +1 *호흡 = 시간 = 자기* 변주 글 비트 1 자리 후보 (writer 영역 보전 — 본 r5 발의 0).
- **orchestrator (r3 자리)**: 본 r5 = A4 정식 룰 자가 적용 1 호 baseline 박음 — review.md cy-002 진척 §5.2 designer 행 *r5 baseline 박음 + r6 이월* 1 줄 박음 자리 인계.

---

## 6 self-check (designer 7 항)

| # | 항목 | 본 r5 통과 여부 |
|---|------|------------|
| 1 | A4 정식 룰 자가 적용 1 호 baseline 박음 | ✅ §2 (4 항 검수 + drift 0) |
| 2 | 영역 위반 0 | ✅ §4 (7 조직 침범 0) |
| 3 | 트립와이어 미발화 | ✅ §2.3 + §2.4 (가드 트립 3 종 + charter 트립 3 종 모두 미발화) |
| 4 | 단일 진실 (spec / score / log frontmatter 인용) | ✅ §2.1 + §3.1 (main.ts / walk-trace-spec / bible-v0.5-score / manual-run-log-002 직접 인용) |
| 5 | 신규 결정 발의 0 | ✅ |
| 6 | concept v0.2 본문 박음 0 (r6 이월 박음) | ✅ §3 |
| 7 | 매니페스토 직접 인용 0 | ✅ (charter §매니페스토 매핑 인용만, 본문 직접 인용 0) |

**자기 평가**: **7 / 7 통과**.

---

## 7 forbidden-language-v0 §1~§8 grep 자기 검수

본 산출 (designer-r5.md 본문) 적중:
- §1 *영원·언제나·어디에나·항상*: 0
- §2 *절대적·완벽·완전히*: 0
- §3 *영웅·불멸·승리*: 0
- §4 *결국·반드시·당연*: 0
- §5 *기적·운명·축복받은*: 0 (*축복* 매니페스토 키워드 직접 인용 외 0)
- §6 *우정·사랑은·친구는*: 0
- §7 *자유·해방·구원*: 0
- §8 *진정한·진정으로·진실로*: 0 (*진심* 매니페스토 키워드 직접 인용 외 0)

**적중 0 호**.

---

## 8 메타

- 본 r5 = cy-002 r2 묶음 8/8 종결 후 (tick-055) designer 영역 thin patch 1 호. **A4 정식 룰 자가 적용 1 호 baseline** 박음 — *forward-looking 가드의 baseline 자리* 1 호 사례.
- 본 r5 의 큰 자국 = (1) **가드 v1 4 항 baseline 검수 = spec PASS (3/3 trigger + 1/1 forward-looking N/A)** + drift 0 검수, (2) **concept v0.2 input 도착 1/2 baseline 박음** (B 도착 / A 미도달 → r6 이월), (3) **자리 분리 박음 7/7** (catalog → 처치 → baseline 자가 적용 자리 분리 누적 사례 1 호), (4) **영역 보전 침범 0** (7 조직 + concept v0.2 본문 r6 이월).
- 다음 designer 발언 (r6) = manual-run-log-002 7/7 도달 후 자리 — concept v0.2 (3 안 *손바닥에 비친 지도* + *호흡 인식 자리* M3 후속).
- 본 r5 발의 결정 0. 트립 발화 0. 영역 위반 0. 신규 hex 0 / 신규 사실 0 / 신규 인물 0 / 점수 산정 0.
