# my-prompts Charter

> 본 문서는 **불변층**. 변경 시 진행 중 모든 작업을 일시 중단하고 R&R·결정 큐를 전수 검토.
> 운영 레이아웃은 [`STRUCTURE.md`](./STRUCTURE.md), 자동화 게이트는 my-life `AGENTS.md`.

---

## 0. 한 줄 정의

세계관(worldbuilding)에서 출발해 **게임과 글**로 분기되는 창작 카탈로그.
영역별 역할 에이전트가 자기 주장을 강하게 펼치고, 오케스트레이터가 합의 또는 사람의 결정 거리만 추려서 사용자에게 가져온다.

---

## 1. 개념 (Concept)

- 정체: **prompts (단일) + workflows (다단계) + outputs (산출물)** 카탈로그.
- 1차 산출물은 **세계관 bible** — 게임도 글도 이를 참조해서 분기.
- 한 세계관에서 여러 게임 / 여러 원고가 파생되는 *one world, many outlets* 구조.

## 2. 방향 (Direction)

- **Worldbuilding-first** — 세계가 콘텐츠보다 먼저.
- **Dual outlet** — 게임(design · art · code) 과 글(writing) 두 갈래만 1차 지원.
- **Role council** — 영역 전문가들이 자기 도메인을 강하게 주장하고, 충돌은 명시적으로 표면화.
- **Decision-driven autonomy** — 시스템은 자율적으로 돌고, 사람의 개입은 *결정 큐* 형태로만.

## 3. 비전 (Vision)

> 내가 시드(세계관 한 줄, 톤, 장르)와 비전만 주면, 시스템이 세계 bible을 깊이 키우고
> 거기서 게임 vertical slice 한 개와 단편 한 편을 자동으로 도출한다.
> 내 일은 **비전 조정**과 **결정 큐 처리**(주당 5건 이내) 뿐.

## 4. 목표 (Goals — 측정 가능)

| ID | 목표 | 완료 기준 |
|----|------|-----------|
| `G-WB-1` | 첫 세계관 bible v1.0 | `outputs/worldbuilding/<world>/` 에 세계·지형·지역·인물·관계·오브젝트·아이템·연대기 8 개 핵심 문서 채움 |
| `G-GAME-1` | 그 세계관 기반 게임 vertical slice | 30초 플레이 가능 빌드 + 1쪽 GDD + 에셋 1세트 |
| `G-WRITE-1` | 그 세계관 기반 단편 1편 | 5,000–10,000자, 발행 가능 상태 |
| `G-ORCH-1` | 오케스트레이터 1차 가동 | 위 세 G를 사람 결정 ≤ 10건으로 도달 |
| `G-LOOP-1` | 두 번째 세계관·게임·글 사이클 | G-1들의 비용 30% 감소 (재사용 검증) |

---

## 5. 역할 정의 (R&R)

각 역할은 자기 도메인의 *챔피언*. 다른 역할이 자기 영역을 침범하거나 약화시키면 **명시적으로 반대 발언**한다.
역할은 시스템 프롬프트로 페르소나화되어 `prompts/roles/<role>.md` 에 저장 (단계 3에서 작성).

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
| 1 | Charter 합의 | 이 문서 (role 정의 / 결정 프로토콜에 사람 OK) | **진행 중** |
| 2 | Manual vertical slice | 한 세계관 + 한 게임을 손으로 끝까지 통과, `my-life/logs/manual-runs/` 기록 | 대기 |
| 3 | Role 페르소나 프롬프트 작성 | `prompts/roles/<role>.md` 7개 | 대기 |
| 4 | Orchestrator 1차 | my-life pursuit-worker 위 단순 조정 시뮬레이션 | 대기 |
| 5 | 결정 큐 가동 | `decisions/open/` 첫 항목 발생 | 대기 |
| 6 | 두 번째 사이클 | `G-LOOP-1` — 재사용성 검증 | 대기 |

> 단계 2 미통과 시 단계 3 이후 진입 불가 (my-life Iron Law).

---

## 10. 보류 결정 (사람 입력 필요)

- **첫 세계관 시드** — 장르 · 시대 · 톤 · 1줄 컨셉.
- **첫 게임의 장르·뷰** — top-down dodger / side-view runner / clicker / etc.
- **첫 단편의 길이·시점** — 5k vs 10k자, 1인칭 vs 3인칭.
- **결정 큐 N (게이팅 한계)** — 초안 5. 너무 막히면 7.
- **Critic 발동 시점** — 모든 산출물 vs 마일스톤만 (초기 비용 차이 큼).
