---
cycle: cy-003
round: 4
role: implementer
mode: role (publishing surface regression-watch checker 3 호 + F-1252-routing writer-측-박음 5/5 자리 1 호 audit — view.html resolveRelativeRefs 무변동 재검수 + manifest.json freshness 재검수 + episode 5 자리 hero/POV 이미지 root-anchored 자리 검수)
created_at: 2026-05-02T17:05:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/view.html
  - site/manifest.json
  - outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/episode-05-empty-chair-still-warm.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md (read-only audit)
---

# implementer r4 cy-003 — publishing surface regression-watch checker 3 호 + F-1252-routing 5/5 자리 audit 1 호

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 (prototype / walk-trace-spec / manual-run-checklist / engine-choice) 신규 작업 0 의무 자가 흡수.
> r1 (tick-001 thin-bump) → r2 (tick-022 checker 1 호) → r3 (tick-025 checker 2 호 = baseline 격상) → 본 r4 (checker 3 호 + writer-측 박음 자리 audit 1 호 = baseline 격상 2 호 *재초과 강화* 1 호).

## §1 진단 — publishing surface 1 차 책임 자리 두 자리 health-check 3 호

### (a) `site/view.html` `resolveRelativeRefs()` 무변동 재검수 (L128~L143 + L213/L214)

`F-20260502-1252-content-illustrations-routing` must_fix 측 implementer 의무 = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*.

| 자리 | 비고 | 본 r4 검수 |
|------|------|------------|
| L128 `function resolveRelativeRefs(html, mdPath)` | 시그니처 보존 | ✓ |
| L132~L140 `fix(el, attr)` 내부 (절대/scheme/fragment/anchor 패스 + URL 보정) | 보정 로직 보존 | ✓ |
| L141 `tmp.querySelectorAll("img[src]").forEach(el => fix(el, "src"))` | img 보정 호출 보존 | ✓ |
| L213 `readerHtml = resolveRelativeRefs(readerHtml, mdAbsPath)` | reader 측 적용 보존 | ✓ |
| L214 `debugHtml = resolveRelativeRefs(debugHtml, mdAbsPath)` | debug 측 적용 보존 | ✓ |
| `site/view.html` mtime | 1777726376 (2026-05-02T12:52:56) — r1 박음 baseline | r2 (tick-022) ↔ r3 (tick-025) ↔ 본 r4 사이 변동 0 ✓ |

→ **regression 0 박음 3 호 사례** (r2 1 호 → r3 2 호 → 본 r4 3 호) = scope_reduced 조직 r-N checker mode 자가 적용 baseline 격상 2 호 *재초과 강화 1 호* (≥ 3 임계 인접).

### (b) `site/manifest.json` freshness 재검수 (charter §트립와이어 *publishing surface stale*)

| 자리 | mtime (epoch) | 비고 |
|------|---------------|------|
| `site/manifest.json` | 1777741498 (2026-05-02T17:04:58) | 본 tick 시작 (17:05:01) 보다 3 s 빨리 박음 |
| `current.md` | 1777741475 (2026-05-02T17:04:35) | manifest 보다 23 s 일찍 박음 |
| `site/view.html` | 1777726376 | r1 박음 baseline 보존 (변동 0) |

`manifest.json.generated_at >= current.md.last_updated` 검사 = ✓ (23 s 차이) → **`scripts/tick.sh` hook 정상 발화 검수 통과 3 호 사례** (r2 14 s → r3 13 s → 본 r4 23 s = freshness 3 tick 연속 ≤ 60 s = baseline 격상 2 호). charter §트립와이어 *publishing surface stale* 발화 0 = 자가 의무 1:1 충족.

## §2 F-1252-content-illustrations-routing writer-측 박음 자리 5/5 audit (1 호 박음)

본 r4 신규 *substantive* 자리 = **연재 5 자리 본문 + frontmatter 짝 박음이 routing 룰 1·2 자리 자가 충족 여부 disk-검수 1 호**.

룰 (F-20260502-1252-content-illustrations-routing notes §writer):
1. 회차 본문 작성 시 reader 섹션에 hero `episode_thumb` 1 자리 + 분기/POV 별 인물 이미지 ≥ 1 자리 박음 의무.
2. 본문 안 모든 이미지 src 는 root-anchored `/outputs/...` 절대경로 (상대경로 `../` 금지).

| episode 파일 | frontmatter `episode_thumb` | 본문 hero img | 본문 POV 인물 img | 본문 img src 형식 | 룰 1·2 충족 |
|--|--|--|--|--|--|
| `episode-04-no-asking-direction.md` | `outputs/.../stamp-17-2-jeonghae-toes-one-direction-v1.png` (frontmatter 자리) | L69 `/outputs/.../stamp-17-2-jeonghae-toes-one-direction-v1.png` | L105 `/outputs/.../character-sheet-jeonghae-v1.png` | root-anchored `/outputs/...` | ✓ |
| `episode-05-empty-chair-still-warm.md` | `outputs/.../stamp-17-8-huijae-side-by-side-dawns-v1.png` (frontmatter 자리) | L80 `/outputs/.../stamp-17-8-huijae-side-by-side-dawns-v1.png` | L110 `/outputs/.../character-sheet-huijae-v1.png` | root-anchored `/outputs/...` | ✓ |
| `dawn-first-map.md` (cy-003 기존 회차) | `outputs/.../stamp-17-1-haeon-palm-line-dawn-v1.png` | L43 root-anchored | L65 (나림) + L81 (유경) root-anchored | root-anchored `/outputs/...` | ✓ |
| `sideseat-dawn-v0.md` (cy-003 기존 회차) | `outputs/.../stamp-17-7-yeongang-short-grain-v1.png` | L49 root-anchored | L56 (인규) root-anchored | root-anchored `/outputs/...` | ✓ |
| `paired-dawns-v0.1.md` (cy-003 기존 회차) | `outputs/.../stamp-17-8-huijae-side-by-side-dawns-v1.png` | L63 root-anchored | L72 (연강) + L98 (유리) root-anchored | root-anchored `/outputs/...` | ✓ |

→ **5/5 자리 룰 1·2 자가 충족 ✓** (writer 측 박음 = 본 implementer 영역 외이지만, publishing surface 측 *상대경로 fallback* 발동 0 = view.html resolveRelativeRefs 호출 시 모두 *절대경로 패스* 지점에서 early-return = 보정 0 자리 = regression 위험 자리 0). 인물 md 측 8 자리 (`characters/*.md`) 는 `../../../worldbuilding/...` 상대경로 보유 = view.html resolveRelativeRefs L141 보정 의존 자리 = §1.a 무변동 재검수 ✓ 로 보장 박음 3 호.

본 audit = **F-1252 측 implementer 영역 *추가 회복* 1 호 박음** (orchestrator-r5 §2 가 *publishing surface 한정 scope — F-1252-routing 측 추가 회복 자리 보전* 명시 = 본 r4 직접 응답).

## §3 R0 feedback 4 자리 target_orgs routing 자가 검수

| feedback id | target_orgs / applies_to | implementer 측 진척 자리 | 본 tick 박음 |
|-------------|--------------------------|--------------------------|--------------|
| F-20260502-1216-general-writing-too-abstract | (없음, 본문 = writer + critic) | 0 | ack 0 |
| F-20260502-1251-character-visuals-too-similar | applies_to: art-director, writer, critic, voice-keeper | 0 | ack 0 |
| F-20260502-1252-content-illustrations-routing | target_orgs: writer, art-director, **implementer** | 2 = (i) view.html resolveRelativeRefs 무변동 재검수 (§1.a) + (ii) episode 5/5 자리 룰 1·2 자가 충족 disk-audit (§2) | **ack ✓ + regression 0 검수 박음 3 호 + writer-측 audit 1 호** |
| F-20260502-1252-serial-stalled-at-3 | target_orgs: writer, orchestrator | 0 (D-004 picked=a tick-028 finalize, F 측 must_fix 4/4 도달) | ack 0 |

1/4 자리 implementer target_orgs 정합 = F-20260502-1252-content-illustrations-routing 1 자리 직접 응답 3 호 + writer-측 disk audit 1 호 신규. 다른 3/4 자리 = 영역 인접 침범 0.

## §4 D-20260502-004 (Type B, **closed at tick-028**) — implementer 영역 안 보전 박음 3 호

D-004 = picked=a (skip-frozen-only) auto-applied by orchestrator-r4 (tick-028). r3 (tick-025) 시점 *자동 적용 카운트 누적 +4 / 임계 +1 잔여 (tick-026)* 추적 = tick-028 기준 finalize 도달 자리. 본 r4 = D-004 추적 종결 자리.

scope_reduced (art-director / implementer) 회전 유지 = 영역 보전 자가 사례 = 본 r4 = publishing surface 영역 안 *유지* 의무 1:1 충족 자리 자체 = D-004 picked=a 짝 자가 정합 1 호.

## §5 본 r4 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface regression-watch checker mode 자가 적용 baseline 3 호 도달 = baseline 격상 2 호 *재초과 강화 1 호*** (r2 1 호 → r3 2 호 → 본 r4 3 호 = ≥ 3 임계 인접). cy-003 진화 룰 정식 룰 임계 *재초과 강화 1 호* 도달.
2. **regression 0 박음 3 호 사례** — view.html L128~L143 + L213/L214 6 자리 disk 재검증 통과 = F-1252 must_fix implementer 측 *유지* 의무 1:1 충족 3 호.
3. **manifest.json freshness 재검수 3 호 사례** — `tick.sh` hook 정상 발화 검수 baseline ≥ 3 호 도달 = baseline 격상 2 호.
4. **F-1252 writer-측 박음 자리 5/5 disk audit 1 호 박음 신규** — 연재 5 자리 본문 + frontmatter 짝 룰 1·2 충족 disk-검수 = implementer 측 *추가 회복* 자리 (orchestrator-r5 §2 명시) 1 호 응답.
5. **R0 feedback target_orgs routing 자가 검수 baseline 6 호 도달** (designer r-noop tick-021 + implementer r2 tick-022 + orchestrator checker tick-023 + tick-024 + implementer r3 tick-025 + 본 tick = 6 호) = 정식 룰 임계 *재재초과 강화 2 호*.
6. **scope_reduced/frozen 조직 영역 안 표명만 박음 baseline 6 호 도달** (designer + implementer r2 + orchestrator checker tick-023 + tick-024 + implementer r3 + 본 tick = 6 호) = 정식 룰 임계 *재재초과 강화 2 호*.
7. **트립 발화 자리 회피 baseline** — charter §트립와이어 5 자리 (비용/가치 비대칭 / designer 추상 명령 / manual-run 우회 / publishing surface 형식 충돌 / publishing surface stale) 모두 미발화. 게임 영역 신규 작업 0 = scope_reduced 의무 1:1 충족 3 호.
8. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §6 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 형식 충돌 / publishing surface stale) | manifest.json 23 s fresh + view.html 무변동 + episode 5/5 자리 root-anchored ✓ | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = checker 메타 자리 + writer 산출물 read-only audit + tick 인프라 자리) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 0** + **scope_reduced 의무 1:1 충족 3 호** + **regression 0 검수 박음 3 호 = baseline 격상 2 호 재초과 강화 1 호**.

## §7 영역 자기 검사

- implementer 영역 = publishing surface 책임만 (view.html + manifest.json 두 자리 health-check 3 호 + episode root-anchored disk audit 1 호) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족 3 호
- writer / loremaster / art-director / critic / voice-keeper / orchestrator 영역 = read-only audit 자리 (disk 변동 0)
- orchestrator 영역 (frontmatter tick 31→32 동기 + last_updated 갱신 1 행) = 본 tick 안 *role 자가 sync 자리* (cy-002 r1 정착 표준 1:1)

본 tick 침범 0.

## §8 인계 큐 (tick-032 → 다음 tick)

orchestrator-r5 §3 큐 7 자리 보존 (변동 0):

1. art-director r2 image v2 (해온 / 정해 / 희재 v2.png) — F-1251 후행 (1 위 → tick-030 art-director-r2 박음 ✓ 인접)
2. voice-keeper r5 cy-003 = post-regen 재측정 짝 (2 위, art-director v2 의존)
3. critic r3 cy-003 = F-1251 R0 재검수 critic 측 1 호 (3 위, tick-031 critic-r3 박음 ✓ 인접)
4. writer-r3-cy-003-character-md-frontmatter-illustrations-parity (4 위, R0 독립 자율 진척)
5. writer-r-N-cy-003-episode-05+ 신규 회차 (5 위, R0 독립 자율 진척, episode-05 박음 ✓ 인접)
6. r0-user-verdict-on-episode-04 (6 위, R0 의존)
7. writer-r-N-cy-003-series-index-v0.1-after-r0-pass (7 위, R0 의존)

## §9 ack 인계

- **loremaster (다음 cron role-rotate 자리 = state/.last-role=implementer 알파벳 다음 자리)** = 본 r4 = implementer 측 regression 0 검수 박음 3 호 + writer-측 disk audit 1 호 = F-1252-content-illustrations-routing must_fix loremaster 측 *인물 md frontmatter illustrations ↔ 본문 갤러리 일치 룰 발의* 자리 publishing surface 측 보장 박음 3 호 자리 인계.
- **writer / art-director (F-20260502-1252-content-illustrations-routing 짝)** = implementer 측 episode 5/5 자리 룰 1·2 충족 disk audit 1 호 = 신규 회차 / image 박음 시 *상대경로 img / hero 박음 의무* 자리 publishing surface 측 보장 박음 3 호 (baseline 격상 *재초과 강화 1 호*).
- **사용자 (D-20260502-004 closed = tick-028 finalize)** = scope_reduced 자리 자가 흡수 3 호 도달 + picked=a 짝 자가 정합 1 호. 추적 종결.

## §10 한 줄 마감

> implementer r4 cy-003 (tick-032) — publishing surface regression-watch checker 3 호 + F-1252-routing writer-측 5/5 자리 disk audit 1 호 = view.html resolveRelativeRefs 6 자리 무변동 재검수 통과 + manifest.json freshness 23 s fresh + episode 5/5 자리 hero/POV 이미지 root-anchored 자가 충족 ✓ + R0 feedback 4 자리 routing 자가 검수 1/4 정합. **regression 0 박음 3 호 = baseline 격상 2 호 재초과 강화 1 호** + scope_reduced 의무 1:1 충족 3 호. 신규 산출물 0 (코드 0 + 빌드 0 + 자동 배포 0) = constitution invariant #7 자가 의무 보전. D-004 추적 종결 (picked=a tick-028).
