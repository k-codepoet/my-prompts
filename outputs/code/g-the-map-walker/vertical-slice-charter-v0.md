---
game_id: g-the-map-walker
artifact: vertical-slice-charter
version: v0
created_at: 2026-05-02
gen: 1
cycle: cy-001
authored_by: orchestrator
source_decision: decisions/closed/D-20260501-003.yml
decision_type: B
decision_picked: game
decision_runner_up: image
decision_runner_up_score: 27
decision_picked_score: 26
decision_separated_response_for_runner_up: outputs/writing/the-map-is-the-journey/character-sheets-axis-v0.md
source_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.2.md
source_concept: outputs/design/g-the-map-walker/concept.md
source_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0.md
source_manual_run: outputs/code/g-the-map-walker/manual-run-checklist-v0.md
source_visual_bible: outputs/art/the-map-is-the-journey/visual-bible-v0.1.md
source_critic: outputs/critique/the-map-is-the-journey/bible-v0.2-first-5min.md
source_alignment: outputs/alignment/the-map-is-the-journey/bible-v0.2-score.md
manifesto_primary: [움직임]
manifesto_secondary: [시간이 곧 나, 진심, 연대, 방향, 축복]
manifesto_followup: [자립]
champions_locked: [critic, designer, implementer]
champions_separated: [voice-keeper, writer]   # *세 축* 분리 응답 자리
---

# cy-001 Vertical Slice 1호 Charter — *the-map-walker* (Game)

> **본 문서는 D-20260501-003 응답 (`picked: game`) 의 산출물 흡수.**
> cy-001 vertical slice 1호 = *the-map-walker* (Web / Pixi.js 산책 시뮬). 본 charter 는 cy-001 안의 모든 후속 task (designer r2 / implementer r2 / art-director r2 / writer r3 / voice-keeper r3) 의 우선순위 기준점이다.

---

## 1 한 줄

**걸으면 종이에 흙이 박히고, 어느 자국 옆에 *내가 박지 않은 흙* 이 보일 때 게임이 시작된다.**
*(concept §1 직접 흡수 — 본 한 줄을 30 초에 보여주지 못하는 빌드는 cy-001 vertical slice 가 아니다.)*

---

## 2 결정 트레이스 — *왜 게임인가*

### 2.1 점수 매트릭스 (D-003 §description 직접 흡수)

| 후보 | 합계 | 매니페스토 동시 박음 | 진입 장벽 | 즉답 가능성 | 외부 시선 | 세 축 가산점 |
|------|------|------------------|---------|-----------|---------|-----------|
| 게임 (the-map-walker) | **26 / 30** | **6 / 7** | 9 | **9** | 8 | 0 |
| 이미지 (6 우표) | 25 + 2 = 27 / 30 | 4 / 7 | **10** | 6 | 9 | **+2** |
| 단편 (자기 지도 본 새벽) | 21 / 30 | 4 / 7 | 6 | 8 | 7 | 0 |

### 2.2 선택 근거 — *합계 1 위가 아닌데 선택된 이유*

합계만 보면 *이미지 (27)* 가 1 위. 그 우세는 voice-keeper r2 §C.2 *세 축 부재* 임계 직접 해소 가산점 +2 에서 옴. 그러나 본 가산점 자리는 *vertical slice 1 호 안에서만* 해소 가능한 게 아니라 **별도 task 로 직접 응답 가능** — 이미 writer r2 *character-sheets-axis-v0* (유경 가족 축 + 인규 업 축, 5 → 7 인 풀) 가 도착해 있어 *세 축* 임계는 분리 응답으로 박힌다.

반대로 게임 후보에서만 가능한 두 자리:
- **매니페스토 동시 박는 키워드 6 / 7** (이미지·단편 4 / 7 대비 +2 우위)
- **implementer r1 manual-run-checklist v0 도구 도착** — 5 항 객관 임계가 본 후보에만 1 차 도구로 묶여 있음 (cold-reader 마찰 / 30 초 ③ 노드 / 5 분 충돌 0 / URL 진입 / 자국빛 1–3% 룰)

cy-001 의 *bible v0.2 가 vertical slice 의 출처* 라는 결을 가장 깊게 시연하는 후보 = 게임.

### 2.3 후순위 응답 분기 (cy-001 후반 또는 cy-002 r1)

- **이미지 후보 (6 우표)** — cy-002 r1 의 2 호 vertical slice 표적 자연 후보. art-director r1 visual bible v0.1 통과 + writer r2 7 인 풀 (해온/정해/나림/유경/인규) 이 우표 인물 1:1 매핑 가능. *세 축* 직접 시각화 + *연대* 결의 1 차 시각화. cy-002 첫 결정에서 우선 검토.
- **단편 후보 (자기 지도 본 새벽)** — writer r3 후보 task 안에 살아 있음 (1500–2500 자 1 인칭 3 분기 — 해온/나림/유경 가족 축 추가). cy-001 후반 또는 cy-002 r1.

세 자리 모두 다른 결의 vertical slice → cy-001 1 호 + cy-002 r1 2 호 + 이후 3 호의 자연스러운 짝.

---

## 3 30 초 vertical slice — 3 후보 시퀀스

본 vertical slice 의 1 차 표적은 *concept §2 의 30 초 시퀀스 1 안*. 단 이미지/단편 후보의 우세 결을 게임 안으로 *부분 흡수* 하기 위한 2 안·3 안을 함께 박는다 — 빌드 1 회에서 한 안이 manual-run 5 항에 미달하면 즉시 차안으로 교체.

### 3.1 1 안 — *움직임 → 자국 → 옆자국* (concept §2 직접)

| 초 | 화면 | 입력 | 진동 키워드 |
|----|------|------|----------|
| 0–3 | 빈 새벽 (`#F5EFE3` ≥ 80%). | 없음. | (정적 — 시작 직전) |
| 3–8 | 첫 발자국. *먼지길* `#5C4A36` + 자국빛 5–8% (첫 자국 예외). | 1 회. | **움직임** + **시간이 곧 나** |
| 8–18 | 둘·세·네 걸음. 호흡 속도 → 흙 채도 매핑. | 2–4 회. | **진심** |
| 18–25 | 화면 가장자리에 *낯선 흙 색조* 동행 자국 1 점 페이드인. | 없음. | **연대** |
| 25–30 | *"이게 누구지?"* 1 개 질문 발생. ④ 동행 결정 갈림길. | (선택 직후) | **방향** |

박힌 키워드: 움직임 + 시간이 곧 나 + 진심 + 연대 + 방향 = **5 / 7**.

### 3.2 2 안 — 1 안 + *쉼의 자리* (축복 결 보강)

1 안 시퀀스 + 18 초 자리에 *멈춤 광휘* 1% 면적 3 초 페이드 (walk-trace-spec §O3). 사용자가 *호흡을 의도적으로 느리게* 하면 화면이 *고요한 자국빛* 으로 1 회 응답.

박힌 키워드: 1 안 5 종 + **축복** = **6 / 7**.
*— 본 안이 D-003 점수표 *매니페스토 동시 박음 6 / 7* 의 1 차 근거.*

### 3.3 3 안 — 2 안 + *손바닥에 비친 지도* (자립 결 박음)

2 안 시퀀스 + 30 초 시점에 Walker 가 손바닥을 살짝 들 때 *그 동안 박은 자국 전체가 손바닥에 잠깐 비친다* (loremaster v0.2 의 *손바닥에 비친 지도* 메타포 직접 흡수). UI 부재 — 시각만으로 *자기 지도는 본인만 본다* 트릭 박음.

박힌 키워드: 2 안 6 종 + **자립** = **7 / 7** (매니페스토 핵심어 풀 박음).
*— 단 3 안은 v0 범위 초과 위험 — 셰이더 1 패스 추가 + 타이밍 디버그 비용. v0 빌드는 2 안 우선, 3 안은 v0.1 후속.*

**v0 1 차 빌드 표적 = 2 안.** 1 안은 manual-run 5 항 미달 시 fall-back. 3 안은 v0.1.

---

## 4 매니페스토 7 핵심어 매핑

> seed §② 7 키워드 (진심 / 움직임 / 자립 / 연대 / 축복 / 시간이 곧 나 / 방향) 가 본 게임에서 *어떻게* 진동하는가.

| 키워드 | 진동 자리 (게임 내 메카닉/시각) | v0 박힘 여부 | 1 차 책임 |
|-------|------------------------------|-----------|---------|
| **움직임** (1차) | ① 걷기 = 입력 = 자연법칙. 한 입력 = 한 발자국. | ✅ v0 — 메카닉 자체 | designer + implementer |
| **시간이 곧 나** (2차) | 세션 호흡 속도 → 흙 채도 → 자기 지도 모양 | ✅ v0 — walk-trace-spec §M1 (입력 간격 → hex) | implementer |
| **진심** (2차) | 빠르게 누른 입력 (`<400ms`) vs 의도된 호흡 (`>1200ms`) 의 hex 차 | ✅ v0 — walk-trace-spec §M1 채도 폭 | implementer + art-director |
| **연대** | ③ 겹친 자국 — 다른 흙 색조의 비대칭 등장 (합쳐짐 ≠ 겹쳐짐) | ✅ v0 — walk-trace-spec §O4 cluster 매칭 | designer + implementer |
| **방향** | ④ 동행 결정 — 따라가기 / 자기 길 / 멈추기 셋 다 옳음. 처벌 없는 분기. | ✅ v0 — concept §3 ④ 노드 | designer |
| **축복** | *쉼의 자리* + 빈 종이 ≥ 60% + 자국빛 1–3% 광휘. 2 안 30 초 시퀀스에서 박힘. | ⚠️ v0 — 2 안 채택 시 박힘 / 1 안 fallback 시 ⚠️ | designer + art-director + voice-keeper r3 |
| **자립** | *손바닥에 비친 지도* (loremaster v0.2). 게임 내 별도 메뉴 / HUD / 미니맵 부재 = *자기 지도는 본인만 본다*. | ⚠️ v0 — 메뉴 부재 + HUD 부재 형태로 박힘 / *손바닥 시각* 은 v0.1 후속 | art-director + loremaster |

**합계**: v0 (2 안 빌드) = **6 / 7 명시적 박음 + 1 / 7 (자립) 부분 박음** — D-003 §description 의 *매니페스토 동시 박는 키워드 6 / 7 (게임)* 와 정합. v0.1 (3 안) 도달 시 7 / 7.

---

## 5 Constitution Invariant 8 종 자기 검증

> constitution.md §불변 8 종에 대한 본 vertical slice 의 1:1 응답.

| # | Invariant | 본 vertical slice 의 응답 | 통과 여부 |
|---|-----------|------------------------|---------|
| 1 | 매니페스토 정렬 | §4 — 7 키워드 중 6 명시 + 1 부분. 매니페스토 *배반* 자리 0 (진심 비웃음 / 움직임 부정 / 연대 조롱 모두 부재). | ✅ |
| 2 | World bible 단일 진실 | 본 게임 = world `the-map-is-the-journey` v0.2 참조 (frontmatter `source_bible`). bible 미참조 산출물 0. | ✅ |
| 3 | 작가 코퍼스 읽기 전용 | `~/k-codepoet/` 새 글 / 수정 0. 인용·인덱싱은 bible v0.2 §해석 키 안에서만. | ✅ |
| 4 | 사람 결정 우회 금지 | 본 charter 자체가 D-003 (Type B) 응답 흡수. Type C 영향 0 — vertical slice 표적 결정은 운영 차원. | ✅ |
| 5 | 시드 봉인 | seed.md 변경 0. | ✅ |
| 6 | 추적 가능성 | D-003 발의 → 점수 매트릭스 (§2.1) → 추천 (§2.2) → 응답 picked=game → 본 charter 까지 전 경로 디스크. | ✅ |
| 7 | 수동 검증 우선 (Iron Law) | manual-run-checklist-v0 5 항 통과 *전까지* 자동화 0. 본 charter 는 manual-run 시점 *전* 의 표적 lock — 자동화 시점은 5/5 통과 후 implementer 가 별도 선언. | ✅ (게이트 유지) |
| 8 | 현재성 단일 | 본 vertical slice = cy-001 의 1 호 단일 표적. 분기 운영 0. | ✅ |

**통과 8/8.** 본 charter 는 invariant 위반 자리 0.

---

## 6 *세 축 부재* 임계 — 분리 응답 명시 (voice-keeper r2 §C.2)

> voice-keeper r2 §C.2 의 *세 축 부재* 임계 (writer r1 character-sheets v0 의 5/0/0 *나*-축 단일 쏠림) 는 본 vertical slice *안에서* 해소되지 않는다 — 게임의 1 인 단일 1 인칭 결과 정합. **분리 응답은 이미 writer r2 *character-sheets-axis-v0* 에서 박힘** (유경 가족 축 + 인규 업 축, 5/1/1 격하 진입).

### 6.1 본 vertical slice 의 *세 축* 자기 인지

| 축 | 본 게임에서의 자리 | v0 박음 |
|----|----------------|-------|
| **나** | Walker = 1 인 1 인칭 익명 실루엣. ① → ② → ③ → ④ 4 노드 모두 *나* 축 안. | ✅ — 본 게임의 1 차 축. |
| **가족** | 본 vertical slice *안에서는* 부재. cy-002 r1 의 2 호 표적 (이미지 또는 단편) 에서 응답. | ⚠️ 분리 — writer r2 유경 시트가 1 차 박음. |
| **업** | 본 vertical slice *안에서는* 부재. cy-002 r1 의 2 호 표적에서 응답. | ⚠️ 분리 — writer r2 인규 시트가 1 차 박음. |

**판단**: 본 게임 *vertical slice 1 호* 안에서 세 축 모두 시각화하는 자리 0 — *움직임* 결의 단일 1 인칭이 본 게임의 결. 세 축 분배는 cy-002 r1 의 2 호 표적 (이미지 우표 6 인 = 가족 1 + 업 1 + 나 4 분배 자연스러움) + writer r2 분리 시트의 합산으로 박힘.

**voice-keeper r3 task 후보** (current.md 다음 동작 후보 §round 3 안에 이미 실려 있음): *세 축 균형 대시보드 v0 정식 산출물 + character-sheets-axis-v0 정식 측정 (e 항 0.7 → 0.85+ 예측)*. 본 dashboard 가 분리 응답의 *합산 측정* 도구.

---

## 7 다음 task — cy-001 후반 우선순위

> current.md §다음 동작 후보 §Round 3 진척 4/7 의 미도착 3 자리 + 본 charter 도착 후 신규 발의 자리.

### 7.1 우선순위 1 — 본 vertical slice 직접 의존 (3 조직 r2 동시 묶음)

| # | 조직 | task | 1 줄 |
|---|------|------|------|
| 1 | **designer r2** | 다이얼로그 사양 또는 메카닉 v0+ | concept §4 의 *쉼의 자리* 메카닉 + walk-trace-spec §O3 멈춤 광휘를 v0+ 로 정밀화. *옆자리 노드 / 함께 걸은 자리 노드* 후보 (writer 5 인 풀 + loremaster terrain 입력). |
| 2 | **art-director r2** | 시각 바이블 v0.2 | bible v0.2 의 *쉼의 자리* / *손금 새벽* / *화살표 자국* + writer 7 인 외형 (해온 어깨 / 정해 발끝 / 나림 12 색조 박물관 / 유경 손바닥 두 색조 / 인규 산 단면 200 화살표) + walk-trace-spec §M1–M3 hex 매핑 표 검수. |
| 3 | **implementer r2** | 1 차 prototype 빌드 + manual-run 1 회 | Vite + Pixi.js + TS 빌드 → manual-run-checklist-v0 5 항 측정 → 5/5 통과 시 *manual-run 1 회 통과 — vertical slice 자동화 게이트 해제* 선언. constitution invariant #7 1 차 게이트. |

**3 조직 동시 r2 묶음** — designer r2 + art-director r2 + implementer r2 가 같은 vertical slice 1 호의 *각자 영역에서 책임* 박음. 도착 순서 무관.

### 7.2 우선순위 2 — 분리 응답 + 측정 도구

| # | 조직 | task | 1 줄 |
|---|------|------|------|
| 4 | **writer r3** | 단편 *처음으로 자기 지도를 본 새벽* (1500–2500 자, 1 인칭 3 분기 = 해온/나림/유경 가족 축 추가) **또는** 금지 대사 사전 v0 **또는** 인물 관계도 v0 (8 자) | 단편 후보는 D-003 후보 3 의 직접 응답 — *손바닥에 비친 지도* 결의 가장 깊은 시연. cy-001 후반 또는 cy-002 r1. |
| 5 | **voice-keeper r3** | 세 축 균형 대시보드 v0 정식 + character-sheets-axis-v0 정식 측정 | §6 의 *분리 응답 합산 측정* 도구. e 항 0.7 → 0.85+ 예측. |
| 6 | **orchestrator r2** | cy-001 round 2 종결 review.md 1 호 + round 3 결정 큐 순차 의존 체인 | round 2 7/7 종결 + round 3 4/7 → 7/7 도달 후 발행. cy-002 진화 룰 후보 누적 정리 (atomic tick-close 정밀화 D / 결정 상태 검증 게이트 / 교차 검증 응답 강도 +1 / 외부 표적 인접 동반 격상). |

### 7.3 cy-002 r1 예측 결정 큐

- **Type B**: 2 호 vertical slice 표적 — 이미지 (6 우표) vs 단편 (자기 지도 본 새벽). cy-001 종결 + manual-run 통과 후 발의. 추천 후보 = 이미지 (D-003 §2.3 의 후순위 응답 분기 직접 인계).

---

## 8 협업 인계

- **designer**: 본 charter 의 §3 (30 초 3 안) + §4 (매니페스토 매핑) + §7.1 #1 (designer r2) 가 다음 task 직접 입력. 2 안 (*쉼의 자리* 박음) 을 v0 1 차 빌드 표적으로 박음.
- **art-director**: §3.3 3 안 (*손바닥에 비친 지도*) 의 셰이더 자리는 v0.1 후속이나 — visual-bible v0.2 의 인물 외형 7 자리 검수 + walk-trace-spec §M1–M3 hex 표 검수가 v0 게이트.
- **implementer**: §5 invariant #7 (Iron Law) 게이트는 본 charter 도착으로 해제되지 않음 — manual-run-checklist-v0 5 항 5/5 통과 *후* 별도 선언으로만 해제. 본 charter 는 *표적 lock* 만 박음.
- **critic**: §2.1 점수 매트릭스 = critic r2 가중치 평가 직접 흡수. cold-reader 검수는 manual-run §4 (URL 1 개 → 첫 자국 박힘 ≤ 60s) 의 1 차 입력 자리 유지.
- **voice-keeper**: §6 의 *세 축 부재* 임계 분리 응답 인지가 본 charter 의 1 차 인계. voice-keeper r3 *세 축 대시보드* 발행 시 본 §6 직접 참조.
- **loremaster**: §3.3 *손바닥에 비친 지도* 의 결이 bible v0.2 §해석 키 의 *손바닥* 자리와 정합 — bible v0.2.x 보강 시 우선 자리.
- **writer**: §7.2 #4 (writer r3 단편) 의 *손바닥에 비친 지도* 표적은 본 게임 §3.3 3 안과 같은 메타포의 다른 매체 시연. 두 산출물의 결 일치를 r3 작성 시 인지.
- **orchestrator**: 본 charter 가 cy-001 round 3 진척 5/7 표시 (D-003 응답 흡수 1 호). round 3 잔여 3/7 (designer r2 / art-director r2 / implementer r2 + writer r3 / voice-keeper r3 / orchestrator r2 후순위) 의 결정 큐 순차 의존 체인 인계.

---

## 9 메타

- **본 charter = D-20260501-003 (Type B, picked=game) 의 직접 산출물 흡수.** decision-traces/D-20260501-003.md 에 본 파일 경로 append (apply-decisions.sh 가 처리).
- **vertical slice 합계 26/30** — 매니페스토 6/7 + 진입 9 + 즉답 9 + 외부 8. 합계 1 위 (이미지 27) 의 우세는 *세 축* 분리 응답 (writer r2) 으로 보강 — 본 charter §6 명시.
- **invariant 8/8 통과**. invariant #7 게이트는 manual-run 5/5 후 별도 선언으로 해제.
- **cy-001 vertical slice 1 호 = the-map-walker** — 본 결정 lock. cy-001 안에서 변경 시 Type B 재발의 필요. cy-002 r1 의 2 호 표적은 별도 결정 (이미지 또는 단편 예측).

---

> 본 v0 은 D-003 응답 흡수의 1 페이지 charter. v0.1 은 manual-run 1 회 통과 후 — 그 시점에 §3.3 3 안 (*손바닥에 비친 지도*) 박음 결정 + §6 분리 응답 측정 도구 (voice-keeper r3 대시보드) 1 차 측정 결과 흡수.
