# Prompt Library

프롬프트는 한 곳에서 관리하고, 모델별 결과물은 별도로 저장하는 구조입니다.

## Source of Truth

- [`prompts/`](./prompts/README.md): 공용 프롬프트 소스
- 같은 프롬프트를 여러 모델에 반복 적용하는 기준점
- 추후 벤치마크나 회귀 비교 시 변경 없이 재사용
- 모델별 튜닝 프롬프트를 여기서 따로 분기하지 않음

## Outputs

- [`outputs/`](./outputs/README.md): 모델별 생성 결과물 저장소
- 현재 정리된 모델:
  - [`outputs/gpt-image-1.5/`](./outputs/gpt-image-1.5/README.md)
  - [`outputs/comfyui-z-image-turbo/`](./outputs/comfyui-z-image-turbo/README.md)
- 새 모델 추가 시 동일한 `prompts/`를 입력으로 사용하고 `outputs/<model>/`만 추가

## Structure

```text
my-prompts/
├── README.md
├── prompts/
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
│   └── guides/
└── outputs/
    ├── README.md
    ├── comfyui-z-image-turbo/
    └── gpt-image-1.5/
```

## Rules

- 프롬프트는 모델별로 복제하지 않음
- 결과물만 모델별 폴더에 저장
- 새 모델 테스트 시 `prompts/`는 그대로 두고 `outputs/<model>/`만 추가
