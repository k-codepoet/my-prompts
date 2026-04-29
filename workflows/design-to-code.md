---
id: wf-design-to-code
domain_in: design
domain_out: code
status: stub
---

# 목적

게임 디자인 문서에서 **시스템 분해 → 구현 프롬프트 → 코드** 까지를 도출한다.

# 입력

- `outputs/design/<game-id>/concept.md`, `mechanics.md`
- (선택) 타깃 엔진 (godot / unity / phaser / web)

# 단계

1. **시스템 분해**
   - prompt: `prompts/code/architecture/system-breakdown.md` *(TBD)*
   - 산출: `outputs/design/<game-id>/systems.md` (시스템 목록 · 의존 그래프 · 우선순위)
2. **시스템별 구현 프롬프트**
   - 각 시스템마다: `prompts/code/systems/<system>.md`
   - 산출: 시스템 단위 코드 스니펫
3. **엔진 통합**
   - prompt: `prompts/code/integration/<engine>-skeleton.md` *(TBD)*
   - 산출: `outputs/code/<game-id>/` 빌드 가능 프로젝트
4. **Implementer 검수**
   - 트립와이어: 코드 단순성·빌드 성공·범위 초과

# 출력

- 빌드되는 vertical slice 프로젝트
- 시스템 단위 README (`outputs/code/<game-id>/<system>/README.md`)

# 실패 모드

- 시스템 의존 그래프 순환 → 분해 실패
- 엔진 선택이 코어 루프와 부조화 (예: turn-based 인데 Unity DOTS) → Implementer 트립
- 구현 비용 > 가치 → Implementer 가 대안 제출
