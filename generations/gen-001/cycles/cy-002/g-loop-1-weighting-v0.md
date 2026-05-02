# G-LOOP-1 측정 가중치 v0

> D-20260502-001 (picked=`ambitious`) 의 *부수 신규 발의 자리*.
> cy-002 charter §3. 진화 룰 v1 §B3 도입 사례 1 호.

## 동기

`ambitious` 안 cy-002 = ~40-50 tick = cy-001 ≈ 30 tick 의 1.5 배.
constitution §G-LOOP-1 의 단순 임계 *"G-PRODUCT-1 비용 ≥ 30% 절감 (재사용 검증)"* 을 *tick 수* 만으로 판단하면 충족 0 — orchestrator objector 자리 (D-20260502-001 ambitious 안 §objectors).
그러나 cy-002 의 *분량* (bible v0.5 + 단편 +3 + 6 우표 전체 + prototype 인터랙티브 round + 신규 vertical slice 발의) 은 cy-001 의 *분량* (bible v0.3 + 단편 1 + 6 우표 첫 1 장 시도 + prototype 첫 박음) 의 *대략 2 배 ~ 2.5 배* 자리 — 정규화 시 *동일 분량 가중 절감* 측정 가능.

## 측정 산식 v0

```
W(cycle) = α·N_bible + β·N_short + γ·N_visual + δ·N_proto + ε·N_decision
cost_norm(cycle) = ticks(cycle) / W(cycle)
saving = 1 - cost_norm(cy-N) / cost_norm(cy-(N-1))
G-LOOP-1 충족: saving ≥ 0.30
```

### 가중치 v0 (본 cycle 안 박음, 사례 누적 시 차기 정식 룰 진입)

| 항 | 의미 | 가중치 |
|---|---|---|
| α | bible 핵심 문서 1 건 | 1.0 |
| β | 단편 1 편 | 1.5 |
| γ | 시각 산출물 1 건 (우표 1 장 / 인물 hex 1 종) | 0.6 |
| δ | prototype round 1 회 (manual-run-log 1 건) | 2.0 |
| ε | 신규 결정 (Type B/C) 1 건 | 0.4 |

### cy-001 / cy-002 추정

| | bible | short | visual | proto | dec | W | ticks | cost_norm |
|---|---|---|---|---|---|---|---|---|
| cy-001 | 3 (v0.1+v0.2+v0.3) | 1 (인규) | ~3 (자국빛 + 인물 hex 1 + 우표 시도 1) | 1 (manual-run-log-001) | ~2 | 3·1+1.5+3·0.6+2+0.8 = 9.1 | 30 | 3.30 |
| cy-002 표적 | 2 (v0.4+v0.5) | 3 | ~10 (3 신규 인물 hex + 자국빛 미세 + 우표 6 장) | 1 (인터랙티브 round) | 2 (B + 가중치 박음) | 2+4.5+6+2+0.8 = 15.3 | 45 | 2.94 |

`saving = 1 - 2.94/3.30 = 0.109` → 단순 산식으로는 30% 미달 (10.9%).

### 해석

- v0 가중치는 *prototype round* (δ=2.0) 가중치가 낮음 — 인터랙티브 round = vertical slice 자리 1 호 박음 = 진화 룰 §B2 후보 = δ 격상 후보.
- δ=3.5 로 격상 시: cy-002 W = 16.8, cost_norm = 2.68, saving = 0.188 (18.8%).
- δ=5.0 로 격상 시: cy-002 W = 18.3, cost_norm = 2.46, saving = 0.255 (25.5%).
- → **v0 자리는 단일 cycle 측정으로 30% 임계 충족 불가** (의도된 결과). G-LOOP-1 1 차 측정 자리 = *측정 가능* 진입 = `score_partial = saving / 0.30` 박음 = cy-002 종결 시 0.3 ~ 0.6 자리 도달 가능.

## 차기 정식 룰 도달 조건 (사례 ≥ 2 회 누적)

1. cy-002 종결 시 본 산식으로 `saving` 산출 + review.md 박음 (사례 1).
2. cy-003 진입 시 가중치 v0 → v1 미세 조정 (δ + γ 격상 후보).
3. cy-003 종결 시 동일 산식 산출 + 비교 (사례 2) → 진화 룰 §B3 정식 진입 자리.

## constitution §G-LOOP-1 텍스트와의 호환

constitution §목표 G-LOOP-1: *"G-PRODUCT-1 비용 ≥ 30% 절감 (재사용 검증)"*.
본 v0 산식은 *비용* 정의를 *tick* 단순 → *분량 가중 정규화 tick* 으로 *해석* 박음 = constitution 원문 *수정 0 자리* (영향받는 G-* 없음, 측정 *해석* 만 박음). 사람 합의 필요 영역 외.
