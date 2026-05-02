# cy-002 Evolution Rules v1 — 진화 룰 정식 박음

> 본 문서는 cy-002 charter §1 의 *§진화 룰 직접 적용 1 호* 자리.
> D-20260502-001 (picked=`ambitious`) 의 §b 박음.
> *constitution §진화 규칙 §자동 적용* 분류 — *조직 charter 의 표준 룰 추가* (사람 합의 필요한 영역의 인접 자리이지만, 본 cycle 의 Type C 박음 안에 포함되어 안전 자리 진입).

---

## A. 정식 룰 진입 (cy-001 review.md §4.1 의 9 자리 — *재재초과 강화*)

cy-001 의 *마감 라운드 7/7 종결* 안에서 모든 7 조직이 자기 영역 트립와이어를 *재차* 발화한 자리 9 개. 본 cycle 시점부터 7 조직 charter 의 *표준 룰* 로 정식 진입한다.

| # | 룰 (어느 조직이 챔피언) | 적용 시점 | cy-001 사례 |
|---|-----|-----|-----|
| A1 | **bible 미참조 산출물 발행 금지** (loremaster) — 모든 outputs/* 의 frontmatter 가 `world: <slug>@<version>` 명시 | 산출 직전 | bible v0.3 미참조 단편 1 건 reject 사례 |
| A2 | **세 축 분리 응답** (writer) — 단편은 작가 세 축 (나 / 가족 / 업) 중 *어느 축* 의 변주인지 머리말에 명시 | 단편 발의 시 | 인규 *업* / 연강 *가족* / 유리 *연대* 변주 |
| A3 | **e 항 정렬 ≥ 0.95** (voice-keeper) — bible v0.4+ 부터 매니페스토 정렬 측정 e 항 (entrenchment) 0.95 이상 도달 | bible 개정 | cy-001 종결 0.91 → cy-002 0.95+ 표적 |
| A4 | **facing_history N=8 검수 + STEP_DISTANCE_RATIO 가드** (designer) — vertical slice 메카닉 변경 시 둘 다 통과 | 메카닉 PR | cy-001 r5 prototype 검수 1 호 |
| A5 | **automation 게이트 해제 별도 선언** (implementer) — manual-run 7/7 인터랙티브 round 도달 시 *별도 선언 ticks* 1 건 | game prototype | Iron Law 1 차 해제 자리 |
| A6 | **자국빛 3 색조 + 인물 hex 고정** (art-director) — 시각 산출물 발행 전 팔레트 가이드 일치 검사 | 이미지 발행 | 자국빛 3 색조 미세 + 3 신규 인물 hex |
| A7 | **cold reader ≤ 60 s** (critic) — prototype URL 진입 → 첫 자국 ≤ 60 s 임계 통과 | prototype 발행 | 5 인 시뮬 1 호 |
| A8 | **review.md baseline 직접 입력 박음** (orchestrator) — cycle close 시 G-* baseline 을 review.md §2 에 1:1 기입 | cycle close | cy-001 → cy-002 baseline 0.56/0.30/0.00/0.85/0.00 |
| A9 | **drift 13 호 회복 절차** (전 조직) — 정렬 측정 -0.05 이상 drift 시 정렬 측 측정 마감 round 1 차 발의 | 측정 분기 | cy-001 r4 13 호 발화 + r5 회복 |

본 9 룰은 본 cycle (cy-002) 의 모든 r1+r2 task 에 *직접 적용*. 위반 시 r3 round 자리에서 회복 또는 차기 cycle 으로 이월.

---

## B. 도입 (cy-001 review.md §4.2 의 6 자리 — *도달 후보*)

cy-002 안 사례 누적 → 정식 룰 도달 자리. 본 cycle 동안 사례 ≥ 2 회 누적 시 차기 cycle (cy-003) charter 박음 시 정식 룰 진입.

| # | 룰 후보 (챔피언) | 누적 임계 | 본 cycle 안 관찰 자리 |
|---|-----|-----|-----|
| B1 | **6 우표 실측 묶음 자리** (art-director) — 우표는 *세트* 단위로 발행, 단장 발행 금지 | 6 장 1 회 + 부분 시도 1 회 | cy-002 art-director r1 6 우표 전체 6 장 |
| B2 | **인터랙티브 round 1 회 = vertical slice 자리 1 호** (implementer + designer) — 인터랙티브 round 통과 = vertical slice 1 호 박음 | 1 호 + 부분 1 회 | cy-002 prototype 인터랙티브 round |
| B3 | **G-LOOP-1 가중치 박음** (orchestrator) — *동일 분량 가중 절감 ≥ 30%* 측정 (단순 tick 수가 아니라 *분량 정규화* 후 비용) | 가중치 산식 1 호 | cy-002 g-loop-1-weighting-v0.md 박음 |
| B4 | **forbidden-* 산출물 분류 룰** (voice-keeper) — *cy-N 외부 자리* (orphan ack) 산출물의 차기 cycle audit + 흡수 절차 | audit 1 호 | cy-002 forbidden-dialogue-v0 분류 자리 |
| B5 | **신규 vertical slice 1 종 분리 발의 자리** (designer) — 새 슬라이스가 기존 prototype 묶음 안에 들어갈 수 없을 때 Type B 분리 | Type B 1 건 | D-20260502-002.yml |
| B6 | **자기 영역 보류 = 영역 챔피언십 약화 인접 자리** (전 조직) — 옵션 선택 시 자기 영역 r1 보류한 조직은 다음 cycle 에서 *우선 발화 자리* 1 호 부여 | cy-002 안 보류 0 | 본 cycle ambitious 안에서 보류 0 (lean 옵션 미선택) |

---

## §사람 합의 필요 인접 자리에 관한 노트

본 §A / §B 는 *조직 charter 의 표준 룰 추가* 에 해당 — constitution §진화 규칙 §사람 합의 필요 의 *"메타데이터 스키마 호환 깨지는 변경"* 인접 자리이나, 호환을 깨는 자리가 아닌 *추가* 자리이므로 *Type C 결정 (D-20260502-001) 의 안* 에서 박음 = 사람 합의 충족.
