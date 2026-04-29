---
id: wf-pitch-to-prototype
domain_in: pitch
domain_out: game
status: stub
---

# 목적

한 줄 피치에서 **게임 vertical slice** 까지 — 컨셉 → 메카닉 → 아트 → 코드를 1회 통과시킨다.

# 입력

- 한 줄 피치 (장르 · 톤 · 핵심 동사)
- (선택) 참조 세계관 — `outputs/worldbuilding/<world>/`

# 단계

1. **피치 확장**
   - prompt: `prompts/design/concept/concept-pitch.md` *(TBD)*
   - 산출: `outputs/design/<game-id>/concept.md`
   - 검증: Critic 트립와이어 — 첫 5분 답이 가능한가?
2. **코어 메카닉**
   - prompt: `prompts/design/mechanics/core-loop.md` *(TBD)*
   - 산출: `outputs/design/<game-id>/mechanics.md`
3. **에셋 사양 → 아트**
   - workflow: `workflows/design-to-art.md`
4. **시스템 분해 → 구현**
   - workflow: `workflows/design-to-code.md`
5. **Vertical slice 빌드**
   - prompt: `prompts/code/integration/<engine>-skeleton.md` *(TBD)*
   - 산출: `outputs/code/<game-id>/`

# 출력

- 30 초 플레이 가능한 빌드
- 1 쪽 GDD
- 에셋 1 세트 (캐릭터 / 배경 / UI 최소)

# 실패 모드

- 피치가 너무 추상적 → Critic 트립
- 메카닉이 코어 루프와 분리 → Designer 트립
- 에셋·코드가 vertical slice 범위 초과 → Implementer 트립
