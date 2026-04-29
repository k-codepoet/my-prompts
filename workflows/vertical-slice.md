---
id: wf-vertical-slice
domain_in: pitch | design
domain_out: game
status: stub
priority: critical   # Manual-first 게이트 충족용 — 이 워크플로우 1회 손통과 후 자동화 진입 가능
---

# 목적

**Manual-first 게이트 통과용 첫 표적.** 사람 한 명이 손으로 처음부터 끝까지 한 번 통과시킨다.
실패 지점·포맷 미스매치·빠진 메타데이터를 모두 노출시키는 것이 1차 목적이고, 결과물은 부산물.

# 입력

- 한 줄 피치 또는 하나의 G-* 목표 ID
- 가장 작은 가능한 범위 (30 초 플레이, 5,000 자 이내, 1 씬)

# 단계 (전부 *수동*)

1. **세계관 시드** → `outputs/worldbuilding/<world>/world.md` 만 우선 작성 (다른 7 카테고리 건너뜀)
2. **컨셉** → `outputs/design/<game-id>/concept.md`
3. **메카닉 1 개** → `outputs/design/<game-id>/mechanics.md` (코어 루프 1 개만)
4. **에셋 1 세트** → `workflows/design-to-art.md` 흐름을 1 카테고리만 통과
5. **시스템 1 개** → `workflows/design-to-code.md` 흐름을 가장 작은 단위로
6. **빌드 + 플레이** → 30 초 시연 영상 또는 스크린샷 1 장
7. **회고** → `my-life/logs/manual-runs/wf-vertical-slice-<date>.md` 작성:
   - 사용한 입력
   - 각 단계 산출
   - 막힌 지점 (필수 — 자동화 시 여기 먼저 보강)
   - 최종 결과
   - 다음 사이클의 G-LOOP-1 비용 절감 후보

# 출력

- 가장 작은 *재현 가능한* 게임 산출물 1 개
- **manual-run 로그** ← 진짜 핵심 산출물

# 실패 모드 (예상)

- 카테고리 스키마 불일치 — frontmatter 표준 부재로 단계 간 전달 실패
- "다음 단계" 가 어디인지 모호 — 워크플로우 간 전이 점이 명시 부재
- 세계관 1 항목만으론 게임이 안 굴러감 — 어디가 최소인지 발견 필요

# 게이팅

- 이 워크플로우 *통과 전*: 자동화 / 워커 위임 금지 (my-life Iron Law)
- 이 워크플로우 *통과 후*: 발견된 실패 지점이 `prompts/`, `workflows/`, `docs/` 의 보강 task 로 등록됨 (Population 단계)
