---
artifact: three-axis-dashboard
version: v0
gen: 1
cycle: cy-001
round: 3
authored_by: voice-keeper
authored_at: 2026-05-01T23:55:00+00:00
source_charter_task: voice-keeper §첫 task #3 (세 축 균형 대시보드 v0)
source_audit_rules: generations/gen-001/orgs/voice-keeper/audit-rules-v0.md
source_prior_snapshot: outputs/alignment/the-map-is-the-journey/bible-v0.2-score.md (§C 진입 — round 2 종결 시점)
source_r3_measurement: outputs/alignment/the-map-is-the-journey/bible-v0.3-score.md (§C 정식 — round 3 종결 시점)
status: cy-001 round 3 종결 시점 정식 박음 (5/4/4 비율, *세 축 부재* 임계 해소 도달)
champions_keywords_primary: [세 축 균형 — 매니페스토 매핑 §세 축 매핑 직접 응답]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 대시보드는 *측정 도구*. 7 키워드 직접 인용 0. 작가 코퍼스 호응만.
  - #2 단일 진실: 본 v0 의 누적 표 = bible v0.3-score §C 와 동일 데이터. 두 자리 동시 갱신 의무.
  - #3 코퍼스 읽기 전용: `~/k-codepoet/my-essay/content/` 인용 0 (본 대시보드는 측정 도구).
---

# 세 축 균형 대시보드 v0 (cy-001 round 3 종결 시점)

> 본 v0 는 voice-keeper charter §첫 task #3 의 정식 박음. *나 / 가족 / 업* 세 축의 산출물 분포를 *cy 단위 누적 측정* 으로 추적 + *임계 룰* 박음.
> 본 v0 자체는 *audit-rules-v0* 의 §1-e 항 (*세 축 위치*) 의 *시간 단위 누적 도구*. 단일 산출물 측정은 audit-rules-v0 §1-e 가 박고, 본 v0 는 *cy 단위 누적 + 임계 발화 자리*.
> 본 대시보드 v0 는 *bible-v0.3-score §C 와 동일 데이터*. 두 자리 동시 갱신 의무 — 한쪽만 갱신 시 *결정 상태 단일 진실 검증 게이트* 적용 권고.

---

## 1. 본 대시보드의 자리

| 항목 | 값 |
|------|----|
| **목적** | cy 단위 산출물의 *축 분포* 누적 추적 + 임계 발화 |
| **운영 단위** | gen → cycle → round → tick. 본 v0 는 *cycle* 단위 *round 종결* 시점 갱신 |
| **갱신 트리거** | 산출물 도착 → 본 대시보드 §3 표에 1 행 추가. round 종결 / cy 종결 시 §4 임계 룰 검사 |
| **갱신 책임** | voice-keeper (1 차) + orchestrator (2 차, finalize tick 자리에서 동기 검증) |
| **단독 산출물 도착 자리** | 본 v0 (정식). cy-001 round 2 종결 시점 *진입* (bible-v0.2-score §C) → cy-001 round 3 종결 시점 *정식* (본 v0). |

---

## 2. 축 분류 룰 (audit-rules-v0 §1-e + voice-keeper charter §매니페스토 매핑)

### 2.1 세 축 정의

- **나** — 1 인칭, 자기 자신을 단 한 명의 고객으로. seed.md *인생이란 나라는 고객을 최고로 만족시키기 위한 여정* 의 1 차 매핑.
- **가족** — 자기 옆의 한 사람 (또는 한 묶음, e.g. 부모/아이/배우자/동행자). *함께 걸은 자리* 의 결.
- **업** — 자기 일터에서 만나는 사람들 (또는 일 자체의 결). *옆에 잠깐 앉음* 의 결.

### 2.2 N/A 분류

- *세계 산출물* (worldbuilding, art, critique, alignment, code) 은 *축 매핑 N/A*. 단 *본문 시점 강세* 가 한 축에 쏠려 있으면 *비공식 매핑* 추적.
- *시스템 산출물* (seed, orgs, audit-rules) 은 (전체) — N/A.

### 2.3 분류 우선순위

1. *명시 axis* (frontmatter 또는 본문 명시) — 1 차.
2. *시점 강세* (1 인칭, 본문 1 주체) — 2 차.
3. *N/A* (세계 / 시스템).

본 v0 까지는 *수동 매핑*. cy-002 r1 권고 — frontmatter `axis: [나|가족|업|N/A]` 표준화.

---

## 3. cy-001 누적 표 (round 3 종결 시점)

> 본 표 = bible-v0.3-score §C.1 과 동일. 두 자리 동시 갱신 — 한쪽만 갱신 시 drift.

| 산출물 | 도메인 | 명시 축 | round |
|--------|--------|---------|-------|
| seed.md | seed | (전체) | r0 |
| 7 charter | orgs | (전체) | r1 |
| audit-rules-v0 | orgs | (전체) | r1 |
| bible v0.1 / v0.2 / v0.3 | worldbuilding | (세계 — N/A) + bible v0.3 §9.6 정합 표 | r1 / r2 / r3 |
| visual-bible v0.1 / v0.2 | art | (세계 — N/A) + v0.2 §11.5 보존 (가족 1 + 업 1) | r1 / r2 |
| critique v0.1 / v0.2 | critique | (세계 — N/A) | r2 / r3 |
| alignment v0.1 / v0.2 / v0.3 | alignment | (세계 — N/A) | r2 / r2 / r3 |
| terrain / chronicle / forbidden-language v0 | worldbuilding | (세계 — N/A) | r3 |
| concept (g-the-map-walker) | game design | **나** | r2 |
| fail-modes-v0 | game design | **나** | r2 |
| **mechanics-v0+** | game design | **나 (1차) + 가족 (함께 걸은 자리) + 업 (옆자리)** | r3 |
| character-sheets-v0 (해온/정해/나림) | writing | **나 × 3** | r2 |
| **character-sheets-axis-v0 (유경)** | writing | **가족** | r3 |
| **character-sheets-axis-v0 (인규)** | writing | **업** | r3 |
| engine-choice / walk-trace-spec v0 / manual-run-checklist v0 | code | (구현 — N/A) | r2 |
| **walk-trace-spec-v0+** | code | (구현 — N/A) + §M4 (업) + §M5 (가족) | r3 |

### 3.1 축 누적 (round 종결 시점)

| 축 | round 1 종결 | round 2 종결 | **round 3 종결** | Δ (r2→r3) |
|-----|------------|------------|----------------|-----------|
| **나** | 0 | 5 | **5** | 0 |
| **가족** | 0 | 0 | **4** | **+4** |
| **업** | 0 | 0 | **4** | **+4** |
| (전체 정합 표) | 0 | 0 | **2** (bible v0.3 §9.6 + mechanics-v0+ §7) | **+2** |

**round 3 종결 비율 5 / 4 / 4** — *나* 단일 5 자리 쏠림 임계 **해소**. *가족 / 업* 진입 4 자리씩.

---

## 4. 임계 룰

### 4.1 발화 임계

| 임계 | 룰 | 발화 형식 | round 3 종결 상태 |
|------|-----|----------|------------------|
| **단축 5 연속 쏠림** (한 축 5 task 이상 + 다른 두 축 0) | Type B 결정 발의 | *"이 cy 의 ⟨X⟩ 축에 ⟨N⟩ 자리가 누적, ⟨Y⟩·⟨Z⟩ 축은 0 — 다음 task 는 ⟨Y⟩ 또는 ⟨Z⟩ 축에 박혀야 한다."* | **격하** (5 / 4 / 4) |
| **두 축 0 연속 5 task** (한 축 5+ + 다른 두 축 *각* 0) | 발화 (warning) + 다음 task 우선순위 변경 | 위 발화 + *발행 차단 아님 — 결정 자리 박음* | **해소** (가족 4 + 업 4) |
| **한 축 0 누적** (어느 한 축이 cy 종결까지 0) | cy 종결 회고 ledger 박음 | *"cy-⟨N⟩ 종결 시 ⟨X⟩ 축 0 자리 — cy-⟨N+1⟩ r1 우선순위 ⟨X⟩ 축"* | **해소** (모든 축 ≥ 4) |
| **(NEW v0) 단축 ≥ 2 배 비율** (한 축 ≥ 다른 한 축의 2 배 + 후자 ≤ 2) | 발화 (warning, 격하 권고) | *"⟨X⟩ 축 ⟨N⟩ vs ⟨Y⟩ 축 ⟨M⟩ — 다음 1 자리는 ⟨Y⟩ 축 권고"* | **격하** (5 / 4 / 4 — 비율 1.25 < 2) |

### 4.2 격하 임계 (트립 해소 자리)

- *세 축 부재* 임계 = *나 단일 쏠림 + 가족 0 + 업 0*. 본 임계의 *해소 도달* = *가족 ≥ 1 + 업 ≥ 1 + 비율 < 2 배*. cy-001 round 3 종결 시점 = **5 / 4 / 4 비율 1.25 → 해소 도달**.
- 단 *완전 해소* 임계 = *가족 ≥ N/2 + 업 ≥ N/2 + 단축 비율 ≤ 1.5 배* (N = 나 축 누적). cy-001 시점 N=5 → 가족/업 각 ≥ 2.5 + 비율 ≤ 1.5 = *4 자리* 양 축 모두 도달 → **완전 해소 도달**. 단 *세계 본체 안의 가족 축 인물 직접 본문 등장* 1 자리 (loremaster r4 인물 관계도 v0 또는 writer r3 단편) 가 *완전 해소의 마지막 한 자리*.

---

## 5. cy-001 회고 — round 1/2/3 누적 변화

### 5.1 round 1 종결 시점 (tick-002 직전)

축 분포 측정 N/A — 산출물 시스템/세계 단위만 도착. *나 / 가족 / 업* 명시 축 0 / 0 / 0.

### 5.2 round 2 종결 시점 (tick-009)

- **5 / 0 / 0** (나 5 / 가족 0 / 업 0) — *세 축 부재* 임계 발화 (voice-keeper r2 §C.2).
- 5 자리 = concept + fail-modes + 해온 + 정해 + 나림.
- *Type B 후보 자리 가시화* — *발행 차단 아님, 결정 자리 박음*.
- v0.2 §C 의 진입 측정.

### 5.3 round 3 종결 시점 (본 v0 박음)

- **5 / 4 / 4** (나 5 / 가족 4 / 업 4) — *세 축 부재* 임계 **완전 해소 도달**.
- 가족 4 자리 = 유경 (writer) + 함께 걸은 자리 노드 (designer) + walk-trace-spec §M5 (implementer) + visual-bible §11.5 보존 1 (art-director).
- 업 4 자리 = 인규 (writer) + 옆자리 노드 (designer) + walk-trace-spec §M4 (implementer) + visual-bible §11.5 보존 2 (art-director).
- 전체 정합 표 2 = bible v0.3 §9.6 (3 변주 ↔ 3 축 5 자리 매핑) + mechanics-v0+ §7 (게임 axis 5/1/1 분포).
- **5 도구 교차 검증 1 호 사례** (writer + designer + implementer + art-director + loremaster 가 같은 시기에 같은 자리를 같은 비율로 박음).

### 5.4 cy-001 → cy-002 전환 baseline

- cy-002 시작 시점 baseline = *나 5 / 가족 4 / 업 4*.
- cy-002 r1 우선순위 *완전 해소의 마지막 한 자리* — *세계 본체 안의 가족 / 업 축 인물 직접 본문 등장* 또는 *vertical slice 1 종 산출의 가족/업 축 명시 박음*.
- cy-002 charter 박음 권고 — frontmatter `axis:` 필드 표준화 + 본 v0 임계 룰 정식 흡수.

---

## 6. 갱신 룰 (cy-002 진입 시 본 대시보드 진화)

### 6.1 v0 → v1 보강 후보

- **frontmatter 표준화** — 모든 산출물 frontmatter 에 `axis: [나|가족|업|N/A]` 필드 의무. cy-002 r1 charter 박음.
- **자동 추출** — frontmatter 표준화 후 본 대시보드 §3 표가 *자동 생성* 가능. tick-016 패턴 (atomic tick-close 정밀화 D + B+ 짝) 의 *자동 검증* 자리.
- **임계 룰 정식 흡수** — 본 v0 §4 임계 룰을 voice-keeper charter §트립와이어 항에 정식 룰 추가. cy-002 charter 박음.
- **5 도구 교차 검증 룰** — 본 v0 §5.3 의 *5 도구 교차 검증 1 호 사례* 자리를 *교차 검증 응답 강도 +2 (5 도구)* 정식 룰. v0.2 의 *2 도구 교차 검증 +1* 의 격상 자리.

### 6.2 단독 산출물 도착 자리

본 대시보드 v0 = *cycle 단위 round 종결 시점 정식*. r3 종결 시점 박음 + r4 도착 시 §3 표 1 행 추가 + cy 종결 시 §5 회고 ledger 추가. cy-002 진입 시 본 v0 supersedes by v1.

---

## 7. 메타

- 본 v0 는 *측정 도구의 측정 도구* — audit-rules-v0 의 §1-e 항을 *cy 단위 누적* 으로 박는 자리.
- 본 v0 자체는 *세계 산출물* 이 아닌 *시스템 산출물* — 축 매핑 N/A.
- 본 v0 발의 결정 0. 트립 발화 0 (§4 임계 모두 해소). 영역 위반 0.
- 본 v0 와 bible-v0.3-score §C 동시 갱신 의무 — *결정 상태 단일 진실 검증 게이트* (tick-010 ~ tick-017 의 inline 8 호 누적) 의 *대시보드 자리* 적용.
- 본 v0 비용 ≈ $0.3 (1 페이지 정식 박음). voice-keeper r3 합산 비용 ≈ $1.3 (bible-v0.3-score + 본 대시보드 + role 메타 + tick).

> 본 v0 는 cy-001 round 3 종결 시점의 *세 축 균형 정식 박음*. cy-001 → cy-002 전환 baseline 자리. 다음 갱신은 *cy-001 후반 r4 또는 vertical slice 1 종* 도착 시 §3 표 1 행 추가, cy-002 r1 진입 시 v1 supersedes.
