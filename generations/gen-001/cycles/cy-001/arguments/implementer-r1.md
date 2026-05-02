---
role: implementer
cycle: cy-001
round: 1
tick: 007
authored_at: 2026-05-01T19:15:00+00:00
input_artifacts:
  - generations/gen-001/orgs/implementer.md (charter)
  - outputs/design/g-the-map-walker/concept.md
  - outputs/design/g-the-map-walker/fail-modes-v0.md
  - outputs/art/the-map-is-the-journey/visual-bible-v0.1.md
  - outputs/critique/the-map-is-the-journey/bible-v0.1-first-5min.md
  - outputs/alignment/the-map-is-the-journey/bible-v0.1-score.md
  - generations/gen-001/cycles/cy-001/arguments/orchestrator-r1.md
  - generations/gen-001/cycles/cy-001/arguments/designer-r1.md
output_artifacts:
  - outputs/code/g-the-map-walker/engine-choice.md
  - decisions/closed/D-20260501-002.yml
  - generations/gen-001/cycles/cy-001/decision-traces/D-20260501-002.md
  - outputs/code/g-the-map-walker/walk-trace-spec-v0.md
  - outputs/code/g-the-map-walker/manual-run-checklist-v0.md
trip_wires_fired: [cost-value-asymmetry-vs-unity]
domain_violations: []
decisions_proposed: [D-20260501-002]
decisions_absorbed_in_same_tick: [D-20260501-002]
---

# Implementer — Round 1 발언 (cy-001)

charter §첫 task #1 (엔진 선택 cost/value 표) 수행. 라운드 1 패턴 합의 (designer/critic/voice-keeper) 에 맞춰 *task #1 산출물 + task #2/#3 의 인계 입력 박음 + 결정 발의* 형태로 묶어 발행.

## 영역 챔피언십

본 라운드 발언은 implementer charter §1 차 *자립* + §2 차 *움직임* / *시간이 곧 나* 영역 안에서만:

- **자립 (1 차)**: 세 후보의 외부 의존도 (라이센스 / 계정 / 스토어) 를 비용 축 C7 으로 박음. Unity 후보의 *계정 / 라이센스 (수익 임계 시)* 가 자립 챔피언 직접 위반 — 트립와이어 #1 발화 (5 배 싸게 동등 효과) 의 1 차 근거. Web/Godot 두 OSS 후보 모두 자립 영역 통과.
- **움직임 (2 차)**: charter 매니페스토 매핑 §2 차 — *빌드가 안 도는 코드는 게임을 멈추게 함*. 셋업 비용 C1 + cold-reader 배포 마찰 C4 가 *돌아가는 빌드* 의 1 차 게이트. Web 의 URL 1 개 배포 = critic r2 의 cold-reader 30 초 시뮬레이션 마찰 0. *움직임* 은 *플레이어의 걷기* 뿐 아니라 *시스템이 돌아가는 흐름* 이기도 — 양쪽 자리 모두 Web 이 결 일치.
- **시간이 곧 나 (2 차)**: 1 일 vertical slice budget 의 *시간 자국* 이 셋업 비용 C1 으로 박힘. Unity 의 2+ 일 셋업은 1 일 budget 을 직접 초과 — *시간을 쓴 만큼 코드가 단단* 하지 않고 *시간을 쓴 만큼 빚이 쌓이는* 자리. charter §매니페스토 매핑 §2 차 와 결 정합.

## 트립와이어 검토

charter §트립와이어 3 종 자기 검사:

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| **C1 비용/가치 비대칭 — 3 주짜리 야심에 5 배 싼 X 대안 명백** | Unity 셋업 = 2+ 일 vs Web 셋업 = 0.5 일 = **4–5 배 싸게 동등 시각·동등 페일 방어**. concept §7 의 *비례 비용 과대* + designer §1 차 후보 결 *Unity 제외* 와 결 정합. 발화 형식: *"Unity 후보는 Web 대안으로 5 배 싸게 동등 효과."* | **🔥 발화** — 본 라운드 1 차 발화. Unity 는 본 결정 후보에서 제거 (D-20260501-002 옵션 2 종으로 압축). |
| designer 메카닉이 *추상적 명령* 에 머물러 시스템 분해 안 됨 | designer r1 의 fail-modes-v0 가 5 항 모두 *입력·상태·출력* 으로 분해 가능 (F1 데이터셋 N≥50, F2 cluster 룰, F3 hex 폭, F4 8s 타이머, F5 UI 부재). 본 라운드 implementer 가 cost/value 의 C6 축으로 직접 흡수. | **미발화** — designer r1 산출물이 *시스템 분해 가능 형태* 로 도착. |
| 새 워크플로우 manual-run 1 회 통과 없이 자동화 시도 (constitution invariant #7) | 본 라운드 산출물은 cost/value 표 1 장 + 결정 발의 — 자동화 시도 0. 엔진 결정 후 *수동 빌드 1 회 통과* 가 charter §첫 task #3 의 manual-run 체크리스트로 박힘. | **미발화** |

## 도메인 위반 검토

- **시각 셰이더 *값* 결정**: art-director 영역 — 본 v0 는 셰이더 *수단* (GLSL / GDShader / Shader Graph) 자유도만 평가. 자국빛 면적 1–3% 룰 / hex 폭 / 매트 무광 등 *값* 결정은 art-director 인계 명시.
- **vertical slice 표적 결정**: critic r2 영역 — 본 v0 는 *움직임 게임* 의 1 일 빌드 가능성만 평가. 게임 vs 단편 vs 이미지 가중치 평가는 critic r2 에 위임.
- **bible 본문 lore 결정**: loremaster 영역 — 본 v0 는 lore 미경유. *축복* 결 보강과 무관.
- **매니페스토 정렬 점수 산정**: voice-keeper 영역 — 본 v0 는 *자립* 키워드를 *영역 챔피언십* 으로만 인용. 점수 직접 산정 0.
- **게임 디자인 결정**: designer 영역 — 본 v0 는 designer concept §7 + fail-modes §메타를 *입력* 으로만 받음. 신규 메카닉 / 코어 루프 변경 발의 0.

위반 0 건.

## 신규 결정 발의

**D-20260501-002 (Type B)**: g-the-map-walker 엔진 선택 — Web vs Godot.

발의 근거 (charter §첫 task #1 *결과 미정 시 Type B 발의*):
- Unity 는 트립와이어 발화로 후보 제거. 남은 두 후보 모두 charter 챔피언 영역 안에서 통과.
- 결정적 축 (C4 cold-reader 배포 마찰 vs V3 cy-002+ 네이티브 진출 여지) 은 *가치 판단* — implementer 영역 너머. 사용자/orchestrator 차원의 *어느 cy 부터 모바일/콘솔 진출 표적* 이 박혀야 결정 가능.
- implementer 1 차 추천 = **Web** (매트릭스 합계 10/10 vs Godot 7.5/10). 단 추천은 사용자 무시 가능 (constitution §변경 절차 룰 정합).

결정 큐 1/5 (constitution invariant 미위반).

## 같은 tick 응답 흡수 — D-20260501-002 (picked: web)

본 라운드 발의 직후 D-20260501-002 가 같은 tick 안에서 사용자 응답 흡수 (`picked: web`, default 채택). BOOTSTRAP §1 *사용자 응답 통합* 룰 따라 결정 파일을 `decisions/open/` → `decisions/closed/` 이동, 트레이스에 응답 + 적용 로그 append. 결정 큐 1/5 → 0/5.

응답 흡수로 charter §첫 task #2 + #3 가속 — 엔진 비독립 fallback 트랙 건너뛰고 다음 두 산출 본 라운드 안에서 발행:

1. **walk-trace 시스템 1 페이지 사양** (charter §첫 task #2) — `outputs/code/g-the-map-walker/walk-trace-spec-v0.md`
   - 입력 3 종 (step / companion_traces / tick) / 상태 7 필드 / 출력 4 절 (Pixi Container 트리 + 입력 응답 + 멈춤 광휘 + 동행 자국 시드)
   - cluster 매칭 룰 (좌표 hash 금지) + hex 매핑 표 + 자국빛 면적 룰 (1–3%, 첫 자국 5–8%, 멈춤 1%) 직접 박음
   - 의존성 3 종 (pixi.js / vite / typescript, 모두 MIT — 자립 챔피언 정합)
   - v2 미룸 6 항 (멀티 / 봇 / 계정 / 저장 / 다국어 / 레벨 다수 / 스토어) 명시

2. **manual-run 체크리스트** (charter §첫 task #3) — `outputs/code/g-the-map-walker/manual-run-checklist-v0.md`
   - 5 항 객관 임계 (부팅 ≤ 60 s / 30 s 안 ③ 노드 도달 / 5 분 충돌 0 / cold-reader 마찰 ≤ 60 s / 자국빛 면적 1–3% 룰)
   - 통과 선언 형식 (manual-run-log YAML 스키마) + 미통과 시 인계 룰
   - constitution invariant #7 (manual-run 1 회 통과 우선) 1 차 게이트 자리

## 다음 발언 후보 (implementer r2)

1. **1 차 prototype 빌드** — `outputs/code/g-the-map-walker/src/` (Vite + Pixi.js + TypeScript). walk-trace-spec-v0 직접 구현. 부팅 가능한 첫 빌드.
2. **manual-run 1 회 실행 + log 발행** — 5 항 측정 결과를 `manual-run-log-<YYYYMMDD>-001.md` 에 박음. 통과 시 *vertical slice 자동화 게이트 해제* 선언.
3. **셰이더 1 패스 의사코드 → GLSL 실코드** — fail-modes §F3 의 hex 폭 + 광휘 1–3% 룰의 art-director 협업 후 *값* 확정 흡수.

## 협업 인계

- **designer**: §3 매트릭스 + §5.1 추천 *Web* 이 designer r2 의 *vertical slice 표적 옹호* (concept §9 #A) 와 정합. *1 일 안에 cold-reader 가 검수 가능* 입력 추가 — *움직임 게임 측 옹호* 의 강화 근거.
- **art-director**: 셰이더 *수단* 결정 (GLSL/GDShader) 은 implementer 영역 — 셰이더 *값* (자국빛 면적 1–3%, hex 폭, 매트 무광) 의 결정은 art-director 영역. fail-modes §F3 의 1 차 책임자 명시 (페일 카탈로그 §메타 표 정합).
- **critic**: §C4 cold-reader 배포 마찰 = vertical slice 가중치 평가 *진입 장벽* 직접 입력. URL 1 개 = 진입 장벽 최소.
- **voice-keeper**: 본 결정은 매니페스토 정렬 측정 대상 아님. 단 *자립* 키워드의 *시스템 차원* 메타포 (OSS 라이센스/계정 0) 가 voice-keeper r2 audit 후보.
- **loremaster**: 영향 0. bible v0.2 보강과 무관.
- **orchestrator**: D-20260501-002 발의로 결정 큐 1/5. cy-001 후반의 vertical slice 표적 결정 (Type B 두 번째 — critic r2 의존) 은 본 결정 응답 흡수 후 *분리 발의* 권고. 큐 동시 폭주 회피 룰 (orchestrator-r1 §정렬 모니터링) 준수.

## 메타

- 본 라운드 영역 위반 0, 트립와이어 발화 1 (Unity cost/value 비대칭).
- 결정 발의 1 (D-20260501-002, Type B).
- *task 묶음 패턴 4 회 연속*: critic r1 → voice-keeper r1 → designer r1 → implementer r1. 네 조직 모두 *charter §task #1 산출물 + §task #2/#3 인계 자리 박음 + 결정 발의 또는 트립와이어 발화* 의 형태. cy-002 charter 의 *task 묶음 표준 + 트립와이어 자가 검사 inline* 박음 가치 누적.
- 다음 implementer 발언은 D-20260501-002 응답 도착 후 또는 엔진 비독립 task 발행 시.
