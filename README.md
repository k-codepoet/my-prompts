# my-prompts

작가 **CodePoet** 의 매니페스토 — *진심 · 움직임 · 자립 · 연대 · 축복 · 시간이 곧 나 · 방향* — 를 캐릭터와 세계로 변주한 **가상 세계** 를 만들고, 그 세계에서 게임 · 웹툰 · 영화 · 소설 · 이미지 · 우표 등 다양한 콘텐츠를 파생시키는 카탈로그.
*매니페스토 → 세계 → 콘텐츠* 위계. 한 시드 → 여러 세대 → 한 세계 → 다양한 product. 시스템은 *자가 생성 · 세대 진화* 하며 수렴할 때까지 돈다.

> 진입점:
> - [`constitution.md`](./constitution.md) — 비전·목표·불변·진화 규칙·수렴 기준 (불변층)
> - [`seed.md`](./seed.md) — 인셉션 키워드 (사람 1 회 입력)
> - [`CHARTER.md`](./CHARTER.md) — 운영 플레이북 (결정 프로토콜·자율 실행 모델)
> - [`BOOTSTRAP.md`](./BOOTSTRAP.md) — cron tick 1 회 동작 명세
> - [`STRUCTURE.md`](./STRUCTURE.md) — 폴더 레이아웃 (5 층)
> - [`current.md`](./current.md) — 활성 gen·cycle·tick 라이브 포인터
> - [`prompts/writing/reader-first-standard.md`](./prompts/writing/reader-first-standard.md) — reader-facing writing 최상위 기준 + 사용자 피드백 우선 규칙

## 레이아웃

```
prompts/
  worldbuilding/   # 공유 — 세계·지형·지역·인물·관계·오브젝트·아이템·연대기
  design/          # 게임 기획 — concept / mechanics / levels / narrative / balancing
  art/             # 시각 에셋 (기존 prompts/* 가 여기로 이동됨)
  code/            # 구현 — architecture / systems / integration / review
  writing/         # 글쓰기 — structure / scenes / dialogue / voice
feedback/
  reader/          # 사용자/R0 독자 피드백 — writer/critic 이 다음 글쓰기 전에 반드시 읽음
workflows/         # 다단계 파이프라인 (자동화 단위)
outputs/
  art/             # 모델별 이미지 (기존 outputs/<model>/ 가 여기로 이동됨)
  worldbuilding/   # 세계 bible
  design/          # GDD
  code/            # 코드/프로토타입
  writing/         # 원고
docs/              # 메타 (컨벤션·스키마)
```

## 현재 상태

- ✅ Layer 1·2·3 문서 완비 (constitution / seed / charter / bootstrap / structure)
- ✅ Layer 4·5 골격 (`generations/gen-001/`, `decisions/`, `current.md`, prompts/outputs 5 도메인)
- ⬜ **Seed 봉인** — `seed.md` ① 채우기 ← *다음 (사람)*
- ⬜ gen-001 조직 제안 (Type C 결정)
- ⬜ Manual vertical slice → my-life 회고
- ⬜ Cron 자동화 (Iron Law: Manual 통과 후)

자동화 진입은 my-life Iron Law (Manual-first 게이트) 를 따른다 — `workflows/vertical-slice.md` 수동 통과 전까지 cron 등록 금지.

## 규약

- `prompts/` 는 모델 비종속. 모델별 튜닝은 분기하지 않음.
- 결과물은 `outputs/<domain>/<model-or-game-id>/...` 로만 저장.
- 새 모델 추가는 `outputs/art/<model>/` 만 추가 (소스는 그대로 재사용).
