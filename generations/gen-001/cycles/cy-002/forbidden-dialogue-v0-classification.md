# forbidden-dialogue-v0.md 분류 결정

> D-20260502-001 (picked=`ambitious`) §d.
> 대상: `outputs/writing/the-map-is-the-journey/forbidden-dialogue-v0.md`
> 발행 시점: cy-001 마감 라운드 7/7 *종결 후* (orphan ack, tick-032)
> 분류 자리: cy-001 후반 task 큐 *외부 자리* — cy-002 r1 voice-keeper r5 audit 1 차 대상.

## 분류 결정

**cy-002 산출물 정식 박음** (cy-001 retroactive 흡수 *회피*).

### 근거

| 후보 분류 | 채택 여부 | 근거 |
|---|---|---|
| (i) cy-001 산출물 retroactive 흡수 | ❌ | cy-001 cycle close baseline (review.md §2) 변경 0 자리 박음 = 흡수 시 baseline 재산출 = 재작업 |
| (ii) cy-002 산출물 정식 박음 | ✅ | 분류 단순화 + cycle close baseline 변경 0 + cy-002 voice-keeper r1 자리 자연 박음 |
| (iii) reject (orphan ack 으로만 보존) | ❌ | 이미 산출물로 디스크에 박힘 + voice-keeper r4 audit 통과 인접 자리 = 폐기 비용 부조리 |

### 처리 절차

1. **cy-002 r1 voice-keeper r5 audit** — 본 v0 의 정렬 측정 (매니페스토 e 항 + 세 축 분리 응답 룰 A2 적용 가능 여부).
2. **audit 통과 시**: `outputs/writing/the-map-is-the-journey/forbidden-dialogue-v0.md` 의 frontmatter 에 `world: the-map-is-the-journey@v0.5` + `cycle: cy-002` + `classified_at: <iso>` 박음. r5 audit ack ticks 1 건 발행.
3. **audit 부분 통과 시**: r5 audit 결과를 `forbidden-dialogue-v1.md` 발의 근거로 사용. v0 는 *cy-002 임시 자리* 로 보존.
4. **audit 실패 시**: voice-keeper r5 reject 발화 → cy-002 r2 round 자리에서 회복 또는 deprecate 결정 (Type B 발의 자리).

## 매니페스토 핵심어 사전 매핑 (audit 가이드)

forbidden-dialogue 의 결이 매니페스토 7 핵심어 중 *어디에* 정렬되는지 audit 시 명시:

- `진심` — *금기* 의 dialogue = 진심 발화의 압력. 일치 자리.
- `움직임` — 발화하지 않으면 *움직이지 않은* 것. 일치 자리.
- `방향` — 금기를 깬 dialogue 가 *방향* 을 가리킨다. 일치 자리.
- (3 핵심어 정렬 충족 시 e 항 ≥ 0.95 충족 가능성 높음.)

## 트립와이어 사전 점검

- bible v0.4 의 *forbidden-language-v0.md* 와의 충돌 점검 — *language* 와 *dialogue* 는 별 자리이나, voice-keeper 가 인접 자리 이중 발생을 r5 에서 명시 분리해야 함.
- writer r4 발화의 *세 축* 명시 여부 점검 (룰 A2 적용).
