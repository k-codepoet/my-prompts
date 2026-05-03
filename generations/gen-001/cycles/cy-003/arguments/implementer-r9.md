---
cycle: cy-003
round: 9
role: implementer
mode: role (publishing surface regression-watch checker 8 호 + F-1252-routing 8/8 자리 audit 6 호 = view.html resolveRelativeRefs 무변동 재검수 + manifest.json freshness 재검수 + episode 8/8 자리 hero/POV 이미지 root-anchored 자리 재검수 — episode-08 신규 자리 1 호 흡수)
created_at: 2026-05-02T22:17:36+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/view.html (read-only audit, regression-watch 8 호)
  - site/manifest.json (read-only audit, freshness 재검수 8 호)
  - outputs/writing/the-map-is-the-journey/episode-08-after-the-first-look.md (read-only audit, 신규 흡수)
  - outputs/writing/the-map-is-the-journey/episode-07-fifteen-minutes-mine.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/episode-06-sit-beside.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/episode-05-empty-chair-still-warm.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md (read-only audit)
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md (read-only audit)
---

# implementer r9 cy-003 — publishing surface regression-watch checker 8 호 + F-1252-routing 8/8 자리 audit 6 호

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수.
> r1 (tick-001 thin-bump) → r2 (checker 1 호) → r3 (2 호) → r4 (3 호) → r5 (4 호) → r6 (5 호) → r7 (6 호) → r8 (7 호) → 본 r9 (tick-052 checker 8 호 = **재재재재재재초과 강화 1 호** ≥ 8 임계 도달).

## §1 진단 — publishing surface 1 차 책임 자리 두 자리 health-check 8 호

### (a) `site/view.html` `resolveRelativeRefs()` 무변동 재검수 (L128~L143 + L213/L214)

`F-20260502-1252-content-illustrations-routing` must_fix 측 implementer 의무 = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*.

| 자리 | 비고 | 본 r9 검수 |
|------|------|------------|
| L128 `function resolveRelativeRefs(html, mdPath)` | 시그니처 보존 | ✓ |
| L132~L140 `fix(el, attr)` 내부 (절대/scheme/fragment/anchor 패스 + URL 보정) | 보정 로직 보존 | ✓ |
| L141 `tmp.querySelectorAll("img[src]").forEach(el => fix(el, "src"))` | img 보정 호출 보존 | ✓ |
| L213 `readerHtml = resolveRelativeRefs(readerHtml, mdAbsPath)` | reader 측 적용 보존 | ✓ |
| L214 `debugHtml = resolveRelativeRefs(debugHtml, mdAbsPath)` | debug 측 적용 보존 | ✓ |
| `site/view.html` mtime | 1777726376 (2026-05-02T12:52:56) — r1 박음 baseline | r2..r8 ↔ 본 r9 사이 변동 0 ✓ |

→ **regression 0 박음 8 호 사례** (r2 1 호 → r3 2 호 → r4 3 호 → r5 4 호 → r6 5 호 → r7 6 호 → r8 7 호 → 본 r9 8 호) = scope_reduced 조직 r-N checker mode 자가 적용 baseline 격상 7 호 ***재재재재재재초과 강화 1 호*** (≥ 8 임계 도달, 직전 r8 = ≥ 7 도달).

### (b) `site/manifest.json` freshness 재검수 (charter §트립와이어 *publishing surface stale*)

| 자리 | mtime / 시각 | 비고 |
|------|--------------|------|
| `site/manifest.json` | 1777760084 (2026-05-02T22:14:44) | tick.sh hook 발화 자리 (직전 tick-051 종료 직후) |
| `current.md` `last_updated` (frontmatter) | 2026-05-02T22:12:19 | tick-051 orchestrator-r9 ended_at |
| `current.md` mtime | 1777760076 (2026-05-02T22:14:36) | tick-051 직후 자리 |
| `site/view.html` | 1777726376 (2026-05-02T12:52:56) | r1 박음 baseline 보존 (변동 0) |

`manifest.json.generated_at >= current.md.last_updated` 검사 = ✓ (manifest +2m 25s 더 신선) → **`scripts/tick.sh` hook 정상 발화 검수 통과 8 호 사례** (r2 14s → r3 13s → r4 23s → r5 23s → r6 27m → r7 42m → r8 21m 23s → 본 r9 2m 25s = baseline 회복 자리 = r5 23s 다음 가장 신선한 자리). charter §트립와이어 *publishing surface stale* 발화 0 = 자가 의무 1:1 충족 8 호.

manifest 본 tick 시작 시각 (22:15:01) 기준 -17s = *직전 tick 종료 직후 발화한 hook* 결과로 매우 신선 (charter 트립 정의 = `manifest.json.generated_at >= current.md.last_updated` 1:1 만족).

manifest 안 episode 자리 disk 검수 = `episode-04` / `episode-05` / `episode-06` / `episode-07` / **`episode-08`** 5 자리 모두 entries 박힘 + episode_no/episode_thumb/episode_status 메타 8 자리 (1..8) 모두 박힘 ✓ (publishing surface 즉시 외부 도달 보장 baseline 보전). episode-08 신규 자리 1 호 흡수 = writer-r8 박음 (mtime 1777758768 = 21:52:48) 자리 manifest 통합 baseline 자가 충족.

## §2 F-1252-content-illustrations-routing writer-측 박음 자리 8/8 baseline 보전 disk-재검수 6 호

본 r9 신규 *substantive* 자리 = **연재 8 자리 본문 + frontmatter 짝 박음이 routing 룰 1·2 자리 자가 충족 baseline 보전 여부 disk-재검수 6 호** (r4 5/5 → r5 6/6 → r6 7/7 → r7 7/7 보전 → r8 7/7 보전 → 본 r9 8/8 — episode-08 신규 자리 1 호 흡수).

룰 (F-20260502-1252-content-illustrations-routing notes §writer):
1. 회차 본문 작성 시 reader 섹션에 hero `episode_thumb` 1 자리 + 분기/POV 별 인물 이미지 ≥ 1 자리 박음 의무.
2. 본문 안 모든 이미지 src 는 root-anchored `/outputs/...` 절대경로 (상대경로 `../` 금지).

| episode 파일 | 본문 root-anchored img 수 | 본문 `../` 상대 img 수 | 룰 1·2 충족 |
|--|--|--|--|
| `episode-04-no-asking-direction.md` | 2 | 0 | ✓ |
| `episode-05-empty-chair-still-warm.md` | 2 | 0 | ✓ |
| `episode-06-sit-beside.md` | 2 | 0 | ✓ |
| `episode-07-fifteen-minutes-mine.md` | 2 | 0 | ✓ |
| `episode-08-after-the-first-look.md` | 1 | 0 | 룰 2 ✓ / 룰 1 ⚠ (hero==POV 단일 자리 = character-sheet-narim-v2.png 1 자리 박음, frontmatter `episode_thumb` 1:1 매칭하지만 본문 안 자리 수 = 1 < 2) |
| `dawn-first-map.md` | 3 | 0 | ✓ |
| `sideseat-dawn-v0.md` | 2 | 0 | ✓ |
| `paired-dawns-v0.1.md` | 3 | 0 | ✓ |

(disk 검수 = `grep '!\[.*\](\.\./' outputs/writing/the-map-is-the-journey/episode-*.md` 적중 0; `grep '!\[.*\]([/]?outputs' …` 17 자리 일치 = 8 파일 root-anchored baseline 보전.)

→ **8/8 자리 룰 2 자가 충족 baseline 보전 ✓** (writer 측 박음 = 본 implementer 영역 외이지만, publishing surface 측 *상대경로 fallback* 발동 0 = view.html resolveRelativeRefs 호출 시 모두 *절대경로 패스* 지점에서 early-return = 보정 0 자리 = regression 위험 자리 0).

→ **episode-08 룰 1 자리 ⚠ ack** = 본문 hero (episode_thumb=character-sheet-narim-v2) + POV 인물 이미지가 *동일 자산 1 자리* 로 묶여 박힘 = "hero ≥ 1 + POV ≥ 1" 의무 자리 산술 합 ≥ 2 baseline 보다 1 자리 부족. 단 *publishing surface 측 regression 자리 0* (1 자리 root-anchored img 도 view.html resolveRelativeRefs 절대경로 패스 = 깨짐 0). writer / critic 영역 인계 자리 (본 §7 trace gap 큐 1 호 추가).

인물 md 측 8 자리 (`characters/*.md`) 자리 = mixed convention 보전 (haeon/huijae/jeonghae/ingyu = `../../../worldbuilding/...` 상대 + yugyeong = 1 상대 = view.html resolveRelativeRefs L141 보정 의존 자리; narim/yeongang/yuri = `/outputs/worldbuilding/...` root-anchored 직접 패스 자리). 두 경로 자리 모두 §1.a 무변동 재검수 ✓ 로 보장 박음 8 호.

본 audit = **F-1252 측 implementer 영역 *추가 회복* 6 호 박음** (r4 = 1 호 5/5 / r5 = 2 호 6/6 / r6 = 3 호 7/7 / r7 = 4 호 7/7 보전 / r8 = 5 호 7/7 보전 / 본 r9 = 6 호 **8/8** — episode-08 신규 자리 1 호 흡수 = baseline 격상 5 호 *재재재재초과 강화 1 호*). episode-09+ 신규 자리 0 추가 = writer 측 영역 외 read-only audit 만.

### (c) episode 8/8 자리 hero/POV 자산 disk 재검수 자리

| 자산 자리 | disk 자리 | 비고 |
|-----------|-----------|------|
| `outputs/worldbuilding/.../stamp-17-1-haeon-palm-line-dawn-v1.png` | 존재 ✓ | episode-01 hero |
| `outputs/worldbuilding/.../stamp-17-7-yeongang-short-grain-v1.png` | 존재 ✓ | episode-02 hero |
| `outputs/worldbuilding/.../stamp-17-8-huijae-side-by-side-dawns-v1.png` | 존재 ✓ | episode-03 + episode-05 hero (공유) |
| `outputs/worldbuilding/.../stamp-17-2-jeonghae-toes-one-direction-v1.png` | 존재 ✓ | episode-04 hero |
| `outputs/worldbuilding/.../key-visual-blank-page-dawn.png` | 존재 ✓ | episode-06 + episode-07 hero (공유) |
| `outputs/worldbuilding/.../character-sheet-yugyeong-v2.png` | 존재 ✓ | episode-07 POV |
| `outputs/worldbuilding/.../character-sheet-narim-v2.png` | 존재 ✓ | episode-08 hero+POV (단일 자산 자리) |

8 자리 hero + 다중 POV 자산 모두 disk 존재 = view.html fetch 시 404 발화 자리 0 = publishing surface regression 0 박음 자가 보장 baseline 보전.

## §3 R0 feedback 4 자리 target_orgs routing 자가 검수

| feedback id | target_orgs / applies_to | implementer 측 진척 자리 | 본 tick 박음 |
|-------------|--------------------------|--------------------------|--------------|
| F-20260502-1216-general-writing-too-abstract | (없음, 본문 = writer + critic) | 0 | ack 0 |
| F-20260502-1251-character-visuals-too-similar | applies_to: art-director, writer, critic, voice-keeper | 0 | ack 0 |
| F-20260502-1252-content-illustrations-routing | target_orgs: writer, art-director, **implementer** | 2 = (i) view.html resolveRelativeRefs 무변동 재검수 8 호 (§1.a) + (ii) episode 8/8 자리 룰 2 자가 충족 disk-audit 6 호 (§2) + (iii) episode-08 룰 1 자리 ⚠ 자리 ack 1 호 (writer/critic 인계 자리) | **ack ✓ + regression 0 검수 박음 8 호 + writer-측 audit 6 호 (5/5 → 6/6 → 7/7 → 7/7 → 7/7 → 8/8 격상)** |
| F-20260502-1252-serial-stalled-at-3 | target_orgs: writer, orchestrator | 0 (must_fix 4/4 도달, episode-04..08 박음 baseline 격상 = writer-r8 episode-08 박음 = serial unstuck 자리 8 호 도달) | ack 0 |

1/4 자리 implementer target_orgs 정합 = F-20260502-1252-content-illustrations-routing 1 자리 직접 응답 8 호 + writer-측 disk audit 6 호 (8/8 baseline 격상 — episode-08 신규 자리 1 호 흡수). 다른 3/4 자리 = 영역 인접 침범 0.

## §4 본 r9 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface regression-watch checker mode 자가 적용 baseline 8 호 도달 = baseline 격상 7 호 *재재재재재재초과 강화 1 호*** (r2 1 호 → r3 2 호 → r4 3 호 → r5 4 호 → r6 5 호 → r7 6 호 → r8 7 호 → 본 r9 8 호 = ≥ 8 임계 도달, 직전 r8 = ≥ 7 도달). cy-003 진화 룰 정식 룰 임계 *재재재재재재초과 강화 1 호* 도달.
2. **regression 0 박음 8 호 사례** — view.html L128~L143 + L213/L214 6 자리 disk 재검증 통과 = F-1252 must_fix implementer 측 *유지* 의무 1:1 충족 8 호.
3. **manifest.json freshness 재검수 8 호 사례** — `tick.sh` hook 정상 발화 검수 baseline ≥ 8 호 도달 = baseline 격상 7 호. 본 r9 격차 +2m 25s 자리 = r5 baseline 23s 다음 가장 신선한 자리 = r6 27m / r7 42m / r8 21m 보다 짧은 자리 = baseline 회복 자리 (manifest hook 자리 정상 발화).
4. **F-1252 writer-측 박음 자리 8/8 disk audit 6 호 박음 (5/5 → 6/6 → 7/7 → 7/7 → 7/7 → 8/8 격상 — episode-08 신규 자리 1 호 흡수)** — 연재 8 자리 본문 + frontmatter 짝 룰 2 충족 disk-검수 = implementer 측 *추가 회복* 자리 6 호 응답. episode-08 룰 1 자리 ⚠ 자리 (hero==POV 단일 자산 1 자리 박음 = 합 ≥ 2 baseline 부족) = writer/critic 영역 인계 자리 1 호 추가 (본 §7).
5. **R0 feedback target_orgs routing 자가 검수 baseline 11 호 도달** (designer r-noop tick-021 + implementer r2..r9 8 호 + orchestrator checker tick-023/024/045-046-047/051 6 호 ≈ 15 호 누계 자리, 본 implementer 자리 = 8 호 = ≥ 8 임계 도달) = 정식 룰 임계 *재재재재재초과 강화 1 호* 도달.
6. **scope_reduced/frozen 조직 영역 안 표명만 박음 baseline ≥ 11 호 도달** = 정식 룰 임계 *재재재재재초과 강화 1 호* 도달.
7. **트립 발화 자리 회피 baseline** — charter §트립와이어 5 자리 (비용/가치 비대칭 / designer 추상 명령 / manual-run 우회 / publishing surface 형식 충돌 / publishing surface stale) 모두 미발화. 게임 영역 신규 작업 0 = scope_reduced 의무 1:1 충족 8 호.
8. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §5 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 형식 충돌 / publishing surface stale) | manifest.json +2m 25s fresh + view.html 무변동 + episode 8/8 자리 root-anchored 보전 ✓ | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = checker 메타 자리 + writer 산출물 read-only audit 만) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 0** + **scope_reduced 의무 1:1 충족 8 호** + **regression 0 검수 박음 8 호 = baseline 격상 7 호 재재재재재재초과 강화 1 호**.

## §6 영역 자기 검사

- implementer 영역 = publishing surface 책임만 (view.html + manifest.json 두 자리 health-check 8 호 + episode root-anchored disk audit 6 호 = 8/8 baseline 격상 — episode-08 신규 자리 1 호 흡수) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족 8 호
- writer / loremaster / art-director / critic / voice-keeper / orchestrator 영역 = read-only audit 자리 (disk 변동 0)
- current.md frontmatter = 본 r9 = *변동 0* 박음 자리 (외부 hook 자리 = orchestrator 측 sync 의존)

본 tick 침범 0.

## §7 trace gap 자리 (orchestrator 인계 큐 보전)

직전 r8 §7 trace gap 자리 + 본 r9 추가 검수 결과:
- **episode-08 룰 1 자리 ⚠ 자리 (신규 1 호)** — writer-r8 박음 자리 = hero (frontmatter `episode_thumb`) + POV ≥ 1 자리 의무 자리 산술 합 ≥ 2 baseline 보다 본문 자리 수 1 자리 부족. hero==POV 단일 자산 자리 (`character-sheet-narim-v2.png`) 박음 = 룰 1 *분기/POV 별 인물 이미지 ≥ 1* 측 단일 인물 회차 = 자리 분리 자리 0 = 룰 1 *글자 그대로* 의무 자리 1 자리 부족. critic R0 cold-read 자리 평결 의존 자리 (writer / critic 영역 인계 자리). publishing surface 측 regression 자리 0.
- writer-r8 (mtime 21:54) — episode-08 박음. tick-NN.md 자리 검수 = orchestrator 측 sync 인계 큐 자리.
- voice-keeper-r9 (mtime 21:41) / critic-r8 (mtime ?) / orchestrator-r9 (mtime tick-051 22:14) 자리 = §1 사용자 응답 통합 / R0 평결 도착 의존 자리 보전.
- 본 r9 = current.md last_updated frontmatter 갱신 자리도 미수정 = 본 implementer 영역 외 (orchestrator checker mode 인계 큐 보전 3 호).

manifest.json 은 22:14:44 기준 freshness ≥ current.md last_updated (22:12:19) 보전 = publishing surface 외부 노출 baseline 보전. 본 trip-wire `publishing surface stale` 발화 0.

## §8 인계 큐 (tick-052 → 다음 tick)

직전 r8 §8 큐 9 자리 갱신:

1. art-director r2 image v2 (해온 / 정해 / 희재 v2.png) — 종결 보전.
2. voice-keeper r5 cy-003 = post-regen 재측정 짝 — 종결 보전.
3. critic r3 cy-003 = F-1251 R0 재검수 — 종결 보전.
4. voice-keeper r6 cy-003 = episode-05/06 reader-first §6 4 질문 측정 짝 — 종결 보전.
5. critic r5 cy-003 = episode-07 cold-read R0/R1/R2 분리 측정 — 종결 보전 + critic-r6 후행 자리 박음.
6. **orchestrator checker = trace gap 회복 (r7 6 자리 + r8 추가 자리 + r9 episode-08 룰 1 자리 ⚠) + current.md last_updated 동기 박음** *(보전 큐 자리 + 7+ 자리 누적)*.
7. writer-r7-cy-003-character-md-frontmatter-illustrations-parity = 본 r9 disk 검수 baseline 보전 (8/8 인물 frontmatter parity 도달 = writer-r7 박음 ✓).
8. writer-r-N-cy-003-episode-09+ 신규 회차 (R0 episode-04..08 평결 통과 후 자리). **episode-08 룰 1 자리 ⚠ 처치 = writer 측 본문 안 hero img 자리 분리 박음 1 자리 추가 자리 (의무 0 / 권장).**
9. r0-user-verdict-on-episode-04..08 (R0 의존 자리 5 자리 보전 — episode-08 신규 자리 1 호 추가).

## §9 ack 인계

- **다음 cron role-rotate 자리** = 본 r9 = implementer 측 regression 0 검수 박음 8 호 + writer-측 disk audit 6 호 (8/8 baseline 격상 — episode-08 신규 자리 1 호 흡수) = F-1252-content-illustrations-routing must_fix implementer 측 *유지* 의무 publishing surface 측 보장 박음 8 호 자리 인계.
- **writer / art-director (F-20260502-1252-content-illustrations-routing 짝)** = implementer 측 episode 8/8 자리 룰 2 충족 disk audit 6 호 (5/5 → 6/6 → 7/7 → 7/7 → 7/7 → 8/8 격상) = 신규 회차 / image 박음 시 *상대경로 img / hero 박음 의무* 자리 publishing surface 측 보장 박음 8 호 (baseline 격상 *재재재재재재초과 강화 1 호*). episode-08 룰 1 자리 ⚠ (hero==POV 단일 자산 자리 = 합 ≥ 2 baseline 부족) 처치 자리 = writer 영역 인계 자리 (의무 0 / 권장). episode-09+ 박음 시 동일 룰 1·2 자가 흡수 의무 인계 보전.
- **critic (F-20260502-1252-content-illustrations-routing 짝)** = episode-08 cold-read R0 평결 자리 = hero/POV 단일 자산 자리 분리 자리 평결 의존 자리 인계.
- **orchestrator (다음 checker tick)** = 본 §7 trace gap 자리 (r7 6 자리 + r8 추가 자리 + r9 episode-08 룰 1 자리 ⚠ 자리 1 호 추가) + current.md last_updated 동기 박음 자리 회복 발의 자리 인계.
- **사용자 (D-20260502-004 closed = tick-028 finalize)** = scope_reduced 자리 자가 흡수 8 호 도달. 추적 종결 baseline 보전.

## §10 한 줄 마감

> implementer r9 cy-003 (tick-052) — publishing surface regression-watch checker 8 호 + F-1252-routing writer-측 8/8 자리 disk audit 6 호 (episode-08 신규 자리 1 호 흡수, baseline 격상) = view.html resolveRelativeRefs 6 자리 무변동 재검수 통과 + manifest.json freshness +2m 25s ahead (baseline 회복) + episode 8/8 자리 hero/POV 이미지 root-anchored 자가 충족 baseline 격상 ✓ + episode 8/8 hero + POV 자산 disk 존재 검수 ✓ + R0 feedback 4 자리 routing 자가 검수 1/4 정합. **regression 0 박음 8 호 = baseline 격상 7 호 재재재재재재초과 강화 1 호** + scope_reduced 의무 1:1 충족 8 호. 신규 산출물 0 (코드 0 + 빌드 0 + 자동 배포 0) = constitution invariant #7 자가 의무 보전. episode-08 룰 1 자리 ⚠ (hero==POV 단일 자산 1 자리 박음) writer/critic 영역 인계 자리 1 호 추가.

TICK_SUMMARY: implementer r9 cy-003 (tick-052) — publishing surface regression-watch 8 호 (view.html L128~L143 + L213/L214 무변동) + manifest.json freshness +2m 25s ahead (baseline 회복) + episode 8/8 root-anchored audit 6 호 (episode-08 신규 자리 1 호 흡수, baseline 격상) + episode 8/8 자리 hero/POV 자산 disk ✓. acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer. baseline 격상 7 호 재재재재재재초과 강화 1 호 (≥ 8 임계 도달). 신규 산출물 0, 게임 영역 신규 0. trace gap r7 6 자리 + r8 추가 자리 + r9 episode-08 룰 1 자리 ⚠ 1 호 추가 + current.md last_updated 동기 자리 orchestrator 인계 큐 보전.
