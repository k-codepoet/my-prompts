---
id: wf-design-to-art
domain_in: design
domain_out: art
status: stub
---

# 목적

게임 디자인 문서에서 **에셋 사양 → 아트 프롬프트 → 이미지** 까지를 도출한다.

# 입력

- `outputs/design/<game-id>/concept.md`, `mechanics.md`
- (선택) `outputs/worldbuilding/<world>/` — 톤·팔레트·실루엣 가이드

# 단계

1. **에셋 매니페스트**
   - prompt: `prompts/art/guides/asset-manifest.md` *(TBD — 기존 가이드 기반)*
   - 산출: `outputs/design/<game-id>/asset-manifest.md` (필요 카테고리·수량·우선순위)
2. **아트 프롬프트 선택/생성**
   - 입력 매니페스트 → `prompts/art/<category>/index.md` 매핑
   - 신규 항목은 `prompts/art/<category>/` 에 추가
3. **모델 실행**
   - 모델: comfyui-z-image-turbo / gpt-image-1.5 / etc.
   - 산출: `outputs/art/<model>/<category>/<file>.png`
4. **Art Director 검수**
   - 트립와이어: 팔레트·실루엣 가이드 위반 → 재발주

# 출력

- `outputs/art/<model>/<category>/` 에 생성된 이미지
- 갱신된 `outputs/design/<game-id>/asset-manifest.md` (each row → 실제 파일 경로)

# 실패 모드

- 매니페스트가 메카닉과 분리 → Designer 트립
- 카테고리 횡단 톤 드리프트 → Art Director 트립
- 세계관 위반 (예: 중세 세계인데 SF 갑옷) → Loremaster 트립
