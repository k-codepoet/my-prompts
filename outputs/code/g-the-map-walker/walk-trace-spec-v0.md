---
game_id: g-the-map-walker
artifact: walk-trace-spec
version: v0
created_at: 2026-05-01
gen: 1
cycle: cy-001
round: 1
authored_by: implementer
source_charter_task: implementer #2
source_concept: outputs/design/g-the-map-walker/concept.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
engine: web (Pixi.js + WebGL2 fragment shader, Vite + TypeScript)
deferred_to_v2: [멀티플레이 동기화, 봇 매칭 인프라, 계정/저장, 다국어, 레벨 다수, 스토어]
---

# walk-trace 시스템 — 1 페이지 사양 (v0)

> **§0 Superseded by [walk-trace-spec-v0+.md](./walk-trace-spec-v0+.md)** (implementer r2 cy-001 round 3 산출 2026-05-01 + implementer r3+ thin-patch tick-073 헤더 박음). 활성 baseline = `walk-trace-spec-v0+.md` (옆자리 노드 §3 신규 + 함께 걸은 자리 노드 §4 신규 + facing_history + companion_clusters). 본 v0 은 cy-001 r1 baseline (1 페이지 사양 = 입력·상태·출력 + 5 매핑) 자리로 보존. 외부 cold reader 진입 = v0+ 직진 (post-supersede 포인터 stale 처치 implementer 측 1 호 사례 = loremaster r4 tick-063 + art-director r4 tick-069 + designer r5+ tick-071 형식 1:1 자기 적용 = 4 도구 교차 검증 도달).

> charter §첫 task #2. 입력·상태·출력만. 다른 시스템은 v2 미룸 명시.
> D-20260501-002 응답 = `web` 흡수. 본 사양은 Pixi.js + WebGL2 fragment shader 기준.

---

## 입력

| 입력 | 형태 | 출처 | 1 줄 |
|------|------|------|------|
| `step` | KeyboardEvent (방향키 1) 또는 PointerEvent (탭 1) | 플레이어 | 한 입력 = 한 발자국. 이전 입력과의 간격이 흙 채도에 직접 매핑. |
| `companion_traces` | `traces.json` (N ≥ 50 점, 좌표 + hex 인덱스) | `fetch('/data/traces.json')` 1 회 | 비동기 동행 자국 풀. cy-001 v0 = 프리렌더. cy-002+ = 봇/매칭. |
| `tick` | `requestAnimationFrame` (≈ 60 Hz) | 브라우저 | 멈춤 검출 (8 s 임계) + 광휘 페이드 타이머. |

본 v0 입력은 위 3 종 만. 마우스 이동·드래그·줌·팬·키보드 그 외 키 = 무시.

---

## 상태

```ts
type TraceHex = '#3A2D1E' | '#5C4A36' | '#8B7355';      // 흙 그라디언트 폭 (visual-bible §2)

type Trace = {
  x: number;         // 종이 좌표 (0..1, 종이 너비/높이 정규화)
  y: number;
  hex: TraceHex;     // 채도는 입력 간격 → hex 매핑 (아래 §매핑 룰)
  glow: number;      // 자국빛 면적 0..1 (1–3% 룰. 첫 자국 1 회 5–8% 예외)
  spawned_at: number; // ms (멈춤 광휘 페이드 타이머 기준점)
  source: 'player' | 'companion';
};

type State = {
  player_traces: Trace[];          // 누적. 세션 종료까지 유지.
  companion_traces: Trace[];       // 프리렌더 + 좌표 cluster 매칭으로 시드 (§매핑 룰).
  player_pos: { x: number; y: number; facing_deg: number };
  last_step_at: number;            // ms — 멈춤 검출 (8 s 임계).
  idle_glow: { x: number; y: number; spawned_at: number } | null;  // F4 *쉼의 자리*.
  first_step_done: boolean;        // F3 첫 자국 임팩트 룰 (광휘 5–8% 예외 1 회).
  session_started_at: number;
};
```

본 v0 상태는 위 7 필드만. 점수·HUD·도전과제·인벤토리·레벨·계정·저장 = 부재 (concept §4 + charter §트립와이어 *lore 두꺼움*).

---

## 출력

### O1 화면 렌더 (Pixi.js Container 트리)

```
Stage
├── PaperLayer            (배경 — 매트 종이 섬유 셰이더 1 패스)
├── TraceLayer            (자국 — Sprite[] 또는 ParticleContainer, 셰이더 1 패스)
│   ├── companion_traces  (옅은 흙, hex `#8B7355` 의 옅은 폭)
│   └── player_traces     (전체 hex 폭)
├── GlowLayer             (자국빛 광휘 — soft-additive 블렌드, 셰이더 1 패스)
│   ├── trace_glows       (1–3% 면적, 첫 자국 5–8% 예외 1 회)
│   └── idle_glow         (F4 *쉼의 자리* — 1% 면적, 3 s 페이드)
└── WalkerLayer           (Walker 1 인 — 무릎-허리 시점, 후방 3/4)
```

**셰이더**: 1 fragment shader (`paper.frag`) 가 PaperLayer 의 종이 섬유 + 기본 색조. TraceLayer 는 hex 텍스처 룩업. GlowLayer 는 `gl.blendFunc(SRC_ALPHA, ONE)` soft-additive. **광택 0** — 종이 결은 매트 (fail-modes §F3 룰).

### O2 입력 응답 (1 step → 상태 업데이트 → 렌더)

```ts
function onStep(now: number, state: State): State {
  const interval = now - state.last_step_at;            // ms
  const hex = mapIntervalToHex(interval);               // §매핑 룰
  const glow = state.first_step_done
    ? randomBetween(0.01, 0.03)                         // 1–3% 룰
    : randomBetween(0.05, 0.08);                        // 첫 자국 1 회 예외 (F3)
  const newTrace: Trace = {
    x: state.player_pos.x,
    y: state.player_pos.y,
    hex,
    glow,
    spawned_at: now,
    source: 'player',
  };
  return {
    ...state,
    player_traces: [...state.player_traces, newTrace],
    player_pos: stepForward(state.player_pos),          // 한 발 전진
    last_step_at: now,
    idle_glow: null,                                    // 멈춤 광휘 클리어
    first_step_done: true,
  };
}
```

### O3 멈춤 (8 s 임계 — fail-modes §F4)

```ts
function onTick(now: number, state: State): State {
  if (state.idle_glow) {
    if (now - state.idle_glow.spawned_at > 3000) {
      return { ...state, idle_glow: null };             // 3 s 페이드
    }
    return state;
  }
  if (now - state.last_step_at > 8000) {
    return {
      ...state,
      idle_glow: {
        x: state.player_pos.x,
        y: state.player_pos.y,
        spawned_at: now,
      },
    };
  }
  return state;
}
```

### O4 동행 자국 시드 (fail-modes §F1 + §F2)

```ts
function seedCompanionTraces(playerFirstFive: Trace[], pool: Trace[]): Trace[] {
  // F1 30 초 안에 1 점 보장 룰: 첫 세션 첫 30 초 안에 1 점 페이드인.
  // F2 좌표 cluster: 플레이어 첫 5 자국 평균 좌표 ± 종이너비/8 안에 박힌다.
  const center = mean(playerFirstFive);                 // {x, y}
  return pool
    .map(t => ({ ...t, x: center.x + t.x / 8, y: center.y + t.y / 8 }))
    .filter(t => withinViewCone(t, state.player_pos));  // 시야 ±30° 안만 페이드인
}
```

**좌표 hash 금지** (fail-modes §F2). cluster 매칭은 *근접* 이지 *동일* 이 아니다.

---

## 매핑 룰

### M1 입력 간격 → hex (concept §2 8–18 s 시각)

| 간격 (이전 step 와의 ms) | hex | 의도 |
|------------------------|-----|------|
| < 400 ms (빠름) | `#3A2D1E` 의 옅은 폭 (e.g. `#5C4A36` 쪽) | *빠르게 누른 입력* — 옅은 흙. *진심* 약함의 시각. |
| 400–1200 ms (자기 호흡) | `#5C4A36` 중앙 | 보통 호흡. |
| > 1200 ms (의도된 호흡) | `#3A2D1E` 진한 쪽 | *천천히 의도된 입력* — 진한 흙. *진심* 강함의 시각. |

**채도 폭은 visual-bible §2 의 *전체 폭* 사용** (fail-modes §F3 룰). 첫 자국과 다섯째 자국의 hex 차이가 cold reader 에게 *즉답* 되어야 함.

### M2 자국빛 면적

- 일반: 1–3% 면적 (concept §2 visual + fail-modes §F3 룰).
- 첫 자국 1 회 예외: 5–8% (F3 *첫 자국 임팩트* 룰).
- 멈춤 광휘 (idle_glow): 1% 면적, 3 s 페이드 (F4 룰).

### M3 동행 자국 hex

- 동행 자국은 **플레이어 자국보다 살짝 옅게** (visual-bible §2 의 `#8B7355` 옅은 폭). 진한 동행 자국 금지 — 시각 *유도* 트립 (F5).

---

## 의존성 (외부 라이브러리)

| 라이브러리 | 버전 | MIT? | 용도 |
|----------|------|------|------|
| `pixi.js` | ^8 | ✅ | 2D 렌더 / Container 트리 / Sprite |
| `vite` | ^6 | ✅ | 빌드 + HMR |
| `typescript` | ^5 | ✅ | 타입 안정 |

추가 의존성 0. 봇 / 매칭 / 멀티 / 계정 / 저장 = v2 미룸.

---

## v2 미룸 명시

- 멀티플레이어 동기화 (WebSocket / WebRTC) — cy-002+
- 봇 매칭 인프라 — cy-002+
- 계정 / 저장 — cy-002+
- 다국어 — cy-001 v0 은 *텍스트 부재* 라 본 항목 미해당
- 레벨 다수 — 1 씬 1 Walker
- 스토어 / 챕터 / 도전과제 / 점수 / HUD / 인벤토리 — concept §4 의 *부재* 와 결 정합

---

## 협업 인계

- **art-director**: §M1 hex 매핑 표 + §M2 광휘 면적 룰의 *값* 확정은 art-director 영역. 본 v0 의 값은 visual-bible §2 + fail-modes §F3/§F4 직접 인용. 차기 art-director r2 의 *지도 카드 6 장 컨셉 시트* 가 §M3 동행 자국 hex 풀의 1 차 데이터셋.
- **designer**: §O4 의 cluster 매칭 룰이 designer fail-modes §F2 룰과 1:1 정합 — 검수 부탁.
- **critic**: §O1 셰이더 결은 critic r2 vertical slice 가중치 평가의 *시각 즉답성* 입력.
- **voice-keeper**: 본 사양은 매니페스토 정렬 측정 대상 아님. 단 §O3 *쉼의 자리* 멈춤 광휘 = *축복* 결 보강 메카닉의 코드 자리.

---

> 본 v0 은 1 페이지 사양. v0.1 은 manual-run 1 회 통과 후. 1 차 prototype 빌드는 본 사양 + manual-run 체크리스트 5 항 통과 후.
