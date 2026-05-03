---
tick: 016
mode: role (art-director r1 cy-003 — pre-regen spec gate)
role: art-director
started_at: 2026-05-02T13:05:01+00:00
ended_at: 2026-05-02T13:08:00+00:00
read:
  - current.md
  - generations/gen-001/orgs/art-director.md
  - generations/gen-001/cycles/cy-003/charter.md
  - generations/gen-001/cycles/cy-003/task-queue-r1.md
  - generations/gen-001/cycles/cy-003/arguments/orchestrator-r1.md
  - generations/gen-001/cycles/cy-003/ticks/tick-015.md
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1252-serial-stalled-at-3.yml
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md
  - outputs/writing/the-map-is-the-journey/characters/haeon.md
  - outputs/writing/the-map-is-the-journey/characters/jeonghae.md
  - outputs/writing/the-map-is-the-journey/characters/huijae.md
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v1.png.meta.yml
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v1.png.meta.yml
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-huijae-v1.png.meta.yml
wrote:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r1.md
  - generations/gen-001/cycles/cy-003/ticks/tick-016.md
  - current.md
slack_notify: []
trip_wire_fired: false
domain_violation: false
decisions_proposed: []
decisions_closed_in_tick: []
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced: art-director
---

# Tick cy-003/016 — art-director r1 (pre-regen spec gate)

## 0. Sanity check

- `paused: true` (orchestrator tick-015 종결 자리 = role-rotated tick 진입 자리, paused 토글은
  역할 회전 cron 의무 우회 0 = role 단일 분기 진행 가능)
- 직전 tick (tick-015 orchestrator) constitution 위반 0 ✓
- `seed.sealed: true` + `current.gen: 1` ✓

## 1. 사용자 응답 통합

`decisions/closed/` 직전 tick 이후 변동 0 — 통합 작업 없음.

## 2. 활성 사이클 진행 — art-director 영역 (scope reduced)

orchestrator-r1 §next_candidates b 자리 = *art-director silhouette/pose/face/clothing/palette
5 항 × 3 차이표* 직접 처치. F-20260502-1251 must_fix §3 *재생성 전에 표로 먼저 박을 것* 의무
응답 자리.

세부는 `arguments/art-director-r1.md` 참조. 핵심 결과:

- 차이표 박음 (5 항 × 3 인물 = 15 셀)
- visual differentiator ≥ 3 / 인물 (해온 4 + 정해 4 + 희재 5 = 13 자리)
- v2 재생성 prompt baseline 3 자리 박음 (tone-lock §2/§3 모두 흡수 + 추가 negative
  `duplicate face / identical features / same character repeated / twin brothers`)
- blind-distinction 검수 그물 3 항목 (full image / silhouette only / face crop)
- spec mode → image mode 분리 = art-director r-N image 자리 후행 (본 spec PASS 후 자리)

### F-20260502-1251 닮음 진단 요약

기존 v1 prompt 3 자리 비교:
- 정해 ↔ 희재 = *dusk + hands in coat pockets + looking down at toes* 자세 거의 동일 + hex
  차이 0.05 폭 → 모델 출력 분별 임계 미달
- 모든 자리 *young Korean man late twenties + sumukhwa* 만 박힘 → 얼굴 결·체형·머리·키 등
  분별 차원 0 → 모델 default 얼굴로 수렴

본 spec 의 1 차 분별 차원 = **외투 길이 + 옷깃 + 머리 길이 + 키**. hex 는 2 차 보조 차원으로
강등 (배경 대비 결로 박음).

## 3. 합의 / 결정

- 조직 간 충돌 0 (loremaster·writer·voice-keeper·critic 영역 침범 0).
- writer / voice-keeper / critic 응답 자리 후행:
  - writer = 인물 본문 묘사 단계 *서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관* 분리 의무
    (F-1251 must_fix §4) — 본 spec 의 차이표가 1 차 입력 자리.
  - voice-keeper / critic = 본 spec 기반 image 재생성 후 §4 blind-distinction 검수 그물 3
    항목 적용 의무 (F-1251 must_fix §5) — *이름 없이 봐도 구분 가능한지* R0 페르소나.
- 새 결정 발의 0.

## 4. Gen 마감 검토

본 tick 자리 아님 — cy-003 r1 진행 중.

## 5. tick 마감

- `arguments/art-director-r1.md` 박음.
- 본 `tick-016.md` 박음.
- `current.md` tick=16, last_updated, last_role=art-director 갱신 박음.
- F-20260502-1251 ack 카운트 0/4 → 1/4 (art-director ✓ / writer ✗ / critic ✗ / voice-keeper ✗).
- `next_candidates` = (a) art-director r-N image (v2 prompt 3 자리 실측) > (b) critic+voice-keeper
  R0 blind-distinction 재검수 (image v2 박힘 후 자리) > (c) writer 인물 본문 묘사 분리 의무
  응답 (몸짓·시선·말하기 전 태도·옷 입는 습관) > (d) critic R0/R1/R2 cold-read on episode-04
  (orchestrator-r1 §next_candidates a 자리, 본 tick 으로 우선순위 변동 0).

## 판단 한 줄

> R0 fail F-20260502-1251 직접 응답 자리 = 해온/정해/희재 5 항 × 3 차이표 + v2 prompt
> baseline + blind-distinction 검수 그물 박음. **재생성 전 spec gate 1 호 사례** 박음
> (F-1251 must_fix §3 *재생성 전에 표로 먼저 박을 것* 의무 1:1 흡수).

## next_candidates

- art-director-r-N-image-v2-three-character-sheets (해온 + 정해 + 희재)
- critic-voice-keeper-blind-distinction-recheck (image v2 박힘 후 자리)
- writer-r-N-character-md-body-differentiation (몸짓·시선·말하기 전 태도·옷 입는 습관 분리)
- critic-r2-cold-read-episode-04 (R0/R1/R2)
- orchestrator-r2-frozen-skip-type-b-decision

## TICK_SUMMARY

art-director r1 cy-003 (tick-016) — F-20260502-1251 *해온/정해/희재 닮음* 직접 응답 자리 =
silhouette/pose/face/clothing/palette 5 항 × 3 인물 차이표 박음 + v2 재생성 prompt baseline 3
자리 (외투 길이 + 옷깃 + 머리 + 키 = 1 차 분별 / hex = 2 차 보조 강등) + 추가 negative
(duplicate face / identical features / twin brothers) + blind-distinction 검수 그물 3 항목 (full /
silhouette / face crop) 박음. **pre-regen spec gate 1 호 사례** 박음 (F-1251 must_fix §3 직접
흡수). target_orgs 진척 = art-director (ack 카운트 0/4 → 1/4). 다음 자리 = art-director r-N
image (v2 실측) → critic+voice-keeper blind 재검수.
