---
artifact: manual-run-log
game_id: g-the-map-walker
checklist_version: v0+
round: interactive (cy-002 r1 진입 자리)
ran_at: pending  # 인터랙티브 측정 시 박음
ran_by: implementer (r1 cy-002 — instrumentation 박음 + 인터랙티브 round 절차 자리)
status: instrumentation_ready / interactive_pending
preceded_by: outputs/code/g-the-map-walker/manual-run-log-20260502-001.md  # spec_pass + 인터랙티브 보류 상태
checklist_results:
  - id: 1
    name: 부팅 시간
    threshold: ≤ 60 s
    measured_seconds: pending_interactive  # `npm run dev` boot → first paint 자리
    measurement_kind: interactive_play
    pass: pending
    note: |
      production build proxy = 2.27 s (본 tick 박음). dev server first paint 자리는
      운영자가 `npm run dev` 후 http://localhost:5173 진입 시점 측정. HUD `t=0s` 가
      paint 자리 = 첫 fade 진입 자리.
  - id: 2
    name: 30 초 안 ③ 노드 도달
    threshold: ≤ 30 s
    measured: pending_interactive
    measurement_kind: interactive_play
    pass: pending
    note: |
      ③ 노드 = *동행 자국 발견* (charter §3.1 18-25 초 시퀀스).
      운영자 절차: 부팅 후 ArrowRight 4 회 → companion_traces 18 점이 화면에 박힘 → HUD `companion=18` 확인.
      측정: 부팅 시점 ~ HUD `companion ≥ 1` 시점 = ③ 노드 도달 자리.
  - id: 3
    name: 5 분 세션 충돌 0
    threshold: console.error == 0 && fps avg ≥ 50
    measured:
      typecheck_errors: 0
      build_errors: 0
      runtime_console_errors: pending_interactive   # HUD `err=N` 자리
      runtime_fps_avg: pending_interactive          # HUD `fps=N` 자리
    measurement_kind: interactive_play
    pass: pending
    note: |
      HUD overlay (left-top) 가 매 250 ms 갱신 — `err` (console.error 카운터) + `fps` (1 s sampling).
      운영자 절차: 5 분 세션 후 HUD 의 `err` 가 0 + `fps` 가 ≥ 50 인지 확인.
  - id: 4
    name: cold-reader 마찰
    threshold: ≤ 60 s (URL → 첫 자국)
    measured:
      cold_read_5p_sim_baseline: critic-r1 cy-002 — P1 18 s / P2 3 s / P3 28 s / P4 42 s / P5 2 s (avg 18.6 s / median 18 s / max 42 s)
      threshold_60s_pass: 5/5
      f9_post_fix_p4_hint_recognition: critic-r2 cy-002 — 38 s → 5 s (33 s 회복, 임계 ≤ 8 s 도달)
    measurement_kind: interactive_external
    pass: PASS (critic-r1 baseline + critic-r2 F9 회복 흡수 = implementer r3 cy-002 thin patch)
    note: |
      critic r1 cy-002 (5 인 페르소나 시뮬 baseline) + critic r2 cy-002 (F9 처치 회복 측정) 두 자리 흡수 자리.
      P1~P5 5 인 *URL → 첫 자국* ≤ 60 s 임계 5/5 통과. F9 처치 (art-director r2 — index.html `#hint` opacity 0.55 → 0.7 / font-size 11 → 13 / color #8B7355 → #5C4A36) 후 P4 hint 인지 시점 38 s → 5 s = 33 s 회복.
      외부 측정 1:1 수용 자리 (implementer 영역 0 LOC 변경).
  - id: 5
    name: 자국빛 면적 1–3% 룰
    threshold: 일반 1–3% / 첫 자국 5–8% / idle 1%
    measured:
      general_pct_target: [1, 3]
      first_pct_target: [5, 8]
      idle_pct_target: 1
    measurement_kind: spec_derived + visual_check_pending
    pass: spec_pass / visual_pending
    note: |
      코드 자리 박음 검증 — main.ts stepReducer baseGlow 룰 (L172) + render.ts drawTraceGlow / drawIdleGlow / drawReceivedGlow 반지름 비율.
      *시각 면적* (스크린샷 픽셀 카운트) 운영자 측정 자리.
  - id: 6
    name: 옆자리 받음 1 회 발화
    threshold: |
      발화 ≥ 1 / fade = 4 s ± 0.3 s / carry ≤ 0.025 / cluster 당 재발화 0
    measured:
      code_path: main.ts checkSideClusterReception
      runtime_fire_count_pending: true
    measurement_kind: spec_derived + interactive_play
    pass: spec_pass / runtime_pending
    note: |
      운영자 절차: cluster 1 (0.42, 0.55) 옆 1/32 반경에서 6–10 s 머무르기 → HUD `received cluster=1/N` 확인 +
      `received carry > 0`. `received_glow_carry` 가 SIDE_RECEPTION_SESSION_CAP (0.025) 를 안 넘는지 HUD 로 검증.
  - id: 7
    name: 함께 걸은 자리 spawn 1 회
    threshold: |
      spawn ≥ 1 / 거리 ≥ paper_width/16 / 0.5 s 지연 ± 0.1 s / 두 색조 cold-read 즉답 ≥ 80%
    measured:
      code_path: main.ts findFacingMatchedCompanion + scheduleSidePoint
      hex_family_separation_pending: true
      runtime_spawn_count_pending: true
    measurement_kind: spec_derived + interactive_play
    pass: spec_pass / cold_read_pending
    note: |
      운영자 절차: companion 자국 (0.30,0.50) → (0.33,0.50) 4 점 위로 ArrowRight 4 회 →
      0.5 s 후 옆에 동행 색조 1 점. HUD `companion` 카운트가 +1 박음.
overall_pass: instrumentation_ready / 1_of_7_interactive_pass (#4 도달)
pass_breakdown:
  spec_pass_items: [5, 6, 7]
  partial_items: []
  interactive_pending_items: [1, 2, 3, 6, 7]
  full_pass_items: [4]
notes: |
  본 log 는 *cy-002 r1 implementer 진입 자리* — *인터랙티브 round 절차 박음 + HUD instrumentation*.
  실제 인터랙티브 측정은 운영자 자리. 본 log 박음 자리 = 인터랙티브 round *시작* 자리 (charter task §4 r1).

  **implementer r3 cy-002 thin patch (tick-058) 흡수 자리** — #4 cold-reader 마찰 두 자리 (critic r1 baseline 5/5 + critic r2 F9 처치 회복) 외부 측정 1:1 수용 박음. 1/7 도달 (#4) — A5 정식 자가 적용 (automation 게이트 해제 별도 선언) = 7/7 미도달 자리 = 본 r3 박음 0 (보류 baseline 박음).

  HUD overlay 신규 박음 (left-top) — 4 줄 매 250 ms 갱신:
    t={s}   fps={N}   err={N}
    traces  player={N}  companion={N}
    received  carry={N}  cluster={N}/{N}
    pending  side={N}  fades={N}

  __mapWalker.snapshot() 확장 = +4 필드 (fps_avg / console_error_count / side_pending / fades_active).

  constitution invariant #7 *수동 검증 우선* — 본 자리에서 *automation 시도 0* (cron 등록 0, 자동 빌드 0, 자동 배포 0, headless harness 0). HUD = *운영자 시야 보강*, 자동 측정 0.

  7/7 full_pass 도달 시 *automation 게이트 해제 별도 선언* 자리 (cy-002 r2 — task-queue §4 r2).
artifacts:
  - outputs/code/g-the-map-walker/prototype/  # HUD 박음 (index.html + src/main.ts)
  - outputs/code/g-the-map-walker/prototype/dist/  # production build 자리 (2.27 s 통과)
build_command: npm run build
build_command_output: |
  > tsc --noEmit && vite build
  vite v6.4.2 building for production...
  ✓ 720 modules transformed.
  dist/index.html                               0.80 kB │ gzip:  0.54 kB
  dist/assets/index-CAUxHnxW.js               237.32 kB │ gzip: 74.27 kB
  ✓ built in 1.64s
build_real_seconds: 2.27
typecheck_errors: 0
gzip_total_kb: ~145
spec_source: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
checklist_source: outputs/code/g-the-map-walker/manual-run-checklist-v0+.md
charter_source: outputs/code/g-the-map-walker/vertical-slice-charter-v0.md
predecessor: outputs/code/g-the-map-walker/manual-run-log-20260502-001.md
---

# manual-run-log 20260502-002 (implementer r1 cy-002 — *instrumentation 박음 + 인터랙티브 round 절차*)

## 1줄

**HUD overlay + snapshot API 확장 박음** = 운영자가 5 분 세션 동안 fps/err/carry/cluster/side_pending 4 줄을 화면에서 직접 읽음. 실제 인터랙티브 측정은 운영자 자리 — 본 log 박음 자리 = *r1 진입 = 인터랙티브 round 시작* (charter task §4 r1).

## 본 tick 박음 자리 (instrumentation)

| 자리 | 박음 |
|------|------|
| `index.html` | `#hud` div (left-top, ui-monospace 11px, opacity 0.7) + style |
| `src/main.ts` 첫 자리 | `consoleErrorCount` 카운터 + `console.error` 인터셉트 |
| `src/main.ts` ticker | fps 1 s sampling (`fpsAvg`) + HUD 250 ms 갱신 4 줄 |
| `src/main.ts` snapshot | +4 필드 (`fps_avg` / `console_error_count` / `side_pending` / `fades_active`) |

빌드 통과 — `tsc --noEmit && vite build` cold = 2.27 s / 720 modules / 0 error / 0 warning. 본 변경 인덱스 +0.7 KB.

## 인터랙티브 round 절차 (운영자 자리)

1. `cd outputs/code/g-the-map-walker/prototype && npm run dev`
2. http://localhost:5173 진입 — HUD `t=0s` 박힘 시점 = 부팅 자리 측정 (#1)
3. 첫 자국 1 입력 (방향키 또는 탭) — 시계 시작 = `cold-reader 마찰` 측정 (#4)
4. ArrowRight 4 회 → HUD `companion ≥ 1` 박음 = ③ 노드 도달 (#2)
5. companion 자국 (0.30,0.50)→(0.33,0.50) 4 점 위로 ArrowRight 4 회 연속 → 0.5 s 후 옆 동행 색조 1 점 spawn — HUD `companion +1` (#7)
6. cluster 1 (0.42, 0.55) 옆 1/32 반경에서 6–10 s 머무르기 → HUD `received cluster=1/N` + `carry > 0` (#6)
7. 5 분 세션 — HUD `err=0` + `fps ≥ 50` 유지 (#3)
8. cold reader 5 인 시뮬 — URL 만 주고 첫 자국까지 시간 측정 (#4) + 두 색조 (player #5C4A36/#3A2D1E vs companion #8B7355) 즉답 ≥ 80% (#7)
9. 모든 측정값을 본 파일 frontmatter `checklist_results` `measured` 자리에 박음
10. 7/7 full_pass 시 *automation 게이트 해제 별도 선언* 자리 (cy-002 r2)

## 자가 트립 검토 (charter §트립와이어 3 종)

| 트립 | 결과 |
|------|------|
| 비용/가치 비대칭 (5 배 싼 X 대안) | HUD overlay = 4 줄 textContent 갱신 1 자리. *5 배 싼 대안* = HUD 미박음 + 운영자가 DevTools console 에서 `__mapWalker.snapshot()` 매 입력 호출 — 인터랙티브 마찰 ≥ 5 배 = HUD 박음이 *작은 코드로 큰 마찰 절감* 자리. 미발화. |
| designer 메카닉 추상 — 분해 안 됨 | 본 자리 메카닉 변경 0 (instrumentation 만). 미발화. |
| manual-run 1 회 통과 없이 자동화 시도 | HUD = *운영자 시야 보강* (자동 측정 0). headless harness 0 / cron 0 / 자동 배포 0. 인터랙티브 round 본체는 운영자 자리. 미발화. |

## 자립 챔피언 (cy-002 implementer 1차 핵심어)

- HUD = *외부 의존도 0* (DevTools 없이 운영자가 직접 측정 가능) — *자립* 1 차 챔피언 박음 자리.
- console.error 인터셉트 = *기술 부채 0* (래퍼 1 줄, 원본 console.error 보존) — 자립 2 차.
- snapshot 확장 = *측정 자리 명시* (debug 자리에 박음, production 영향 0) — 자립 3 차.

## 메타

- 본 log = manual-run-checklist-v0+ 7 항 schema 1:1 응답 + 운영자 절차 박음.
- 본 log = *cy-002 r1 implementer 진입 자리* = 인터랙티브 round *시작* (charter task §4 r1 박음).
- *automation 게이트 해제 선언* = 7/7 full_pass 시점 (cy-002 r2 자리). 본 자리 = *해제 보류 유지* + *운영자 자리 시야 보강*.
- predecessor manual-run-log-20260502-001 = spec_pass 4 항 + partial 1 항 + 인터랙티브 보류 4 항. 본 log = 그 4 항을 운영자가 측정할 수 있도록 시야 박음.
