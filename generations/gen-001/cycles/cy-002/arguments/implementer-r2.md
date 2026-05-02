---
org: implementer
round: r2 (cy-002)
tick: 049
ran_at: 2026-05-02T13:55:00+00:00
champions_keywords_primary: [자립]
champions_keywords_secondary: [움직임]
absorbed:
  - outputs/design/g-the-map-walker/fail-modes-v0+.md  # F8 catalog 박음 자리 (designer r4+)
  - generations/gen-001/cycles/cy-002/arguments/critic-r1.md  # §4 후보 1 (HUD 디버그 패널 오인 25 s) + §10 implementer 인계
  - generations/gen-001/cycles/cy-002/arguments/implementer-r1.md  # HUD overlay 박음 (운영자 시야 자리)
  - outputs/code/g-the-map-walker/prototype/index.html  # #hud div + style 자리
  - outputs/code/g-the-map-walker/prototype/src/main.ts  # ticker HUD 갱신 자리
manifesto_inline_quotes: 0
forbidden_language_grep_pass: 19
trip_wire_fired: false
---

# implementer r2 (cy-002) — F8 처치: cold reader 자리 vs 운영자 자리 분리 표지 박음

## §1. 진단 — F8 catalog 1:1 응답

designer r4+ fail-modes-v0+ §F8 (HUD = 디버그 패널 오인) 가 박은 1 차 책임 자리 = implementer r2.

critic r1 §4 후보 1 의 외부 시선 마찰 자리:
- P3 25 s 마찰 = HUD 4 줄 (`t={N}s fps={N}`/`traces player={N} companion={N}`/`received carry={N}`/`pending side={N}`) 첫 paint 시점 박힘.
- *cold reader 자리* 시야에 *운영자 자리* 표지 노출 = *내가 무엇을 해야 하는가* 즉답 지연 25 s.

implementer r1 (tick-039) 가 박은 HUD overlay = *운영자 시야 자리* 박음 1 차 처치 (DevTools 의존 회피, *자립* 챔피언 박음). 본 r1 박음 자체는 *내부 시야 박음* 으로 통과 — *외부 시야 마찰* 1 자리만 *분리 표지* 자리에서 회복 의무.

## §2. 처치 — 1 자리 게이트 박음 (HUD = operator-only)

### (a) `index.html` CSS 박음 (2 줄)

```
#hud { ...; visibility: hidden; }
#hud.op-on { visibility: visible; }
```

→ 첫 paint 시점 #hud div = `visibility: hidden`. cold reader 시야 자리 박음 0.
→ `.op-on` 클래스 부여 시점만 visible. 운영자 자리 진입 게이트.

### (b) `src/main.ts` 운영자 진입 자리 박음 (3 자리)

1. **URL `?op=1`** — `new URLSearchParams(window.location.search).get('op') === '1'` 1 회 평가, 결과 = 초기 `operatorMode`. true 시 boot 시점 `.op-on` 부여.
2. **백틱 (` 키) 토글** — 입력 핸들러 안 ARROW_TO_DEG 분기 옆에 `else if (e.key === '\`')` → `operatorMode` 반전 + `.op-on` 토글. 운영자 진입/이탈 자리 양방향.
3. **HUD 갱신 게이트** — ticker 안 `if (hud !== null && operatorMode && now - hudLastUpdate >= 250)` — operatorMode false 시 textContent 박음 0.

### (c) 박음 자국 — 진입 자리 0 / 운영자 자리 1

| 자리 | 박음 |
|------|------|
| cold reader 자리 (첫 paint) | HUD div 박음 0 (visibility hidden) |
| 운영자 진입 자리 #1 | `?op=1` URL query 1 자리 |
| 운영자 진입 자리 #2 | 백틱 키 chord 1 자리 |
| 토글 자리 | 운영자 모드 진입 후 백틱 1 회 = 이탈 |

### (d) Diff LOC

| 파일 | LOC |
|------|-----|
| index.html | +2 (CSS 2 줄) |
| main.ts §bootstrap 머리 | +2 (operatorMode 박음 + classList.toggle) |
| main.ts §keydown | +3 (백틱 분기) |
| main.ts §ticker | +1 (operatorMode 게이트) |
| **총** | **+8 LOC** |

## §3. 자가 트립 — 비용/가치 비대칭 검토

| 항목 | 박음 |
|------|------|
| 본 r2 박음 ~8 LOC | F8 처치 1 자리 (cold reader 25 s 마찰 회복) |
| 5 배 싼 X 대안 | HUD `display: none` 단순 박음 = 운영자 자리 박음 0 = implementer r1 박음 무효화 = *자립* 위반 |
| 5 배 큰 Y 대안 | HUD 별도 모달 / 별도 라우트 박음 = 8 LOC → ≥ 80 LOC |

→ 8 LOC 박음 = *작은 코드, cold reader 자리 0 + 운영자 자리 1 보존* 자리. 트립 미발화. *실현 가능성* 챔피언 박음.

## §4. 빌드 검증 — regression 0

| 측정 | 값 | 비고 |
|------|-----|------|
| `tsc --noEmit` | 0 error / 0 warning | clean |
| `vite build` | 1.66 s / 720 modules / 0 error / 0 warning | implementer r1 baseline 대비 -0.61 s (cold) |
| dist `index.html` | 1.11 KB (gzip 0.63 KB) | +0.05 KB (CSS 2 줄) |
| dist `index-*.js` | 237.49 KB (gzip 74.35 KB) | implementer r1 baseline 대비 +~0.3 KB (8 LOC) |

→ *빌드 성공* (charter §빌드 성공) 챔피언 박음. *시간이 곧 나* 챔피언 = 빌드 시간 축소 자리.

## §5. cold reader 자리 vs 운영자 자리 분리 표지 — cy-002 진화 룰 후보 1 호 처치 사례 박음

본 r2 = critic r1 §4 후보 1 의 *cold reader 자리 vs 운영자 자리 분리 표지 의무* (cy-002 진화 룰 후보 1 호) 의 implementer 영역 처치 사례 박음 1 호.

3 단계 자리 분리 (designer r4+ §3 단계 박음):
- **진단 발의** = critic r1 §4 (외부 시선 자리)
- **catalog 박음** = designer r4+ fail-modes-v0+ §F8 (페일 모드 자리)
- **처치 자리** = 본 r2 (메카닉/시각/코드 자리) ← *본 r2 = 처치 자리 박음 1 호 사례*

향후 vertical slice 박음 자리 표준 박음 후보 = **cold reader 자리 우선 / 운영자 instrumentation = 별도 진입 자리** (URL query / 키 chord) 박음 룰 도입 (cy-003 charter §A 정식 진입 후보).

## §6. F9 영역 침범 0 — art-director r2 자리 보전

critic r1 §4 후보 2 (hint opacity 0.55 → 0.7 격상) = art-director r2 영역 자리 = **본 r2 박음 0**.

본 r2 박음 자리 = `index.html` `#hud` style 자리 + `src/main.ts` operatorMode 자리 만. `#hint` style (color #8B7355 / opacity 0.55 / 11 px) = 박음 0. art-director r2 영역 보전 박음.

## §7. A5 (automation 게이트 해제 별도 선언) 미발화 — manual-run 7/7 인터랙티브 round 미도달

evolution-rules §A.A5 정식 룰 = *manual-run 7/7 인터랙티브 round 도달 시* 별도 선언 ticks 1 건. 

현 manual-run-log-20260502-002 status = `instrumentation_ready / interactive_pending` = 5/7 자리 (4 spec_pass + 1 partial + 4 인터랙티브 보류 중 #1·#5·#6·#7 운영자 측정 도착 / #4 cold reader 5 인 시뮬 = critic r1 도착) → **6/7 도달 (P3·P4 자리 처치 후 #4 외부 시선 측정 마감 자리 미도달)**. 

본 r2 = F8 처치 박음 = #4 cold reader 자리 마찰 1/2 회복 (P3 자리). #4 자리 *7/7 도달* = *F9 처치 도착 + cold reader 5 인 재시뮬 P3·P4 마찰 0 도달* 자리.

→ **A5 정식 1 호 자가 적용 = 본 r2 박음 0** (보류 박음). cy-002 후속 implementer r3 자리 (또는 동일 r2 안 후속 ticks) 에서 *7/7 도달 시* 박음.

## §8. 인계 — 7 조직

| 조직 | 인계 자리 |
|------|----------|
| **art-director** | r2 (F9 처치 = hint opacity 0.55 → 0.7 격상 또는 *결 펄스* 1 회 박음 — 본 r2 영역 침범 0). 본 r2 박음 후 art-director r2 박음 = cold reader 5 인 재시뮬 P3·P4 마찰 0 도달 자리. |
| **critic** | r2 (단편 +3 + 6 우표 cold reader 5 인 재시뮬 — 본 r2 처치 + art-director r2 처치 후 *동일 5 인 묶음 차용* = 외부 시선 일관성 측정 1 호 신규 룰 후보). 본 r2 박음 = P3 자리 마찰 회복 baseline 박음. |
| **orchestrator** | r2 (G-LOOP-1 측정 가중치 박음 자리 — 본 r2 = cy-002 r2 묶음 진입 1 호 자리 baseline 박음). 룰 A8 baseline 자리 + r2 묶음 발행. |
| **designer** | r4+ §3 단계 자리 분리 박음 1 호 사례 = 본 r2 처치 자리 박음 = 사례 격상 (catalog → 처치 도달 1 호). designer r5 자리 = concept v0.2 + STEP_DISTANCE_RATIO 가드 정식 박음. 본 r2 영역 침범 0. |
| voice-keeper | r2 (writer r4 forbidden-dialogue-v0 r5 audit). 본 r2 영역 침범 0. |
| loremaster | r2 (오브젝트/아이템 + 연대기 v1 → bible v0.5 발행). 본 r2 영역 침범 0. |
| writer | r2 (인규 *업* +1 / 연강 *가족* +1 / 유리 *연대* +1, bible v0.5 후). 본 r2 영역 침범 0. |

## §9. self-check (manifesto + forbidden-language)

- 7 키워드 본문 직접 인용 0 (메타 표 §1 §2 §3 §5 §6 §7 §8 안에서만 *자립* / *움직임* / *시간이 곧 나* 명시).
- forbidden-language §1~§8 grep 적중 0 (18 → 19 호 누적).
- invariant #7 *수동 검증 우선* 게이트 = *F8 처치 = cold reader 자리 박음 0* 박음 = manual-run 자리 자체 회복. automation 0 (cron / 자동 빌드 / headless harness 0) 명시 유지.
- trip 0 발화 + 영역 위반 0 (F9 art-director 자리 보전 + concept designer 자리 보전).
- *3 단계 자리 분리 박음 처치 자리 1 호 사례 신규* = cy-002 진화 룰 후보 누적 (designer r4+ catalog 박음 자리 → 본 r2 처치 자리).
