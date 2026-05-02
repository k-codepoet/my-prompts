---
org: implementer
round: r1 (cy-002)
tick: 039
ran_at: 2026-05-02T10:25:00+00:00
champions_keywords_primary: [자립]
champions_keywords_secondary: [움직임]
absorbed:
  - outputs/code/g-the-map-walker/manual-run-log-20260502-001.md  # predecessor — spec_pass 4 + partial 1 + 인터랙티브 보류 4 baseline
  - outputs/code/g-the-map-walker/manual-run-checklist-v0+.md     # 7 항 schema
  - outputs/code/g-the-map-walker/walk-trace-spec-v0+.md          # spec 자리
  - generations/gen-001/cycles/cy-002/ticks/tick-037.md           # designer r4 facing_history N=8 검수 + STEP_DISTANCE_RATIO 가드 v1
manifesto_inline_quotes: 0
forbidden_language_grep_pass: 16
trip_wire_fired: false
---

# implementer r1 (cy-002) — manual-run-log-002 인터랙티브 round *시작*

## §1. 진단 — predecessor 의 인터랙티브 보류 자리 *시야* 부족

manual-run-log-001 = spec_pass 4 항 + partial 1 항 + 인터랙티브 보류 4 항.

보류 4 항의 공통 마찰 = *측정 자리 시야 부족*:
- #1 부팅: 운영자 시계 + 페이지 박힘 시점 — *시각 자리 박음* 필요.
- #2 ③ 노드: companion_traces 박힘 시점 — DevTools console 매 입력 호출 마찰.
- #3 5 분 세션: console.error 카운트 + fps avg — DevTools Performance 탭 매 1 분 확인.
- #6 옆자리 받음: cluster_received + carry — DevTools console `__mapWalker.snapshot()` 매 머무름 호출.
- #7 함께 걸은 자리: companion 카운트 변화 — DevTools console 매 입력 호출.

→ 모두 *DevTools 의존* 자리 = *자립* 챔피언 위반 (외부 의존도 ≥ 5 자리).

## §2. 처치 — HUD overlay 박음 (운영자 시야 자리)

`index.html` 의 #hud div (left-top, ui-monospace 11px, opacity 0.7).
`src/main.ts` 의 ticker 안 250 ms 갱신 4 줄:

```
t={N}s   fps={N}   err={N}
traces  player={N}  companion={N}
received  carry={N}  cluster={N}/{N}
pending  side={N}   fades={N}
```

→ #1 (t=N), #2 (companion 카운트), #3 (fps + err), #6 (carry + cluster), #7 (companion 카운트) 5 항이 *DevTools 0 호출* 로 측정 가능.
→ #4 cold-reader 마찰만 외부 자리 (cold reader 5 인 시뮬).

## §3. 자가 트립 — 비용/가치 비대칭 검토

코드 박음 자리 ~30 LOC (HUD div + style + 카운터 + 인터셉트 + sampling + 갱신 + snapshot 확장):

| 항목 | 박음 |
|------|------|
| index.html | #hud div + style 5 줄 (~7 LOC) |
| main.ts 카운터 | consoleErrorCount + 인터셉트 1 줄 + fpsFrames/fpsLastSampleAt/fpsAvg/hudLastUpdate (~5 LOC) |
| main.ts ticker | fps sampling + HUD 갱신 (~14 LOC) |
| main.ts snapshot | +4 필드 (~4 LOC) |

5 배 싼 X 대안 = HUD 미박음 + DevTools `__mapWalker.snapshot()` 매 입력 호출 = 인터랙티브 마찰 ≥ 5 배 (5 분 세션 안 호출 ≥ 60 회).
*작은 코드 큰 시야 자리* — 트립 미발화. *자립* 챔피언 박음.

## §4. 빌드 검증 — regression 0

cold = 2.27 s (tick-029 baseline 2.45 s, -0.18 s).
tsc --noEmit + vite build 0 error / 0 warning.
인덱스 +0.7 KB (HUD 코드 추가분).

→ *빌드 성공* (charter §빌드 성공) 챔피언 박음. *시간이 곧 나* 챔피언 = 빌드 시간 -7% 자리.

## §5. r2 명시 이월 — *automation 게이트 해제 별도 선언* 자리

task-queue §4 r2 = *7/7 full_pass 시 automation 게이트 해제 별도 선언* (룰 A5 정식 적용 1 호).

본 r1 = *r2 자리 침범 0* + *명시 이월*:
- 7/7 full_pass = 운영자 인터랙티브 측정 (5/7 자리) + cold reader 5 인 시뮬 (#4 + #7) 도착 후.
- automation 게이트 해제 = *해제 보류 유지* 명시 (manual-run-log-002 frontmatter `status: instrumentation_ready / interactive_pending`).

*r1+r2 묶음 안에서도 r2 가 *후속 입력 의존* 자리일 때 r3 패턴 차용 = designer r4 의 r3 이월 박음 1 호 + 본 implementer r1 의 r2 명시 이월 1 호 = 2 호 누적*.

## §6. 운영자 인계 — manual-run-log-002 8 단계 절차

본 r1 = manual-run-log-002 의 frontmatter checklist_results + body §"인터랙티브 round 절차" 8 단계 박음 (운영자 자리).

요지: `npm run dev` → http://localhost:5173 → 8 단계 진행 → frontmatter `measured` 자리에 박음 → 7/7 full_pass 시 implementer r2 호출 (automation 게이트 해제 별도 선언 ticks 1 건).

## §7. 인계 — 7 조직

| 조직 | 인계 자리 |
|------|----------|
| orchestrator | r3 (운영자 측정 도착 후 implementer r2 큐 박음 자리) |
| voice-keeper | r1 (bible v0.5 e ≥ 0.95 측정, 본 tick 영역 침범 0) |
| loremaster | r1 (bible v0.5 §지역 1 차 박음, 본 tick 영역 침범 0) |
| writer | r1 (인규 *업* 단편 +1, 본 tick 영역 침범 0) |
| designer | r4 (cy-002 첫 r1+r2 묶음 진입 1 호 — 본 r1 = 2 호) |
| art-director | r1 (자국빛 3 색조 미세 + 3 신규 인물 hex, 본 tick 영역 침범 0) |
| critic | r1 (prototype URL → 첫 자국 ≤ 60 s 시뮬, 본 r1 의 HUD 박음 자리에 cold reader 시뮬 인계) |

## §8. self-check (manifesto + forbidden-language)

- 7 키워드 본문 직접 인용 0 (메타 표 §1 §2 §3 §4 §5 §6 §7 안에서만 *자립* / *움직임* / *자립* / *자립* / *시간이 곧 나* / *자립* 명시).
- forbidden-language §1~§8 grep 적중 0 (16 호 누적).
- invariant #7 *수동 검증 우선* 게이트 = automation 0 (cron / 자동 빌드 / headless harness 0) 명시.
- trip 0 발화 + 영역 위반 0.
