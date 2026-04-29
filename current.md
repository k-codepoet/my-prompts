---
gen: null                  # 현재 generation. seed 봉인 후 1.
cycle: null                # cy-NNN. 첫 사이클 시작 후 채워짐.
tick: null                 # tick-NNN. 활성 tick.
active_decisions: []       # 사람 응답 대기 중 D-* IDs.
paused: false              # 사람이 정지 시 true. tick은 즉시 종료.
last_updated: null         # ISO 8601. tick 마감마다 갱신.
---

# Current State (live pointer)

> 본 파일은 시스템이 갱신한다. 사람이 손으로 바꾸는 건 `paused` 토글 + 긴급 상황뿐.
> 모든 cron tick 의 *첫 동작* 은 본 파일을 읽는 것 ([`BOOTSTRAP.md`](./BOOTSTRAP.md) §0).

## 활성 산출물

- gen 시작 전.

## 다음 동작 후보

- `seed.md` 의 `sealed: true` 봉인 → gen-001 시작 → orgs 제안 Type C 발의.
- 그 전엔 모든 tick 이 sanity check 에서 *seed waiting* 으로 종료.

## 변경 이력 (요약)

| 시각 | 항목 | 값 |
|------|------|----|
| (없음) | — | — |
