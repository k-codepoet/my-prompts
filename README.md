# my-prompts

게임 개발과 글쓰기를 위한 프롬프트 · 워크플로우 카탈로그.
세계관(worldbuilding) 을 공유 1차 산출물로 두고, 거기서 게임과 글로 분기.

> 비전·역할·결정 프로토콜은 [`CHARTER.md`](./CHARTER.md)
> 폴더 레이아웃 명세는 [`STRUCTURE.md`](./STRUCTURE.md)

## 레이아웃

```
prompts/
  worldbuilding/   # 공유 — 세계·지형·지역·인물·관계·오브젝트·아이템·연대기
  design/          # 게임 기획 — concept / mechanics / levels / narrative / balancing
  art/             # 시각 에셋 (기존 prompts/* 가 여기로 이동됨)
  code/            # 구현 — architecture / systems / integration / review
  writing/         # 글쓰기 — structure / scenes / dialogue / voice
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

- ✅ Charter / Structure 합의안 작성
- ✅ 폴더 골격 이동 (이 커밋)
- ⬜ Manual vertical slice 1 회 통과 ← *다음*
- ⬜ Population (도메인 카테고리 채움)
- ⬜ Automation (my-life pursuit-worker 등록)

자동화 진입은 my-life Iron Law (Manual-first 게이트) 를 따른다 — vertical slice 수동 통과 전까지 워커·cron 위임 금지.

## 규약

- `prompts/` 는 모델 비종속. 모델별 튜닝은 분기하지 않음.
- 결과물은 `outputs/<domain>/<model-or-game-id>/...` 로만 저장.
- 새 모델 추가는 `outputs/art/<model>/` 만 추가 (소스는 그대로 재사용).
