---
game_id: g-the-map-walker
artifact: walk-trace-spec
version: v0+
created_at: 2026-05-01
gen: 1
cycle: cy-001
round: 3
authored_by: implementer
source_charter_task: implementer §r2 후보 #1 (1 차 prototype 빌드 의 사전 spec 보강)
source_concept: outputs/design/g-the-map-walker/concept.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_mechanics: outputs/design/g-the-map-walker/mechanics-v0+.md
source_world_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v0.md
source_visual_bible: outputs/art/the-map-is-the-journey/visual-bible-v0.1.md
supersedes: outputs/code/g-the-map-walker/walk-trace-spec-v0.md
delta_from_v0: 옆자리 노드 (§3 신규) + 함께 걸은 자리 노드 (§4 신규) + facing_history 1 종 + companion_clusters 1 종
shader_change: 0  # 신규 셰이더 0 — 기존 trace render 1 점 추가 + glow alpha 일시 가산만.
engine: web (Pixi.js + WebGL2 fragment shader, Vite + TypeScript)
deferred_to_v2: [멀티플레이 동기화, 봇 매칭 인프라, 계정/저장, 다국어, 레벨 다수, 스토어, 사운드]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 spec 본문 *직접 인용 0*. 자국 / hex / 면적 / 시간 / 거리 룰만 박음.
  - #2 단일 진실: mechanics-v0+ §3 §4 + fail-modes §F5 + visual-bible §6 §7 직접 인용. 신규 hex 0, 신규 셰이더 0.
  - #7 manual-run 1 회 통과 우선: 본 v0+ 는 1 페이지 사양 갱신 — 자동화 시도 0. 1 차 prototype 빌드는 본 v0+ + manual-run-checklist-v0+ 통과 후.
---

# walk-trace 시스템 — 1 페이지 사양 (v0+)

> charter §r2 후보 #1 (1 차 prototype 빌드) 의 *사전 spec 보강* 자리. designer r2 mechanics-v0+ §3 *옆자리 노드* + §4 *함께 걸은 자리 노드* 두 신규 메카닉을 walk-trace-spec 의 입력 / 상태 / 출력 / 매핑 표에 흡수.
> v0 (tick-008) 의 7 필드 / 4 출력 / 3 매핑 룰 → v0+ 는 9 필드 / 6 출력 / 5 매핑 룰 (델타 = 2 / 2 / 2). **신규 셰이더 0**.
> 본 v0+ 는 D-20260501-003 응답과 *독립*. picked = game 시 implementer r2 의 1 차 prototype 빌드 직접 입력. picked = image / short_story 시 *옆자리 / 함께 걸은 자리* 두 결의 시각 박자 가이드.

---

## 0 v0 → v0+ 델타 한 표

| 자리 | v0 (tick-008) | v0+ (본 자리) | 델타 출처 |
|------|---------------|---------------|----------|
| 입력 종 수 | 3 (`step` / `companion_traces` / `tick`) | 4 (+ `companion_clusters` 프리렌더 데이터) | mechanics-v0+ §3 |
| 상태 필드 | 7 | 9 (+ `received_glow_carry` / `recent_facing_history`) | mechanics-v0+ §3 §4 |
| 출력 절 | 4 (O1 렌더 / O2 입력 응답 / O3 멈춤 / O4 동행 시드) | 6 (+ O5 옆자리 받음 / O6 함께 걸은 자리 spawn) | mechanics-v0+ §3 §4 |
| 매핑 룰 | 3 (M1 간격→hex / M2 면적 / M3 동행 hex) | 5 (+ M4 옆자리 받음 / M5 함께 걸은 자리 facing) | mechanics-v0+ §3 §4 |
| 셰이더 패스 | 3 (paper / trace / glow) | 3 — 변동 0. 신규 trace 1 점은 기존 TraceLayer 재사용. 옆자리 받음은 GlowLayer alpha 일시 가산만. | implementer 자립 챔피언 (의존성 추가 0) |
| 의존성 | pixi.js + vite + typescript | 변동 0 | implementer 자립 챔피언 |

---

## 1 입력 (4 종, +1 from v0)

| 입력 | 형태 | 출처 | 1 줄 |
|------|------|------|------|
| `step` | KeyboardEvent (방향키 1) 또는 PointerEvent (탭 1) | 플레이어 | (v0 동일) 한 입력 = 한 발자국. |
| `companion_traces` | `traces.json` (N ≥ 50 점, x / y / hex / **facing_deg**) | `fetch('/data/traces.json')` 1 회 | (v0 + facing_deg 추가) §M5 함께 걸은 자리 발화 조건. |
| `companion_clusters` | `clusters.json` (M ≥ 2 cluster, center / hex_family / point_count 5..8) | `fetch('/data/clusters.json')` 1 회 | **신규**. §3 옆자리 노드 cluster 풀. |
| `tick` | `requestAnimationFrame` (≈ 60 Hz) | 브라우저 | (v0 동일) 멈춤 / 광휘 / 옆자리 검출 타이머. |

본 v0+ 입력은 위 4 종만. companion_clusters 는 traces 와 *별 풀* — cluster 1 곳 = *오래 옆에 있던 한 자리* 의 시각화 (mechanics-v0+ §3).

---

## 2 상태 (9 필드, +2 from v0)

```ts
type TraceHex = '#3A2D1E' | '#5C4A36' | '#8B7355';
type CompanionHexFamily = 'other';                       // visual-bible §7 *다른 hex 패밀리*

type Trace = {
  x: number; y: number;
  hex: TraceHex;
  glow: number;
  spawned_at: number;
  source: 'player' | 'companion';
  facing_deg?: number;                                   // companion 만 가짐 (§M5 입력)
};

type CompanionCluster = {
  center: { x: number; y: number };
  hex_family: CompanionHexFamily;
  point_count: number;                                   // 5..8
  last_received_at: number | null;                       // 세션 단위 발화 ≤ 1 회 / cluster (F6 안전핀)
};

type State = {
  player_traces: Trace[];                                // (v0 동일) 누적.
  companion_traces: Trace[];                             // (v0 동일) prefetch + cluster 시드.
  companion_clusters: CompanionCluster[];                // 신규. fetch 1 회 후 불변 (last_received_at 만 갱신).
  player_pos: { x: number; y: number; facing_deg: number };
  last_step_at: number;
  idle_glow: { x: number; y: number; spawned_at: number } | null;
  first_step_done: boolean;
  session_started_at: number;
  received_glow_carry: number;                           // 신규. 0..0.025 (세션 단위 누적 상한).
  recent_facing_history: number[];                       // 신규. ring buffer N=8. 최근 8 자국 facing_deg.
};
```

본 v0+ 상태는 위 9 필드만. v0 의 7 필드 + (`companion_clusters` / `received_glow_carry` / `recent_facing_history`) 3 자리 추가 — 단 `recent_facing_history` 는 ring buffer 1 자리 (8-slot ≤ 64 byte) 라 *상태 종 수 +2* 로 셈.

부재 유지: 점수 / HUD / 도전과제 / 인벤토리 / 레벨 다수 / 계정 / 저장 / 사운드 (concept §4 + charter §트립와이어 *lore 두꺼움*).

---

## 3 출력 (6 절, +2 from v0)

### O1 화면 렌더 (Pixi.js Container 트리, v0 동일)

```
Stage
├── PaperLayer            (배경 — 매트 종이 섬유 셰이더 1 패스)
├── TraceLayer            (자국 — Sprite[] 또는 ParticleContainer, 셰이더 1 패스)
│   ├── companion_traces  (옅은 흙, hex `#8B7355` 옅은 폭 + 신규 cluster 의 *다른 hex 패밀리*)
│   └── player_traces
├── GlowLayer             (자국빛 광휘 — soft-additive)
│   ├── trace_glows       (1–3% 면적, 첫 자국 5–8% 예외 1 회)
│   ├── idle_glow         (F4 *쉼의 자리* — 1% 면적, 3 s 페이드)
│   └── received_glow     (신규. F6 안전핀 — 0.5–1% 면적, 4 s 페이드, 세션 상한 ≤ 2.5%)
└── WalkerLayer
```

**셰이더 변경 0** — `received_glow` 는 기존 GlowLayer 의 sprite 1 점 추가 + 알파 페이드. trace render 1 점 추가 (§M5 함께 걸은 자리) 도 기존 TraceLayer Sprite 1 추가일 뿐.

### O2 입력 응답 (v0 동일 + facing_history push)

```ts
function onStep(now: number, state: State): State {
  const interval = now - state.last_step_at;
  const hex = mapIntervalToHex(interval);                // §M1 (v0)
  const glow = state.first_step_done
    ? randomBetween(0.01, 0.03)
    : randomBetween(0.05, 0.08);
  const newTrace: Trace = {
    x: state.player_pos.x, y: state.player_pos.y,
    hex, glow, spawned_at: now, source: 'player',
  };
  const newPos = stepForward(state.player_pos);
  const carryBoost = consumeCarryForThisTrace(state.received_glow_carry);   // §M4 (신규)
  const adjustedTrace = { ...newTrace, glow: newTrace.glow + carryBoost };
  const facingHistory = pushRing(state.recent_facing_history, newPos.facing_deg, 8);
  // §M5 함께 걸은 자리 발화 검사 (신규)
  const sideCompanion = findFacingMatchedCompanion(state.companion_traces, facingHistory, newPos);

  return {
    ...state,
    player_traces: [...state.player_traces, adjustedTrace],
    companion_traces: sideCompanion
      ? [...state.companion_traces, scheduleSidePoint(sideCompanion, now, newPos)]   // §M5 — 0.5 s 지연 페이드인
      : state.companion_traces,
    player_pos: newPos,
    last_step_at: now,
    idle_glow: null,
    first_step_done: true,
    received_glow_carry: Math.max(0, state.received_glow_carry - carryBoost),
    recent_facing_history: facingHistory,
  };
}
```

### O3 멈춤 검출 (v0 동일)

```ts
function onTick(now: number, state: State): State {
  // (v0 onTick 그대로) — idle_glow 8 s 임계 + 3 s 페이드.
  // 단 추가로 §O5 옆자리 받음 검출 호출.
  return checkSideClusterReception(now, applyIdleGlow(now, state));
}
```

### O4 동행 자국 시드 (v0 동일)

```ts
// (v0 §O4 그대로) — 첫 30 초 안 1 점 보장 + cluster 매칭 (좌표 hash 금지).
```

### O5 옆자리 받음 (신규 — mechanics-v0+ §3)

```ts
function checkSideClusterReception(now: number, state: State): State {
  for (const cluster of state.companion_clusters) {
    if (cluster.last_received_at !== null) continue;                          // F6 안전핀 — cluster 당 1 회 / 세션
    const dist = euclidean(state.player_pos, cluster.center);
    if (dist > PAPER_WIDTH / 32) continue;                                    // *반경 1 보 안* 임계
    const idleSince = now - state.last_step_at;
    if (idleSince < 6000 || idleSince > 10000) continue;                      // 6–10 s 한 박자

    // 발화: §M4 받음 룰
    const sessionTotal = state.received_glow_carry;                           // 누적
    if (sessionTotal >= 0.025) continue;                                      // F6 안전핀 — 세션 상한
    const carry = Math.min(0.005 + Math.random() * 0.005, 0.025 - sessionTotal);

    return {
      ...state,
      received_glow_carry: sessionTotal + carry,
      companion_clusters: state.companion_clusters.map(c =>
        c === cluster ? { ...c, last_received_at: now } : c
      ),
      // GlowLayer 의 received_glow sprite 1 점 spawn 은 렌더 사이드 이펙트 (4 s 페이드).
    };
  }
  return state;
}
```

**시각 룰**: GlowLayer 에 0.5–1% 면적 sprite 1 점, 4 s 알파 페이드 (linear). 종이 외 영역 변화 0 (mechanics-v0+ §3 시각 룰 직접 인용).

### O6 함께 걸은 자리 spawn (신규 — mechanics-v0+ §4)

```ts
function findFacingMatchedCompanion(pool: Trace[], facingHistory: number[], pos: Pos): Trace | null {
  if (facingHistory.length < 4) return null;                                  // 처음 4 자국은 발화 안 함 (방향 안정성)
  const playerFacing = circularMean(facingHistory);
  const candidate = pool.find(t =>
    t.facing_deg !== undefined &&
    angularDiff(t.facing_deg, playerFacing) <= 30 &&                          // ±30°
    euclidean(t, pos) <= PAPER_WIDTH / 16                                     // 1/16 거리
  );
  return candidate ?? null;
}

function scheduleSidePoint(companion: Trace, now: number, pos: Pos): Trace {
  return {
    ...companion,
    x: pos.x + (PAPER_WIDTH / 16) * Math.cos(toRad(pos.facing_deg + 90)),     // 옆 1/16
    y: pos.y + (PAPER_WIDTH / 16) * Math.sin(toRad(pos.facing_deg + 90)),
    spawned_at: now + 500,                                                    // 0.5 s 지연 (F7 안전핀 — 합쳐짐 회피)
    source: 'companion',
  };
}
```

**시각 룰**: 두 점 거리 ≥ 종이 너비 / 16, hex 패밀리 분리 (F7 안전핀). 자기 자국 진하기 변동 0, 자국빛 변동 0 — *옆에 한 점이 더 박힘* 의 시각만 추가.

---

## 4 매핑 룰 (5 종, +2 from v0)

### M1 입력 간격 → hex (v0 동일)
| 간격 (ms) | hex | 의도 |
|----------|-----|------|
| < 400 | `#5C4A36` 옅은 폭 | *진심* 약함 |
| 400–1200 | `#5C4A36` 중앙 | 보통 |
| > 1200 | `#3A2D1E` 진한 쪽 | *진심* 강함 |

### M2 자국빛 면적 (v0 동일)
- 일반 1–3% / 첫 자국 5–8% / 멈춤 광휘 1%, 3 s 페이드.

### M3 동행 자국 hex (v0 동일 + cluster 추가)
- 동행 자국: 플레이어보다 살짝 옅음 (`#8B7355` 옅은 폭).
- **cluster 자국 (신규)**: visual-bible §7 의 *다른 hex 패밀리* 중 1 가족 (예: 회청색 흙 또는 따뜻한 황토 — 본 게임 1 차 무대 1 cluster 당 1 가족). cluster 안 5–8 점 모두 같은 가족.

### M4 옆자리 받음 (신규 — mechanics-v0+ §3)
- 검출: `dist ≤ paper_width/32` && `6000 ≤ idle ≤ 10000` (ms) && `cluster.last_received_at == null`.
- 발화: `received_glow_carry` += 0.005..0.010 (세션 상한 ≤ 0.025).
- 시각: GlowLayer 4 s alpha 페이드, 면적 0.5–1%.
- 소비: 다음 자국 1–2 회 동안 trace.glow 가산 (자국당 ≤ 0.005).
- 안전핀: cluster 당 1 회 / 세션 (F6) + 세션 상한 ≤ 2.5% (F6).

### M5 함께 걸은 자리 facing 매칭 (신규 — mechanics-v0+ §4)
- 검출: `recent_facing_history.length ≥ 4` && `|t.facing_deg − circularMean(history)| ≤ 30°` && `dist(t, player_pos) ≤ paper_width/16`.
- 발화: companion 1 점을 player_pos 옆 (수직 1/16) 에 0.5 s 지연 페이드인.
- 시각: 두 점 거리 ≥ paper_width/16, hex 패밀리 분리 (F7 안전핀).
- 누적: 같은 자리 4 점 이상 → *나란한 한 줄* 형태 자연 발생 (mechanics-v0+ §4 시각).

---

## 5 의존성 (외부 라이브러리, v0 동일)

| 라이브러리 | 버전 | MIT? | 용도 |
|-----------|------|------|------|
| `pixi.js` | ^8 | ✅ | 2D 렌더 / Container / Sprite |
| `vite` | ^6 | ✅ | 빌드 + HMR |
| `typescript` | ^5 | ✅ | 타입 안정 |

추가 의존성 0 (자립 챔피언). 봇 / 매칭 / 멀티 / 계정 / 저장 / 사운드 = v2 미룸.

신규 데이터 1 종: `public/data/clusters.json` (M ≥ 2 cluster, 좌표 + hex_family + point_count). 프리렌더 — cy-002+ 봇 / 매칭으로 진화 후보.

---

## 6 v2 미룸 명시 (v0 동일)

- 멀티플레이어 동기화 / 봇 매칭 / 계정 저장 / 다국어 / 레벨 다수 / 스토어 / HUD / 점수 / 사운드 — 모두 cy-002+.

---

## 7 LOC / 분해 견적 (implementer 자기 검증)

본 v0+ 가 박혀도 *돌아가는 빌드* 1 일 budget 안에 들어가는가:

| 자리 | v0 추산 | v0+ 추가 | 비고 |
|------|--------|---------|------|
| 상태 타입 (TS) | 30 LOC | +12 LOC | 2 신규 타입 + ring buffer 헬퍼 |
| onStep / onTick | 60 LOC | +25 LOC | §O5 §O6 두 함수 + facing_history push |
| Pixi 렌더 (Layer 트리) | 80 LOC | +15 LOC | received_glow sprite 1 + side companion sprite 1 |
| 셰이더 (`paper.frag` 등) | 40 LOC | +0 | 신규 셰이더 0 |
| 데이터 로더 (`fetch`) | 20 LOC | +10 LOC | clusters.json 추가 + facing_deg parse |
| **합계** | ~230 LOC | **~290 LOC** (+60) | 1 일 vertical slice budget 안 — 자립 챔피언 정합 |

**5 배 싼 대안 검토** (charter §트립와이어 #1): v0+ 의 메카닉 2 종을 *1 종으로 압축* (예: 옆자리만, 함께 걸은 자리 cy-002+) 으로 5 배 싸지지 않음 — 본 v0+ 가 이미 mechanics-v0+ §3 §4 의 1:1 흡수, 둘 중 1 자리 제거는 designer 영역 (디자인 결정). 본 spec 자리에서는 *둘 다 흡수* 가 5 배 비싸지 않음. 트립 미발화.

---

## 8 협업 인계

- **art-director (r2)**: §M3 의 *cluster hex 가족 1 종* 확정 + §M4 received_glow 시각 (4 s 페이드 곡선) + §M5 0.5 s 지연 페이드인 곡선 = visual-bible v0.2 의 *시간 룰* 자리. designer r2 §13 의 art-director 인계와 직접 정합.
- **designer (r3)**: 본 v0+ §O5 §O6 의 검출 임계 (`6–10 s` / `±30°` / `1/16`) 가 mechanics-v0+ §3 §4 와 1:1 — 변경 시 두 산출 동시 갱신 필요.
- **critic (r3)**: §3 (출력) / §4 (매핑) 의 *시각 즉답성* 이 cold-read 시뮬 입력. 본 v0+ 는 신규 jargon 0 (모든 새 단어 = mechanics-v0+ 직접 인용).
- **voice-keeper (r3)**: 본 spec 은 매니페스토 점수 측정 대상 아님. 단 §M4 받음 + §M5 함께 걸은 자리 두 자리가 *연대* 1 종 → 3 변주 (mechanics-v0+ §7) 의 코드 자리 — voice-keeper r3 e 항 재측정에 1 자리 입력.
- **loremaster (r3)**: 본 v0+ 데이터 (`clusters.json` 1 cluster 의 *hex_family* + 좌표 자리) 가 게임 1 차 무대 = *통과의 산 단면* (terrain-v0 §5) 의 1 차 시각 데이터. bible v0.3 §6 권력 구조 분리 검수 시 본 자리 정합 검증 가능.
- **writer (r3)**: 본 spec 영향 0. 단 §M5 의 *나란한 한 줄* 4 점 누적 시각 = 단편 *처음으로 자기 지도를 본 새벽* 의 비주얼 비트 후보.
- **orchestrator**: 본 v0+ 발의 결정 0. D-003 응답 대기 중 진행 가능 task — picked = game 시 1 차 prototype 빌드의 spec base, picked = image / short_story 시 *옆자리 / 함께 걸은 자리* 두 결의 시간 룰 가이드.

---

## 9 도메인 위반 검토

- **시각 *값* 결정** (art-director): 본 v0+ 의 *4 s 페이드 / 0.5 s 지연 / 0.5–1% 면적* 은 mechanics-v0+ §3 §4 직접 인용. 신규 hex 0, 신규 색조 0. art-director r2 검수 시 페이드 곡선 미세 조정은 art-director 영역.
- **메카닉 발화 조건 결정** (designer): 본 v0+ 의 *6–10 s / ±30° / 1/16* 은 mechanics-v0+ §3 §4 직접 인용. 본 spec 자리에서 *값 자체* 변경 발의 0.
- **vertical slice 표적 결정** (critic + 사용자): D-003 picked 결정 미관여. 본 v0+ 는 picked = game 시 1 차 입력, picked != game 시 *시간 / 거리 룰의 시각 가이드* 자리.
- **bible / 인물 / 점수 / cold-read** — 모두 영향 0. 본 spec 은 *코드 spec 1 페이지 갱신* 자리.

위반 0 건.

---

## 10 트립와이어 검토 (charter §트립와이어 3 종)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| 비용/가치 비대칭 (5 배 싼 X 대안) | §7 LOC 견적 +60 LOC. 두 메카닉 모두 기존 셰이더 / 의존성 / 렌더 트리 재사용. *압축 1 종* 은 designer 영역 — 본 spec 자리 미해당. | 미발화 |
| designer 메카닉이 *추상적 명령* — 시스템 분해 안 됨 | mechanics-v0+ §3 §4 가 *입력 / 검출 임계 / 발화 / 시각 / 안전핀* 5 자리 모두 박음. 본 spec §O5 §O6 §M4 §M5 가 1:1 흡수 가능. | 미발화 |
| 새 워크플로우 manual-run 1 회 통과 없이 자동화 시도 | 본 v0+ 는 1 페이지 spec 갱신. 자동화 시도 0 — 1 차 prototype 빌드 (charter §r2 후보 #1) 는 본 v0+ + manual-run-checklist-v0+ 통과 후. | 미발화 |

미발화 (3/3).

---

## 11 메타

- 본 v0+ 는 *spec 자기 진화* 1 호 — v0 의 7 필드 / 4 출력 / 3 매핑 표를 designer r2 mechanics-v0+ 의 입력에 맞춰 9 / 6 / 5 로 보강. *r1 본체 → r2 부속/측정 second-wave* 패턴 (loremaster r1 → r2, voice-keeper r1 → r2) 의 implementer 자리 1 호 — 단 implementer r2 는 *measurement* 보다 *spec 진화* 의 결.
- 본 v0+ supersedes v0 — 단 v0 (`walk-trace-spec-v0.md`) 는 history 보존 (loremaster r1 → r2 의 bible v0.1 supersedes 패턴 직접 인용).
- 본 v0+ 는 D-003 picked 와 *독립* — 본 spec 자체는 picked 응답 전에 박힘. 1 차 prototype 빌드 (charter §r2 후보 #1) 는 picked = game 응답 후 본 v0+ 직접 입력.

> 본 v0+ 는 1 페이지 사양 (실은 1.3 페이지). v0.1 은 manual-run 1 회 통과 후. 1 차 prototype 빌드는 본 v0+ + manual-run-checklist-v0+ 통과 후.
