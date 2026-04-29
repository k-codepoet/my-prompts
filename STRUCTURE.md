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

## 최상위 레이아웃

```
prompts/        # 재사용 가능한 단일 프롬프트
  worldbuilding/  # 공유 — 세계관 1차 산출물 (게임·글 양쪽이 소비)
  design/         # 게임 기획
  art/            # 시각 에셋 (현재 prompts/* 가 여기로 이동 예정)
  code/           # 구현
  writing/        # 글쓰기 (소설·시나리오·기사·에세이)
workflows/      # 다단계 파이프라인 (자동화 단위)
outputs/        # 산출물 — 도메인별로 모양이 달라 분리
  worldbuilding/  # 세계관 bible (마크다운 + 지도/관계도 이미지)
  art/            # 이미지 (모델별, 현재 outputs/* 그대로)
  design/         # 게임 디자인 문서
  code/           # 코드 스니펫·프로토타입
  writing/        # 원고 (장·씬·전체)
docs/           # 메타 (컨벤션, 스키마)
```

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

| # | 단계 | 상태 |
|---|------|------|
| 1 | **Doc-only** — Charter + Structure 합의안 | ✅ 완료 |
| 2 | **Skeleton migration** — 폴더 재배치 + 빈 도메인 골격 + workflow 스텁 4 개 | ✅ 완료 |
| 3 | **Manual vertical slice** — `workflows/vertical-slice.md` 1 회 손통과, `my-life/logs/manual-runs/` 에 기록 | 진행 예정 |
| 4 | **Population** — 각 도메인 카테고리 점진 채움 (3 의 발견사항 우선 반영) | 대기 |
| 5 | **Automation** — my-life pursuit-worker 에 워크플로우 등록 | 대기 |

> ⛔ 단계 3을 건너뛰고 5로 갈 수 없음. (my-life `AGENTS.md` Iron Law — Manual-first 게이트는 *루프 자동화* 에 적용. 골격 이동은 게이트 밖.)

---

## 결정 보류 항목

- `code/integration/` 하위에 어떤 엔진을 우선할지 (godot / unity / phaser / 자체 web)
- `outputs/design/` 의 표준 포맷 — 마크다운 단일 vs 다중 파일 vs JSON
- 게임 ID 와 my-life goal ID 의 매핑 규칙
