// walk-trace-spec-v0+ §3 — Pixi Container 트리. 셰이더 변경 0.
//   Stage
//   ├── PaperLayer
//   ├── TraceLayer
//   │   ├── companion_traces
//   │   └── player_traces
//   ├── GlowLayer
//   │   ├── trace_glows
//   │   ├── idle_glow
//   │   └── received_glow
//   └── WalkerLayer

import { Application, Container, Graphics } from 'pixi.js';
import type { Trace } from './types.ts';

export type RenderHandles = {
  app: Application;
  paperLayer: Container;
  traceLayer: { root: Container; companion: Container; player: Container };
  glowLayer: { root: Container; traceGlows: Container; idleGlow: Container; receivedGlow: Container };
  walkerLayer: Container;
  paperWidth: number;
  paperHeight: number;
};

export async function initApp(mount: HTMLElement): Promise<RenderHandles> {
  const app = new Application();
  await app.init({
    background: '#F5EFE3', // 종이 배경 — vertical-slice §3.1 0–3 초 빈 새벽
    resizeTo: mount,
    antialias: true,
    autoDensity: true,
    resolution: Math.min(window.devicePixelRatio ?? 1, 2),
  });
  mount.appendChild(app.canvas);

  const paperLayer = new Container();
  // 매트 종이 섬유 패치 — 셰이더 1 패스 자리. v0 prototype 은 단색 + 경계 1 점 (1/300 면적)
  const paperFiber = new Graphics();
  paperFiber.alpha = 0.04;
  paperFiber.rect(0, 0, app.screen.width, app.screen.height).fill(0x8B7355);
  paperLayer.addChild(paperFiber);

  const traceLayer = {
    root: new Container(),
    companion: new Container(),
    player: new Container(),
  };
  traceLayer.root.addChild(traceLayer.companion);
  traceLayer.root.addChild(traceLayer.player);

  const glowLayer = {
    root: new Container(),
    traceGlows: new Container(),
    idleGlow: new Container(),
    receivedGlow: new Container(),
  };
  glowLayer.root.addChild(glowLayer.traceGlows);
  glowLayer.root.addChild(glowLayer.idleGlow);
  glowLayer.root.addChild(glowLayer.receivedGlow);

  const walkerLayer = new Container();

  app.stage.addChild(paperLayer, traceLayer.root, glowLayer.root, walkerLayer);

  // resize hook — paperFiber 만 갱신 (단순 박음).
  app.renderer.on('resize', (w, h) => {
    paperFiber.clear().rect(0, 0, w, h).fill({ color: 0x8B7355, alpha: 0.04 });
  });

  return {
    app,
    paperLayer,
    traceLayer,
    glowLayer,
    walkerLayer,
    paperWidth: app.screen.width,
    paperHeight: app.screen.height,
  };
}

const HEX_TO_NUM = new Map<string, number>([
  ['#3A2D1E', 0x3A2D1E],
  ['#5C4A36', 0x5C4A36],
  ['#8B7355', 0x8B7355],
]);

function hexToNum(hex: string): number {
  return HEX_TO_NUM.get(hex) ?? parseInt(hex.replace('#', ''), 16);
}

// 자국 1 점 — 작은 원 + 자국빛 1 점.
export function drawTrace(layer: Container, t: Trace, paperWidth: number): Graphics {
  const r = paperWidth / 240; // 자국 반지름 ≈ 종이폭 / 240
  const g = new Graphics();
  g.circle(t.x, t.y, r).fill({ color: hexToNum(t.hex), alpha: 0.85 });
  layer.addChild(g);
  return g;
}

// 자국빛 sprite — soft additive 근사 (Graphics + alpha 페이드).
export function drawTraceGlow(layer: Container, t: Trace, paperWidth: number): Graphics {
  const r = paperWidth / 80; // 광휘 반지름 ≈ 종이폭 / 80 (1–3% 면적)
  const g = new Graphics();
  g.circle(t.x, t.y, r).fill({ color: 0xFFE0A8, alpha: t.glow });
  layer.addChild(g);
  return g;
}

// idle_glow — 1% 면적 3 s 페이드 (vertical-slice §3.2 2 안 *쉼의 자리*).
export function drawIdleGlow(
  layer: Container,
  pos: { x: number; y: number },
  paperWidth: number,
): Graphics {
  const r = paperWidth / 100;
  const g = new Graphics();
  g.circle(pos.x, pos.y, r).fill({ color: 0xFFD78A, alpha: 0.5 });
  layer.addChild(g);
  return g;
}

// received_glow — 0.5–1% 면적, 4 s 페이드 (§M4 received_glow_carry 시각).
export function drawReceivedGlow(
  layer: Container,
  pos: { x: number; y: number },
  paperWidth: number,
): Graphics {
  const r = paperWidth / 110;
  const g = new Graphics();
  g.circle(pos.x, pos.y, r).fill({ color: 0xFFC880, alpha: 0.6 });
  layer.addChild(g);
  return g;
}

// 익명 Walker 실루엣 — 작은 점 + facing 화살.
export function drawWalker(layer: Container, pos: { x: number; y: number; facing_deg: number }, paperWidth: number) {
  layer.removeChildren();
  const r = paperWidth / 200;
  const g = new Graphics();
  g.circle(pos.x, pos.y, r).fill({ color: 0x2C2118, alpha: 0.9 });
  layer.addChild(g);
}

export type GlowAnim = {
  graphic: Graphics;
  spawned_at: number;
  duration_ms: number;
  start_alpha: number;
};

export function tickFade(anim: GlowAnim, now: number): boolean {
  const elapsed = now - anim.spawned_at;
  if (elapsed >= anim.duration_ms) {
    anim.graphic.parent?.removeChild(anim.graphic);
    anim.graphic.destroy();
    return true; // done
  }
  const t = 1 - elapsed / anim.duration_ms;
  anim.graphic.alpha = anim.start_alpha * t;
  return false;
}
