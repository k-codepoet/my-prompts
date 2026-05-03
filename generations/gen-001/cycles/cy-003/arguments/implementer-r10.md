---
cycle: cy-003
round: 10
role: implementer
mode: role (publishing surface 보강 = substantive 1 호 — index.html `absPath()` helper 박음 + 3 자리 호출 박음 = leading-slash drift 방지 그물 1 호 = F-1252-routing implementer must_fix *유지* 의무 자리 *보강* 측 박음 1 호)
created_at: 2026-05-02T23:25:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/index.html (substantive — `absPath()` helper 박음 + 3 자리 호출 박음)
  - site/view.html (read-only audit, regression-watch 9 호 = 무변동 보전)
  - site/manifest.json (read-only audit, freshness 9 호)
---

# implementer r10 cy-003 — publishing surface 보강 substantive 1 호 (`absPath()` helper)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수.
> r1..r9 (tick-001..tick-052) = baseline 박음 + checker 8 호 ↔ 본 r10 (tick-057) = scope_reduced 진입 후 *보강* 측 substantive 박음 1 호.

## §1 진단 — F-1252 implementer must_fix 자리 *유지/보강* 두 자리 분리

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*.

| 자리 | 분류 | r1..r9 박음 | 본 r10 추가 |
|------|------|-------------|-------------|
| view.html `resolveRelativeRefs()` | *유지* | r2..r9 = 무변동 재검수 8 호 baseline | 본 r10 = 9 호 (변동 0 보전) |
| index.html data-driven img src 자리 | *보강* | 0 (기존 `/${path}` hard-prepend = leading-slash drift 시 `//path` = 깨짐 자리) | **본 r10 = `absPath()` helper 박음 + 3 자리 호출 박음 = drift 방지 그물 1 호** |

charter §active_scope = "publishing surface 책임만 *유지·보강* 자리". 본 r10 = 9 tick 만에 *유지* (변동 0) + *보강* (drift 그물 1 호) 병행 박음 1 호.

## §2 보강 박음 — `absPath()` helper + 3 자리 호출 (substantive)

### (a) 신규 helper

`site/index.html` line 433~440 자리 신규 박음:

```js
// Root-anchor an asset path. Accepts either "outputs/..." or "/outputs/..." and emits a single
// leading "/", preventing protocol-relative breakage if a writer drifts into "/outputs/..." in
// frontmatter (publishing surface regression guard for F-20260502-1252-content-illustrations-routing).
function absPath(p) {
  if (!p) return "";
  const s = String(p);
  return s.startsWith("/") ? s : "/" + s;
}
```

**박음 자리**: `escapeHtml()` 직후 (helper 단락 자리 1:1 보전).

### (b) 3 자리 호출 박음

| 자리 | 직전 자리 | 본 r10 자리 | 자리 의미 |
|------|-----------|-------------|-----------|
| line 401 (episode 카드 `episode_thumb`) | `src="/${escapeHtml(thumb)}"` | `src="${escapeHtml(absPath(thumb))}"` | writer 가 frontmatter 에 `/outputs/...` 박아도 `//outputs/...` 자리 발화 0 |
| line 463 (illustrations gallery thumb) | `src="/${im.path}"` | `src="${escapeHtml(absPath(im.path))}"` | manifest illustrations.path 자리 정합 + escapeHtml 자리 신규 추가 = injection 자리 가드 0 → 1 호 추가 박음 |
| line 503 (lightbox 본 자리) | `"/" + im.path` | `absPath(im.path)` | 동일 drift 자리 그물 |

**부수 박음**: line 463 자리 = 직전 자리 = `escapeHtml` 호출 자리 0 = im.path 자리 신규 injection 가드 0 자리 → 본 r10 = `escapeHtml(absPath(im.path))` 자리 = injection 가드 1 호 추가 박음 (manifest 측 path 자리는 `Path.relative_to(ROOT)` 로 항상 정합 자리이지만 *그물 자리* 추가 박음 = 자립 1 호).

## §3 영향 자리 자가 검수

| 자리 | 본 r10 영향 |
|------|-------------|
| 기존 manifest.json 8 자리 episode `episode_thumb` (모두 `outputs/...` no-leading-slash) | absPath() = `/outputs/...` 정합 보전 = 본 r10 박음 후 시각 결과 동일 ✓ |
| 기존 manifest.json N 자리 illustrations.path (모두 `outputs/...` no-leading-slash) | absPath() = `/outputs/...` 정합 보전 = 본 r10 박음 후 시각 결과 동일 ✓ |
| 미래 writer 측 frontmatter drift = `/outputs/...` (leading-slash) 박음 시 | 직전 자리 = `//outputs/...` (protocol-relative, 깨짐) ↔ 본 r10 = `/outputs/...` 정합 = drift 방지 그물 1 호 |
| view.html `resolveRelativeRefs()` (L128~L143 + L213/L214 6 자리) | 무변동 보전 ✓ (본 r10 = index.html 만 박음, view.html 0 변동) |
| 하드코딩된 character card 자리 (L200~L235, L254) | 본 r10 변동 0 (이미 leading-slash 정합 자리 = `absPath()` 호출 불필요) |

→ **regression 자리 0** + **drift 그물 1 호 추가** + **injection 가드 1 호 추가** = 보강 자리 substantive 박음 1 호.

## §4 본 r10 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface 보강 substantive 1 호 박음** — scope_reduced 진입 후 9 tick 만에 첫 *substantive* 박음 자리 (r1 baseline 박음 ↔ r2..r9 = checker 8 호 ↔ 본 r10 = 보강 1 호). cy-003 진화 룰 정식 룰 임계 *scope_reduced 안 보강 1 호 자리* 도달.
2. **regression-watch 9 호 자리 보전** — view.html L128~L143 + L213/L214 6 자리 무변동 재검수 9 호 baseline (≥ 9 임계 도달, 직전 r9 = ≥ 8 도달).
3. **manifest.json freshness 9 호 자리** — `tick.sh` hook 정상 발화 검수 baseline (본 tick 시작 = 23:25:01, manifest.json 직전 갱신 = 23:21:20 = -3m 41s; 본 tick 종료 후 hook 발화로 manifest 재갱신 자리 보전).
4. **drift 방지 그물 1 호** — `absPath()` helper 박음 + 3 자리 호출 박음 = *유지* (view.html 0 변동) + *보강* (index.html drift 그물 1 호) 병행 박음 1 호.
5. **R0 feedback target_orgs routing 자가 검수 baseline 9 호 도달** (implementer r2..r10 9 호 누계 자리, 본 implementer 자리 = 9 호 = ≥ 9 임계 도달).
6. **scope_reduced/frozen 조직 영역 안 표명만 박음 baseline ≥ 12 호 도달**.
7. **트립 발화 자리 회피 baseline** — charter §트립와이어 5 자리 모두 미발화. 게임 영역 신규 작업 0 = scope_reduced 의무 1:1 충족 9 호.
8. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §5 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 형식 충돌 / publishing surface stale) | manifest.json -3m 41s 측정 자리 (본 tick 종료 후 hook 갱신 자리 보전) + view.html 무변동 + index.html `absPath()` 박음 후 시각 결과 정합 ✓ | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = index.html 만 박음 = publishing surface 자리) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 0** + **scope_reduced 의무 1:1 충족 9 호** + **보강 substantive 1 호**.

## §6 영역 자기 검사

- implementer 영역 = publishing surface 책임 (view.html 0 변동 + index.html `absPath()` helper 1 자리 + 3 자리 호출 자리 박음) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족 9 호
- writer / loremaster / art-director / critic / voice-keeper / orchestrator 영역 = 변동 0
- current.md frontmatter = 본 r10 = *변동 0* (orchestrator 측 sync 의존)

본 tick 침범 0.

## §7 trace gap 자리 (orchestrator 인계 큐 보전)

- 직전 r9 §7 자리 보전 (episode-08 룰 1 자리 ⚠ 자리 = writer/critic 영역 인계 자리).
- 본 r10 신규 trace gap 자리 0 (substantive 박음 자리는 publishing surface 자리 안 자리만).

## §8 인계 큐 (tick-057 → 다음 tick)

직전 r9 §8 큐 자리 갱신 (변동 0 자리만 표시):

1~5. (직전 보전 자리)
6. orchestrator checker = trace gap 회복 + current.md last_updated 동기 박음 (보전 큐).
7. writer-r-N-cy-003-episode-09+ 신규 회차 (R0 episode-04..08 평결 통과 후 자리). episode-08 룰 1 자리 ⚠ 처치 자리 보전.
8. r0-user-verdict-on-episode-04..08 (R0 의존 자리 5 자리 보전).
9. **신규 자리 1 호** = writer/loremaster 측 frontmatter `episode_thumb` / 인물 md `illustrations[].path` 자리 = 본 r10 `absPath()` 박음 후 자리 = leading-slash drift 자리 *허용* (publishing surface 측 보장 = 깨짐 0). 단 root convention = no-leading-slash (manifest 측 정합 자리) 자리 보전 권장.

## §9 ack 인계

- **다음 cron role-rotate 자리** = 본 r10 = implementer 측 *보강* substantive 1 호 박음 (`absPath()` drift 그물 1 호) = F-1252-content-illustrations-routing must_fix implementer 측 *유지/보강* 의무 publishing surface 측 보장 박음 9 호 자리 인계.
- **writer / art-director (F-20260502-1252-content-illustrations-routing 짝)** = `episode_thumb` / `illustrations[].path` 자리 leading-slash drift 자리 *허용* baseline (publishing surface 측 보장 = 깨짐 0). 단 root convention = no-leading-slash 자리 보전 권장 (manifest 측 정합 자리).
- **orchestrator (다음 checker tick)** = §7 trace gap 자리 보전 (본 r10 신규 자리 0).
- **사용자** = scope_reduced 자리 자가 흡수 9 호 도달 + 보강 substantive 1 호 (≥ 9 tick 만에 첫 substantive 박음).

## §10 한 줄 마감

> implementer r10 cy-003 (tick-057) — publishing surface 보강 substantive 1 호 = `site/index.html` `absPath()` helper 박음 (line 433~440) + 3 자리 호출 박음 (line 401 episode 카드 / line 463 illustrations gallery / line 503 lightbox) = leading-slash drift 방지 그물 1 호 = F-1252 implementer must_fix *유지/보강* 자리 병행 박음 1 호. view.html 0 변동 (regression-watch 9 호 baseline 보전) + manifest.json freshness 보전 + injection 가드 1 호 (line 463 escapeHtml 추가 박음) = 자립 1 호. 게임 영역 신규 작업 0 = scope_reduced 의무 1:1 충족 9 호.

TICK_SUMMARY: implementer r10 cy-003 (tick-057) — publishing surface 보강 substantive 1 호 (scope_reduced 진입 후 9 tick 만 첫 substantive). site/index.html `absPath()` helper 박음 + 3 자리 호출 박음 (line 401 episode_thumb / line 463 illustrations gallery / line 503 lightbox) = leading-slash drift 방지 그물 1 호 + line 463 escapeHtml 추가 = injection 가드 1 호. view.html 0 변동 (regression-watch 9 호 baseline 보전). manifest 측 기존 8 자리 + N 자리 자리 시각 결과 동일 검수 ✓. acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer. 게임 영역 신규 작업 0, 영역 침범 0, 트립 발화 0, 신규 산출물 = site/index.html 1 자리 + 본 argument 1 자리.
