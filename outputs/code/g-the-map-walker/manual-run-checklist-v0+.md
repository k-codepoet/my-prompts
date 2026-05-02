---
game_id: g-the-map-walker
artifact: manual-run-checklist
version: v0+
created_at: 2026-05-01
gen: 1
cycle: cy-001
round: 3
authored_by: implementer
source_charter_task: implementer §r2 후보 #2 (manual-run 1 회 실행 의 사전 체크리스트 보강)
source_concept: outputs/design/g-the-map-walker/concept.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_mechanics: outputs/design/g-the-map-walker/mechanics-v0+.md
source_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0+.md
supersedes: outputs/code/g-the-map-walker/manual-run-checklist-v0.md
delta_from_v0: 6 옆자리 1 회 발화 + 7 함께 걸은 자리 1 회 발화 — 5 항 → 7 항
constitution_anchor: invariant #7 (manual-run 1 회 통과 우선)
---

# manual-run 체크리스트 v0+

> charter §r2 후보 #2 (manual-run 1 회 실행) 의 *사전 체크리스트 보강* 자리. designer r2 mechanics-v0+ §3 *옆자리 노드* + §4 *함께 걸은 자리 노드* 두 신규 메카닉의 *발화 1 회* 검증 항을 v0 의 5 항 → 7 항으로 확장.
> 본 7 항 모두 통과 시 — implementer 가 *"manual-run 1 회 통과"* 를 선언 가능. 통과 전 자동화 / cron 등록 금지 (constitution invariant #7).

---

## 0 v0 → v0+ 델타

| 항 | v0 (tick-008) | v0+ (본 자리) | 출처 |
|----|---------------|---------------|------|
| 1 | 부팅 ≤ 60 s | (동일) | charter §빌드 성공 |
| 2 | 30 초 안 ③ 노드 도달 | (동일) | designer fail-modes §F1 |
| 3 | 5 분 세션 충돌 0 | (동일) | charter §빌드 성공 |
| 4 | cold-reader 마찰 ≤ 60 s | (동일) | D-002 응답 = web 의 1 차 가치 |
| 5 | 자국빛 면적 1–3% 룰 | (동일) | art-director / fail-modes §F3 §F4 |
| **6** | — | **신규: 5 분 안 옆자리 받음 1 회 발화 + 페이드 4 s** | mechanics-v0+ §3 / spec v0+ §M4 |
| **7** | — | **신규: 5 분 안 함께 걸은 자리 spawn 1 회 발화 + 거리 ≥ 1/16** | mechanics-v0+ §4 / spec v0+ §M5 |

---

## 1 통과 기준 — 7 항

### ✅ 1. 부팅 시간 ≤ 60 s (v0 동일)

(v0 §1 그대로 유지 — 측정 / 임계 / 근거 / 도구 동일)

### ✅ 2. 30 초 안에 ③ 노드 도달 (v0 동일)

(v0 §2 그대로)

### ✅ 3. 5 분 세션 안 충돌 0 (v0 동일)

(v0 §3 그대로)

### ✅ 4. cold-reader 검수 마찰 ≤ 60 s (v0 동일)

(v0 §4 그대로)

### ✅ 5. 자국빛 면적 1–3% 룰 (v0 동일)

(v0 §5 그대로)

### ✅ 6. 5 분 안 *옆자리 받음* 1 회 발화 + 4 s 페이드 통과 (신규)

**측정**: 새 5 분 세션 → 의도적으로 1 cluster 옆에 *6–10 초* 머물기 → received_glow sprite 1 점이 GlowLayer 에 spawn 되고 4 s 안 알파 페이드 완료. session_received_glow_carry ≤ 0.025 (세션 상한).

**임계**:
- 발화 1 회 — sprite 가 화면에 *보임*. 면적 0.5–1% (visual 검수).
- 페이드 = 4 s ± 0.3 s (timer 정확도).
- 다음 자국 1–2 회 동안 trace.glow 가산 = 자국당 ≤ 0.005 (`glow` 값 1.005x 안).
- 같은 cluster 재방문 시 *재발화 0* (F6 안전핀 — cluster 당 ≤ 1 회 / 세션).

**근거**: mechanics-v0+ §3 *옆자리 노드* 의 게임 안 시각화 검증. *업* 축 진입 (voice-keeper §C.2) 의 manual-run 게이트.

**측정 도구**: 수동 플레이 + 화면 녹화 + DevTools `state.received_glow_carry` 콘솔 dump. 캡처를 manual-run-log 에 첨부.

**1 차 책임**: implementer (검출 로직). **2 차 책임**: designer (임계 6–10 s) + art-director (페이드 곡선).

---

### ✅ 7. 5 분 안 *함께 걸은 자리* spawn 1 회 발화 + 거리 ≥ 1/16 통과 (신규)

**측정**: 새 5 분 세션 → 의도적으로 *companion_traces.facing_deg* 와 ±30° 안 같은 방향으로 *연속 4 자국 이상* 걷기 → 자기 자국 spawn 후 0.5 s 지연 + 옆에 동행 색조 1 점이 거리 *paper_width / 16* 위치에 페이드인.

**임계**:
- 발화 1 회 — companion sprite 1 점이 자기 자국 옆에 *분리되어* 보임 (cold reader 가 *두 색조* 즉답 ≥ 80%, F7 안전핀).
- 두 점 거리 ≥ paper_width / 16 (= 약 6.25%).
- 0.5 s 지연 정확도 ± 0.1 s.
- hex 패밀리 분리 — 자기 자국 (`#3A2D1E` 가족) vs 동행 (`#8B7355` 옅은 폭 또는 *다른 hex 가족*) 가 cold reader 시각으로 구별.

**근거**: mechanics-v0+ §4 *함께 걸은 자리 노드* 의 게임 안 시각화 검증. *가족* 축 진입 (voice-keeper §C.2) 의 manual-run 게이트.

**측정 도구**: 화면 녹화 + 픽셀 거리 측정 (Pillow histogram 또는 수동) + cold reader 5 인 시뮬 (*두 색조* 즉답 비율).

**1 차 책임**: implementer (facing 매칭 + spawn 좌표). **2 차 책임**: designer (±30° / 1/16) + art-director (hex 분리).

---

## 2 통과 선언 형식 (v0+ — 7 항)

5 항 → 7 항 확장에 맞춰 manual-run-log YAML schema 갱신:

```yaml
# outputs/code/g-the-map-walker/manual-run-log-<YYYYMMDD>-<seq>.md
artifact: manual-run-log
game_id: g-the-map-walker
checklist_version: v0+
ran_at: <ISO 8601>
ran_by: <human or system>
checklist_results:
  - id: 1
    name: 부팅 시간
    threshold: ≤ 60 s
    measured: <초>
    pass: true | false
  - id: 2
    name: 30 초 안 ③ 노드 도달
    threshold: ≤ 30 s
    measured: <초>
    pass: true | false
  - id: 3
    name: 5 분 세션 충돌 0
    threshold: console.error == 0 && fps avg ≥ 50
    measured: { errors: <n>, fps_avg: <n> }
    pass: true | false
  - id: 4
    name: cold-reader 마찰
    threshold: ≤ 60 s (URL → 첫 자국)
    measured: <초>
    pass: true | false
  - id: 5
    name: 자국빛 면적 1–3% 룰
    threshold: 일반 1–3% / 첫 자국 5–8% / idle 1%
    measured: { general_pct: <n>, first_pct: <n>, idle_pct: <n> }
    pass: true | false
  - id: 6
    name: 옆자리 받음 1 회 발화
    threshold: |
      발화 ≥ 1 / fade = 4 s ± 0.3 s / carry ≤ 0.025
      / cluster 당 재발화 0
    measured:
      fired: <n>
      fade_seconds: <n>
      carry_total: <n>
      cluster_revisit_fire: <n>
    pass: true | false
  - id: 7
    name: 함께 걸은 자리 spawn 1 회
    threshold: |
      spawn ≥ 1 / 거리 ≥ paper_width/16
      / 0.5 s 지연 ± 0.1 s / 두 색조 cold-read 즉답 ≥ 80%
    measured:
      fired: <n>
      distance_pct_of_paper: <n>
      delay_seconds: <n>
      two_color_read_rate: <0..1>
    pass: true | false
overall_pass: true | false
notes: <자유 코멘트>
artifacts:
  - <스크린샷 경로>
  - <DevTools 캡처 경로>
  - <외부 cold-reader 후기 경로>
  - <화면 녹화 경로>
```

**7/7 통과** 시 — *"manual-run 1 회 통과 — vertical slice 자동화 게이트 해제"* 선언. constitution invariant #7 만족.

**6/7 이하** 시 — 미통과 항목 1 차 책임 (designer / art-director / implementer 중) 에게 인계 + 다음 manual-run 시점까지 자동화 금지 유지.

---

## 3 협업 인계

- **designer**: §6 §7 의 발화 임계 (6–10 s / ±30° / 1/16) 가 mechanics-v0+ §3 §4 직접 인용. 측정 결과로 임계 재조정 시 본 체크리스트 + spec v0+ + mechanics-v0+ 3 자리 동시 갱신.
- **art-director**: §6 페이드 4 s + §7 0.5 s 지연 의 *시간 룰* 검수 = visual-bible v0.2 입력. *cluster hex 가족 1 종* 확정도 v0.2 자리.
- **critic**: §7 *두 색조* cold-reader 즉답 ≥ 80% 가 critic r3 cold-read 시뮬의 직접 입력. F7 *합쳐짐 트랩* 검증 자리.
- **voice-keeper**: §6 (업 축) + §7 (가족 축) 발화가 voice-keeper §C.2 *세 축 진입 메카닉 자리* 의 manual-run 검증. e 항 재측정 시 입력.
- **loremaster**: 본 체크리스트 영향 0. 단 §7 *나란한 한 줄* 누적 시각이 4 점 이상이면 terrain-v0 §통과의 산 *큰 종이* 결과 정합 검증 자리.

---

## 4 도메인 위반 검토

- **시각 값 결정** (art-director): §6 4 s 페이드 / §7 0.5 s 지연 = mechanics-v0+ 직접 인용. 본 체크리스트 자리에서 *값 변경* 발의 0.
- **메카닉 발화 조건** (designer): §6 6–10 s / §7 ±30° = mechanics-v0+ 직접 인용. 본 자리에서 *임계 변경* 발의 0.
- **cold-read 게이트** (critic): §7 *두 색조* 즉답 ≥ 80% 임계는 fail-modes §F7 직접 인용. 본 자리에서 임계 *값 자체* 결정 0 — 측정만.
- **manifesto 점수** (voice-keeper): 본 체크리스트는 점수 측정 대상 아님. *세 축 진입* 의 manual-run 검증만.

위반 0 건.

---

## 5 트립와이어 검토

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| 비용/가치 비대칭 | 5 항 → 7 항 추가 비용 = 1 manual-run 안 2 의도적 발화 (≈ 1 분 추가). 5 배 싼 대안 (예: §6 §7 합산 1 항) 은 *발화 검증 자리 분리* 의 1 차 가치를 잃음 — 미해당. | 미발화 |
| designer 메카닉 추상적 — 분해 안 됨 | mechanics-v0+ §3 §4 가 *값 모두 박음* — 본 체크리스트는 측정 자리 1:1. | 미발화 |
| manual-run 통과 없이 자동화 시도 | 본 v0+ 는 *manual-run 자체* 의 보강 — 자동화 시도 0. | 미발화 |

미발화 (3/3).

---

## 6 메타

- 본 v0+ 는 manual-run-checklist 자기 진화 1 호. v0 의 5 항 → v0+ 의 7 항. *7 항 = mechanics-v0+ 의 세 축 (나 5 / 가족 1 / 업 1) 의 가족·업 자리 manual-run 게이트* — voice-keeper §C.2 임계의 *manual-run 차원* 직접 응답.
- 본 v0+ supersedes v0 — v0 history 보존.
- 본 v0+ 는 D-003 picked 와 *독립*. picked = game 시 1 차 prototype 빌드의 manual-run 게이트, picked != game 시 cy-001 후반 또는 cy-002 r1 의 game vertical slice 시점에 적용.

> 본 v0+ 는 7 항. cy-001 또는 cy-002 후속에서 8–10 항까지 확장 가능. 매 항은 *측정 + 임계 + 근거 + 도구 + 1 차 책임* 형식 유지.
> 본 체크리스트 통과 전 — cron 등록 / 자동 빌드 / 자동 배포 등 자동화 시도 0 (constitution invariant #7).
