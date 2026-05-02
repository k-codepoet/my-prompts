---
role: designer
round: 3 (마감 라운드 — D-003 picked=game 직접 의존)
gen: 1
cycle: cy-001
tick: 020
created_at: 2026-05-02
artifact: outputs/design/g-the-map-walker/concept-v0.1.md
supersedes: outputs/design/g-the-map-walker/concept.md
champions_keywords_primary: [움직임]
champions_keywords_secondary: [시간이 곧 나, 진심]
extra_keywords_in_v0_1: [축복, 연대, 방향]
manifesto_partial_v0_1: [자립]
absorbed:
  - vertical-slice-charter-v0 §1~§5 (D-003 응답 산출 직접 흡수)
  - mechanics-v0+ §3 (M4 옆자리 노드 — 업 축 진입)
  - mechanics-v0+ §4 (M5 함께 걸은 자리 노드 — 가족 축 진입)
  - mechanics-v0+ §6 (5 분 세션 시퀀스 v0)
  - mechanics-v0+ §7 (세 축 진입 표 5/1/1)
  - mechanics-v0+ §8 (F6 / F7 페일)
  - walk-trace-spec-v0+ §M1~§M5 (implementer r2)
  - manual-run-checklist-v0+ 7 항 (implementer r2)
  - visual-bible-v0.2 §앵커 일러 + §5 시점 + §6 그라디언트 + §7 hex 가족 (art-director r2)
  - character-sheets-axis-v0 (writer r2 — 결만, 이름·외형 0)
  - bible-v0.3 §2.3 *연대 3 변주* + §6.1 *통과의 산형* (loremaster r3)
  - bible-v0.3-score (voice-keeper r3 — 5/1/1 측정 입력)
  - three-axis-dashboard-v0 (voice-keeper r3 — 본 v0.1 §3 *세 축 진입* 직접 입력 자리)
trip_wires_fired: false
domain_violation: false
forbidden_language_grep: 0 (적중 0 호)
self_check_score: 6/6
constitution_invariants_passed: 8/8
manifesto_v0_1_score: 6/7 명시 + 1/7 부분 (자립)
axis_distribution_v0_1: { 나: 5, 가족: 1, 업: 1 }
---

# Designer r3 — concept v0.1 발언 (마감 라운드, D-003 picked=game 직접 응답)

## 발언 1 줄

**concept v0 (round 1) → concept v0.1 (round 3 마감) — D-003 picked=game 응답 흡수.**
**vertical-slice-charter-v0 §3.2 (2 안 = *쉼의 자리 광휘 18 초*) 박음 + mechanics-v0+ §3 (M4 옆자리) + §4 (M5 함께 걸은 자리) 가 코어 루프 4 노드 옆에 *옵션 자리* 로 박힘.**
*세 축 진입 메카닉 5/1/1* (나 5 자리 + 가족 1 자리 (M5) + 업 1 자리 (M4)) 가 character-sheets-axis-v0 + three-axis-dashboard-v0 + bible-v0.3 §2.3 의 5/1/1 분포와 1:1 박힘.

## 박힌 변동

- **30 초 빌드** = 2 안 (concept v0 1 안 + 18 초 *쉼의 자리 광휘* 1 회 페이드 3s) — 1 안은 manual-run 5/7 미달 시 fall-back. 3 안 (*손바닥에 비친 지도*) 은 v0.2.
- **코어 루프 4 노드** = concept v0 그대로 (변동 0) + M4/M5 *옵션 자리* 추가. 강요 미발화 (코어 루프는 M4/M5 0 회로도 회전).
- **메카닉 표** = v0 6 종 → v0.1 8 종 (M4 옆자리 + M5 함께 걸은 자리 신규). *쉼의 자리* 가 v0 ⚠️ 권고 → v0.1 ✅ 박음.
- **매니페스토 매핑** = v0 5 ✅ + 2 ⚠️ → v0.1 6 ✅ + 1 ⚠️ 부분. *축복* (⚠️ → ✅) + *연대* (1 변주 → 3 변주) + *자립* (⚠️ 약함 → ⚠️ 부분, *손바닥에 비친 지도* 는 v0.2).
- **5 분 세션 시퀀스** = mechanics-v0+ §6 직접 인용 — 0:30 / 1:30 / 3:00 / 4:30 4 자리 박힘.
- **1 차 무대** = *통과의 산 단면 1 종* (terrain-v0 §5 + bible v0.3 §6.1 *통과의 산형* 결).
- **페일 모드** = F1~F7 (fail-modes-v0 5 종 + mechanics-v0+ §8 F6/F7 2 종 = 7 종).
- **자기 검증** = critic 체크리스트 6/6 통과 (v0 5/6 ④ 조건부 → v0.1 6/6).
- **forbidden-language-v0 §1~§8 grep** = 적중 0 (7 호 누적).

## 인계 (다음 라운드 / cy-002 r1 후보)

- **implementer r3** (cy-001 후반 task, D-003 picked=game 직접 의존): 본 v0.1 §2~§4 가 walk-trace-spec-v0+ §M1~§M5 직접 인계 → Vite + Pixi.js + TS 1 차 prototype + manual-run-checklist-v0+ 7 항 측정. **5/7 = v0.1 부분 통과 / 7/7 = vertical slice 자동화 게이트 해제** (constitution invariant #7 1 차 게이트).
- **art-director r3** (cy-001 후반 task, D-003 직접 의존): 본 v0.1 §3 *옆자리 cluster* 의 *낯선 흙 색조* hex 가족 1 종 + §4 *쉼의 자리 광휘* 18 초 시각 박자 + §5 *손바닥에 비친 지도* (v0.2 표적) 의 셰이더 자리 사전 도면. **가족/업 인물 hex 정착은 게임 외 산출 자리** (단편 / 이미지 / 우표) — 본 게임은 인물 hex 부재.
- **critic r3** (cy-001 후반 task, D-003 picked=game 과 독립): 본 v0.1 cold-read 5 분 시뮬 + bible v0.3 cold-read 5 분 재측정 두 자리 묶음 가능.
- **loremaster r4** (cy-001 후반 task, D-003 독립): 인물 관계도 v0 (8 자) — *세계 본체 안 가족/업 축 인물 직접 본문 등장* (voice-keeper r3 §A.2.e *완전 해소의 마지막 한 자리*) 자리. 본 v0.1 *결만* 가져가는 자리 (이름·외형 0) 유지 검증.
- **writer r3** (cy-001 후반 task): 본 v0.1 §2 (30 초) + §7 (5 분) 가 단편 *처음으로 자기 지도를 본 새벽* 1 인칭 3 분기의 *작은 박자 두 종* (M4 옆자리 / M5 함께 걸은 자리) 시각 비트 박는 자리 후보.
- **voice-keeper r4** (cy-002 r1 후보): 본 v0.1 §6 *6/7 + 1/7 부분* + §3 *세 축 진입 메카닉 5/1/1* 이 dashboard v0 의 게임 메카닉 측정 직접 입력. M4/M5 발화 검증으로 *축복* 0.7 → 0.85 격상 + *연대* 3 변주 합산 격상 가능.
- **orchestrator** (cy-001 후반 review.md): 본 v0.1 = D-003 picked=game 응답 흡수의 *디자이너 마감 라운드 산출물* 1 호. cy-002 진화 룰 후보 신규 자리 (*vertical slice 마감 라운드 산출 = 조직 r2/r3 산출 ≥ 5 자리 흡수의 표준*) review.md 1 호 자리 박음.

## 트립와이어 검토

미발화 3/3:
- 메카닉 약화 → 코어 루프 끊김: 미발화 (코어 4 종 *없으면 안 돈다* 명시 / M4/M5/쉼의 자리/자기 지도 보기 4 종은 옵션).
- vertical slice 야심 → 30 초 빌드 못 보임: 미발화 (30 초 = concept v0 + 18 초 1 자리 추가만, *5 분 시퀀스* 등은 30 초 *너머*).
- lore 두꺼움 → 읽기 자료 변질: 미발화 (신규 단어 0, 게임 안 텍스트 부재).

## 영역 위반

미발화 0/6:
- 시각 (art-director): 신규 hex 0.
- 세계 사실 (loremaster): 신규 사실 0.
- 인물 (writer): 신규 인물 0.
- 점수 산정 (voice-keeper): 자가 점수 0.
- cold-read 게이트 (critic): self-check 만, 정식 시뮬 위임.
- engine / 매핑 룰 (implementer): *제안* 수준 + walk-trace-spec-v0+ 직접 인계.

## 메타 (본 r3 자체)

- 본 r3 = designer charter 첫 task (concept.md, charter §task #1) 의 *완전 박음* — *조직 r1/r2/r3 charter 첫 task 완전 박음 = 라운드 마감 임계* (voice-keeper r3 1 호 사례) 의 **2 호 사례** 자리 박음. cy-002 진화 룰 후보 *재강화*.
- 본 r3 = *조직 r3 = 다른 조직 r2/r3 산출의 자기 도메인 흡수 자리* (loremaster r3 tick-017 1 호 사례) 의 **2 호 사례** — 본 v0.1 이 9 자리 다른 조직 산출 (vertical-slice-charter / mechanics-v0+ / walk-trace-spec-v0+ / manual-run-checklist-v0+ / visual-bible-v0.2 / character-sheets-axis-v0 / bible-v0.3 / bible-v0.3-score / three-axis-dashboard-v0) 흡수. cy-002 진화 룰 후보 *재강화* — 본 r3 이 *vertical slice 마감 라운드 산출 = 조직 r2/r3 산출 ≥ 5 자리 흡수의 표준* 임계 1 호 박음.
- 본 r3 = *trip 발화 감쇠 패턴* designer 사례 — r1 (concept.md, 트립 약함 #4 ⚠️ 조건부) → r2 (mechanics-v0+, 트립 #11 임계 근접 안전핀) → r3 (concept v0.1, 트립 0 발화). loremaster 사례 (1 → 1 경계 → 0) + designer 사례 (조건부 → 임계 근접 → 0) = **2 호 사례** 누적.
- 본 r3 의 큰 자국 = (a) D-003 picked=game 응답의 디자이너 마감 산출물 1 호 박음, (b) *세 축 진입 메카닉 5/1/1* 가 character-sheets / dashboard / bible / mechanics 4 자리와 5 도구 교차 검증 박음, (c) *연대 1 종 → 3 변주* 가 bible v0.3 §2.3 와 메카닉 4 자리 (③ + M4 + M5) 에서 1:1 박힘, (d) charter 첫 task 완전 박음 2 호 사례 + 조직 r3 흡수 표준 2 호 사례 두 진화 룰 후보 임계 *재강화*.
