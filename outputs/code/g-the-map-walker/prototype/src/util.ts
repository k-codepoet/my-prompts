// walk-trace-spec-v0+ §3 §4 헬퍼.

export const TAU = Math.PI * 2;

export function toRad(deg: number): number {
  return (deg * Math.PI) / 180;
}

export function randomBetween(a: number, b: number): number {
  return a + Math.random() * (b - a);
}

export function pushRing<T>(buf: T[], v: T, max: number): T[] {
  const next = buf.length >= max ? buf.slice(buf.length - max + 1) : buf.slice();
  next.push(v);
  return next;
}

export function euclidean(
  a: { x: number; y: number },
  b: { x: number; y: number },
): number {
  const dx = a.x - b.x;
  const dy = a.y - b.y;
  return Math.sqrt(dx * dx + dy * dy);
}

// 원형 평균 (각도 평균). degrees in/out.
export function circularMean(degs: number[]): number {
  if (degs.length === 0) return 0;
  let sx = 0;
  let sy = 0;
  for (const d of degs) {
    const r = toRad(d);
    sx += Math.cos(r);
    sy += Math.sin(r);
  }
  return ((Math.atan2(sy, sx) * 180) / Math.PI + 360) % 360;
}

// 두 각도(deg) 사이 절대 차 (0..180).
export function angularDiff(a: number, b: number): number {
  const d = Math.abs(((a - b) % 360 + 540) % 360 - 180);
  return d;
}

// walk-trace-spec §M1 — 입력 간격 → hex.
export function mapIntervalToHex(intervalMs: number): '#3A2D1E' | '#5C4A36' {
  if (intervalMs > 1200) return '#3A2D1E'; // *진심* 강함
  return '#5C4A36'; // *진심* 보통/약함 (채도 폭은 alpha 로 미세 조정)
}

// §M1 채도 폭 — 빠른 입력은 alpha 약화 (옅은 폭).
export function mapIntervalToAlpha(intervalMs: number): number {
  if (intervalMs < 400) return 0.45; // *진심* 약함
  if (intervalMs > 1200) return 0.95; // *진심* 강함
  return 0.7;
}

// §M4 carry 소비 — 자국당 ≤ 0.005.
export function consumeCarryForThisTrace(carry: number): number {
  return Math.min(carry, 0.005);
}
