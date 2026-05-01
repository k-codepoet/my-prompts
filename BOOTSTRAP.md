# Bootstrap — Cron Tick 1 회 동작 명세

> 모든 cron tick 의 첫 행동은 본 문서를 따른다.
> 본 문서는 *얇아야* 한다 — 복잡한 로직은 조직(`orgs/`)·워크플로우(`workflows/`)·결정 큐(`decisions/`) 에 위임.

---

## 입력
- `current.md` — 활성 gen·cycle·tick·결정 큐 상태
- `constitution.md` — 불변 룰 (위반 검사용)
- `seed.md` — 시드 봉인 여부 (gen-001 시작 가능 여부)
- `decisions/open/`, `decisions/closed/` — 사용자 응답 도착 여부
- 활성 gen 의 `generations/gen-N/orgs/` — 현재 조직 charter

## 출력 (조건부)
- `generations/gen-N/cycles/cy-NNN/ticks/tick-NNN.md` — 본 tick 활동 로그 (필수)
- `cycles/cy-NNN/arguments/<role>-r<round>.md` — 역할 발언
- `cycles/cy-NNN/decision-traces/D-<id>.md` — 결정 추적
- `decisions/open/D-<id>.yml` — 새 결정 발의
- `current.md` 갱신 (tick 마감 시)

---

## tick 단계

### 0. Sanity check (모든 tick 공통)
- `current.paused == true` → 즉시 종료, tick 로그 없음.
- `len(decisions/open/) >= N` (현재 N=5) → 즉시 종료 + tick 로그 "blocked: queue full".
- **`open/D-*.yml` 중 type=C 이면서 `response.decided_at` 미응답인 것 1 개라도 있으면 → "blocked:type_c_pending" 로 종료.** Type A/B 는 부분 자율 허용 (lane 안에서 진행), Type C (비전·시드·G-*·조직 구조 영향) 만 무거운 결정으로 분류해 사용자 응답까지 전체 정지. 응답 박힌 Type C 는 통과 → 같은 tick 또는 다음 tick 의 checker 가 apply-decisions 로 흡수.
- `seed.sealed == false` 또는 `current.gen == null` → "seed waiting" 로그 후 종료.
- `constitution` 위반 가능성 감지 (직전 tick 결과) → 발견 사항을 `decisions/open/` 에 Type C 발의 후 종료.

### 1. 사용자 응답 통합
- `decisions/closed/` 의 *직전 tick 이후 변동분* 을 읽음.
- 응답 결과를 영향받은 산출물에 반영.
- 해당 `decision-traces/D-*.md` 끝에 응답 + 결과 append.

### 2. 활성 사이클 진행
- `current.cycle == null` → 새 사이클 (`cy-<NNN>`) 폴더 생성 + 사이클 목적 기록 (어느 G-* 를 향하는지).
- 활성 조직들에게 *자기 영역의 다음 task 1 개씩* 발행 (`orgs/<org>.md` 의 next-task 룰 따라).
- 각 조직: prompt → 산출물 → `arguments/<org>-r<round>.md` 에 발언 (영역 챔피언십 + 트립와이어).

### 3. 합의 / 결정
- 조직 간 충돌 + 합의 실패 → `decisions/open/D-*.yml` 발의 + `decision-traces/D-*.md` 시작.
- 합의 가능 → 진행, 산출물 채택, `ticks/tick-NNN.md` 에 결과 기록.

### 4. Gen 마감 검토
- 사이클 종료 시 (사이클 목적 달성 또는 N tick 초과) → `generations/gen-N/review.md` 갱신:
  - G-* 별 점수 재계산
  - 직전 사이클과의 Δ
- 두 사이클 연속 Δ < 0.05 → `transition.md` 발의 (Type C 결정: 다음 gen 의 조직·룰 변경안).
- 사용자 응답 후 `gen-(N+1)/` 골격 생성 + 변경 적용 + `current.gen` 증가.

### 5. tick 마감
- `ticks/tick-<NNN>.md` 작성:
  ```
  ---
  tick: NNN
  read: [<file paths>]
  judged: <한 줄 — 본 tick 의 핵심 판단>
  wrote: [<file paths>]
  next_candidates: [<task ids>]
  ---
  ```
- `current.md` 갱신 — tick·active_decisions·last_updated.

---

## 종료 조건
- `current.paused`
- `len(decisions/open/) >= N`
- `G-CONVERGE-1` 충족 → tick 로그 "converged" + `current.paused = true` + 사람 통보.

---

## 호출 형식 (cron 등록 — 참조)

```cron
# Manual-first 게이트 통과 후에만 등록
0 */1 * * *  cd /path/to/my-prompts && claude -p "BOOTSTRAP.md 따라 1 tick 실행"
```

> ⛔ **현재 cron 등록 금지** — `workflows/vertical-slice.md` 수동 통과 + `my-life/logs/manual-runs/` 회고 작성이 선행되어야 함 (my-life Iron Law).

---

## 디버그 가이드

사용자가 결과의 *왜* 를 알고 싶을 때:

1. `decisions/closed/D-<id>.yml` 의 `trace:` 따라간다.
2. `decision-traces/D-<id>.md` 가 발의 → 라운드 → 추천 근거 → 응답까지 다 적혀 있음.
3. 더 깊이 가려면 해당 `cycles/cy-NNN/` 통째로 본다 (ticks · arguments · artifacts).
4. 사이클 마감은 `review.md`, gen 마감은 `transition.md` 에 요약.

> 매 tick 이 디스크에 쌓이므로 사이클당 수십~수백 파일. 평소엔 `summary.md` 만 본다.
