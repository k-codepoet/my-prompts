---
cycle: cy-003
round: 19
role: implementer
mode: role (substantive 5 호 — drift telemetry 신규 차원 1 호 = scripts/check-image-paths.sh 에 relative-path img 카운트 + 적중 줄 목록 추가)
created_at: 2026-05-03T11:05:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
decisions_observed:
  - D-20260502-004 (role-rotate skip-frozen-only — implementer 회전 유지 자리 1:1 적용)
  - D-20260503-001 (vocabulary_shift — *박다/박음 → 적다/남다*. 본 argument 본문 1:1 흡수)
target_artifacts:
  - scripts/check-image-paths.sh (적기 — relative-path 카운트 + 적중 줄 stderr 출력 신규)
  - scripts/tick.sh (변동 0, hook 자리 보전)
  - site/view.html (read-only audit, resolveRelativeRefs 무변동)
  - site/manifest.json (read-only audit, freshness 측정)
  - outputs/writing/the-map-is-the-journey/ (read-only audit, 41 img refs / relative=12)
---

# implementer r19 cy-003 — drift telemetry 신규 차원 1 호

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 18 호.
> r10..r17 누적 = (a) 함수 grep 무변동 + (b) sample-set 변동 0. r18 = (c) disk-target existence 차원 1 호 신규 (`check-image-paths.sh` 적기 + `tick.sh` hook). 본 r19 = (d) **relative-path drift telemetry** 차원 1 호 신규.

## §1 진단 — 기존 audit 의 사각

`F-20260502-1252-content-illustrations-routing` notes §writer rule 2:

> 본문 안 모든 이미지 src 는 root-anchored `/outputs/...` 절대경로 (상대경로 `../` 금지).

r18 까지의 `check-image-paths.sh` 는 *src 가 disk 위 파일을 가리키는가* 만 측정 → 상대경로든 root-anchored 든 파일이 존재하면 ok 통과.
즉 writer 가 다음 회차에 다시 `../../../worldbuilding/...` 를 쓰더라도 view.html `resolveRelativeRefs` 가 보정해서 깨지지 않으니 검수 통과 = rule 2 위반이 silent. critic / writer / orchestrator 어느 자리도 경고 신호를 받지 못함.

## §2 적은 자리 — drift 카운트 추가

`scripts/check-image-paths.sh` 에 한 차원 추가:

- `relative=N` 출력 (broken= 다음 줄)
- 종료 직전 `relative > 0` 이면 stderr 에 `[check-image-paths] drift — N relative-path img refs (root-anchored 룰 위반)` + 적중 줄 ≤ 20 자리 출력 (broken 자리는 별개로 슬랙 알림 유지)
- exit 0 보전 (tick 차단 안 함, 텔레메트리만)

본 tick 첫 실행 결과:

```
[check-image-paths] ok — 41 img refs resolve (relative=12)
[check-image-paths] drift — 12 relative-path img refs (root-anchored 룰 위반)
  outputs/writing/the-map-is-the-journey/characters/jeonghae.md:94  ../../../worldbuilding/.../stamp-17-2-jeonghae-toes-one-direction-v1.png
  outputs/writing/the-map-is-the-journey/characters/jeonghae.md:95  ../../../worldbuilding/.../character-sheet-jeonghae-v2.png
  outputs/writing/the-map-is-the-journey/characters/jeonghae.md:96  ../../../worldbuilding/.../character-sheet-jeonghae-v1.png
  outputs/writing/the-map-is-the-journey/characters/huijae.md:117..119  (3 자리)
  outputs/writing/the-map-is-the-journey/characters/haeon.md:96..98  (3 자리)
  outputs/writing/the-map-is-the-journey/characters/ingyu.md:99..100  (2 자리)
  outputs/writing/the-map-is-the-journey/characters/yugyeong.md:95  (1 자리)
```

12 자리 모두 인물 md 의 일러스트 갤러리 표 (`## 일러스트 갤러리`) 안. 5 인물 (jeonghae / huijae / haeon / ingyu / yugyeong) 측 cy-003 r2 박음 baseline 그대로. 나머지 3 인물 (narim / yeongang / yuri) 은 r6 이후 root-anchored 로 적힘.

## §3 의미

- **publishing surface 측 regression 자리 0** 보전 — 12 자리 모두 view.html `resolveRelativeRefs` 의 보정 경로로 깨짐 0. 즉 외부 reader 가 보는 결과는 동일.
- **rule 2 자가 충족 baseline 측정 가능** — 이전엔 *상대경로 0* 인지 *resolveRelativeRefs 가 가려준 N* 인지 분간 안 됨. 이제 N=12 자리 명시.
- **writer 인계 큐 1 호** — 5 인물 md 일러스트 갤러리 표를 `/outputs/...` 로 1:1 치환 (sed 한 줄 작업). N=0 도달 시 본 텔레메트리는 *무전이 곧 정상* 자리.
- **다음 단계 후보 (보류)** — `relative > 0` 일 때 슬랙 알림 발화. 현재 12 자리 = 누적 자리이므로 즉시 발화하면 noise. *N 이 직전 tick 보다 늘어났을 때만* 알림 = 상태 캐시 한 자리 필요. 본 tick 자리 외, 다음 substantive 자리 후보로 §7 인계 큐에 추가.

## §4 view.html / manifest / disk-target 보전 자리 (r17/r18 baseline)

| 항목 | 측정 | 비고 |
|------|------|------|
| `site/view.html` `resolveRelativeRefs` (L130~L162) | grep 무변동 | r1 baseline 보전 |
| `site/manifest.json.generated_at` | 2026-05-03T11:03:48 | 본 tick 시작 시각 11:05:01 보다 -1m 13s |
| `current.md.last_updated` | 2026-05-03T10:15:01 | manifest +48m 47s 신선 = trip-wire 미발화 |
| disk-target 적중률 | 41 / 41 (broken=0) | r18 baseline 보전 |

## §5 R0 feedback target_orgs 자가 검수

| feedback id | target_orgs | implementer 진척 | 본 tick |
|-|-|-|-|
| F-20260502-1252-content-illustrations-routing | writer, art-director, **implementer** | rule 2 자가 충족 측정 자리 강화 (drift telemetry 신규) | ack ✓ |
| F-20260502-1252-serial-stalled-at-3 | writer, orchestrator | 0 (must_fix 4/4 도달 baseline 보전) | ack 0 |
| F-20260502-1216 / 1251 / 1310 / region / palm / episode-10 | writer/voice-keeper/critic/loremaster/art-director | 0 | ack 0 |

1/8 자리 implementer 정합. 다른 7 자리 영역 침범 0.

## §6 트립 자가 검사

| 트립 | 본 tick | 발화 |
|------|---------|------|
| publishing surface 형식 충돌 | 0 | 미발화 |
| publishing surface stale (manifest 가 current 보다 오래됨) | manifest +48m 신선 | 미발화 |
| frozen_scope (게임 영역 신규 작업 0) | `outputs/code/g-the-map-walker/` 변동 0 | 미발화 |
| 영역 위반 | scripts/check-image-paths.sh 1 자리만 적음, 다른 조직 산출물 변동 0 | 미발화 |
| forbidden-language §1~§8 + 매니페스토 직접 인용 | 본 argument grep 적중 0 | 미발화 |

## §7 인계 큐 (tick-NN → 다음)

1. **writer-r-N (cy-003 또는 cy-004)** — 5 인물 md 일러스트 갤러리 표 root-anchored 1:1 치환 (jeonghae / huijae / haeon / ingyu / yugyeong). drift 0 도달 시 본 telemetry 무신호 = 정상 자리.
2. **implementer 다음 substantive 자리 후보** — `state/last-relative-img-count` 캐시 한 자리 + 직전 tick 대비 *늘어남* 자리만 슬랙 발화. 현재 12 자리 누적 noise 회피.
3. **orchestrator** — 본 r19 적기 자리 (scripts/check-image-paths.sh) 를 cy-003 진화 룰 trace 에 후행 ack.
4. critic R0 cold-read 자리 (episode-04..10 / 인물 8 자리) 평결 의존 자리 보전.

## §8 한 줄 마감

> implementer r19 cy-003 — `check-image-paths.sh` 에 relative-path drift telemetry (relative=N + 적중 줄 stderr) 한 자리 적음. 본 tick 첫 측정 = 41 ok / relative=12 (5 인물 md 일러스트 갤러리 표). publishing surface regression 0 보전 + writer 인계 큐 1 호 추가. scope_reduced 의무 1:1 충족 19 호.

TICK_SUMMARY: implementer r19 cy-003 — scripts/check-image-paths.sh 에 relative-path drift telemetry 1 차원 신규 (relative 카운트 + 적중 줄 stderr 비차단). 첫 측정 = 41 ok / relative=12 (인물 md 5 자리, jeonghae/huijae/haeon/ingyu/yugyeong 일러스트 갤러리 표) — view.html resolveRelativeRefs 가 보정해서 깨짐 0, rule 2 측 silent 위반만 측정. acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer. 신규 substantive 5 호. trip-wire 0 발화 + 게임 영역 신규 0 + manifest freshness +48m ahead. writer 인계 큐 1 호 (5 인물 md 표 root-anchored 1:1 치환).
