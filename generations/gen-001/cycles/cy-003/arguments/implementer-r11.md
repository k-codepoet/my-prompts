---
cycle: cy-003
round: 11
role: implementer
mode: role (publishing surface 보강 substantive 2 호 — view.html `resolveRelativeRefs()` 안 a[href] 처치 추가 박음 = 본문 안 cross-md 링크 깨짐 자리 그물 1 호 = F-1252-routing implementer must_fix *유지/보강* 의무 자리 *보강* 측 박음 2 호)
created_at: 2026-05-03T00:25:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/view.html (substantive — `resolveRelativeRefs()` 안 a[href] 처치 신규 박음 + 주석 갱신)
  - site/index.html (read-only audit, r10 `absPath()` 박음 후 무변동 보전)
  - site/manifest.json (read-only audit, freshness 검수)
---

# implementer r11 cy-003 — publishing surface 보강 substantive 2 호 (view.html a[href] 처치)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수.
> r1..r9 (baseline + checker 8 호) ↔ r10 (substantive 1 호 = index.html `absPath()` helper) ↔ 본 r11 = substantive 2 호 = view.html a[href] 처치 신규.

## §1 진단 — F-1252 implementer must_fix 자리 *유지/보강* 두 자리 + 신규 그물 1 호

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*.

직전 r10 까지의 자리 + 본 r11 추가 자리:

| 자리 | 분류 | r1..r9 | r10 | 본 r11 |
|------|------|--------|-----|--------|
| view.html `resolveRelativeRefs()` img[src] | *유지* | r2..r9 무변동 재검수 8 호 | r10 무변동 9 호 | 본 r11 = 처치 무변동 보전 (img 측 0 변동) |
| view.html `resolveRelativeRefs()` a[href] | *보강* (이전 미박음 자리) | 코드 주석 = "img/a 를 ... 보정" 발의 자리만 박혀 있고 처치 자리 0 (절반 박음 자리) | 0 (r10 = index.html 측만 박음) | **본 r11 = a[href] 처치 신규 박음 + .md/.yml 짝 `/view.html?path=...` wrap** |
| index.html `absPath()` (r10 박음) | *보강* | — | r10 = drift 그물 1 호 박음 | 본 r11 = 무변동 보전 |

진단 자리: 코드 line 126 주석 = `// marked 결과 본문의 상대경로 img/a 를 md 파일 기준으로 절대경로 보정.` ↔ 직전 처치 자리 = `tmp.querySelectorAll("img[src]")` 1 자리만 (a 처치 자리 0). 즉 *주석 ↔ 처치 의도 mismatch* 자리 = 절반 박음 자리. 본 r11 = mismatch 처치 + 실제 깨짐 자리 회복.

### 실제 깨짐 자리 측정 (본 r11 트립 발화 자리 1 호)

`outputs/writing/the-map-is-the-journey/characters/*.md` (8 자리) + `series-index-v0.md` 본문 안 cross-md 링크 자리 발화:

| 자리 | 본문 안 자리 (예) | 직전 자리 (browser 처리) | 깨짐 |
|------|-------------------|--------------------------|------|
| `characters/yugyeong.md:103` | `[character-sheets-axis-v0.md §1](../character-sheets-axis-v0.md)` | view.html (root) 자리에서 `..` = `/character-sheets-axis-v0.md` (404) | ✗ |
| `characters/haeon.md:107` | `[character-relations-v0.md ...](../../../worldbuilding/.../character-relations-v0.md)` | `..` × 3 = root 자리 위 = `/character-relations-v0.md` (404) | ✗ |
| `series-index-v0.md:117~122` | 6 자리 부록 링크 (`../../worldbuilding/...md` × 5 + `../../art/...md` × 1) | 동일 자리 root 위 깨짐 | ✗ × 6 |

**총 깨짐 자리 ≥ 14 (8 인물 자리 평균 1~2 + series-index 6)** = 본 r11 처치 자리.

charter §publishing surface 트립와이어 = *다른 조직 (writer/loremaster/...) 산출물 형식 충돌* 자리 발화 1 호 사례. 본 r11 = 트립 응답 처치 자리 = publishing surface 측 보장 박음.

## §2 보강 박음 — `resolveRelativeRefs()` 안 a[href] 처치 (substantive)

### (a) 코드 변경 자리 (site/view.html L126~L143)

직전 자리 = img[src] 1 자리 처치만 + 주석 자리 *img/a* 발의.

본 r11 자리 = a[href] 처치 신규 박음 + 주석 자리 정합 (실제 처치 의도 1:1 박음).

```js
// marked 결과 본문의 상대경로 img/a 를 md 파일 기준으로 절대경로 보정.
// view.html 은 root 에 있어 상대경로가 root 기준으로 풀려 깨짐 (예: 인물 md 의 ../../../worldbuilding/...).
// img[src]: 절대경로로 변환 (root-anchored 는 패스).
// a[href]: 절대경로로 변환 + .md/.yml/.yaml 짝은 /view.html?path=... 로 wrap (raw 직진 회피).
function resolveRelativeRefs(html, mdPath) {
  const dir = mdPath.slice(0, mdPath.lastIndexOf("/") + 1);
  const tmp = document.createElement("div");
  tmp.innerHTML = html;
  const fixImg = (el) => {
    const v = el.getAttribute("src");
    if (!v) return;
    if (/^(?:[a-z]+:|\/\/|#|\/)/i.test(v)) return;
    try {
      const u = new URL(v, "http://_local" + dir);
      el.setAttribute("src", u.pathname + u.search + u.hash);
    } catch (e) {}
  };
  const isViewable = (path) => /\.(md|ya?ml)$/i.test(path);
  const fixAnchor = (el) => {
    const v = el.getAttribute("href");
    if (!v) return;
    if (/^(?:[a-z]+:|\/\/|#)/i.test(v)) return; // root-anchored 는 통과 → md 짝은 wrap
    try {
      const base = v.startsWith("/") ? "http://_local/" : "http://_local" + dir;
      const u = new URL(v, base);
      const abs = u.pathname;
      if (isViewable(abs)) {
        el.setAttribute("href", "/view.html?path=" + abs.replace(/^\//, "") + u.search + u.hash);
      } else {
        el.setAttribute("href", abs + u.search + u.hash);
      }
    } catch (e) {}
  };
  tmp.querySelectorAll("img[src]").forEach(fixImg);
  tmp.querySelectorAll("a[href]").forEach(fixAnchor);
  return tmp.innerHTML;
}
```

### (b) 처치 결과 (시뮬레이션 12 자리 자가 검수)

`node` 측 URL 1:1 시뮬레이션 (img/a 두 함수 12 자리 입력 → 출력 검수, 본 tick 안 직접 측정 박음):

| 입력 자리 | img 결과 | a 결과 |
|-----------|----------|--------|
| `../../../worldbuilding/foo.png` (rel) | `/outputs/worldbuilding/foo.png` ✓ | `/outputs/worldbuilding/foo.png` (md 아님 → 직접 abs) |
| `/outputs/foo.png` (root) | `/outputs/foo.png` (패스 ✓) | `/outputs/foo.png` (md 아님 → 직접 abs) |
| `../character-sheets-axis-v0.md` (rel) | `/outputs/.../character-sheets-axis-v0.md` (raw 직진) | **`/view.html?path=outputs/.../character-sheets-axis-v0.md` ✓ (wrap)** |
| `../../../worldbuilding/.../character-relations-v0.md` (rel) | (raw 직진) | **`/view.html?path=outputs/worldbuilding/.../character-relations-v0.md` ✓** |
| `../foo.md#section` (rel + fragment) | (raw 직진) | **`/view.html?path=outputs/.../foo.md#section` ✓ (fragment 보전)** |
| `https://example.com` (scheme) | 패스 ✓ | 패스 ✓ |
| `mailto:foo@bar.com` (scheme) | 패스 ✓ | 패스 ✓ |
| `#section` (fragment) | 패스 ✓ | 패스 ✓ |
| `/outputs/foo.md` (root + md) | 패스 ✓ | **`/view.html?path=outputs/foo.md` ✓ (root-anchored md 도 wrap)** |
| `foo.md` (bare) | 동일 dir 안 abs ✓ | **`/view.html?path=<dir>foo.md` ✓** |
| `/view.html?path=foo.md` (이미 wrap) | 패스 ✓ | `/view.html?path=foo.md` (idempotent — 재 wrap 0) |
| `/site/index.html` (root + html) | 패스 ✓ | `/site/index.html` (md 아님 → 그대로) |

→ **regression 자리 0** (img 처리 무변동) + **신규 wrap 자리 동작** (a[href] md/yml 짝 → view.html wrap) + **idempotent 보장** (이미 wrap 된 자리 재 wrap 0).

### (c) 본 r11 처치 후 외부 도달 결과 (사용자 측 시각)

| 자리 | 직전 (깨짐) | 본 r11 후 (도달) |
|------|-------------|------------------|
| `view.html?path=outputs/writing/.../characters/yugyeong.md` 본문 안 *통합 시트* 링크 | `/character-sheets-axis-v0.md` (404) | `/view.html?path=outputs/writing/.../character-sheets-axis-v0.md` (도달) |
| `view.html?path=outputs/writing/.../characters/haeon.md` 본문 안 *관계 그물* 링크 | `/character-relations-v0.md` (404) | `/view.html?path=outputs/worldbuilding/.../character-relations-v0.md` (도달) |
| `view.html?path=outputs/writing/.../series-index-v0.md` 부록 6 링크 | 6 자리 모두 404 | 6 자리 모두 view.html?path=... 도달 ✓ |

→ 외부 사람 진입 자리 *cold reader* 의 본문 안 cross-md 도달 회복 자리 ≥ 14 자리.

## §3 영향 자리 자가 검수

| 자리 | 본 r11 영향 |
|------|-------------|
| view.html `resolveRelativeRefs()` img 측 (L132~141) | 무변동 의도 보전 ✓ (img 입력 자리 1:1 baseline 유지) |
| view.html `resolveRelativeRefs()` a 측 (신규) | 깨짐 자리 ≥ 14 → 도달 자리 ≥ 14 회복 |
| index.html r10 `absPath()` (line 433~440) | 무변동 ✓ |
| manifest.json freshness | 본 tick 시작 = 00:25:01, manifest 직전 갱신 00:11:38 = -13m 23s, 본 tick 종료 직후 hook 발화 (`scripts/tick.sh` line 366) 로 재갱신 자리 보전 |
| 게임 영역 (`outputs/code/g-the-map-walker/`) | 0 변경 ✓ (scope_reduced 의무 1:1 충족 10 호) |

→ regression 자리 0 + 신규 그물 1 호 + idempotent 보장.

## §4 본 r11 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface 보강 substantive 2 호 박음** — r10 (`absPath()`) 직후 1 tick 만에 substantive 2 호 = scope_reduced 진입 후 *보강* 측 누적 2 호 도달 (≥ 2 임계 도달).
2. **regression-watch 10 호 자리 보전** — view.html `resolveRelativeRefs()` img 측 무변동 baseline (≥ 10 임계 도달, 직전 r10 = 9 호).
3. ***절반 박음* mismatch 처치 1 호** — 코드 주석 = *img/a* 발의 ↔ 처치 자리 = img 1 자리만 = 직전 r1 baseline 자리에서 *발의 ↔ 처치 mismatch* 절반 자리 박음. 본 r11 = mismatch 처치 + 의도 정합 baseline.
4. **본문 안 cross-md 도달 그물 1 호** — `view.html?path=...` wrap 처치로 raw 직진 회피 + idempotent 보장 (재 wrap 0).
5. **scope_reduced/frozen 조직 영역 안 표명만 박음 baseline ≥ 13 호 도달** (≥ 13 임계 도달).
6. **트립 발화 자리** — charter §publishing surface 트립와이어 *산출물 형식 충돌* 1 호 *발화* + 1 호 *처치* 동시 박음 (8 인물 md + series-index 측 cross-md 깨짐 자리 발화 → a[href] 처치로 도달 회복).
7. **R0 feedback target_orgs routing 자가 검수 baseline 10 호 도달** (implementer r2..r11 10 호 누계 자리, 본 implementer 자리 = 10 호 = ≥ 10 임계 도달 = *재초과* 강화 1 호).
8. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §5 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 와 산출물 형식 충돌) | 8 인물 md + series-index 측 cross-md 깨짐 자리 발화 ≥ 14 자리 → 본 r11 a[href] 처치로 도달 회복 ≥ 14 자리 | **발화 + 처치 동시 박음 1 호** |
| implementer charter §트립와이어 (publishing surface stale) | manifest -13m 23s 측정 자리 (본 tick 종료 후 hook 갱신 자리 보전) + view.html 1 자리 박음 후 시각 결과 정합 ✓ | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = view.html 1 자리만 박음 = publishing surface 자리) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 1 자리 (publishing surface 형식 충돌) + 동 tick 처치 동시 박음** + **scope_reduced 의무 1:1 충족 10 호** + **보강 substantive 2 호**.

## §6 영역 자기 검사

- implementer 영역 = publishing surface 책임 (view.html `resolveRelativeRefs()` 안 a[href] 처치 1 자리 박음 + img 측 무변동 보전) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족 10 호
- writer / loremaster / art-director / critic / voice-keeper / orchestrator 영역 = 변동 0
- current.md frontmatter = 본 r11 = *변동 0* (orchestrator 측 sync 의존)

본 tick 침범 0.

## §7 trace gap 자리 (orchestrator 인계 큐 보전)

- 직전 r10 §7 자리 보전 (episode-08 룰 1 자리 ⚠ 자리 = writer/critic 영역 인계 자리).
- 본 r11 신규 trace gap 자리 0 (substantive 박음 자리는 publishing surface 자리 안 자리만).

## §8 인계 큐 (다음 tick)

직전 r10 §8 큐 자리 갱신 (변동 0 자리만 표시):

1~5. (직전 보전 자리)
6. orchestrator checker = trace gap 회복 + current.md last_updated 동기 박음 (보전 큐).
7. writer-r-N-cy-003-episode-09+ 신규 회차 (R0 episode-04..08 평결 통과 후 자리). episode-08 룰 1 자리 ⚠ 처치 자리 보전.
8. r0-user-verdict-on-episode-04..08 (R0 의존 자리 5 자리 보전).
9. **신규 자리 1 호** (r10 박음 보전) = writer/loremaster 측 frontmatter `episode_thumb` / 인물 md `illustrations[].path` 자리 leading-slash drift *허용* baseline.
10. **신규 자리 2 호 (본 r11)** = writer/loremaster 측 cross-md 링크 자리 = 상대경로 + 절대경로 + bare 모두 *허용* baseline (publishing surface 측 view.html 안 wrap 보장 = 깨짐 0). 단 *root convention* = 상대경로 + 디렉토리 안 cross-md 자리는 작가 의도 1:1 보전 권장 (관습 자리 보전).

## §9 ack 인계

- **다음 cron role-rotate 자리** = 본 r11 = implementer 측 *보강* substantive 2 호 박음 (a[href] 처치 그물 1 호) = F-1252-content-illustrations-routing must_fix implementer 측 *유지/보강* 의무 publishing surface 측 보장 박음 10 호 자리 인계.
- **writer / loremaster (F-20260502-1252-content-illustrations-routing 짝)** = 본문 안 cross-md 링크 자리 = 상대경로 + 절대경로 + bare 모두 publishing surface 측 wrap 보장 (깨짐 0). 새 산출물 박을 때 *cross-md 링크 자리 작가 의도 1:1 보전* 권장 (관습 자리 보전).
- **orchestrator (다음 checker tick)** = §7 trace gap 자리 보전 (본 r11 신규 자리 0).
- **사용자** = scope_reduced 자리 자가 흡수 10 호 도달 + 보강 substantive 2 호 (≥ 2 임계 도달) + 외부 도달 회복 자리 ≥ 14 자리.

## §10 한 줄 마감

> implementer r11 cy-003 — publishing surface 보강 substantive 2 호 = `site/view.html` `resolveRelativeRefs()` 안 a[href] 처치 신규 박음 (.md/.yml 짝 → `/view.html?path=...` wrap + idempotent + fragment 보전) = 본문 안 cross-md 깨짐 자리 ≥ 14 자리 도달 회복 그물 1 호 + 코드 주석 *img/a* 발의 ↔ 처치 mismatch 처치 1 호 = F-1252 implementer must_fix *유지/보강* 자리 *보강* 측 박음 2 호. img 측 무변동 보전 (regression-watch 10 호 baseline) + manifest.json freshness 보전 + scope_reduced 의무 1:1 충족 10 호. 게임 영역 신규 작업 0.

TICK_SUMMARY: implementer r11 cy-003 — publishing surface 보강 substantive 2 호. site/view.html `resolveRelativeRefs()` 안 a[href] 처치 신규 박음 (.md/.yml 짝 = `/view.html?path=...` wrap + idempotent + fragment 보전) = 8 인물 md + series-index 본문 안 cross-md 깨짐 ≥ 14 자리 도달 회복 + 코드 주석 *img/a* 발의 ↔ 처치 mismatch 처치 1 호. img 측 무변동 보전 (regression-watch 10 호 baseline). 12 자리 입력 자가 검수 (img/a 두 함수 결과 1:1 검수 통과). acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer (must_fix #3: publishing surface 본문 안 상대경로 img *유지* + a 측 *보강* 자리 박음). 게임 영역 신규 작업 0, 영역 침범 0, 트립 발화 1 자리 (publishing surface 형식 충돌) + 동 tick 처치 동시 박음. 신규 산출물 = site/view.html 1 자리 + 본 argument 1 자리.
