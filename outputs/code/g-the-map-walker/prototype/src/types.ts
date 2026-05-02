// walk-trace-spec-v0+ §2 — 9 필드 상태. 본 파일은 spec 1:1 박음 — 변경 시 spec 동시 갱신.

export type TraceHex = '#3A2D1E' | '#5C4A36' | '#8B7355';
export type CompanionHexFamily = 'other_warm' | 'other_cool';

export type Pos = { x: number; y: number; facing_deg: number };

export type Trace = {
  x: number;
  y: number;
  hex: TraceHex | string;
  glow: number;
  spawned_at: number;
  source: 'player' | 'companion';
  facing_deg?: number; // companion 만 가짐 (§M5 입력)
};

export type CompanionCluster = {
  center: { x: number; y: number };
  hex_family: CompanionHexFamily;
  point_count: number; // 5..8
  last_received_at: number | null; // F6 안전핀 — cluster 당 1 회 / 세션
};

export type IdleGlow = { x: number; y: number; spawned_at: number } | null;

export type State = {
  player_traces: Trace[];
  companion_traces: Trace[];
  companion_clusters: CompanionCluster[];
  player_pos: Pos;
  last_step_at: number;
  idle_glow: IdleGlow;
  first_step_done: boolean;
  session_started_at: number;
  received_glow_carry: number; // 0..0.025 (세션 단위 누적 상한)
  recent_facing_history: number[]; // ring buffer N=8
};

export type SidePoint = {
  trace: Trace;
  fire_at: number; // spawn 표시 시각 (= now + 500ms 지연)
};

// 매니페스토 매핑 표 (vertical-slice-charter §4) — debug HUD/console 용. UI 표시 0.
export const MANIFESTO_KEYS = [
  '진심', '움직임', '자립', '연대', '축복', '시간이 곧 나', '방향',
] as const;
