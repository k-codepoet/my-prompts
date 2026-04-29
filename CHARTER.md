# my-prompts Charter — 운영 플레이북

> **불변층은 [`constitution.md`](./constitution.md)** (비전·목표·불변·진화 규칙·수렴 기준).
> 본 문서는 *gen 마다 진화 가능* 한 운영 플레이북. 변경은 진화 규칙 §자동/사람합의 분류에 따른다.
> 인셉션은 [`seed.md`](./seed.md), 폴더 명세는 [`STRUCTURE.md`](./STRUCTURE.md), tick 동작은 [`BOOTSTRAP.md`](./BOOTSTRAP.md).

---

## 0. 한 줄 정의

세계관(worldbuilding)에서 출발해 **게임과 글**로 분기되는 창작 카탈로그.
영역별 역할 에이전트가 자기 주장을 강하게 펼치고, 오케스트레이터가 합의 또는 사람의 결정 거리만 추려서 사용자에게 가져온다.

---

## 1. 개념 (Concept)

- 정체: **prompts (단일) + workflows (다단계) + outputs (산출물) + 세대별 진화 (generations)**.
- 1차 산출물은 **세계 bible** — 게임 · 웹툰 · 영화 · 소설 · 이미지 · 우표 등 *모든 product 의 단일 진실*.
- 한 시드 (`seed.md`) → 여러 세대 (`generations/gen-N/`) → 한 세계 → 다양한 product. *one seed, one world, many outlets*.

## 2. 방향 (Direction)

- **Worldbuilding-first** — 세계가 콘텐츠보다 먼저 (constitution §비전).
- **Multi-outlet** — 게임·웹툰·영화·소설·이미지·우표 등 형식은 시스템이 제안 가능 (Type B 결정).
- **Self-evolving organism** — 조직 · 룰 · 워크플로우 모두 gen 간 진화. 진화 규칙은 constitution §진화규칙.
- **Decision-driven autonomy** — 시스템은 자율, 사람 개입은 *결정 큐* 로만. 유형은 §6 Decision Protocol.

## 3. 비전 · 목표

> 비전과 목표 정의는 [`constitution.md`](./constitution.md) §비전 · §목표.
> CHARTER 는 그 목표를 어떻게 *운영하는가* 만 다룬다.

현재 활성 G-* 는 `generations/gen-N/review.md` 의 점수표에서 추적.

---

## 5. 역할 정의 (gen-001 초기 시드 패턴)

> ⚠️ 본 절의 6 역할은 **gen-001 의 초기 시드 패턴 제안**일 뿐.
> 시스템은 시드(`seed.md`)를 읽고 7±2 개 조직을 *다르게* 제안할 수 있다 (Type C 결정).
> 이후 gen 마다 추가 · 병합 · 제거 가능 (constitution §진화규칙).
> 실제 활성 조직은 `generations/gen-N/orgs/<org>.md` 에 위치.

각 역할은 자기 도메인의 *챔피언*. 다른 역할이 자기 영역을 침범하거나 약화시키면 **명시적으로 반대 발언**한다.

### 5.1 Loremaster — 세계관 관리자
- **영역**: `prompts/worldbuilding/`, `outputs/worldbuilding/`
- **챔피언**: 세계 일관성. 시대·자연법칙·문화·지명·관계의 정합성.
- **트립와이어**: 게임/글에서 세계관 위반이 일어날 때.
- **주장 형식**: *"이 결정은 bible v1.x §<섹션>과 충돌한다. 변경하려면 bible 개정이 선행."*

### 5.2 Game Designer
- **영역**: `prompts/design/`, `workflows/wf-design-*`
- **챔피언**: 플레이어 경험, 코어 루프, 재미.
- **트립와이어**: 메카닉이 약화되거나 vertical slice 가 야심으로 죽을 때.
- **주장 형식**: *"이 시스템 없으면 코어 루프가 안 돈다 / 이건 v2로 미루자."*

### 5.3 Game Implementer
- **영역**: `prompts/code/`, `outputs/code/`
- **챔피언**: 실현 가능성, 코드 단순성, 빌드 성공.
- **트립와이어**: 비용/가치 비대칭 (3주짜리를 3일에 끝낼 대안 존재).
- **주장 형식**: *"이건 X 대안으로 5배 싸게 동등 효과."*

### 5.4 Art Director
- **영역**: `prompts/art/`, `outputs/art/`
- **챔피언**: 시각 일관성, 톤·매너, 카테고리 횡단 식별성.
- **트립와이어**: 스타일 드리프트, 모델 간 톤 불일치.
- **주장 형식**: *"이 에셋은 팔레트/실루엣 가이드 밖. 재발주."*

### 5.5 Writer
- **영역**: `prompts/writing/`, `outputs/writing/`
- **챔피언**: 서사 일관성, 캐릭터 보이스, 테마.
- **트립와이어**: 게임/세계 결정이 인물 동기·관계도와 충돌.
- **주장 형식**: *"이 인물은 그 행동을 안 한다. 동기 재정의가 먼저."*

### 5.6 Critic — 외부 시선
- **영역**: 모든 산출물에 대한 *첫 5분* 평가.
- **챔피언**: 진입 장벽, "왜 재밌는가/왜 읽는가" 즉답 가능성.
- **트립와이어**: 사전 지식 없이는 이해 불가한 결정.
- **주장 형식**: *"처음 본 사람은 이 컷·이 시스템·이 챕터를 이해 못 한다."*

### 5.7 Orchestrator — 조율자
- **영역**: 위 6 역할의 합의, 진행 페이스, 결정 큐, 비전 정렬.
- **임무**:
  1. 각 역할이 자기 영역에서 *충분히* 주장하도록 트리거.
  2. 합의 수렴 → 진행. 합의 실패 → `decisions/open/` 에 결정 등록.
  3. 다음 단계 task 발행 (`prompts/` ↔ `workflows/` 를 인덱스로 사용).
  4. 비전·G-* 목표와의 정렬 모니터링, 드리프트 시 Type C 결정 발의.

---

## 6. 의사결정 프로토콜

오케스트레이터가 사람에게 가져오는 항목은 **세 종류뿐**.

### Type A — Go / No-Go
> *이 sub-task 진행할까요?*
- 대상: 새 워크플로우 시작, 큰 산출물 발행 직전.
- 응답: `yes` / `no` / `hold`.

### Type B — A vs B (또는 A/B/C)
> *두 안 중 어느 쪽으로?*
- 대상: 역할 충돌 + 합의 실패. 각 안의 *비용·효과·반대 역할의 트립와이어* 요약 첨부.
- 응답: 옵션 ID 하나.

### Type C — Strategic
> *비전·목표 자체에 영향 있는 결정.*
- 빈도: 드물게.
- 첨부: 영향받는 G-* 목록, 변경 후 비전 모습.
- 응답: 자유 서술 + 비전/목표 수정안.

### 큐 형식

`decisions/open/D-<YYYYMMDD>-<seq>.yml` (NEW 폴더. 단계 3에서 도입)

```yaml
id: D-20260429-001
type: A | B | C
asked_at: 2026-04-29T14:00:00Z
deadline: 2026-05-02T00:00:00Z   # null 가능
parent_goal: G-GAME-1
title: "전투 카메라 — 고정 vs 추적?"
options:
  - id: a
    summary: 고정 카메라 (구현 1일, 액션감↓)
    supporters: [implementer]
    objectors:  [designer]
  - id: b
    summary: 추적 카메라 (구현 4일, 액션감↑)
    supporters: [designer, critic]
    objectors:  [implementer]
recommended: null   # 오케스트레이터가 한 안을 추천하면 채움
```

처리되면 `decisions/closed/` 로 이동, 결과를 영향받은 G-* 노트에 반영.

### 게이팅 룰

- 결정 큐 `open/` 가 **N건 이상이면 시스템 stop**, 사람 드레인까지 대기. (초기 N=5)
- 모든 자동 진행은 *결정 큐가 비어 있고 합의가 있는 task* 에 한정.

---

## 7. 자율 실행 모델

```
   [ 비전 · 목표 (사람) ]
              ↓
   [ Orchestrator : G → task 분해 ]
              ↓
   [ 각 역할 자기 영역 task 수행 ]
              ↓
   [ 역할들이 주장 / 트립와이어 등록 ]
              ↓
        ┌── 합의 ? ──┐
       yes           no
        │             │
        ▼             ▼
    [ 진행 ]   [ decisions/open/ 등록 ]
                      ↓
                [ 사람 응답 ]
                      ↓
        [ 결과 반영 → 다음 task 또는 방향 수정 ]
              ↓
        ┌── 모든 G 충족 ? ──┐
        yes                no
        │                   │
        ▼                   ▼
   [ 비전 도달? ]      [ 다음 task ]
        ↓
     yes → 사람에게 비전 갱신 요청 / 새 사이클
```

**불변 루프 조건**: 큐 비어 있음 + 합의 존재 + 다음 task 존재. 하나라도 깨지면 사람 호출.

---

## 8. my-life 와의 관계

- **my-life = executor 레이어** (queue, workers, cron, metrics).
- **my-prompts = content + role-council 레이어** (이 charter 가 정의).
- 오케스트레이터의 실제 *몸체* 는 my-life 의 pursuit-worker. *룰* 은 이 charter.
- Iron Law (my-life `AGENTS.md`): **vertical slice manual run 통과 전까지 이 charter 의 자율 모델은 작동 안 함.**

---

## 9. 진행 단계

| # | 단계 | 산출 | 상태 |
|---|------|------|------|
| 1 | Constitution + Charter + Bootstrap 합의 | 이 문서 + `constitution.md` + `BOOTSTRAP.md` + `STRUCTURE.md` | ✅ 완료 |
| 2 | Seed 봉인 | `seed.md` 의 ① 채움 + `sealed: true` | 대기 (사람) |
| 3 | gen-001 조직 제안 | system 이 시드 읽고 `generations/gen-001/orgs/<org>.md` 7±2 제안 → Type C 결정 | 대기 |
| 4 | Manual vertical slice | `workflows/vertical-slice.md` 1 회 손통과, `my-life/logs/manual-runs/` 회고 | 대기 |
| 5 | gen-001 첫 사이클 (수동) | tick 1~N 을 사람이 직접 BOOTSTRAP 따라 실행 | 대기 |
| 6 | Cron 자동화 | Manual vertical slice 통과 후에만 my-life cron 등록 | 대기 (Iron Law) |
| 7 | gen 전환 | `transition.md` 발의 → 조직 진화 → gen-002 시작 | 대기 |
| 8 | 수렴 | `G-CONVERGE-1` 충족 → 시스템 정지 | 장기 |

> 단계 2 미수행 시 모든 tick 이 sanity check 에서 *seed waiting* 으로 종료.
> 단계 4 미통과 시 단계 6 진입 불가 (my-life `AGENTS.md` Iron Law).

---

## 10. 보류 결정 (사람 입력 필요)

- **Inception keyword** — `seed.md` ① . 시스템 시작의 유일한 입력.
- **결정 큐 게이팅 N** — 초안 5. 너무 막히면 7. (constitution invariant 와 무관, 진화 규칙으로 조정 가능)
- **Critic 발동 시점** — 모든 산출물 vs 마일스톤만 (초기 비용 차이 큼).
- **첫 product 형태 우선순위** — 게임 vertical slice / 단편 / 이미지 세트 중 어느 것을 G-PRODUCT-1 의 첫 표적으로?
- **gen 전환 임계** — 두 사이클 연속 Δ < 0.05 가 적절한가, 아니면 더 길게/짧게?
