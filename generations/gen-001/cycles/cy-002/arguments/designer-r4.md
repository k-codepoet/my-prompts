---
artifact: argument
org: designer
gen: 1
cycle: cy-002
round: r1+r2 (묶음 진입 — D-20260502-001 picked=ambitious §c)
authored_at: 2026-05-02
authored_by: designer
world: the-map-is-the-journey@v0.4
source_charter: generations/gen-001/orgs/designer.md
source_task_queue: generations/gen-001/cycles/cy-002/task-queue-r1-r2.md
source_evolution_rules: generations/gen-001/cycles/cy-002/evolution-rules-v1.md  # A4 정식 룰
source_concept_v0_1: outputs/design/g-the-map-walker/concept-v0.1.md
source_walk_trace_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
source_manual_run_checklist: outputs/code/g-the-map-walker/manual-run-checklist-v0+.md
source_manual_run_log_001: outputs/code/g-the-map-walker/manual-run-log-20260502-001.md
source_prototype_main: outputs/code/g-the-map-walker/prototype/src/main.ts
champions_keywords_primary: [움직임]
champions_keywords_secondary: [시간이 곧 나, 진심]
r1_target: facing_history N=8 검수 — 인터랙티브 round 시뮬 통과
r2_target: STEP_DISTANCE_RATIO 가드 정식 박음 (concept v0.2 발행은 r3 이월)
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 본문 직접 인용 0. 매니페스토 매핑은 charter §매니페스토 매핑 인용만.
  - #2 단일 진실: walk-trace-spec-v0+ §M5 + concept v0.1 §3 + manual-run-checklist-v0+ §7 + main.ts L14/L25/L195/L259 직접 인용.
  - #4 사람 결정 우회 금지: D-20260502-001 picked=ambitious §c r1+r2 묶음 응답만. 신규 결정 발의 0.
  - #6 추적 가능성: A4 룰 (evolution-rules-v1 §A.A4) 의 사례 1 호 박음 자리. 메카닉 PR 자리는 본 검수 통과 후 implementer r4 자리.
  - #7 수동 검증 우선 (Iron Law): 본 검수 = *spec_derived* — manual-run-log-002 인터랙티브 round 자리는 implementer r4 영역.
  - #8 현재성 단일: cy-002 vertical slice 1 호 표적 = the-map-walker 단일 유지.
  - forbidden-language-v0 §1~§8 grep — 본 본문 *영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히* 적중 0.
---

# designer r4 — facing_history N=8 검수 + STEP_DISTANCE_RATIO 가드 박음 (cy-002 r1+r2 묶음)

> 본 r4 = D-20260502-001 picked=`ambitious` §c 의 designer 영역 r1+r2 묶음 1 회 진입.
> A4 정식 룰 (`evolution-rules-v1.md` §A.A4) *facing_history N=8 검수 + STEP_DISTANCE_RATIO 가드* 의 1 호 사례.
> r2 안 *concept v0.2* 발행은 implementer r4 manual-run-log-002 도착 후 r3 이월 (본 r4 침범 0).

---

## 1 한 줄 — 본 r4 의 두 자리

- **r1**: `recent_facing_history` 의 ring buffer 길이 `FACING_HISTORY_N=8` 의 *적정성* — circularMean 그래디언트 / 발화 임계 / 매니페스토 정합 세 측 검수 → **PASS**.
- **r2**: `STEP_DISTANCE_RATIO=1/60` 가드 박음 — 한 자리 룰 1 줄 + 트립와이어 3 종 + 변경 절차 박음 → **정식 가드 1 호 사례**.

---

## 2 r1 — facing_history N=8 검수 (4 측 분석)

### 2.1 spec 인용 (단일 진실)

- **prototype/src/main.ts** L25: `const FACING_HISTORY_N = 8;`
- **prototype/src/main.ts** L195: `pushRing(prev.recent_facing_history, dirDeg, FACING_HISTORY_N)`
- **prototype/src/main.ts** L259: `if (facingHistory.length < 4) return null;`
- **walk-trace-spec-v0+.md** §M5: `recent_facing_history.length ≥ 4 && |t.facing_deg − circularMean(history)| ≤ 30°`
- **manual-run-checklist-v0+.md** §7: *연속 4 자국 이상* 걷기 → spawn (Iron Law 게이트 항).

### 2.2 발화 동역학 — 8-buffer × ±30° tolerance × circularMean

방향키 4 종 (0/90/180/270°) 입력 가정. circularMean = `atan2(Σsin, Σcos)`.

| 시점 | history (n) | 구성 | mean | M5 발화? |
|------|-----|------|------|--------|
| 세션 시작 → 4 step (모두 0°) | 4 | [0,0,0,0] | 0° | ✅ (4 ≥ 4 + diff 0°) |
| 5 step | 5 | [0,0,0,0,0] | 0° | ✅ |
| 8 step (full) | 8 | [0×8] | 0° | ✅ |
| **방향 90° 전환 직후 1 step** | 8 | [0×7, 90×1] | atan2(1,7)≈8° | ✅ (diff 8° ≤ 30°) — *기존 방향* 0° 기준 |
| 전환 후 2 step | 8 | [0×6, 90×2] | atan2(2,6)≈18° | ✅ |
| 전환 후 3 step | 8 | [0×5, 90×3] | atan2(3,5)≈31° | ❌ (diff 31° > 30°, *기존* 기준) — 동시에 *새 방향* (90°) 기준 diff 59° → ❌ — ***무발화 회랑* 진입** |
| 전환 후 4 step | 8 | [0×4, 90×4] | 45° | ❌ (45° vs 0° = 45°, vs 90° = 45° — 둘 다 회피) |
| 전환 후 5 step | 8 | [0×3, 90×5] | atan2(5,3)≈59° | ❌ (vs 90° = 31°) |
| 전환 후 **6 step** | 8 | [0×2, 90×6] | atan2(6,2)≈72° | ✅ (vs 90° = 18°) — *새 방향 의지* 박음 |

**핵심 관측**: 90° 방향 전환 시 *3~5 step 의 무발화 회랑* 이 자연 발생. 본 회랑은 *겉만* 같은 방향으로 보이는 *우연한 평행* 1~2 step 을 cluster 회피하는 *F7 합쳐짐 회피* 의 1 차 안전핀 역할.

### 2.3 매니페스토 정합 (3 측)

| 측 | 박음 | 본 r1 발화 |
|-----|------|----------|
| **시간이 곧 나** (charter §매니페스토 §2차) | N=8 = 최근 *8 자국 의지* 를 누적 평균 — *어디에 시간을 썼는가* 가 facing 으로 박힘 | ✅ |
| **방향** (charter §매니페스토 §2차) | 무발화 회랑 = *방향 흔들림* 의 게임 안 시각화 — 단단한 의지 6+ step 후 발화 | ✅ |
| **연대** (cy-002 매니페스토 §연대) | M5 = *나란함* 변주의 1 차 시각 — *깊은 동행* 임계 (4 step 즉발 + 6 step 회복) 박음 | ✅ |

### 2.4 charter §트립와이어 검수 (3 종)

| 트립 | 본 r1 자가진단 | 발화? |
|------|----------|------|
| 메카닉 약화 → 코어 루프 끊김 | M5 는 옵션 (M4 / 자기 자국 ④ 결정 없으면 안 돈다 ≠ M5). N=8 변경은 코어 4 노드 (① ② ③ ④) 영향 0. | 미발화 |
| vertical slice 야심 → 30 초 빌드 못 보임 | 30 초 빌드 (concept v0.1 §2) = ① ~ ④ 반 사이클 + 25 초 동행 자국 페이드인. M5 = 5 분 세션 안 *3:00 자리* (concept v0.1 §7). N=8 영향 0. | 미발화 |
| lore 두꺼움 → 게임 *읽기 자료* 변질 | 본 r4 = 코드 상수 1 자리 검수 + 룰 1 줄. 게임 안 텍스트 추가 0. | 미발화 |

### 2.5 r1 평결 — **PASS**

- spec_derived 임계 4 측 (발화 동역학 / 매니페스토 / 트립 / Iron Law 게이트) 통과.
- N=4 / N=12 후보 비교: N=4 는 *우연 평행 즉발* (F7 합쳐짐 인접) / N=12 는 *방향 흔들림 회복 9+ step 비대칭* (5 분 세션 안 회복 회랑 비대칭). N=8 = 4-step 즉발 + 6-step 회복 이 *4 step minimum spec* (manual-run-checklist §7) 과 *5 분 세션 안 ≥ 1 회 발화* 두 임계의 *교집합 자리*.
- **인터랙티브 round 시뮬 평결**: spec_pass — *runtime 측정 자리* 는 implementer r4 manual-run-log-002 §7 항 자리 (영역 분리).

---

## 3 r2 — STEP_DISTANCE_RATIO 가드 정식 박음

### 3.1 현재 값 (단일 진실)

- **prototype/src/main.ts** L14: `const STEP_DISTANCE_RATIO = 1 / 60;`
- 한 입력 = 한 발자국 = `paperWidth × 1/60` 만큼 이동.
- 다른 거리 상수와의 비율:

| 상수 | 값 | step 단위 환산 |
|------|----|----------|
| TOGETHER_DIST_RATIO (M5 옆 점) | 1/16 | **3.75 step** |
| SIDE_RECEPTION_RADIUS_RATIO (M4 cluster 검출) | 1/32 | 1.875 step |
| 자국빛 일반 면적 1–3% (visual-bible §6) | 반지름 ≈ 1/80 | 0.75 step |
| 첫 자국 자국빛 5–8% | 반지름 ≈ 1/40 | 1.5 step |

3.75 step / 1.875 step / 1.5 step / 0.75 step — 모든 *시각 자리* 가 *step 단위* 의 정수 인접 자리에 정합.

### 3.2 가드 룰 (정식 박음)

> **STEP_DISTANCE_RATIO 가드 v1**: `STEP_DISTANCE_RATIO` 변경 PR 은 본 가드 4 항 통과 시에만 merge 자리.

1. **시각 자리 정합 검수** — TOGETHER_DIST_RATIO / SIDE_RECEPTION_RADIUS_RATIO / 자국빛 반지름 4 자리 모두 *변경 후 step 단위 환산값* 0.5 ~ 5.0 step 범위 안 (cold reader 의 *옆 점이 옆에 있다* 즉답 임계).
2. **30 초 빌드 정합** — concept v0.1 §2 의 8 step (3-8 초 자리) ≈ 화면 가로 폭의 13% — 변경 후 8 step *시각 거리* 가 화면 폭의 8% ~ 25% 범위 안 (첫 30 초 *자국이 박힌다* 즉답 임계).
3. **5 분 세션 정합** — 5 분 안 누적 자국 ≥ 12 점 (concept v0.1 §7) — 변경 후 5 분 자국이 화면 *바깥 침범 0* + *빈 종이 ≥ 60%* (visual-bible §2).
4. **walk-trace-spec frontmatter 박음** — `STEP_DISTANCE_RATIO=<new>` 가 `walk-trace-spec-v0+.md` frontmatter `delta_from_v0` 줄에 1 줄 박힘 + 본 가드 통과 ack 1 줄.

### 3.3 가드 트립와이어 3 종

- **T1 — 시각 자리 1 자리 이상 범위 외**: M5 옆 점이 *멀어 보임* (≥ 5 step) 또는 *합쳐 보임* (< 0.5 step). cold reader F7 직접 위반.
- **T2 — 30 초 빌드 8 step 시각 13% 범위 외**: 첫 30 초 *자국이 박힌다* 즉답 임계 위반 — concept v0.1 §2 25-30 초 ④ 자리 도달 못 함.
- **T3 — 5 분 누적 12 점 화면 침범**: visual-bible §2 *빈 종이 ≥ 60%* 위반.

### 3.4 본 가드 = A4 정식 룰 사례 1 호

`evolution-rules-v1.md` §A.A4 *facing_history N=8 검수 + STEP_DISTANCE_RATIO 가드 (designer)* 의 1 호 사례 박음. 적용 시점 = 메카닉 PR. cy-001 r5 prototype 검수 1 호 → cy-002 r1 정식 룰 진입 → 본 r4 = 1 호 사례 박음.

---

## 4 r2 안 *concept v0.2* 발행 — 본 r4 침범 0 (r3 이월 박음)

cy-002 task-queue §3 r2 의 *concept v0.2* 는 *호흡 인식 자리 후속* (review.md §5.2 designer 인계). 본 자리는 두 자리 입력 도착 후 자리 — 본 r4 *진입 보류* 박음:

- **input A**: implementer r4 manual-run-log-20260502-002 인터랙티브 round 7/7 도달 (B2 도입 룰 사례) — *runtime spawn count* + *cold reader 마찰* 측정 자리. 본 r1 의 N=8 *runtime* 측정도 본 자리에서 도착.
- **input B**: voice-keeper r5 *bible v0.4 e 항 ≥ 0.95* 측정 (A3 정식 룰) — *세 축 균형 대시보드 v1* 입력.

본 r4 = r1 (검수) + r2 (가드 박음) 두 자리만 박음. concept v0.2 = designer r5 (cy-002 r3 자리) 이월.

---

## 5 협업 인계

- **implementer (r4)**: 본 r1 평결 (N=8 PASS) + 본 r2 가드 v1 (3.2) 두 자리가 manual-run-log-20260502-002 §7 항 *runtime* 측정의 spec 입력. *runtime spawn count* + *연속 4 자국 spawn 0.5 s 지연 정확도 ± 0.1 s* 두 임계 measure 박음 자리.
- **art-director (r4)**: 본 r2 가드 §3.1 표 (TOGETHER 1/16 = 3.75 step / SIDE_RECEPTION 1/32 = 1.875 step / 자국빛 1/80 = 0.75 step) 가 visual-bible v0.4 §시간 룰 자리에 *step 단위 환산값* 1 줄 박음 자리 권고.
- **critic (r4)**: 본 r1 무발화 회랑 (3~5 step) 이 cold reader 5 인 시뮬에서 *방향 흔들림 = M5 무발화* 즉답 검증 1 자리 권고. 5 분 세션 안 *방향 흔들림 회복 ≥ 1 회* 임계.
- **loremaster (r5)**: 본 r1 의 *방향 흔들림 회랑* = bible v0.4 §방향 자리의 *지역* 인규경 이름 후보 자리 (지역 = 방향의 물리화 — task-queue §1 인용). 게임 안 *방향 흔들림 자리* 가 lore 안 *어느 지역* 인접인지 검수 권고. 본 r4 안 발의 0 — 인계만.
- **voice-keeper (r5)**: 본 r1 매니페스토 정합 §2.3 표 (시간이 곧 나 / 방향 / 연대 3 측 ✅) 가 *세 축 균형 대시보드 v1* 의 게임 메카닉 측정 입력 1 줄 박음 자리.
- **writer (r5)**: 본 r1 무발화 회랑 (3~5 step *방향 흔들림*) 이 인규 *업* 단편 +1 의 *멈춤 vs 흔들림* 변주 글 비트 1 자리 후보 (writer 영역 — 본 r4 안 발의 0).
- **orchestrator (r4)**: 본 r4 = D-20260502-001 §c r1+r2 묶음 응답 1 호. A4 정식 룰 1 호 사례 박음. review.md cy-002 진척 §5.2 designer 행 *r1 PASS / r2 가드 박음* 1 줄 박음 자리.

---

## 6 self-check

| # | 항목 | 본 r4 통과 여부 |
|---|------|------------|
| 1 | A4 정식 룰 1 호 사례 박음 | ✅ §3.4 |
| 2 | 영역 위반 0 | ✅ §5 인계만 (writer/loremaster/voice-keeper 영역 발의 0) |
| 3 | 트립와이어 미발화 | ✅ §2.4 (charter 트립 3 종 모두 미발화) |
| 4 | 단일 진실 (spec 인용) | ✅ §2.1 / §3.1 (main.ts / walk-trace-spec / manual-run-checklist 직접 인용) |
| 5 | 신규 결정 발의 0 | ✅ |
| 6 | concept v0.2 침범 0 | ✅ §4 r3 이월 박음 |
| 7 | 매니페스토 직접 인용 0 | ✅ (charter §매니페스토 매핑 인용만, 본문 직접 인용 0) |

**자기 평가**: **7 / 7 통과**.

---

## 7 forbidden-language-v0 §1~§8 grep 자기 검수

본 산출 (designer-r4.md 본문) 적중:
- §1 *영원·언제나·어디에나·항상*: 0
- §2 *절대적·완벽·완전히*: 0
- §3 *영웅·불멸·승리*: 0
- §4 *결국·반드시·당연*: 0
- §5 *기적·운명·축복받은*: 0
- §6 *우정·사랑은·친구는*: 0
- §7 *자유·해방·구원*: 0
- §8 *진정한·진정으로·진실로*: 0 (*진심* 매니페스토 키워드 직접 인용 외 0)

**적중 0 호** — forbidden-language-v0 grep 통과 15 호 누적 (critic-r4 14 호 → 본 designer-r4 15 호).

---

## 8 메타

- 본 r4 = cy-002 r1+r2 묶음 진입 1 호 사례 (designer 영역). A4 정식 룰 1 호 사례 박음.
- 다음 designer 발언 = (a) cy-002 r3 — concept v0.2 (manual-run-log-002 7/7 + voice-keeper r5 e ≥ 0.95 도착 후) 또는 (b) cy-002 r2 — STEP_DISTANCE_RATIO 가드 사례 누적 자리 (메카닉 PR 도착 시).
- 본 r4 발의 결정 0. 트립 발화 0. 영역 위반 0. 신규 hex 0 / 신규 사실 0 / 신규 인물 0 / 점수 산정 0 / cold-read 게이트 self-check 7/7 만.
