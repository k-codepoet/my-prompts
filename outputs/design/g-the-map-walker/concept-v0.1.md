---
game_id: g-the-map-walker
artifact: concept
version: v0.1
created_at: 2026-05-02
gen: 1
cycle: cy-001
round: 3 (마감 라운드 — D-003 picked=game 직접 의존)
authored_by: designer
supersedes: outputs/design/g-the-map-walker/concept.md
source_charter: generations/gen-001/orgs/designer.md
source_decision: decisions/closed/D-20260501-003.yml
source_vertical_slice_charter: outputs/code/g-the-map-walker/vertical-slice-charter-v0.md
source_mechanics: outputs/design/g-the-map-walker/mechanics-v0+.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.3.md
source_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v0.md
source_chronicle: outputs/worldbuilding/the-map-is-the-journey/chronicle-v0.md
source_forbidden_language: outputs/worldbuilding/the-map-is-the-journey/forbidden-language-v0.md
source_walk_trace_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
source_manual_run: outputs/code/g-the-map-walker/manual-run-checklist-v0+.md
source_visual_bible: outputs/art/the-map-is-the-journey/visual-bible-v0.2.md
source_character_sheets_axis: outputs/writing/the-map-is-the-journey/character-sheets-axis-v0.md
source_alignment_score: outputs/alignment/the-map-is-the-journey/bible-v0.3-score.md
source_three_axis_dashboard: outputs/alignment/three-axis-dashboard-v0.md
source_critic_first_5min: outputs/critique/the-map-is-the-journey/bible-v0.2-first-5min.md
manifesto_primary: [움직임]
manifesto_secondary: [시간이 곧 나, 진심]
manifesto_in_v0_1: [움직임, 시간이 곧 나, 진심, 연대, 방향, 축복]
manifesto_partial_v0_1: [자립]
manifesto_v0_2_target: [자립]
core_loop_nodes: 4
extra_mechanics: [옆자리 노드, 함께 걸은 자리 노드]
session_sequence: 5분
target_first_30s_seq: 2안 (concept §2 + *쉼의 자리* 광휘)
fallback_first_30s_seq: 1안 (concept v0 그대로)
v0_2_first_30s_seq: 3안 (*손바닥에 비친 지도*)
axis_into_mechanic: { 나: 5, 가족: 1, 업: 1 }
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 시각 룰만으로 박음. *진심 비웃음 / 움직임 부정 / 연대 조롱* 자리 0.
  - #2 단일 진실: bible v0.3 + terrain-v0 + chronicle-v0 + forbidden-language-v0 + visual-bible v0.2 + walk-trace-spec-v0+ + manual-run-checklist-v0+ + character-sheets-axis-v0 + bible-v0.3-score + three-axis-dashboard-v0 + vertical-slice-charter-v0 직접 인용. 신규 사실 0, 신규 hex 0, 신규 인물 0.
  - #4 사람 결정 우회 금지: D-003 (Type B, picked=game) 응답 흡수만. Type C 영향 0.
  - #6 추적 가능성: vertical-slice-charter-v0 → mechanics-v0+ → 본 concept v0.1 직접 인계 체인 frontmatter 박음.
  - #7 수동 검증 우선 (Iron Law): manual-run-checklist-v0+ 7 항 5/7 (또는 7/7) 통과 *전까지* 자동화 0. 본 concept v0.1 는 표적 lock 만 — manual-run 시점 *전*.
  - #8 현재성 단일: cy-001 vertical slice 1 호 표적 = the-map-walker 단일.
  - forbidden-language-v0 §1~§8 grep — 본 산출 본문 *영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히* 적중 0.
---

# g-the-map-walker — Concept v0.1 (vertical slice 표적 lock + 세 축 진입 + 마감 라운드 산출)

> 본 v0.1 은 D-20260501-003 (Type B, picked=game) 응답 흡수의 *디자이너 마감 라운드 산출물*.
> v0 (concept.md, round 1) 의 *코어 루프 4 노드 + 30 초 빌드* 위에 — vertical-slice-charter-v0 §1~§5 의 *표적 lock* + mechanics-v0+ §3~§7 의 *옆자리 / 함께 걸은 자리 + 5 분 세션 시퀀스 + 세 축 진입* 두 자리를 통합.
> 본 v0.1 은 implementer r3 의 *1 차 prototype 빌드 (Vite + Pixi.js + TS)* + art-director r3 의 *visual-bible v0.3 (가족/업 hex 정착)* 두 인접 자리의 직접 입력. manual-run-checklist-v0+ 7 항이 본 concept v0.1 의 1 차 검증 게이트.

---

## 1 한 줄 — v0 → v0.1 의 델타

**concept v0 = *걸으면 자국이 박힌다 + 다른 흙 색조 자국 1 점이 옆에 있다*.**
**concept v0.1 = 거기에 *옆에 잠깐 앉으면 결을 받는다* + *나란히 함께 걷는 자국이 한 박자 늦게 페이드인* 두 자리.**

전자가 *업* 축의 시각, 후자가 *가족* 축의 시각. 본 게임 axis 분포 = *나* 5 자리 (4 노드 + 자기 지도) / *가족* 1 자리 / *업* 1 자리 — character-sheets-axis-v0 의 5/1/1 + voice-keeper r3 *세 축 균형 대시보드* 의 5/1/1 격하 분포와 일치.

---

## 2 30 초 빌드 — v0.1 1 차 표적 = 2 안 (vertical-slice-charter §3.2)

vertical-slice-charter §3 의 3 안 중 *2 안 — 1 안 + 쉼의 자리* 가 본 v0.1 의 1 차 빌드 표적. 1 안은 manual-run-checklist 5/7 미달 시 fall-back. 3 안 (*손바닥에 비친 지도*) 은 v0.2.

| 초 | 화면 | 입력 | 진동 키워드 |
|----|------|------|----------|
| 0–3 | 빈 새벽 (`#F5EFE3` ≥ 80%). Walker 화면 1/8, 3/4 후방, 무릎 직전 직립. | 없음. | (정적) |
| 3–8 | 첫 발자국. *먼지길* `#5C4A36` 자국 1 점 + *자국빛* `#C8995A` 1–3% 면적 (첫 자국 5–8% 예외). | 1 회. | **움직임** + **시간이 곧 나** |
| 8–18 | 둘·세·네 걸음. 호흡 속도 → 흙 채도 매핑 (visual-bible §6 그라디언트 1:1). | 2–4 회. | **진심** |
| 18–21 | **쉼의 자리 광휘 1 회** — 18 초 자리에 *옅은 자국빛 한 박자* 3 초 페이드 (walk-trace-spec §O3, mechanics-v0+ §6 1:30 표 1 줄 직접 인용). | 없음. | **축복** |
| 21–25 | 화면 가장자리에 *낯선 흙 색조* 동행 자국 1 점 페이드인. | 없음. | **연대** |
| 25–30 | *"이게 누구지?"* 질문 발생. ④ 동행 결정 갈림길. | (선택 직후) | **방향** |

**박힌 키워드**: 움직임 + 시간이 곧 나 + 진심 + 축복 + 연대 + 방향 = **6/7**. *자립* 은 §6 v0.2 표적.

**v0 → v0.1 델타**: 18 초 자리에 *쉼의 자리 광휘* 3 초 페이드 1 자리 추가. shader 변경 0 (자국빛 광휘는 walk-trace-spec §O3 기존 1 패스 재활용).

---

## 3 코어 루프 — 4 노드 + 옆자리 + 함께 걸은 자리

```
        ┌──────────────────────────────────────────────┐
        │                                              ▼
   ┌─────────┐    ┌──────────┐    ┌──────────────┐    ┌──────────────┐
   │ ① 걷기  │ ─▶ │ ② 자국  │ ─▶ │ ③ 겹친 자국 │ ─▶ │ ④ 동행 결정 │
   │ (입력)  │    │ 박힘     │    │ 발견 (외부) │    │ (선택)       │
   └─────────┘    └──────────┘    └──────────────┘    └──────────────┘
        ▲              │                  │                  │
        │              │  (자기 자국 누적)│                  │
        │              ▼                  │                  │
        │         [내 지도]    ◀──────────┘                  │
        │           ▲                                        │
        │           │                                        │
        │           │  ┌───── M4 옆자리 받음 (업 축) ────┐   │
        │           │  │ cluster 1 곳, 6–10s 멈춤,       │   │
        │           │  │ 자국빛 +0.5–1% 4s 페이드        │   │
        │           │  └─────────────────────────────────┘   │
        │           │                                        │
        │           │  ┌── M5 함께 걸은 자리 (가족 축) ──┐   │
        │           │  │ ±30° 방향 일치 자국 동선 →      │   │
        │           │  │ 자기 자국 0.5s 후 옆 1/16 점 ◀──┘   │
        │           │  └────────────────────────────────────┘
        │           │                                        │
        └───────────┴───── ④ 가 ① 의 *방향* 을 살짝 바꾼다 (강요 아님)
```

**노드별 매니페스토 진동** (concept v0 §3 + 본 v0.1 갱신):
- ① 걷기 = *움직임* (1차).
- ② 자국 박힘 = *시간이 곧 나* + *진심*.
- ③ 겹친 자국 발견 = *연대* (1차 시각화). 본 v0.1 에서 *연대* 1 종 → 3 변주 (③ 겹쳐짐 / M4 받음 / M5 나란함) — bible v0.3 §2.3 *연대 3 변주* 표 직접 응답.
- ④ 동행 결정 = *방향*.
- M4 옆자리 = *축복* + *연대* (받음 변주). **업** 축 진입.
- M5 함께 걸은 자리 = *연대* (나란함 변주) + *시간이 곧 나*. **가족** 축 진입.

**루프 회전 시간**: 한 사이클 ≈ 60–90 초. 30 초 빌드 = ① → ② → ③ 반 사이클. 5 분 세션 안에 ④ 가 두세 번 + M4 1 회 + M5 1 회 (강요 없음).

---

## 4 메카닉 (1차 박음 — v0.1 범위 = v0 4 종 + v0+ 2 종 + *쉼의 자리* 격상)

| 메카닉 | 1 줄 | 트립와이어 |
|--------|------|----------|
| **걸음 입력** | 한 입력 = 한 발자국. 간격 → 흙 진하기 직접 매핑. | 없으면 코어 루프 안 돈다. |
| **자국 hex 그라디언트** | 진심 (간격) → hex 채도, 방향 (연속성) → hex 면적. | 없으면 코어 루프 안 돈다. |
| **비동기 동행 자국** | 프리렌더 자국이 시간차로 페이드인. | 없으면 코어 루프 안 돈다 (③ 노드). |
| **동행 결정** | 따라가기 / 자기 길 / 멈추기 — 셋 다 옳음. | 없으면 코어 루프 안 돈다 (④ 노드). |
| **쉼의 자리** (v0 권고 → v0.1 박음) | 멈추면 흙이 옅어지지만 없어지지는 않음. 자국빛 광휘 1 회 페이드. | 없으면 *축복* 결 결손 — voice-keeper r3 §A *축복* 0.7 → 0.6 격하 위험. |
| **M4 옆자리 노드** (mechanics-v0+ §3 직접 인용) | cluster 반경 1 보 안 6–10s 입력 없음 → 자기 자국빛 +0.5–1% 면적 4s 페이드. 다음 1–2 자국에 ≤0.5%/자국 누적. | 없어도 코어 루프 회전. **업** 축 진입 결손 시 5/0/1 격하 (*세 축* 임계 재발화). |
| **M5 함께 걸은 자리 노드** (mechanics-v0+ §4 직접 인용) | ±30° 방향 일치 자국 동선 → 자기 자국 spawn 후 0.5s 지연, 옆 1/16 거리에 동행 색조 1 점 페이드인. | 없어도 코어 루프 회전. **가족** 축 진입 결손 시 5/1/0 격하. |
| **자기 지도 보기** | 5 분 세션 종료 시 자국 전체가 종이에 한 번에 보임. | v0.1 박음 (mechanics-v0+ §6 4:30–5:00 표). |

기타 (퀘스트, NPC, 인벤토리, HUD, 점수, 레벨업, 미니맵, 좌상단 카운터) — 본 v0.1 에서 **모두 부재**.

---

## 5 카메라 / UI — visual-bible v0.2 직접 인용

- 인물 눈높이 또는 무릎-허리 높이 (visual-bible §5).
- **부감 금지 / 미니맵 금지 / 좌상단 HUD 금지** — 본 세계의 첫 트릭 (*자기 지도는 본인만 본다*) 의 직접 위반.
- UI 는 *없음* 에 가깝다. 입력 안내는 첫 8 초 안에 *흐릿한 발자국 가이드* 로만 (가이드 자국은 자국빛 0%).
- 사운드: 흙이 디뎌지는 *숨소리 길이의 한 박자*. 음악 없음 (v0.1 유지). 리듬 게임 화 트립 미발화.
- *손금 새벽* / *화살표 자국* / *쉼의 자리* 세 시각 1 호는 visual-bible v0.2 §앵커 일러 검수 통과. art-director r3 visual-bible v0.3 의 *가족/업 인물 hex 정착* (유경 손바닥 두 색조 + 인규 산 단면 200 화살표) 은 게임 안 *직접 출연 0* — 게임의 hex 가족 1 종 (M4 cluster 의 *낯선 흙 색조*) 이 인물 hex 패밀리 부재로 박힘.

---

## 6 매니페스토 매핑 — 7 키워드 × v0.1 박음 표

> seed §② 7 키워드 (진심 / 움직임 / 자립 / 연대 / 축복 / 시간이 곧 나 / 방향) 가 본 게임 v0.1 에서 *어떻게* 진동하는가.

| 키워드 | 진동 자리 (메카닉/시각) | v0 박음 | v0.1 박음 | 1 차 책임 |
|-------|-----------------------|--------|---------|---------|
| **움직임** (1차) | ① 걷기 = 입력 = 자연법칙 | ✅ | ✅ | designer + implementer |
| **시간이 곧 나** (2차) | 세션 호흡 속도 → 흙 채도 + M5 시간차 페이드 | ✅ | ✅ | implementer |
| **진심** (2차) | 간격 → 채도 + M4 6–10s 한 박자 | ✅ | ✅ | implementer + art-director |
| **연대** | ③ 겹친 자국 + M4 받음 + M5 나란함 (1 종 → 3 변주) | ✅ (1 변주) | ✅ (3 변주) | designer + implementer |
| **방향** | ④ 동행 결정 (처벌 없는 분기) + M5 발화 조건 (±30°) | ✅ | ✅ | designer |
| **축복** | *쉼의 자리* + 빈 종이 ≥ 60% + 자국빛 1–3% + M4 받음 (멈춤이 결을 받는 시각) | ⚠️ 권고 | ✅ | designer + art-director + voice-keeper |
| **자립** | *손바닥에 비친 지도* (loremaster v0.2 / vertical-slice-charter §3.3 3 안) | ⚠️ 약함 | ⚠️ 부분 (메뉴 부재 + HUD 부재) | art-director + loremaster |

**합계 v0.1**: **6 / 7 명시 + 1 / 7 부분** (*자립*) — vertical-slice-charter §4 의 *6 / 7 명시 + 1 / 7 부분* 와 1:1 일치. v0.2 (3 안 = 손바닥에 비친 지도) 도달 시 7 / 7.

---

## 7 5 분 세션 시퀀스 — mechanics-v0+ §6 직접 인용

| 분 | 사이클 | 무엇이 박혀야 하는가 | 시각 신호 |
|----|-------|------------------|----------|
| 0–0:30 | ① → ② → ③ 반 사이클 | 자국 박힘 + 낯선 색조 1 점 등장 + *쉼의 자리* 광휘 1 회 (18 초). | concept v0 표 + 자국빛 한 박자. |
| 0:30–1:30 | ④ 1 회전 | 따라가기 / 자기 길 / 멈추기 분기 1 회. 멈추기 분기에서 *쉼의 자리* 광휘 1 회 추가. | 옅은 자국빛 한 박자. |
| 1:30–3:00 | ① → ② → ③ → ④ 2 사이클 | **M4 옆자리 1 회 발화** (cluster 1 곳에서 6–10s 멈춤) + **M5 함께 걸은 자리 1 회 발화** (방향 일치 자국 무리와 나란히). | 자국빛 일시 가산 + 옆 1/16 거리 점 페이드인. |
| 3:00–4:30 | ① → ② → ③ → ④ 1 사이클 | 누적 자국 ≥ 12 점, 함께 걸은 자리 ≥ 4 점. | *나란한 한 줄* 의 옅은 형태. |
| 4:30–5:00 | 세션 종료 | 자기 자국 전체가 한 번에 종이 위에 보임. M4 받음 누적 자국빛 면적 ≤ 8%. | *통과의 산 단면 + 자기 자국 + 함께 걸은 옆 점들* 동시 보임. |

**관측 룰** (manual-run-checklist-v0+ §1 직접 입력):
- ④ 분기 비율 1 / 1 / 1 (각 ≥ 25%). 한 분기 ≥ 60% 면 강요 트립 (fail-modes §F5).
- M4 발화 0 회 세션의 *그래도 재미있었다* 응답 비율 ≥ 70%.
- M5 발화 0 회 세션의 *연대 진동* 응답 — ③ 겹친 자국만으로 1 차 충족 검증.
- *쉼의 자리 광휘* 발화 1 회 이상의 *축복 진동* 응답 ≥ 70% (cold-read 시뮬).

---

## 8 1 차 무대 — *통과의 산 단면* (terrain-v0 §5 + bible v0.3 §6.1 *통과의 산형* 직접 인용)

본 게임의 1 차 무대 = *통과의 산 단면 1 종*. bible v0.3 §6.1 의 *권력 두 비극* 분리에서 *통과의 산형* 결을 직접 흡수 (vs *일의 산형* 결은 게임 외 단편/이미지 후보 자리).

- 화면 시작 시 *낯선 흙 색조* 자국이 화면 면적 ≤ 8% 안에서 빽빽이 흩어짐 (visual-bible §2 — *빈 종이 ≥ 80%* 룰 직접 적용).
- 옆자리 cluster (M4) 의 5–8 점 묶음이 그중 1–2 곳, 함께 걸을 수 있는 동선 자국 (M5) 이 그중 5–8 점.
- 플레이어 1 차 동선은 통과의 산의 한 자락을 가로지르는 짧은 길 — *길* 이라 부르지 않음 (terrain-v0 §3 — *길 = 사람이 만드는 것*).
- *어디로 가야 하는가* 를 박지 않음 — 통과의 산의 단면 위에서 *어디에 잠깐 앉을지* / *어느 동선과 나란히 걸을지* / *그냥 지날지* 의 분기만.

---

## 9 페일 모드 — F1~F7 (fail-modes-v0 + mechanics-v0+ §8)

| 페일 | 1 줄 | 1 차 책임 | v0.1 방어 |
|------|------|---------|---------|
| F1. 산책 무한 반복 | ④ 노드가 도달 안 함 | designer | concept §3 ④ 강제 — 5 분 세션에서 ④ 두세 번 회전. |
| F2. 동행 자국 못 만남 | ③ 노드가 발화 안 함 | designer + implementer | 25 초 시점 동행 자국 1 점 의무 페이드인 (concept §2 표). |
| F3. 자국 박힘이 시각으로 안 느껴짐 | hex 그라디언트 결손 | art-director + implementer | walk-trace-spec §M2 hex 표 1:1 검증, manual-run §3 측정. |
| F4. 멈춤이 처벌처럼 느껴짐 | *쉼의 자리* 메카닉 결손 | designer | v0.1 *쉼의 자리* 박음 (§4 표). M4 받음이 *멈춤이 결을 받는* 시각으로 1 차 회복 보강. |
| F5. 동행이 *부담* 으로 변질 | 동행 자국이 *반드시 따라가야 할* 화살표처럼 보임 | art-director + designer | 동행 자국 *살짝 옅게* 룰 + visual-bible §7 hex 가족 분리 + ④ *셋 다 옳음* 명시. |
| F6. 옆자리가 *답이 되는 자리* (mechanics-v0+ §8) | M4 한 cluster 만 반복 방문 | designer | 한 세션 M4 가산 ≤ 2.5% (5 회 × 0.5% 상한) + 한 cluster 당 받음 ≤ 1 회 / 세션. |
| F7. 함께 걸은 자리가 *합쳐짐* 으로 보임 (mechanics-v0+ §8) | 두 색조가 *한 색조* 로 인식 | designer + art-director | M5 거리 ≥ 종이 1/16 엄수 + hex 패밀리 분리 + 동행 색조 옅음 룰. |

**관측 임계** (manual-run-checklist-v0+ §1 7 항 매핑):
- §1 cold reader 마찰 → F1, F2, F3, F4
- §2 30 초 ③ 노드 → F2
- §3 5 분 충돌 0 → F1, F4, F5
- §4 URL 진입 → (engine-choice 입력)
- §5 자국빛 1–3% 룰 → F3, F4
- §6 옆자리 받음 (신규) → F6
- §7 함께 걸은 자리 (신규) → F7

---

## 10 협업 인계

- **implementer (r3)**: 본 v0.1 §2 (2 안 — *쉼의 자리* 광휘 18 초) + §3 (M4 / M5 코어 루프 추가) + §4 (메카닉 8 종) 가 walk-trace-spec-v0+ §M1~§M5 직접 인계 자리. Vite + Pixi.js + TS 1 차 prototype 빌드의 manual-run-checklist-v0+ 7 항 측정에서 §6 옆자리 받음 + §7 함께 걸은 자리 두 신규 항이 본 v0.1 *세 축 진입* 의 1 차 객관 게이트. **5/7 통과 시 v0.1 *부분 수동 검증 통과* 선언, 7/7 통과 시 *vertical slice 자동화 게이트 해제* 선언 가능** (constitution invariant #7 게이트).
- **art-director (r3)**: visual-bible v0.3 박음 시 본 v0.1 §3 의 *옆자리 cluster* 의 *낯선 흙 색조* hex 가족 1 종 검수 + §4 *쉼의 자리 광휘* 18 초 자리의 시각 박자 검수 + §5 *손바닥에 비친 지도* (v0.2 표적) 의 셰이더 자리 사전 도면. 가족/업 인물 hex 정착은 게임 외 산출 (단편 / 이미지 / 우표) 자리 — 본 게임은 인물 hex 부재.
- **loremaster (r4)**: 본 v0.1 §8 *통과의 산 단면* 이 게임 1 차 무대 — bible v0.3 §6.1 *통과의 산형* / *일의 산형* 분리와 정합. 인물 관계도 v0 (8 자) 도착 시 본 v0.1 *결만* 가져가는 자리 (이름·외형 0) 유지 검증. *세계 본체 안 가족/업 축 인물 직접 본문 등장* (voice-keeper r3 §A.2.e) 은 본 게임 외 자리 — bible 본체에서 박힘.
- **writer (r3)**: 본 v0.1 §2 (30 초) + §7 (5 분) 가 단편 *처음으로 자기 지도를 본 새벽* 1 인칭 3 분기 (해온 / 나림 / 유경) 의 *작은 박자 두 종* (M4 옆자리 / M5 함께 걸은 자리) 시각 비트로 글에 박히는 자리 후보. 인물 이름 게임 부재 / 단편 등장 분리 응답.
- **voice-keeper (r3 → r4 후속)**: 본 v0.1 §6 *6/7 + 1/7 부분* + §3 *세 축 진입 메카닉 5/1/1* 이 voice-keeper r3 *세 축 균형 대시보드 v0* 의 게임 메카닉 측정 직접 입력. M4/M5 발화 검증으로 *축복* 0.7 → 0.85 격상 + *연대* 3 변주 (③+M4+M5) 합산 격상 가능 — voice-keeper r4 (cy-002 첫 라운드 후보) 자리.
- **critic (r3)**: 본 v0.1 §10 self-check 6/6 (③ 30 초 후크 + M4 발화 두 자리 신규). 정식 cold-read 시뮬 = critic r3 *bible v0.3 cold-read 5 분 재측정* + 본 game concept v0.1 cold-read 5 분 시뮬 두 자리 묶음 가능. **D-003 picked=game 과 독립 task 인 critic r3 가 본 v0.1 의 *5 분 즐거움* 관측 임계를 직접 측정**.

---

## 11 자기 검증 — critic 체크리스트 v0 self-check

| # | 항목 | 본 v0.1 자체 통과 여부 |
|---|------|-------------------|
| 1 | 한 문장 요약 가능 | ✅ §1 두 줄 (v0 → v0.1 델타). |
| 2 | 사전 지식 의존도 | ✅ jargon 0. *옆자리* / *함께 걸은 자리* 두 단어가 신규지만 §3·§4 가 즉시 시각으로 풀이. |
| 3 | 첫 30 초 후크 | ✅ §2 25–30 초 (concept v0 그대로) + 18–21 초 *쉼의 자리 광휘* 신규 자리 (v0.1 델타). |
| 4 | 첫 5 분 즐거움 (= *축복* 결) | ✅ §4 *쉼의 자리* v0.1 박음 + M4 받음 두 자리. concept v0 의 ⚠️ 조건부 → v0.1 ✅. |
| 5 | 매니페스토 전달 | ✅ ① 걷기 = *움직임* 즉답 + M4 *받음* + M5 *나란함* = 세 축 한 화면 박음. cold reader 가 5 분 안에 *나/가족/업* 한 화면에 같이 박힘을 *느낀다*. |
| 6 | 다음을 알고 싶은가 | ✅ §2 25–30 초 *"이게 누구지?"* + §7 5 분 종료 *자기 자국 전체* = *다음 세션은 어디에 잠깐 앉을까* 자연 발생. |

**자기 평가**: **6 / 6 통과**. concept v0 의 5/6 (④ 조건부) → v0.1 6/6 격상.

---

## 12 도메인 위반 검토

- **시각 (art-director)**: 신규 hex 0. visual-bible §2 §5 §6 §7 + fail-modes §F5 직접 인용만. 본 v0.1 의 *쉼의 자리 광휘* 18 초 / M4 4s 페이드 / M5 0.5s 지연 시간 룰 3 자리는 visual-bible v0.3 검수 자리 (인계).
- **세계 사실 (loremaster)**: 신규 사실 0. terrain-v0 §5 *통과의 산* + bible v0.3 §2.3 *연대 3 변주* + bible v0.3 §6.1 *통과의 산형* + bible v0.3 §3 *쉼의 자리* 직접 인용만.
- **인물 (writer)**: 신규 인물 0. character-sheets-axis-v0 §1 §2 (유경 / 인규) 의 결만 메카닉 안 시각으로 — 인물 이름·외형은 게임 부재.
- **점수 산정 (voice-keeper)**: 본 v0.1 자가 점수 산정 0. *세 축 진입* §3 + *6/7 + 1/7 부분* §6 두 표는 voice-keeper r4 의 e 항 재측정 입력 자리.
- **cold-read 게이트 (critic)**: 본 v0.1 self-check (§11) 만. 정식 cold-read 시뮬 = critic r3 위임.
- **engine / 매핑 룰 (implementer)**: §3 §4 의 메카닉 표는 *제안* 수준 + walk-trace-spec-v0+ §M1~§M5 직접 인계 자리. 실제 코드 / shader 구현은 implementer r3 자리.
- **결정 (orchestrator)**: 본 v0.1 발의 결정 0. D-003 응답 흡수만. 신규 Type B/C 발의 후보 자리 0.

위반 0 건.

---

## 13 트립와이어 검토 (charter §트립와이어 3 종)

| 트립 | 본 v0.1 자가진단 | 결과 |
|------|--------------|------|
| 메카닉 약화 → 코어 루프 끊김 | 메카닉 8 종 중 *코어 4 종* (걷기 / 자국 / 동행 / 결정) 모두 *없으면 안 돈다* 표시. M4/M5 + 쉼의 자리 + 자기 지도 보기 4 종은 *옵션*. | 미발화 |
| vertical slice 야심 → 30 초 빌드 못 보임 | §2 30 초 빌드 = concept v0 그대로 + 18 초 자리 *쉼의 자리 광휘* 1 회 추가만. v0.1 의 *5 분 시퀀스* / *세 축 진입* / *통과의 산 단면* 모두 30 초 *너머* 자리. | 미발화 |
| lore 두꺼움 → 게임이 *읽기 자료* 변질 | 본 v0.1 의 신규 단어 0 — *옆자리* / *함께 걸은 자리* / *쉼의 자리* / *통과의 산* 모두 mechanics-v0+ + bible v0.3 + terrain-v0 의 기존 단어 직접 인용. 게임 안 텍스트 부재 (UI / 안내 / 사운드 부재) — 단어가 *읽기* 가 아닌 *시각* 으로 박힘. | 미발화 |

---

## 14 forbidden-language-v0 §1~§8 grep 자기 검수

본 산출 (concept-v0.1.md 본문) 적중:
- §1 *영원·언제나·어디에나·항상*: 0
- §2 *절대적·완벽·완전히*: 0
- §3 *영웅·불멸·승리*: 0
- §4 *결국·반드시·당연*: 0
- §5 *기적·운명·축복받은*: 0 (*축복* 단어는 매니페스토 키워드 직접 인용 — *축복받은* 형태 0)
- §6 *우정·사랑은·친구는*: 0 (*연대* / *함께* / *옆에* 단어로 박음)
- §7 *자유·해방·구원*: 0
- §8 *진정한·진정으로·진실로*: 0 (*진심* 매니페스토 키워드 직접 인용 외 0)

**적중 0 호** — forbidden-language-v0 grep 통과 7 호 누적 (vertical-slice-charter-v0 6 호 다음).

---

## 15 다음 task — designer 차기 라운드 (cy-002 r1 후보)

1. **concept v0.2** — manual-run 7/7 통과 + visual-bible v0.3 도착 + voice-keeper r4 측정 결과 도착 후 §3.3 3 안 (*손바닥에 비친 지도*) 박음 → *자립* 7/7 도달.
2. **다이얼로그 사양 v0** — 본 v0.1 *옆자리* / *함께 걸은 자리* 두 자리에 *짧은 한 줄 시각 텍스트* 1–2 자리 박음 후보. 인물 이름·대사 0 유지 (writer §금지 대사 사전 v0 의존).
3. **레벨 디자인 v0** — *통과의 산 단면 1 종* 너머의 *사랑의 산형* / *일의 산형* / *후회의 산* 단면 1–2 종 박음. cy-002 r1 또는 r2.

---

## 16 메타

- 본 concept v0.1 = D-20260501-003 (Type B, picked=game) 응답의 *디자이너 마감 라운드 산출물* 1 호. cy-001 vertical slice 1 호 표적 *the-map-walker* 의 디자이너 charter 첫 task (concept.md) 가 v0 → v0.1 격상 — *조직 r1/r2/r3 charter 첫 task 완전 박음 = 라운드 마감 임계* (voice-keeper r3 사례 1 호) 의 2 호 사례 자리 박음.
- 본 v0.1 발의 결정 0. 트립 발화 0. 영역 위반 0.
- 본 v0.1 다음 designer 발언 = (a) cy-002 r1 — concept v0.2 (3 안 *손바닥에 비친 지도* 박음, *자립* 7/7) 또는 (b) cy-002 r1 다이얼로그 사양 v0 또는 (c) cy-002 r1 레벨 디자인 v0 (*사랑의 산형* / *일의 산형* / *후회의 산* 단면).
- *세계 본체 흡수 1 호* (loremaster r3 tick-017) 와 같은 결의 *vertical slice 흡수 1 호* — vertical-slice-charter-v0 + mechanics-v0+ + walk-trace-spec-v0+ + manual-run-checklist-v0+ + visual-bible-v0.2 + character-sheets-axis-v0 + bible-v0.3 + bible-v0.3-score + three-axis-dashboard-v0 9 자리 다른 조직 r2/r3 산출이 본 v0.1 에 흡수. cy-002 진화 룰 후보 신규 — *vertical slice 마감 라운드 산출 = 조직 r2/r3 산출 ≥ 5 자리 흡수의 표준 자리*.

---

> 본 v0.1 은 cy-001 마감 라운드의 디자이너 산출물 1 호. 1 차 검증 = manual-run-checklist-v0+ 7 항 (implementer r3 자리). 정식 cold-read = critic r3 자리. v0.2 는 manual-run 7/7 통과 + voice-keeper r4 측정 도착 후.
