# my-prompts 구조 (Blueprint)

> 창작 활동 — **게임 개발**과 **글쓰기** — 을 위한 프롬프트와 워크플로우를 한 카탈로그에서 관리.
> 두 도메인 모두 **세계관 같은 공통 1차 산출물**을 공유한다 (worldbuilding-first).
> 본 문서는 합의안. 실제 폴더 재배치는 vertical slice 수동 통과 1회 후 진행 (my-life Iron Law: Manual-first 게이트).

---

## 도메인 지도

```
                ┌──────────────────────────┐
                │  prompts/worldbuilding/  │  ← 공유 1차 산출물
                │  세계관·지형·인물·관계·  │     (세계 bible)
                │  오브젝트·아이템·연대기  │
                └────────────┬─────────────┘
                             │
              ┌──────────────┼──────────────┐
              ▼              ▼              ▼
        ┌─────────┐   ┌────────────┐   ┌──────────┐
        │ 게임 개발 │   │   글쓰기    │   │  (확장)   │
        │ design  │   │  writing   │   │  TTRPG·   │
        │ art     │   │            │   │  코믹스 등 │
        │ code    │   │            │   │           │
        └─────────┘   └────────────┘   └──────────┘
```

## 최상위 레이아웃 — 5 층

```
# Layer 1: 불변층
constitution.md            # 비전·G-*·불변·진화 규칙·수렴 기준 (사람만 변경)

# Layer 2: 인셉션
seed.md                    # 한 줄 키워드 + 사용자 의도. 봉인 후 system 의 유일 입력.

# Layer 3: 운영 플레이북 (gen 마다 진화 가능)
CHARTER.md                 # 운영 룰: 결정 프로토콜, 자율 실행 모델
BOOTSTRAP.md               # cron tick 1 회 동작 명세
STRUCTURE.md               # 본 문서

# Layer 4: 활성 상태
current.md                 # gen·cycle·tick·활성 결정 ID 라이브 포인터
decisions/                 # 사용자 채널 — 결론만 (얕고 행동가능)
  template.yml             # 결정 템플릿
  open/                    # 응답 대기
  closed/                  # 응답 완료
generations/               # 세대별 진화 — 모든 tick·발언·결정 추적 누적
  gen-001/
    orgs/<org>.md          # 이 세대의 조직 charter
    cycles/cy-NNN/
      ticks/tick-NNN.md    # cron tick 활동 로그
      arguments/<role>-r<round>.md
      decision-traces/D-<id>.md
    artifacts/             # 시도물 (실패 포함)
    review.md              # 세대 마감 — KPI · 수렴 점수
    transition.md          # 다음 gen 변화 (조직·룰)
  gen-002/...

# Layer 5: 콘텐츠 카탈로그 (gen 을 넘어 재사용)
prompts/                   # 단일 프롬프트
  worldbuilding/           # 공유 — 세계 1차 산출물
  design/                  # 게임 기획
  art/                     # 시각 에셋
  code/                    # 구현
  writing/                 # 글쓰기
workflows/                 # 다단계 파이프라인
outputs/                   # 세대를 넘어 살아남은 정전 (frontmatter: converged_at_gen: N)
  worldbuilding/, art/, design/, code/, writing/
docs/                      # 메타 (컨벤션·스키마)
```

> Layer 1·2 는 사람이 변경, Layer 3 는 gen 진화 가능, Layer 4 는 system 만 갱신, Layer 5 는 system 이 채우고 사람이 사용.

---

## prompts/ — 단일 프롬프트

### design/ — 게임 기획
| 폴더 | 역할 |
|------|------|
| `concept/` | 한 줄 피치, 핵심 게임 루프, 레퍼런스 비교 |
| `mechanics/` | 시스템·룰·전투·경제·진행 |
| `levels/` | 레벨/맵/난이도 커브 |
| `narrative/` | 스토리·캐릭터 아크·다이얼로그 |
| `balancing/` | 수치 튜닝·테스트 시나리오 |

### art/ — 시각 에셋 *(현재 `prompts/*` 전부 이전)*
- 캐릭터: `characters/`, `enemies/`, `npcs/`
- UI/HUD: `ui-panels/`, `buttons/`, `dialog/`, `inventory/`, `leaderboard/`, `settings/`, `status-bars/`
- 환경/뷰: `items/`, `game-views/{top-down, side-view, isometric}/`
- 횡단 가이드: `guides/`

### code/ — 구현
| 폴더 | 역할 |
|------|------|
| `architecture/` | 시스템 설계 패턴, 상태기계, ECS, 데이터 흐름 |
| `systems/` | 인풋·물리·세이브·인벤토리·전투 등 도메인 단위 |
| `integration/` | 엔진별 통합 (godot / unity / web / phaser) |
| `review/` | 코드 리뷰·리팩터·디버깅 프롬프트 |

---

## workflows/ — 다단계 파이프라인 (핵심)

`prompts/` 의 단일 프롬프트를 엮은 체인. **my-life pursuit-worker 가 나중에 자동화하는 단위는 워크플로우**.

| 파일 | 흐름 |
|------|------|
| `pitch-to-prototype.md` | 한 줄 피치 → 컨셉 → 메카닉 → vertical slice |
| `design-to-art.md` | 기획 문서 → 에셋 사양 → art prompts → 이미지 |
| `design-to-code.md` | 기획 문서 → 시스템 분해 → 구현 프롬프트 → 코드 |
| `vertical-slice.md` | end-to-end 1회 통과용 (manual-run 첫 표적) |

**워크플로우 파일 스키마**

```yaml
---
id: wf-<verb>-<object>
domain_in: design | art | code | pitch
domain_out: design | art | code | game
---

# 목적
한 문장.

# 입력
- ...

# 단계
1. <step name>
   - prompt: `prompts/<domain>/<file>.md`
   - 산출: ...
   - 검증: ...
2. ...

# 출력
- ...

# 실패 모드 (자주 막히는 곳)
- ...
```

---

## outputs/ — 산출물 (도메인별 분리)

산출물의 *모양* 이 다르기 때문에 한 폴더에 못 섞음.

```
outputs/
  art/
    comfyui-z-image-turbo/<category>/<uuid>.png   # 현재 그대로
    gpt-image-1.5/<category>/<name>.png
  design/
    <game-id>/
      concept.md
      mechanics.md
      levels.md
  code/
    <game-id>/
      <system>.<ext>
```

---

## 명명 규칙

| 대상 | 규칙 | 예 |
|------|------|----|
| 폴더·슬러그 | `kebab-case` | `top-down`, `state-machine` |
| 게임 ID | `g-<short-name>` | `g-ember-runner` |
| 워크플로우 ID | `wf-<verb>-<object>` | `wf-design-to-art` |
| 프롬프트 파일 | `<noun>-<qualifier>.md` | `concept-pitch.md`, `combat-loop.md` |

---

## 프롬프트 파일 frontmatter

`prompts/**/*.md` 모두 공통.

```yaml
---
title: <human readable>
type: prompt
domain: design | art | code
inputs: [<무엇을 받는지>]
outputs: [<무엇을 만드는지>]
tags: [...]
last_used: <ISO date | null>
---
```

---

## 진행 단계

진행 단계의 단일 진실은 [`CHARTER.md`](./CHARTER.md) §9. 본 절은 *구조* 관점의 요약.

| # | 단계 | 상태 |
|---|------|------|
| 1 | Doc-only 합의 (constitution + charter + structure + bootstrap) | ✅ 완료 |
| 2 | Skeleton (5 층 골격, prompts/outputs 재배치, generations/gen-001/ + decisions/ 인프라) | ✅ 완료 |
| 3 | Seed 봉인 — `seed.md` ① 채움 + `sealed: true` | 대기 (사람) |
| 4 | gen-001 조직 제안 (Type C 결정) | 대기 |
| 5 | Manual vertical slice (`workflows/vertical-slice.md`) → my-life 회고 | 대기 |
| 6 | Cron 자동화 등록 — Manual 통과 후 (Iron Law) | 대기 |
| 7 | gen 전환 / 수렴 | 장기 |

> ⛔ 단계 5 통과 전엔 단계 6 진입 불가 (my-life `AGENTS.md` Iron Law).
> 단계 3 미수행 시 모든 tick 이 *seed waiting* 으로 종료 (BOOTSTRAP §0).

---

## 결정 보류 항목

- `code/integration/` 하위에 어떤 엔진을 우선할지 (godot / unity / phaser / 자체 web)
- `outputs/design/` 의 표준 포맷 — 마크다운 단일 vs 다중 파일 vs JSON
- 게임 ID 와 my-life goal ID 의 매핑 규칙
