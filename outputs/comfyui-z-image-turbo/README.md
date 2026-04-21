# ComfyUI z-image-turbo Outputs

이 폴더는 `comfyui-z-image-turbo` 실행 결과물을 저장할 때 사용하는 모델별 출력 경로입니다.

현재 프롬프트 원본은 [`../../prompts/`](../../prompts/README.md)에서 관리합니다.

## Current Contents

- [`reference-images/`](./reference-images/): 기존 `genai.home.codepoet.site` 예시 이미지를 저장소에 내장한 로컬 사본
- 이미지 메타데이터의 positive prompt, seed, model 정보는 각 `../../prompts/` 문서의 `Metadata Prompts` 섹션에 기록되어 있습니다.

## Notes

- 현재 이미지는 카테고리별 출력 디렉터리로 재분류하지 않고 UUID 파일명 그대로 보존합니다.
- 향후 벤치마크 결과물은 필요에 따라 카테고리별 하위 폴더로 추가할 수 있습니다.
