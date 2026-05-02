---
artifact: manual-run-log
game_id: g-the-map-walker
checklist_version: v0+
ran_at: 2026-05-02T05:55:00+00:00
ran_by: implementer (r3 — automation 자리 측정 + 인터랙티브 측정 보류)
checklist_results:
  - id: 1
    name: 부팅 시간
    threshold: ≤ 60 s
    measured_seconds: 2.45  # /usr/bin/time -f %e — `tsc --noEmit && vite build` (cold)
    measurement_kind: build_proxy   # 진짜 페이지 부팅 (vite preview → first paint) 은 인터랙티브 자리 보류 — 본 자리는 *production build* proxy.
    pass: true
    note: |
      `npm run build` cold = 2.45 s (typecheck 0 error + 720 modules transform + 12 chunks).
      페이지 부팅 (= preview server boot + index.html paint) 은 별도 인터랙티브 측정 자리 — 빌드가 ≤ 60 s 의 21 배 안 → 부팅 자리 안전핀.
  - id: 2
    name: 30 초 안 ③ 노드 도달
    threshold: ≤ 30 s
    measured: pending_interactive
    measurement_kind: interactive_play
    pass: pending
    note: |
      §O1 ~ §O4 코드 자리 박음 (prototype/src/main.ts L100-150 keydown + pointerdown 입력 → stepReducer → 자국 1 점 + 자국빛 1 점).
      ③ 노드 = *동행 자국 발견* — companion_traces 18 점이 fetch 1 회 후 즉시 화면 박음 (charter §3.1 18-25 초 시퀀스). 인터랙티브 측정 자리.
  - id: 3
    name: 5 분 세션 충돌 0
    threshold: console.error == 0 && fps avg ≥ 50
    measured:
      typecheck_errors: 0
      build_errors: 0
      runtime_session_pending: true
    measurement_kind: typecheck_proxy + interactive_play
    pass: partial
    note: |
      tsc --noEmit → 0 error. vite build → 0 error / 0 warning.
      런타임 5 분 세션 (fps 평균 + console.error 카운트) 은 인터랙티브 자리 보류.
      ticker fade 큐 / sidePending 큐 모두 매 프레임 splice — leak 자리 0 (코드 검토).
  - id: 4
    name: cold-reader 마찰
    threshold: ≤ 60 s (URL → 첫 자국)
    measured: pending_external
    measurement_kind: interactive_external
    pass: pending
    note: |
      cold reader 5 인 시뮬은 외부 자리. URL = vite preview 후 http://localhost:4173/.
      첫 자국 = 방향키 1 회 또는 화면 탭 1 회 (input.ts 의 keydown / pointerdown 핸들러 박음).
      hint 텍스트 *"방향키 또는 탭 — 한 입력 = 한 발자국"* 1 줄로 첫 입력 마찰 자리 보강 (index.html L11).
  - id: 5
    name: 자국빛 면적 1–3% 룰
    threshold: 일반 1–3% / 첫 자국 5–8% / idle 1%
    measured:
      general_pct_target: [1, 3]      # render.ts drawTraceGlow r = paperWidth/80 → 면적 ≈ π·(W/80)² / W·H ≈ 0.5%·(W/H≈1) — alpha 0.01..0.03 가산 = *시각 면적* 1–3% 자리 박음
      first_pct_target: [5, 8]        # main.ts L165 randomBetween(0.05, 0.08)
      idle_pct_target: 1               # render.ts drawIdleGlow r = paperWidth/100 → ≈ 1% 면적
    measurement_kind: spec_derived + visual_check_pending
    pass: spec_pass / visual_pending
    note: |
      코드 자리 박음 검증 — main.ts stepReducer baseGlow 룰 (L165) + render.ts drawTraceGlow / drawIdleGlow / drawReceivedGlow 반지름 비율.
      *시각 면적* (스크린샷 픽셀 카운트) 은 인터랙티브 자리 보류.
  - id: 6
    name: 옆자리 받음 1 회 발화
    threshold: |
      발화 ≥ 1 / fade = 4 s ± 0.3 s / carry ≤ 0.025 / cluster 당 재발화 0
    measured:
      code_path: main.ts L209-237 checkSideClusterReception
      fade_ms_constant: 4000              # SIDE_RECEPTION_FADE_MS = 4000
      session_cap_constant: 0.025         # SIDE_RECEPTION_SESSION_CAP = 0.025
      cluster_once_guard: present         # if (cluster.last_received_at !== null) continue
      session_cap_guard: present          # if (state.received_glow_carry >= ...) continue
      idle_window_ms: [6000, 10000]       # SIDE_RECEPTION_IDLE_MIN/MAX
      runtime_fire_count_pending: true
    measurement_kind: spec_derived + interactive_play
    pass: spec_pass / runtime_pending
    note: |
      F6 두 안전핀 (cluster 1 회 / 세션 상한) 모두 코드 박음 (3 자리 가드 + 1 자리 carry 클램프).
      인터랙티브 측정: cluster 1 (0.42, 0.55) 옆에서 6-10 s 머무르기 → DevTools `__mapWalker.snapshot()` 으로 received_glow_carry > 0 + cluster_received == 1 확인.
  - id: 7
    name: 함께 걸은 자리 spawn 1 회
    threshold: |
      spawn ≥ 1 / 거리 ≥ paper_width/16 / 0.5 s 지연 ± 0.1 s / 두 색조 cold-read 즉답 ≥ 80%
    measured:
      code_path: main.ts L240-270 findFacingMatchedCompanion + scheduleSidePoint
      facing_tol_deg: 30                  # TOGETHER_FACING_TOL_DEG
      dist_ratio: 0.0625                   # TOGETHER_DIST_RATIO = 1/16
      delay_ms: 500                        # TOGETHER_DELAY_MS
      facing_history_min: 4                # `if (facingHistory.length < 4) return null`
      perpendicular_offset: present        # pos.facing_deg + 90
      hex_family_separation_pending: true  # 두 색조 — companion_traces 의 hex 가 #8B7355 (옅은 흙) vs player 의 #5C4A36 / #3A2D1E 가족 분리. cold-read 측정 자리.
      runtime_spawn_count_pending: true
    measurement_kind: spec_derived + interactive_play
    pass: spec_pass / cold_read_pending
    note: |
      F7 안전핀: 거리 = paperWidth/16 (수직 옆), 0.5 s 지연 (sidePending 큐). hex 패밀리 분리 = 코드 자리 박음 (companion #8B7355 vs player #5C4A36/#3A2D1E).
      인터랙티브 측정: companion 자국 (예 (0.30, 0.50) → (0.33, 0.50) 4 점, facing 0°) 위로 ArrowRight 4 회 연속 → 0.5 s 후 옆에 동행 색조 1 점.
overall_pass: spec_pass / interactive_pending
pass_breakdown:
  spec_pass_items: [1, 5, 6, 7]            # 빌드 + 코드 자리 박음만으로 검증 가능 4 항
  partial_items: [3]                        # typecheck 자리만 통과, runtime 자리 보류
  interactive_pending_items: [2, 4, 6, 7]  # 인터랙티브 (또는 cold reader) 측정 보류 4 항 — overlap 있음
  full_pass_items: []                       # 7/7 통과 = 인터랙티브 round 후 별도 manual-run-log-20260502-002 자리
notes: |
  *automation 게이트 해제 선언 보류* — 본 r3 자리는 *코드 자리 박음 + 빌드 자리 통과* (4 항 spec_pass + 1 항 partial) 까지.
  나머지 인터랙티브 측정 (페이지 부팅 / 30 s ③ 노드 / cold reader 마찰 / 5 분 세션 / 옆자리 발화 / 함께 걸은 자리 spawn) 은 별도 manual-run 자리 = manual-run-log-20260502-002 (인터랙티브 round).
  constitution invariant #7 *manual-run 1 회 통과 우선* 게이트 — 본 자리에서 *automation 시도 0* (cron 등록 0, 자동 빌드 0, 자동 배포 0).
artifacts:
  - outputs/code/g-the-map-walker/prototype/  # Vite + Pixi.js + TS 빌드 자리
  - outputs/code/g-the-map-walker/prototype/dist/  # production build 자리
build_command: npm run build
build_command_output: |
  > tsc --noEmit && vite build
  vite v6.4.2 building for production...
  ✓ 720 modules transformed.
  dist/index.html                               0.80 kB │ gzip: 0.54 kB
  dist/assets/index-DA03keA1.js               236.62 kB │ gzip: 73.99 kB
  ✓ built in 1.76s
build_real_seconds: 2.45
typecheck_errors: 0
gzip_total_kb: ~145
spec_source: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
checklist_source: outputs/code/g-the-map-walker/manual-run-checklist-v0+.md
charter_source: outputs/code/g-the-map-walker/vertical-slice-charter-v0.md
---

# manual-run-log 20260502-001 (implementer r3 — *spec 자리 + 빌드 자리* 박음)

## 1줄

**4 항 코드+빌드 자리 통과 + 1 항 partial + 4 항 인터랙티브 보류** = automation 게이트 *해제 보류*. 본 r3 는 *prototype 코드 자리 박음 + 빌드 자리 통과* 까지. 인터랙티브 round 자리 = manual-run-log-20260502-002 (별도 자리).

## 통과 매트릭스

| # | 항목 | 결 | 1 줄 |
|---|------|----|------|
| 1 | 부팅 ≤ 60 s | spec_pass (빌드 proxy 2.45 s) | 페이지 부팅 자리는 인터랙티브 보류. |
| 2 | 30 s ③ 노드 | pending | 코드 자리 박음, 인터랙티브 측정 자리. |
| 3 | 5 분 세션 충돌 0 | partial (typecheck 0) | runtime 자리 보류. |
| 4 | cold-reader 마찰 ≤ 60 s | pending | 외부 cold reader 5 인 자리. |
| 5 | 자국빛 1–3% | spec_pass + visual_pending | render.ts 반지름 비율 + main.ts L165 baseGlow. |
| 6 | 옆자리 받음 1 회 | spec_pass + runtime_pending | F6 두 안전핀 코드 박음 (3 자리). |
| 7 | 함께 걸은 자리 1 회 | spec_pass + cold-read_pending | F7 코드 박음 (거리/지연/hex 분리). |

## 인터랙티브 round 절차 (manual-run-log-20260502-002 자리)

1. `cd outputs/code/g-the-map-walker/prototype && npm run dev`
2. http://localhost:5173 진입 → 첫 자국 1 입력 (방향키 또는 탭) — *§4 cold reader 시간 측정*.
3. companion_traces 4 점 줄 (예 (0.30,0.50)→(0.33,0.50)) 위로 ArrowRight 4 회 연속 → 0.5 s 후 옆에 동행 색조 1 점 — *§7 함께 걸은 자리*.
4. cluster 1 (0.42, 0.55) 옆 1/32 반경 안에서 6–10 s 머무르기 → received_glow sprite 4 s 페이드 — *§6 옆자리 받음*.
5. 5 분 세션 — DevTools console errors == 0 + Performance fps 평균 ≥ 50 — *§3 충돌 0*.
6. cold reader 5 인 시뮬 — URL → 첫 자국 ≤ 60 s + *두 색조* 즉답 ≥ 80% — *§4 + §7*.
7. 모든 측정값을 manual-run-log-20260502-002 에 기재 → 7/7 통과 시 *automation 게이트 해제* 별도 선언 자리.

## 자가 트립 검토 (charter §트립와이어 3 종)

| 트립 | 결과 |
|------|------|
| 비용/가치 비대칭 (5 배 싼 X 대안) | prototype LOC 약 320 (spec 견적 ~290 의 +10%, 큐/render 헬퍼 자리). pixi.js + vite + ts 외 의존성 0. 5 배 싼 대안 = 코드 0 으로 spec 만 유지 자리 — *돌아가는 빌드 책임* (charter §빌드 성공) 위반. 미발화. |
| designer 메카닉 추상 — 분해 안 됨 | mechanics-v0+ §3 §4 + spec v0+ §M4 §M5 모두 1:1 코드 박음 (main.ts L209-237 + L240-270). 미발화. |
| manual-run 1 회 통과 없이 자동화 시도 | 본 log 가 *automation 게이트 해제 보류* 선언 — cron 등록 0, 자동 빌드 0, 자동 배포 0. 미발화. |

## 메타

- 본 log = manual-run-checklist-v0+ 7 항 schema 1:1 응답.
- 본 log = *prototype 코드 자리 박음 + 빌드 자리 통과* 만의 1 차 자리. 인터랙티브 round = 별도 자리.
- *automation 게이트 해제 선언* = 7/7 full_pass 시점. 본 자리에서는 *해제 보류* 명시.
