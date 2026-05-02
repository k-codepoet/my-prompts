---
game_id: g-the-map-walker
artifact: fail-modes-catalog
version: v0+
created_at: 2026-05-02
gen: 1
cycle: cy-002
round: r4+ (thin patch — cy-002 r1 7/7 종결 후 critic r1 cold reader 5 인 시뮬 외부 시선 마찰 2 자리 designer 영역 catalog 박음)
authored_by: designer
supersedes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_charter_task: designer #3 (페일 모드 카탈로그)
source_concept: outputs/design/g-the-map-walker/concept-v0.1.md
source_mechanics: outputs/design/g-the-map-walker/mechanics-v0+.md  # F6/F7 자리
source_critic_r1: generations/gen-001/cycles/cy-002/arguments/critic-r1.md  # 5 인 페르소나 cold-read 시뮬
source_prototype_main: outputs/code/g-the-map-walker/prototype/src/main.ts
consumers: [implementer, art-director, critic]
delta_from_v0: |
  - F1~F5 본문 0 변경 (supersede 0 — v0 본문은 본 v0+ 본문 §F1~§F5 자리에 1:1 박혀 있음).
  - F6 / F7 = mechanics-v0+ §8 박음 자리 (*권력 비극* / *합쳐짐 트랩*) — 본 v0+ §F6 §F7 자리에 mechanics 본문 1 줄 인용 + 카탈로그 형식 박음.
  - **신규 F8** = *HUD = 디버그 패널* 오인 (critic r1 P3 25 s 마찰) — 1 차 책임 implementer (cold reader 자리 vs 운영자 자리 분리 표지) / 2 차 책임 designer (catalog).
  - **신규 F9** = hint 시인성 임계 미인지 (critic r1 P4 38 s opacity 0.55 미인지) — 1 차 책임 art-director (시인성 ≥ 0.7) / 2 차 책임 designer (catalog).
  - 메타 §책임 표 5 행 → 9 행 박음 (F1~F9).
champions_keywords_primary: [움직임]
champions_keywords_secondary: [시간이 곧 나, 진심]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 본문 직접 인용 0. 매니페스토 매핑은 charter §매니페스토 인용만.
  - #2 단일 진실: critic-r1.md §0 페르소나 표 + §3 (P3 25 s) + §4 (P4 38 s) 직접 인용. main.ts L14/L25 (STEP_DISTANCE / FACING_HISTORY 자리) 직접 인용 (F8 자리).
  - #4 사람 결정 우회 금지: critic r1 인계 1:1 응답. 신규 결정 발의 0.
  - #6 추적 가능성: 본 v0+ frontmatter `delta_from_v0` 4 줄 + supersedes 1 줄 박음.
  - #7 수동 검증 우선 (Iron Law): 본 catalog = *spec_derived* — 처치 자리 (HUD 분리 / opacity 격상) 는 implementer r2 / art-director r2 영역 (본 patch 침범 0).
  - #8 현재성 단일: cy-002 vertical slice 1 호 표적 = the-map-walker 단일 유지.
  - forbidden-language-v0 §1~§8 grep — 본 본문 *영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히* 적중 0.
---

# g-the-map-walker — 페일 모드 카탈로그 v0+

> 본 게임의 *재미가 죽는* 9 가지 시나리오 + 각각의 1 차 방어막.
> charter §task #3 — implementer / art-director / critic 의 우선순위 입력으로 사용.
> v0 의 F1~F5 본문 0 변경. F6/F7 은 mechanics-v0+ §8 자리에 박힌 자리를 catalog 형식으로 끌어옴. F8/F9 는 cy-002 r1 critic 5 인 페르소나 cold-read 시뮬 외부 시선 마찰 2 자리를 designer 영역에 catalog 박음.

---

## F1. 산책만 무한 반복 — 코어 루프 ③ 노드 부재

**증상**: 플레이어가 ① → ② 만 영원히 돌린다. 흙이 박히지만 *겹친 자국* 이 한 번도 등장하지 않는다. 5 분 후 *그래서?* 가 머릿속에 박히고 세션 종료. 매니페스토 *연대* 진동 0 회.

**원인**: 비동기 동행 자국의 페이드인 임계가 너무 멀다 / 프리렌더 자국 데이터셋이 너무 작다 / 자국 등장 위치가 플레이어 동선에서 벗어난다.

**1 차 방어막**:
- **30 초 안에 1 점 보장 룰**: 첫 세션 첫 30 초에는 *프리렌더 동행 자국 1 점이 무조건 화면 안* 에 페이드인. 두 번째 세션부터는 자연 페이드인 룰 적용.
- 동행 자국 페이드인 위치는 플레이어의 *현재 시선 방향 ± 30°* 안. 카메라 외부 페이드인 금지 (못 본다).
- implementer 입력: 비동기 자국 데이터셋 N ≥ 50 점 (1 차 cy-001 v0 분량). cy-002 부터 봇 / 매칭 인프라.

**관측 지표**: 첫 세션 평균 ③ 노드 도달 시간. 임계 ≤ 30 초.

---

## F2. 다른 플레이어 자국 못 만남 — 매칭 / 동기화 실패

**증상**: F1 의 *변종*. 동행 자국이 등장하긴 하지만 *비동기 차원* 에서 어긋나 *내가 걸은 자리* 와 절대 겹치지 않는다. 결과적으로 ③ 노드의 시각 임팩트가 0.

**원인**: cy-001 v0 의 프리렌더 자국 좌표가 플레이어 1 차 동선과 무관 / cy-002 의 봇이 플레이어 동선을 *학습* 못 함.

**1 차 방어막**:
- **자국 좌표 시드 룰**: 플레이어가 첫 세션에서 첫 5 자국을 박으면, 그 다음 동행 자국은 *5 자국 평균 위치 ± 종이너비 1/8* 안에 박힌다. *완벽 일치* 가 아니라 *살짝 겹친 자리*.
- *완벽 겹침* 금지 — 합쳐짐 메타포 위반. 두 자국은 hex 패밀리도, 좌표도 1/8 정도 어긋나야 *겹쳐짐* 의 시각.
- implementer 입력: 매칭 알고리즘은 *근접* 이지 *동일* 이 아니다. 좌표 hash 가 아니라 좌표 cluster.

**관측 지표**: 동행 자국 1 점과 자기 자국 1 점이 화면에서 *동시에 시야* 에 들어오는 비율 ≥ 80%.

---

## F3. 지도 그려짐을 *시각적으로* 못 느낌 — 셰이더 / 팔레트 약함

**증상**: 플레이어가 자국을 박았는데 *박혔는지 모른다*. 이전 자국과 새 자국의 시각 차이가 약하다. *움직임 = 시각* 의 인과가 머릿속에 꽂히지 않음.

**원인**: 자국 hex 그라디언트의 채도 차이가 visual-bible §2 폭 (`#3A2D1E`–`#8B7355`) 보다 좁다 / 자국빛 광휘 (`#C8995A`) 가 1% 미만으로 박혀 *드물기* 가 *없음* 으로 변질 / 종이 섬유 결이 셰이더에서 광택으로 변질.

**1 차 방어막**:
- **첫 자국 임팩트 룰**: 첫 세션의 첫 자국 1 점은 *자국빛 광휘를 의무 박음* (해당 자국에 한해 자국빛 면적 5–8% 허용 — visual-bible §2 룰의 1 회 예외). 첫 인식 후 둘째 자국부터는 *드물기* 룰 복귀.
- 자국 hex 채도 폭은 visual-bible §2 의 *전체 폭* 을 사용 — 첫 자국과 다섯째 자국의 hex 차이가 cold reader 에게 *즉답* 되어야 함.
- 셰이더 광택 0. 종이 섬유는 매트.

**관측 지표**: 첫 자국 박힌 후 1 초 안에 플레이어의 시선 추적이 그 자국에 닿는 비율 ≥ 90%. (시선 추적 어려우면 첫 입력 후 둘째 입력 평균 간격 ≥ 2 초 — 즉 *보고 있다* 의 간접 지표.)

---

## F4. 멈춤이 처벌처럼 느껴짐 — *축복* 결 배반 임계 근접

**증상**: 플레이어가 손 놓으면 흙이 *바람에 지워진다* 의 시각 효과가 너무 강하다. *멈춤 ≠ 처벌* 의 매니페스토 결이 시각으로 배반된다. *살아 있는 자체가 축복* 이 *움직여야만 살아 있다* 로 왜곡.

**원인**: 멈춤 시 흙이 너무 빠르게 옅어진다 / *없는 일이 된다* 가 시각 페이드아웃 으로 직접 연출된다 / *쉼의 자리* 메카닉 부재.

**1 차 방어막**:
- **쉼의 자리 메카닉** (concept §4 의 권고 항목): 플레이어가 8 초 이상 입력 없으면 그 자리에 자국빛 *고요한 광휘* 가 잠시 박힌다 (광휘 1% 면적, 3 초 후 페이드). *멈춤도 자국이다* 의 시각화. *축복* 결 회복.
- 흙 페이드 속도는 *세션 단위* 가 아니라 *세션 간*. 한 세션 내 멈춤은 흙 진하기 변동 ≤ 5%. 플레이어가 *세션 안에서* 처벌받지 않는다.
- bible v0.2 *축복* 보강 (loremaster + art-director) 결과를 직접 흡수.

**관측 지표**: voice-keeper 의 *축복* 키워드 점수 (audit-rules-v0 §2). g-the-map-walker concept 의 정렬 측정 시 ≥ 0.6 임계.

---

## F5. 동행이 *부담* 으로 변질 — ④ 노드의 *강요* 트립

**증상**: 동행 자국 1 점이 등장하면 플레이어가 *반드시 따라가야 할 것 같은* 압박을 받는다. *연대* 가 *의무* 로 시각화됨. 자기 길 가기·멈추기 분기가 *나쁜 선택* 으로 보인다.

**원인**: 동행 자국이 너무 진하다 / 동행 자국 옆에 *유도 화살표 / 빛 / UI 안내* 가 박힘 / "동행자가 기다리고 있다" 등의 텍스트.

**1 차 방어막**:
- **동행 자국 hex 룰**: 동행 자국은 *플레이어 자국보다 살짝 옅게* (visual-bible §2 의 중간 hex `#8B7355` 의 옅은 폭). 진한 동행 자국 금지 — 시각으로 *유도* 가 된다.
- 어떤 UI / 화살표 / 텍스트도 동행 자국에 붙지 않는다. 발견은 시각만으로.
- ④ 노드의 *세 분기 모두 옳음* 명시: 컨셉 단계부터 따라가기 / 자기 길 / 멈추기 *어느 분기도 점수·도전과제·뱃지 없음*. 점수화 자체가 강요.
- 동행 자국이 페이드아웃하는 *시간* 은 플레이어 입력과 무관 — 따라잡지 않아도 *놓친 것* 이 아님 (동행은 *겹쳐짐* 이지 *합쳐짐* 이 아니다).

**관측 지표**: 동행 자국 등장 후 ④ 노드 분기 비율. 따라가기 / 자기 길 / 멈추기 = 대략 1 / 1 / 1 (각 ≥ 25%) — 한 분기 ≥ 60% 면 강요 트립 발화.

---

## F6. 옆자리가 *답이 되는 자리* — *권력 비극* 트랩 게임 단위

> 본 자리 = mechanics-v0+ §8.F6 catalog 형식 끌어옴 (1 줄 인용).

**증상**: 플레이어가 옆자리에서 받은 자국빛이 *너무 좋아서* 한 cluster 만 반복 방문. 다른 자리·다른 분기 모두 옅음. *옆자리* = *해야 하는 일* 로 변질.

**1 차 방어막**: mechanics-v0+ §3 §트립 #3 의 세션 단위 가산 상한 (≤ 2.5%) + 한 cluster 당 받음 발화 ≤ 1 회 / 세션. 옆자리 6–10 초 한 박자가 *짧음* 의 결로 박힘.

**관측 지표**: 한 cluster 의 재방문 비율. 임계 ≤ 30%.

---

## F7. 함께 걸은 자리가 *합쳐짐* 으로 보임 — *합쳐짐 트랩* 시각 단위

> 본 자리 = mechanics-v0+ §8.F7 catalog 형식 끌어옴 (1 줄 인용).

**증상**: 두 색조 자국 거리가 종이 1/16 보다 가까워서 cold reader 가 *한 색조* 로 인식. *겹쳐짐 아닌 합쳐짐* 의 매니페스토 위반.

**1 차 방어막**: mechanics-v0+ §4 의 거리 임계 ≥ 종이 1/16 엄수 + hex 패밀리 분리 (visual-bible §7 직접 인용) + 동행 색조의 *옅음 룰* (§F5).

**관측 지표**: cold reader 5 인 시뮬에서 *두 색조* 즉답 비율 ≥ 80%.

---

## F8. HUD 가 *디버그 패널* 로 오인됨 — *cold reader 자리 vs 운영자 자리* 분리 부재

**증상**: 첫 paint 시점 화면 우상단에 박힌 HUD (`step` / `player` / `companion` 카운터) 를 cold reader 가 *내가 디버그 모드를 본 것 같다* 로 오인. 자기 자리에 박혀야 할 *첫 자국* 자리에 *운영자 자리* 표시가 박혀 있어 cold reader 가 *내가 무엇을 해야 하는가* 즉답을 늦춘다. *입장 = 자국 박음 자리* 의 매니페스토 결이 *입장 = 운영자 모드* 로 시각으로 배반.

**원인**: cy-002 implementer r1 가 박은 instrumentation HUD (`outputs/code/g-the-map-walker/prototype/src/main.ts` 의 `step` / `player` / `companion` 텍스트 자리) 가 첫 paint 시점에 디폴트 박힘 — *cold reader 자리* 와 *운영자 자리* 분리 표지 0. 첫 paint 의 *나는 누구로 들어왔는가* 분리가 시각에서 박히지 않음.

**1 차 방어막** (1 차 책임 = implementer r2 인계 자리 — critic r1 §4 후보 1 호):
- **cold reader 자리 vs 운영자 자리 분리 표지 의무**: 첫 paint 시점의 화면 안에는 *cold reader 자리* 표시만 박힌다 (HUD 카운터 박음 0). 운영자 instrumentation 은 *별도 진입 자리* 안 (예: URL `?debug=1` query / 키 chord 1 자리 / 첫 자국 박은 후 ≥ N step 도달 시 박음) 에서만 발화. 본 분리 자리는 cy-002 진화 룰 후보 1 호 (critic r1 §4) — implementer r2 영역에서 처치.
- **HUD 카운터 박음 시점 게이트**: 첫 paint 시점 박음 0 + 첫 자국 박음 후 시점 박음 0 + 운영자 모드 진입 1 자리에서만 박음 (1 자리 게이트).
- designer 영역 catalog 자리 = 본 F8 자리 박음 + 1 차 책임 implementer r2 인계 박음.

**관측 지표**: cold reader 5 인 페르소나 시뮬에서 *HUD = 디버그 패널* 오인 자리 발화 0 호 / 5 호. (critic r1 baseline = 1 호 / 5 호 = P3 25 s — 본 baseline 0 호 도달 자리 = F8 게이트 통과.)

---

## F9. 안내 자국 시인성 임계 미인지 — *cold reader 자리 안내 자국* opacity ≤ 0.55

**증상**: 첫 paint 시점 화면 우하단의 안내 자국 (방향키 hint) 를 cold reader 가 *시점 안 미인지* — 첫 자국 박음 자리 ≤ 60 s 임계 인접 자리 (≈ 38 s) 까지 hint 인지 0. *cold reader 자리 안내* 가 *시각 노이즈* 로 격하되어 *내가 무엇을 해야 하는가* 즉답이 늦어진다.

**원인**: hint opacity 0.55 + 11 px 글자 크기 — *드물기* 룰 (visual-bible §2) 의 자국빛 광휘 1% 미만 임계와 인접한 시인성 자리. *드물기* 가 *없음* 으로 변질 (F3 인접 자리). cold reader 의 자기 자리 시인성 임계 ≥ 0.7 자리에 못 도달.

**1 차 방어막** (1 차 책임 = art-director r2 인계 자리 — critic r1 §4 후보 2 호):
- **cold reader 자리 안내 자국 시인성 임계 ≥ 0.7 표준**: cold reader 자리 안내 자국 (hint / 첫 paint 시점 자리 박음 1 줄) 의 opacity 임계 ≥ 0.7 + 글자 크기 임계 ≥ 13 px 박음. *드물기* 룰의 자국빛 면적 임계 (1% 미만) 와는 분리 자리 — *cold reader 자리 안내* 는 *드물기* 자리가 아닌 *시인성* 자리.
- **안내 자국 = *결 펄스* 1 회 박음 후보**: opacity 0.55 → 0.7 격상 단독으로 임계 도달 안 되면 *결 펄스* 1 회 (3 초 안 0.55 → 0.85 → 0.55 1 회) 박음 자리 추가 (art-director r2 영역에서 검수).
- designer 영역 catalog 자리 = 본 F9 자리 박음 + 1 차 책임 art-director r2 인계 박음. *드물기* 룰과의 충돌 분리 박음.

**관측 지표**: cold reader 5 인 페르소나 시뮬에서 *hint 인지 자리 ≤ 10 s* 비율 ≥ 4/5 호. (critic r1 baseline = 3/5 호 = P4 38 s 미인지 1 자리 — 본 baseline 4/5 호 도달 자리 = F9 게이트 통과.)

---

## 메타 — implementer / art-director / critic 인계

| 페일 | 1 차 책임 | 2 차 책임 |
|------|----------|----------|
| F1 | designer (룰) | implementer (데이터셋) |
| F2 | implementer (매칭) | designer (룰) |
| F3 | art-director (셰이더 / 팔레트) | implementer (구현) |
| F4 | designer (메카닉) + art-director (페이드 룰) | voice-keeper (측정) |
| F5 | designer (UI 부재 룰) | art-director (동행 hex 룰) |
| F6 | designer (가산 상한 룰) | voice-keeper (*권력 비극* 측정) |
| F7 | designer (거리 룰) + art-director (hex 분리) | critic (cold-read) |
| **F8** | **implementer (cold reader 자리 vs 운영자 자리 분리 표지)** | designer (catalog) |
| **F9** | **art-director (cold reader 자리 안내 자국 시인성 ≥ 0.7)** | designer (catalog) |

implementer r2 / art-director r2 의 cy-002 r2 묶음 처치 자리 입력으로 본 F8 / F9 catalog 자리 1 줄 박음 권고.

---

## 진화 룰 후보 인계 (cy-002 안 사례 박음 자리)

본 v0+ 박음 = **cy-002 진화 룰 후보 1 호 (cold reader 자리 vs 운영자 자리 분리 표지) + 후보 2 호 (cold reader 자리 안내 자국 시인성 ≥ 0.7)** 두 자리의 designer 영역 *catalog 자리 명문화* 1 호 사례. critic r1 §4 의 *진단 발의* (외부 시선 자리) → designer §F8 §F9 의 *catalog 자리* (페일 모드 자리) → implementer r2 / art-director r2 의 *처치 자리* (메카닉/시각 자리) 3 단계 분리 박음 1 호.

> 본 catalog v0+ 은 *9 항*. cy-002 후속에서 *10–12 항* 까지 확장 가능. 매 항은 *1 차 방어막 1 줄* + *관측 지표 1 줄* 형식 유지.
