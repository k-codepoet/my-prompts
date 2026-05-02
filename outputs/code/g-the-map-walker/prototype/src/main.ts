// the-map-walker prototype — implementer r3 (cy-001)
// walk-trace-spec-v0+ §1~§4 1:1 박음. vertical-slice-charter §3 2안 (쉼의 자리) 1차 표적.

import type { CompanionCluster, Pos, State, Trace } from './types.ts';
import {
  angularDiff, circularMean, consumeCarryForThisTrace, euclidean,
  mapIntervalToAlpha, mapIntervalToHex, pushRing, randomBetween, toRad,
} from './util.ts';
import {
  drawIdleGlow, drawReceivedGlow, drawTrace, drawTraceGlow, drawWalker,
  initApp, tickFade, type GlowAnim, type RenderHandles,
} from './render.ts';

const STEP_DISTANCE_RATIO = 1 / 60;
const IDLE_GLOW_FIRE_MS = 8000;
const IDLE_GLOW_FADE_MS = 3000;
const SIDE_RECEPTION_RADIUS_RATIO = 1 / 32;
const SIDE_RECEPTION_IDLE_MIN = 6000;
const SIDE_RECEPTION_IDLE_MAX = 10000;
const SIDE_RECEPTION_FADE_MS = 4000;
const SIDE_RECEPTION_SESSION_CAP = 0.025;
const TOGETHER_FACING_TOL_DEG = 30;
const TOGETHER_DIST_RATIO = 1 / 16;
const TOGETHER_DELAY_MS = 500;
const FACING_HISTORY_N = 8;
const TRACE_GLOW_FADE_MS = 1000;

type SidePending = { trace: Trace; fire_at: number };

const ARROW_TO_DEG: Record<string, number> = {
  ArrowRight: 0, ArrowDown: 90, ArrowLeft: 180, ArrowUp: 270,
};

async function bootstrap() {
  const mount = document.getElementById('app')!;
  const handles = await initApp(mount);
  const startedAt = performance.now();

  const initialPos: Pos = {
    x: handles.paperWidth * 0.5,
    y: handles.paperHeight * 0.5,
    facing_deg: 0,
  };

  let state: State = {
    player_traces: [],
    companion_traces: [],
    companion_clusters: [],
    player_pos: initialPos,
    last_step_at: startedAt,
    idle_glow: null,
    first_step_done: false,
    session_started_at: startedAt,
    received_glow_carry: 0,
    recent_facing_history: [],
  };

  const fades: GlowAnim[] = [];
  const sidePending: SidePending[] = [];

  // 데이터 로드 — fetch 1 회.
  const [traces, clusters] = await Promise.all([
    fetch('./data/traces.json').then(r => r.json() as Promise<Trace[]>),
    fetch('./data/clusters.json').then(r => r.json() as Promise<CompanionCluster[]>),
  ]);

  state.companion_traces = traces.map((t) => ({
    ...t,
    x: t.x * handles.paperWidth,
    y: t.y * handles.paperHeight,
    spawned_at: startedAt,
    source: 'companion',
  }));
  state.companion_clusters = clusters.map((c) => ({
    ...c,
    center: { x: c.center.x * handles.paperWidth, y: c.center.y * handles.paperHeight },
    last_received_at: null,
  }));

  for (const t of state.companion_traces) {
    drawTrace(handles.traceLayer.companion, t, handles.paperWidth);
  }

  function applyStep(now: number, dirDeg: number) {
    state = stepReducer(state, now, dirDeg, handles, fades, sidePending);
  }

  window.addEventListener('keydown', (e) => {
    if (e.key in ARROW_TO_DEG) {
      e.preventDefault();
      applyStep(performance.now(), ARROW_TO_DEG[e.key]);
    }
  });
  window.addEventListener('pointerdown', (e) => {
    const rect = (handles.app.canvas as HTMLCanvasElement).getBoundingClientRect();
    const tx = e.clientX - rect.left;
    const ty = e.clientY - rect.top;
    const dx = tx - state.player_pos.x;
    const dy = ty - state.player_pos.y;
    const deg = (Math.atan2(dy, dx) * 180) / Math.PI;
    applyStep(performance.now(), (deg + 360) % 360);
  });

  handles.app.ticker.add(() => {
    const now = performance.now();

    // O3 멈춤 검출.
    if (state.first_step_done && state.idle_glow === null) {
      const idleSince = now - state.last_step_at;
      if (idleSince >= IDLE_GLOW_FIRE_MS) {
        const g = drawIdleGlow(handles.glowLayer.idleGlow, state.player_pos, handles.paperWidth);
        fades.push({ graphic: g, spawned_at: now, duration_ms: IDLE_GLOW_FADE_MS, start_alpha: 0.5 });
        state = { ...state, idle_glow: { x: state.player_pos.x, y: state.player_pos.y, spawned_at: now } };
      }
    }

    // O5 옆자리 받음.
    state = checkSideClusterReception(now, state, handles, fades);

    // §M5 spawn 0.5 s 지연 처리.
    for (let i = sidePending.length - 1; i >= 0; i--) {
      const p = sidePending[i];
      if (now >= p.fire_at) {
        drawTrace(handles.traceLayer.companion, p.trace, handles.paperWidth);
        state = { ...state, companion_traces: [...state.companion_traces, p.trace] };
        sidePending.splice(i, 1);
      }
    }

    for (let i = fades.length - 1; i >= 0; i--) {
      if (tickFade(fades[i], now)) fades.splice(i, 1);
    }

    drawWalker(handles.walkerLayer, state.player_pos, handles.paperWidth);
  });

  const dbg = window as unknown as { __mapWalker: unknown };
  dbg.__mapWalker = {
    getState: () => state,
    snapshot: () => ({
      player_traces: state.player_traces.length,
      companion_traces: state.companion_traces.length,
      received_glow_carry: state.received_glow_carry,
      cluster_received: state.companion_clusters.filter(c => c.last_received_at !== null).length,
      first_step_done: state.first_step_done,
      session_seconds: ((performance.now() - state.session_started_at) / 1000).toFixed(1),
    }),
    forceStep: (deg = 0) => applyStep(performance.now(), deg),
    boot_ms: performance.now() - startedAt,
  };
  // eslint-disable-next-line no-console
  console.log('[the-map-walker] ready. window.__mapWalker.snapshot() / .forceStep()');
}

function stepReducer(
  prev: State,
  now: number,
  dirDeg: number,
  h: RenderHandles,
  fades: GlowAnim[],
  sidePending: SidePending[],
): State {
  const interval = now - prev.last_step_at;
  const hex = mapIntervalToHex(interval);
  const baseGlow = prev.first_step_done ? randomBetween(0.01, 0.03) : randomBetween(0.05, 0.08);
  const carryBoost = consumeCarryForThisTrace(prev.received_glow_carry);

  const stepLen = h.paperWidth * STEP_DISTANCE_RATIO;
  const newPos: Pos = {
    x: prev.player_pos.x + Math.cos(toRad(dirDeg)) * stepLen,
    y: prev.player_pos.y + Math.sin(toRad(dirDeg)) * stepLen,
    facing_deg: dirDeg,
  };

  const trace: Trace = {
    x: prev.player_pos.x,
    y: prev.player_pos.y,
    hex,
    glow: baseGlow + carryBoost,
    spawned_at: now,
    source: 'player',
  };

  const traceG = drawTrace(h.traceLayer.player, trace, h.paperWidth);
  traceG.alpha = mapIntervalToAlpha(interval);

  const glowG = drawTraceGlow(h.glowLayer.traceGlows, trace, h.paperWidth);
  fades.push({
    graphic: glowG,
    spawned_at: now,
    duration_ms: TRACE_GLOW_FADE_MS,
    start_alpha: trace.glow,
  });

  const facingHistory = pushRing(prev.recent_facing_history, dirDeg, FACING_HISTORY_N);

  const sideCompanion = findFacingMatchedCompanion(
    prev.companion_traces, facingHistory, newPos, h.paperWidth,
  );
  if (sideCompanion !== null) {
    const sidePoint = scheduleSidePoint(sideCompanion, now, newPos, h.paperWidth);
    sidePending.push({ trace: sidePoint, fire_at: sidePoint.spawned_at });
  }

  return {
    ...prev,
    player_traces: [...prev.player_traces, trace],
    player_pos: newPos,
    last_step_at: now,
    idle_glow: null,
    first_step_done: true,
    received_glow_carry: Math.max(0, prev.received_glow_carry - carryBoost),
    recent_facing_history: facingHistory,
  };
}

function checkSideClusterReception(
  now: number,
  state: State,
  h: RenderHandles,
  fades: GlowAnim[],
): State {
  for (const cluster of state.companion_clusters) {
    if (cluster.last_received_at !== null) continue;
    if (state.received_glow_carry >= SIDE_RECEPTION_SESSION_CAP) continue;
    const dist = euclidean(state.player_pos, cluster.center);
    if (dist > h.paperWidth * SIDE_RECEPTION_RADIUS_RATIO) continue;
    const idleSince = now - state.last_step_at;
    if (idleSince < SIDE_RECEPTION_IDLE_MIN || idleSince > SIDE_RECEPTION_IDLE_MAX) continue;

    const carry = Math.min(
      randomBetween(0.005, 0.010),
      SIDE_RECEPTION_SESSION_CAP - state.received_glow_carry,
    );
    const g = drawReceivedGlow(h.glowLayer.receivedGlow, cluster.center, h.paperWidth);
    fades.push({
      graphic: g,
      spawned_at: now,
      duration_ms: SIDE_RECEPTION_FADE_MS,
      start_alpha: 0.6,
    });
    return {
      ...state,
      received_glow_carry: state.received_glow_carry + carry,
      companion_clusters: state.companion_clusters.map(c =>
        c === cluster ? { ...c, last_received_at: now } : c,
      ),
    };
  }
  return state;
}

function findFacingMatchedCompanion(
  pool: Trace[],
  facingHistory: number[],
  pos: Pos,
  paperWidth: number,
): Trace | null {
  if (facingHistory.length < 4) return null;
  const playerFacing = circularMean(facingHistory);
  for (const t of pool) {
    if (t.facing_deg === undefined) continue;
    if (angularDiff(t.facing_deg, playerFacing) > TOGETHER_FACING_TOL_DEG) continue;
    if (euclidean(t, pos) > paperWidth * TOGETHER_DIST_RATIO) continue;
    return t;
  }
  return null;
}

function scheduleSidePoint(companion: Trace, now: number, pos: Pos, paperWidth: number): Trace {
  const off = paperWidth * TOGETHER_DIST_RATIO;
  return {
    ...companion,
    x: pos.x + off * Math.cos(toRad(pos.facing_deg + 90)),
    y: pos.y + off * Math.sin(toRad(pos.facing_deg + 90)),
    spawned_at: now + TOGETHER_DELAY_MS,
    source: 'companion',
  };
}

bootstrap().catch((err) => {
  // eslint-disable-next-line no-console
  console.error('[the-map-walker] bootstrap failed:', err);
});
