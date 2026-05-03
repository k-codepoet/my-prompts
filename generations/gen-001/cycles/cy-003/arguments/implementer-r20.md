---
cycle: cy-003
round: 20
role: implementer
mode: role (substantive 6 호 — relative-path drift telemetry 의 *ratchet 발화* 자리 신규 = 직전 tick 보다 늘어남 자리만 슬랙 알림)
created_at: 2026-05-03T12:37:27+00:00
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
  - scripts/check-image-paths.sh (적기 — ratchet 비교 + slack 발화 자리 1 호 신규)
  - .gitignore (적기 — state/last-relative-img-count 1 자리 추가)
  - state/slack-config.yml.example (적기 — image_paths_relative_drift_increase + image_paths_broken 트리거 명시)
  - state/last-relative-img-count (런타임 캐시 1 자리 신규, gitignore)
  - site/view.html (read-only audit, resolveRelativeRefs 무변동)
  - site/manifest.json (read-only audit, freshness 측정)
---

# implementer r20 cy-003 — drift telemetry 의 *ratchet 발화* 자리 1 호

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 19 호.
> r19 = (d) relative-path drift telemetry 차원 1 호 신규 (`check-image-paths.sh` 의 `relative=N` 출력 + 적중 줄 stderr).
> 본 r20 = r19 §7 인계 큐 2 호 (*직전 tick 대비 늘어남 자리만 슬랙 발화* 자리) 자가 처리.

## §1 진단 — r19 telemetry 의 noise / 발화 자리 결손

r19 가 적은 `relative=N` 측정은 누적 자리 = 12 가 baseline. 즉:

- 매 tick 마다 stderr 에 12 자리 적중 줄을 다시 적음 → log 부풀림 + reader (사람) 가 *변동* 인지 *상수* 인지 분간 안 됨.
- 슬랙 알림 자리 0 → writer 가 *늘렸을 때* 사람이 즉시 모름. r19 §7 인계 큐 2 호로 후행.
- *broken* 자리는 즉시 슬랙 발화 (r1 baseline 보전), *relative drift* 자리는 알림 0 → 두 자리 비대칭.

## §2 적은 자리 — ratchet 비교 + 슬랙 발화 + 캐시 1 자리

`scripts/check-image-paths.sh` 끝부분에 한 자리 추가:

1. `state/last-relative-img-count` 캐시 읽기 (없으면 빈 값).
2. `RELATIVE > LAST_REL` 일 때만:
   - stderr 에 `[check-image-paths] drift increase — +DELTA (was X → now Y)` 적기.
   - `slack-notify.sh image_paths_relative_drift_increase ...` 발화 (적중 줄 ≤ 20 자리 본문).
3. 매 tick 끝에 현재 `RELATIVE` 값을 캐시에 적음 (다음 tick baseline).
4. exit 0 보전 — tick 차단 0.

부수 적기:

- `.gitignore` 에 `state/last-relative-img-count` 한 줄 추가 (런타임 캐시, 공유 X).
- `state/slack-config.yml.example` 에 두 트리거 명시:
  - `image_paths_broken: true` (r1 자리, 기존 동작 유지 — `slack-notify.sh` 의 *unknown trigger = adhoc enabled* 폴백에 의존하던 자리 명시화).
  - `image_paths_relative_drift_increase: true` (본 r20 신규 자리).

## §3 verification — 3 자리 직접 실행

| 시나리오 | 실행 | 결과 |
|----------|------|------|
| 캐시 없음 (`rm state/last-relative-img-count`) | `bash scripts/check-image-paths.sh` | drift 12 자리 줄 + 발화 X. 캐시 = 12 적힘. |
| 캐시 = 12 (직전 tick 동일) | 재실행 | drift 12 자리 줄. *increase* 줄 X. 발화 X. |
| 캐시 = 10 (인위적 감소) | `echo 10 > state/last-relative-img-count` 후 실행 | `drift increase — +2 (was 10 → now 12)` 줄 적힘. 슬랙 발화 자리 (webhook 설정 시 발사). |
| 캐시 = 100 (인위적 증가 → 감소) | `echo 100 > ...` 후 실행 | drift 12 자리 줄. *increase* 줄 X. 캐시 = 12 로 갱신 (감소 자리도 반영). |

`exit 0` 자리 보전, broken 발화 자리 r1 baseline 무변동.

## §4 view.html / manifest / disk-target 보전 자리 (r17/r18/r19 baseline)

| 항목 | 측정 | 비고 |
|------|------|------|
| `site/view.html` `resolveRelativeRefs` (L130~L162) | grep 무변동 | r1 baseline 보전 |
| `site/manifest.json.generated_at` | 2026-05-03T12:30:45 | 본 tick 시작 12:37:27 보다 -6m 42s = 신선 |
| `current.md.last_updated` | 2026-05-03T11:35:01 (직전 tick) | manifest +55m 44s 신선 = trip-wire 미발화 |
| disk-target 적중률 | 41 / 41 (broken=0) | r18 baseline 보전 |
| relative-path drift | 12 (인물 5 자리 일러스트 갤러리 표) | r19 baseline 보전 |

## §5 R0 feedback target_orgs 자가 검수

| feedback id | target_orgs | implementer 진척 | 본 tick |
|-|-|-|-|
| F-20260502-1252-content-illustrations-routing | writer, art-director, **implementer** | rule 2 측 *regression direction* 발화 자리 1 호 신규 | ack ✓ |
| F-20260502-1252-serial-stalled-at-3 | writer, orchestrator | 0 (must_fix 4/4 baseline 보전) | ack 0 |
| F-20260502-1216 / 1251 / 1310 / region / palm / episode-10 | writer/voice-keeper/critic/loremaster/art-director | 0 | ack 0 |

1/8 자리 implementer 정합. 다른 7 자리 영역 침범 0.

## §6 트립 자가 검사

| 트립 | 본 tick | 발화 |
|------|---------|------|
| publishing surface 형식 충돌 | 0 | 미발화 |
| publishing surface stale (manifest 가 current 보다 오래됨) | manifest +55m 신선 | 미발화 |
| frozen_scope (게임 영역 신규 작업 0) | `outputs/code/g-the-map-walker/` 변동 0 | 미발화 |
| 영역 위반 | scripts/check-image-paths.sh + .gitignore + slack-config.yml.example 3 자리만 적음. 다른 조직 산출물 변동 0 | 미발화 |
| 자율 빌드 호출 (manual-run 1 회 미통과 → 자동화) | 0 — 본 tick 은 read-only 검증 + telemetry 발화 자리만 | 미발화 |
| forbidden-language §1~§8 + 매니페스토 직접 인용 | 본 argument grep 적중 0 | 미발화 |

## §7 인계 큐 (tick-NN → 다음)

1. **writer-r-N (cy-003 또는 cy-004)** — 5 인물 md (jeonghae / huijae / haeon / ingyu / yugyeong) 일러스트 갤러리 표 root-anchored 1:1 치환. drift 0 도달 시 본 telemetry 무신호 = 정상 자리.
2. **implementer 다음 substantive 자리 후보** — `state/last-relative-img-count` 와 비슷하게 `state/last-broken-img-count` 캐시 자리 발의 후보. broken 은 이미 매번 발화 = noise 가능성 있음. 단 broken=0 baseline 이 r1 부터 유지되어 noise 0 자리 = 우선순위 낮음. 다음 후보로 보류.
3. **orchestrator** — 본 r20 적기 자리 (scripts/check-image-paths.sh ratchet + .gitignore + slack-config.yml.example) 를 cy-003 진화 룰 trace 에 후행 ack.
4. critic R0 cold-read 자리 (episode-04..10 / 인물 8 자리) 평결 의존 자리 보전.

## §8 한 줄 마감

> implementer r20 cy-003 — `check-image-paths.sh` 에 ratchet 비교 + 슬랙 발화 1 자리 적음 (`state/last-relative-img-count` 캐시 + `image_paths_relative_drift_increase` 트리거). 누적 12 = silent, 증가만 알림. 직접 4 자리 시나리오 verification 통과. publishing surface regression 0 보전. scope_reduced 의무 1:1 충족 20 호.

TICK_SUMMARY: implementer r20 cy-003 — scripts/check-image-paths.sh 에 ratchet 자리 신규 (state/last-relative-img-count 캐시 + RELATIVE > LAST_REL 일 때만 stderr `drift increase` 줄 + slack `image_paths_relative_drift_increase` 발화). .gitignore + state/slack-config.yml.example 적기 동반. 4 시나리오 직접 실행 검증 (캐시 없음 / 동일 / 증가 / 감소). r19 §7 인계 큐 2 호 자가 처리. acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer. trip-wire 0 발화 + 게임 영역 신규 0 + manifest freshness +55m ahead. writer 인계 큐 1 호 보전 (5 인물 md 표 root-anchored 1:1 치환).
