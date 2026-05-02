# cy-002 Charter

> 발의: D-20260502-001 (Type C, picked=`ambitious`)
> 직전 사이클: cy-001 (마감 라운드 7/7 종결, 정렬 측 측정 마감, review.md baseline 박음)
> parent_goal: G-LOOP-1 (두 번째 product 사이클 첫 측정 자리)

## 목적 (G-* 진척 표적)

| G-* | baseline (cy-001 종결) | cy-002 표적 |
|-----|-----|-----|
| G-WORLD-1 | 0.56 | **0.80+** — bible v0.5 (지역 + 오브젝트/아이템 + 연대기 v1) = 8 핵심 문서 도달 |
| G-PRODUCT-1 | 0.30 | **0.65+** — vertical slice 인터랙티브 round 통과 + 단편 +3 + 6 우표 전체 6 장 실측 |
| G-LOOP-1 | 0.00 | **첫 측정 자리 도달** — 측정 룰 가중치 박음 (cy-002 charter 부속, 본 charter §3 자리) |
| G-AUTONOMY-1 | 0.85 | 0.85+ 유지 (결정 큐 ≤ 10 건/gen) |
| G-CONVERGE-1 | 0.00 | 미진입 (gen-002 후 자리) |

## 조직 구성

cy-001 패턴 *유지* — 7 조직 + critic 감시 (orchestrator / voice-keeper / loremaster / writer / designer / implementer / art-director, + critic).
*조직 추가·병합·제거 0* / *역할 책임 영역 큰 변경 0* / *G-* 목표·수렴 기준 미수정* / *불변 룰 미수정* / *시드 미변경*.

## 사이클 길이 예측

**~40-50 tick** (cy-001 ≈ 30 tick 의 1.5 배). `ambitious` 안의 비용 부담 명시적 수용.
*orchestrator objector 자리*: 본 길이는 G-LOOP-1 의 *cy-002 ≤ cy-001 × 0.7* 단순 임계와 충돌 → §3 의 *동일 분량 가중 절감* 룰로 측정 자리 보전.

## 신규 결정 예측

- **Type B (cy-002 r1 진입 시점 동시 발의)**: 이미지 vertical slice 1 종 *분리* (6 우표 실측 묶음을 prototype 묶음과 같은 vertical slice 안에 둘 것인가 / 별도 슬라이스로 분리할 것인가) — `decisions/open/D-20260502-002.yml`.
- **Type C 후보 (cy-002 종결 인접)**: g-loop-1 측정 가중치 정식 룰 도달 시 charter 룰 추가 (`evolution-rules-v1.md` §B 도입 자리 → 정식).

## §1. 7 조직 charter §진화 룰 직접 적용 1 호

cy-001 review.md §4.1 의 9 자리 (재재초과 강화) 가 본 cycle 시점 *정식 룰* 로 진입.
§4.2 의 6 자리 (도달) 가 *도입* (cy-002 안 사례 누적 → 정식 룰 도달 자리).
구체 룰 박음: `evolution-rules-v1.md` (본 cycle 의 동위 문서).

## §2. 7 조직 r1 + r2 묶음 task 큐

상세: `task-queue-r1-r2.md` (본 cycle 의 동위 문서).

## §3. G-LOOP-1 측정 가중치 박음

상세: `g-loop-1-weighting-v0.md` (본 cycle 의 동위 문서).

## §4. writer r4 forbidden-dialogue-v0.md 분류

상세: `forbidden-dialogue-v0-classification.md`.
요지: cy-002 r1 voice-keeper r5 audit 대상 → 통과 시 *cy-002 산출물 정식 박음* (cy-001 retroactive 흡수 회피, baseline 변경 0).

## 매니페스토 핵심어 매핑 (cy-002 가 어떤 핵심어를 1 차로 챔피언하는가)

| 핵심어 | cy-002 의 챔피언 자리 |
|-----|-----|
| 진심 | writer 단편 +3 (인규 *업* + 연강 / 유리 *연대 변주* + 1 추가) — 세 축 분리 응답 정식 박음 |
| 움직임 | implementer prototype 인터랙티브 round → 7/7 도달 시 *automation 게이트 해제* 별도 선언 자리 |
| 자립 | implementer §자립 — manual-run-log 인터랙티브 round 1 호 (Iron Law 게이트 1 차 해제) |
| 연대 | writer 유리 *연대 변주* + critic cold reader 5 인 시뮬 |
| 축복 | art-director 6 우표 전체 6 장 실측 = *연대* 결의 시각 1 차 시연 묶음 1 호 |
| 시간이 곧 나 | designer facing_history N=8 + STEP_DISTANCE_RATIO 검수 — 메카닉 시간 곱셈 안정 |
| 방향 | orchestrator review.md baseline 직접 입력 박음 + cy-002 charter 박음 |

## invariant_traps 자기 검증 (ambitious 안의 알려진 함정)

1. **G-LOOP-1 측정 룰과의 충돌** — cy-002 비용 1.5 배 ⇒ *cy-002 ≤ cy-001 × 0.7* 단순 임계 충족 0. 대응: §3 가중치 정식 박음 (동일 분량 가중 절감 ≥ 30% 측정 자리).
2. **사용자 결정 큐 부담** — 신규 Type B 1 건 추가. 대응: 본 cycle 안 다른 Type B/C 신규 발의 자제 (§4 audit 결과 흡수 외).
3. **두 gen 안정 임계 추가 1 cycle 지연** — gen-002 진입 후 자리. 대응: cy-002 charter 박음 시 본 임계 *gen-002 r1* 명시 (transition.md 조건).
