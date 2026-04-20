# Model Prompt Library

모델별 프롬프트와 생성 결과를 분리해서 관리하는 루트 인덱스입니다.

## Models

| Model | Path | Status | Notes |
|---|---|---|---|
| ComfyUI z-image-turbo | [`comfyui-z-image-turbo/`](./comfyui-z-image-turbo/README.md) | 기존 라이브러리 정리 완료 | 원본 프롬프트 구조와 문서 세트 |
| GPT Image 1.5 | [`gpt-image-1.5/`](./gpt-image-1.5/README.md) | 대표 이미지 1차 정리 완료 | 폴더별 대표 이미지 생성본과 매니페스트 |

## Structure

```text
my-prompts/
├── README.md
├── comfyui-z-image-turbo/
│   ├── README.md
│   ├── game-views/
│   ├── characters/
│   ├── enemies/
│   ├── npcs/
│   ├── ui-panels/
│   ├── buttons/
│   ├── status-bars/
│   ├── inventory/
│   ├── dialog/
│   ├── leaderboard/
│   ├── settings/
│   ├── items/
│   └── prompts/
└── gpt-image-1.5/
    ├── README.md
    ├── manifest.md
    ├── game-views/
    ├── characters/
    ├── enemies/
    ├── npcs/
    ├── ui-panels/
    ├── buttons/
    ├── status-bars/
    ├── inventory/
    ├── dialog/
    ├── leaderboard/
    ├── settings/
    ├── items/
    └── prompts/
```

## Conventions

- 모델별 자산과 문서는 모델 폴더 아래에서만 관리
- 공통 카테고리명은 최대한 동일하게 유지
- 각 모델 폴더에는 자체 `README.md` 또는 `manifest.md`를 둬서 상태 추적
