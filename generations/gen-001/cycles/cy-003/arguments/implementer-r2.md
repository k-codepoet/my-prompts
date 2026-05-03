---
cycle: cy-003
round: 2
role: implementer
mode: role (publishing surface regression-watch checker — view.html resolveRelativeRefs 무변동 검수 + manifest.json freshness 검수 + R0 feedback 4 자리 routing 자가 검수)
created_at: 2026-05-02T15:21:31+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/view.html
  - site/manifest.json
---

# implementer r2 cy-003 — publishing surface regression-watch (view.html 무변동 검수 + manifest freshness 검수)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 (prototype / walk-trace-spec / manual-run-checklist / engine-choice) 신규 작업 0 의무 자가 흡수.
> r1 (tick-001) = thin-bump (timeline 정합 회복) → 본 r2 = checker (regression-watch). r-N 모드 분리 자가 적용 자리 1 호 신규.

## §1 진단 — publishing surface 1 차 책임 자리 두 자리 health-check

### (a) `site/view.html` `resolveRelativeRefs()` 무변동 검수 (L128~L143)

`F-20260502-1252-content-illustrations-routing` must_fix 측 implementer 의무 = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*.

본 r2 disk 검증 = view.html L128~L143 = r1 박음 baseline 보존 ✓:
- L128 `function resolveRelativeRefs(html, mdPath)` 시그니처 보존 ✓
- L135 `/^(?:[a-z]+:|\/\/|#|\/)/i.test(v)` absolute / scheme / fragment / anchor 패스 보존 ✓
- L137 `new URL(v, "http://_local" + dir)` md 파일 기준 절대경로 보정 보존 ✓
- L141 `tmp.querySelectorAll("img[src]").forEach(el => fix(el, "src"))` img 보정 호출 보존 ✓
- L213/L214 `readerHtml = resolveRelativeRefs(readerHtml, mdAbsPath)` + `debugHtml = resolveRelativeRefs(debugHtml, mdAbsPath)` reader/debug 두 측 동시 적용 보존 ✓

→ **regression 0 박음 1 호 사례** = F-20260502-1252-content-illustrations-routing must_fix implementer 측 *유지* 의무 1:1 충족 자리.

### (b) `site/manifest.json` freshness 검수 (charter §트립와이어 *publishing surface stale*)

| 자리 | mtime (epoch) | 비고 |
|------|---------------|------|
| `site/manifest.json` | 1777735113 | 최신 (현재 +0 분) |
| `current.md` | 1777735099 | manifest 보다 14 s 일찍 박음 |
| `site/view.html` | 1777726376 | r1 박음 baseline 보존 |
| `site/index.html` | 1777725913 | r1 박음 baseline 보존 |

`manifest.json.generated_at >= current.md.last_updated` 검사 = ✓ (14 s 차이) → **`scripts/tick.sh` hook 정상 발화 검수 통과 1 호 사례**. charter §트립와이어 *publishing surface stale* 발화 0 = 자가 의무 1:1 충족.

## §2 R0 feedback 4 자리 target_orgs routing 자가 검수

| feedback id | target_orgs / applies_to | implementer 측 진척 자리 | 본 tick 박음 |
|-------------|--------------------------|--------------------------|--------------|
| F-20260502-1216-general-writing-too-abstract | (없음, 본문 = writer + critic) | 0 | ack 0 |
| F-20260502-1251-character-visuals-too-similar | applies_to: art-director, writer, critic, voice-keeper | 0 | ack 0 |
| F-20260502-1252-content-illustrations-routing | target_orgs: writer, art-director, **implementer** | 1 = view.html resolveRelativeRefs 무변동 검수 (§1.a 박음) | **ack ✓ + regression 0 검수 박음** |
| F-20260502-1252-serial-stalled-at-3 | target_orgs: writer, orchestrator | 0 | ack 0 |

1/4 자리 implementer target_orgs 정합 = F-20260502-1252-content-illustrations-routing 1 자리 직접 응답 (regression 0 검수 박음 = must_fix 측 *유지* 의무 1:1 충족). 다른 3/4 자리 = 영역 인접 침범 0.

## §3 D-20260502-004 (Type B, open) — implementer 영역 안 표명만 박음 1 호

D-004 옵션 = a (skip-frozen-only) / b (skip-frozen-and-scope-reduced) / c (status-quo) — recommended=a.

implementer 측 정합:
- 옵션 a (recommended) = supporters 측 *간접* — frozen designer 1 자리만 회전에서 빠지면 implementer scope-reduced 자리 (publishing surface 한정) 회전 보존 ✓ = 본 tick 자체가 그 *유지* 의 자가 사례.
- 옵션 b = **objectors 측 명시** (D-004 yaml §options.b.objectors=[art-director, implementer]) — implementer 회전 0 = publishing surface regression-prevention 후속 자리 잃음 = scope_reduced 의도 (*활성 = publishing surface 책임만*) 와 충돌.
- 옵션 c = 현재 7 조직 회전 풀 보존 자리.

본 implementer 측 *영역 안 표명만 박음* (yaml 변경 0 / 신규 옵션 발의 0 / 응답 강제 0). 옵션 b objectors 자리 정합 자가 사례 = 본 r2 = publishing surface 영역 안 *유지* 의무 1:1 충족 자리 자체가 옵션 a 지지의 baseline.

D-004 자동 적용 카운트 = +1 tick (tick-022 시점, 5 tick 임계 = tick-026 자리, +4 tick 잔여).

## §4 본 r2 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface regression-watch checker mode 1 호 사례 신규 박음** — r1 (thin-bump 보강) → r2 (checker 검수) = r-N mode 분리 자가 적용 자리 1 호. cy-003 진화 룰 후보 신규 — *scope_reduced 조직 r-N = thin-bump (보강) + checker (regression-watch) 두 모드 분리 표준*.
2. **regression 0 박음 1 호 사례** — view.html resolveRelativeRefs L128~L143 + L213/L214 6 자리 disk 검증 통과 = F-20260502-1252-content-illustrations-routing must_fix 측 *유지* 의무 1:1 충족.
3. **manifest.json freshness 검수 1 호 사례** — `tick.sh` hook 정상 발화 검수 baseline 박음 (charter §트립와이어 *publishing surface stale* 0 발화 자가 의무 1:1 충족).
4. **R0 feedback target_orgs routing 자가 검수 baseline 2 호** — designer r-noop tick-021 1 호 ↔ 본 implementer r2 = 2 호 = *영역 인접 침범 회피 자가 검수* baseline 2 호 도달 (≥ 2 = 정식 룰 진입 임계).
5. **scope_reduced 조직 영역 안 표명만 박음 자리 baseline 2 호** — designer (frozen) r-noop tick-021 1 호 ↔ 본 implementer (scope_reduced) r2 = 2 호. cy-003 진화 룰 후보 신규 — *frozen / scope_reduced 조직 의 영역 인접 결정 응답 자리 = 표명만 + 발의 0 자리 보전* 표준.
6. **트립 발화 자리 회피 baseline** — charter §트립와이어 5 자리 (비용/가치 비대칭 / designer 추상 명령 / manual-run 우회 / publishing surface 형식 충돌 / publishing surface stale) 모두 미발화. 게임 영역 신규 작업 0 = scope_reduced 의무 1:1 충족.
7. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §5 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 형식 충돌 / publishing surface stale) | manifest.json 14 s fresh + view.html 무변동 ✓ | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = checker 메타 자리 + tick 인프라 자리) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 0** + **scope_reduced 의무 1:1 충족 1 호** + **regression 0 검수 박음 1 호**.

## §6 영역 자기 검사

- implementer 영역 = publishing surface 책임만 (view.html + manifest.json 두 자리 health-check) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족
- 다른 7 조직 영역 = 침범 0
- orchestrator 영역 (frontmatter tick 21→22 동기 + last_updated 갱신 1 행) = 본 tick 안 *role 자가 sync 자리* (cy-002 r1 정착 표준 1:1)

본 tick 침범 0.

## §7 인계 큐 (tick-022 → 다음 tick)

tick-020/021 next_candidates 6 자리 보존 (변동 0):
- r0-user-verdict-on-episode-04 (F-20260502-1216 해소) — 1 위
- d-20260502-004-user-response (Type B, +1 tick / 5 tick 임계 = tick-026) — 2 위
- critic-r3-cy-003-episode-04-status-published-promotion (R0 의존) — 3 위
- loremaster-r3-cy-003-jeonghae-sister-unnamed-character-relations-audit (R0 독립) — 4 위, 자율 진척 가능
- art-director-r-n-image-v2-three-character-sheets (F-1251 후행 자리) — 5 위
- writer-r3-cy-003-series-index-v0.1-after-r0-pass (post-supersede 그물 5 호 후보, R0 의존) — 6 위

다음 cron role-rotate 자리 = 알파벳 다음 = loremaster (r3 character-relations 정합 검수 = 자율 진척 가능 자리 1 호 = 큐 4 위 직접 응답 자리).

## §8 ack 인계

- **orchestrator (cy-003 마감 라운드 review.md 자리)** = 본 r2 = publishing surface regression-watch checker mode 1 호 박음 = cy-003 마감 라운드 review.md 안 *scope_reduced 조직 r-N 모드 분리 baseline ≥ 2 호 사례* 행 박음 후보.
- **사용자 (D-20260502-004 open Type B)** = scope_reduced 자리 자가 흡수 1 호 도달 + 옵션 b objectors 자리 정합 자가 사례. unfreeze / scope-restore 자리 = 사용자 직접 발의 + Type C 결정 박음 도달 시점 본 tick *§영역 안 표명만 박음* 자리 baseline 인계.
- **writer / art-director (F-20260502-1252-content-illustrations-routing 짝)** = 본 r2 = implementer 측 regression 0 검수 박음 1 호 = writer / art-director 측 신규 회차 / image 박음 시 *상대경로 img / hero 박음 의무* 자리 publishing surface 측 보장 박음 1 호 자리 인계.

## §9 한 줄 마감

> implementer r2 cy-003 (tick-022) — publishing surface regression-watch checker (view.html resolveRelativeRefs 무변동 검수 6/6 통과 + manifest.json freshness 14 s fresh + R0 feedback 4 자리 routing 자가 검수 1/4 정합). regression 0 박음 1 호 + scope_reduced 의무 1:1 충족 + 영역 인접 침범 회피 자가 검수 baseline 2 호 도달. 신규 산출물 0 (코드 0 + 빌드 0 + 자동 배포 0) = constitution invariant #7 자가 의무 보전. D-004 자동 적용 카운트 +1 tick.
