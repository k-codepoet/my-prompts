---
cycle: cy-003
round: 12
role: implementer
mode: role (publishing surface 보강 substantive 3 호 — site/index.html `viewerUrl()` 안 leading-slash drift 그물 박음 + lightbox source_artifact 측 helper 일원화 = F-1252-routing implementer must_fix *유지/보강* 의무 *보강* 측 박음 3 호)
created_at: 2026-05-03T01:25:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/index.html (substantive — `viewerUrl()` leading-slash 정규화 박음 + lightbox source_artifact 측 helper 일원화)
  - site/view.html (read-only audit, r11 박음 후 무변동 보전)
  - site/manifest.json (read-only audit, freshness 검수)
---

# implementer r12 cy-003 — publishing surface 보강 substantive 3 호 (index.html `viewerUrl()` 정규화)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 11 호.
> r1..r9 (baseline + checker 8 호) ↔ r10 (substantive 1 호 = index.html `absPath()` helper) ↔ r11 (substantive 2 호 = view.html a[href] wrap) ↔ 본 r12 = substantive 3 호 = index.html `viewerUrl()` 안 leading-slash drift 그물 + lightbox 측 helper 일원화.

## §1 진단 — F-1252 implementer must_fix 자리 *드리프트 그물* 1 호 신규

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface 본문 안 상대경로 img/a 가 깨지지 않게 유지/보강*. r10/r11 박음 후 직전까지 view.html 측 (img+a) + index.html 측 (img absPath) 박음 도달. 본 r12 = 직전까지 *미박음* 자리 1 호 = index.html 안 `viewerUrl()` 측 leading-slash drift 자리.

### 진단 자리 발화

view.html 안 보안 가드 (line 187):

```js
if (path.startsWith("/") || path.includes("..")) {
  document.getElementById("content").textContent = "잘못된 경로.";
  return;
}
```

→ `path` 가 `/` 로 시작하면 *잘못된 경로* 차단.

index.html 안 직전 자리 (r12 박기 전):

| 자리 | 코드 직전 | drift 위험 |
|------|----------|-------------|
| `viewerUrl(path)` (L367) | `\`/view.html?path=${encodeURIComponent(path)}\`` | manifest path 가 `/outputs/...` (leading `/`) 면 → `encodeURIComponent` = `%2Foutputs/...` → view.html `path=` 디코드 시 `/outputs/...` → 보안 가드 발화 = *잘못된 경로* (404 처리) |
| lightbox source_artifact 링크 (L504) | `\`/view.html?path=${encodeURIComponent(im.source_artifact)}\`...` | 동일 drift 자리 (helper 사용 0, 인라인 `encodeURIComponent` 직접 1 호) |

직전 manifest 측정:

```
"source_artifact": "outputs/art/...md"            ← leading 0 ✓ (현재 적합)
"source_artifact": "outputs/writing/.../yuri.md"  ← leading 0 ✓
... (전부 leading 0)
```

→ *현재 데이터 측 발화 자리 0* (manifest 발행자 측 관습 유지 중). 그러나 **drift 발생 가능 자리** 1 호:
- art-director / writer / loremaster 측 신규 산출에서 `path` / `source_artifact` 측 관습 위반 시 (e.g., leading `/` 박음) view.html 보안 가드 발화 = 클릭 시 *잘못된 경로* = R0 cold reader 진입 자리 깨짐.
- r10 baseline §8 신규 자리 1 호 = "writer/loremaster frontmatter 측 leading-slash drift *허용* baseline" 박음 후 자가 흡수 의무. r11 도 동일 baseline 보전.
- 본 r12 = baseline ↔ 처치 mismatch 측 *처치* 측 박음 = 작가 측 관습 위반 *허용* 보장 = publishing surface 자가 흡수 측 처치.

### charter §publishing surface 트립 발화 자리 1 호 + 동 tick 처치 1 호

charter §트립와이어 = *publishing surface 와 산출물 형식 충돌* 자리 = 본 자리 = 작가 측 leading-slash 관습 위반 가능 자리 측 *발화* 1 호 + 본 r12 처치 1 호 = 발화 + 처치 동시 박음 자리.

## §2 보강 박음 — `viewerUrl()` 정규화 박음 + lightbox 측 helper 일원화

### (a) 코드 변경 자리 (site/index.html L367~L374)

직전:

```js
function viewerUrl(path) {
  return `/view.html?path=${encodeURIComponent(path)}`;
}
```

본 r12 박음:

```js
// F-20260502-1252 guard: tolerate leading-slash drift in manifest paths.
// view.html refuses path params starting with "/" (security guard) — strip
// any leading slash before encoding so encodeURIComponent does not bake "%2F"
// into the URL.
function viewerUrl(path) {
  const p = String(path || "").replace(/^\/+/, "");
  return `/view.html?path=${encodeURIComponent(p)}`;
}
```

### (b) lightbox 측 helper 일원화 (site/index.html L504)

직전:

```js
? `↗ <a href="/view.html?path=${encodeURIComponent(im.source_artifact)}">${escapeHtml(im.source_artifact)}</a>${im.source_section ? " " + escapeHtml(im.source_section) : ""} · ${escapeHtml(im.creator)}`
```

본 r12 박음:

```js
? `↗ <a href="${viewerUrl(im.source_artifact)}">${escapeHtml(im.source_artifact)}</a>${im.source_section ? " " + escapeHtml(im.source_section) : ""} · ${escapeHtml(im.creator)}`
```

→ helper 일원화 = drift 그물 1 호 박음 자리 = *모든* `view.html?path=` 빌드 자리 1 함수 통과 보장.

### (c) 처치 결과 (시뮬레이션 8 자리 자가 검수)

| 입력 자리 | 직전 (drift 시 깨짐) | 본 r12 후 (정규화) |
|-----------|---------------------|-------------------|
| `outputs/foo.md` | `/view.html?path=outputs%2Ffoo.md` ✓ | `/view.html?path=outputs%2Ffoo.md` ✓ (무변동) |
| `/outputs/foo.md` | `/view.html?path=%2Foutputs%2Ffoo.md` → view.html 디코드 = `/outputs/foo.md` → 보안 가드 = *잘못된 경로* ✗ | `/view.html?path=outputs%2Ffoo.md` ✓ (정규화) |
| `///outputs/foo.md` (다중 슬래시) | `/view.html?path=%2F%2F%2Foutputs%2Ffoo.md` ✗ | `/view.html?path=outputs%2Ffoo.md` ✓ (`/+` 다중 슬래시도 정규화) |
| `""` (빈 문자열) | `/view.html?path=` ✗ (path 없음 자리) | `/view.html?path=` (무변동, ternary 가드 line 503 우선 처치 = 진입 0) |
| `null` / `undefined` | runtime 발화 자리 | `/view.html?path=` (`String(p \|\| "")` 안전망) |
| `outputs/foo.yml` (yaml) | `/view.html?path=outputs%2Ffoo.yml` ✓ | 무변동 ✓ |
| `decisions/closed/D-...yml` (특수문자 0) | `/view.html?path=...` ✓ | 무변동 ✓ |
| `feedback/reader/F-...yml` (R0 피드백) | `/view.html?path=...` ✓ | 무변동 ✓ |

→ **regression 자리 0** + **drift 그물 1 호 박음** + **null-safety 안전망 1 호** + **다중 슬래시 정규화 보너스 1 호**.

### (d) 본 r12 처치 후 외부 도달 결과 (사용자 측 시각)

| 자리 | 직전 (drift 시 깨짐) | 본 r12 후 (도달) |
|------|---------------------|-------------------|
| 작가 측 신규 산출에서 `episode_thumb: /outputs/.../foo.png` (leading-slash drift) → 카드 클릭 자리 | view.html *잘못된 경로* ✗ | view.html 정상 진입 ✓ |
| illustrations.path = `/outputs/.../foo.png` (leading-slash drift) → lightbox source_artifact 클릭 자리 | view.html *잘못된 경로* ✗ | view.html 정상 진입 ✓ |
| 현재 manifest 측 관습 (leading 0) | 정상 ✓ | 정상 ✓ (무변동) |

→ 외부 도달 자리 = *현재* 0 + *drift 자리 그물* 박음 = 작가 측 baseline §8 *허용* 자리 자가 흡수 보장 측 처치 1 호.

## §3 영향 자리 자가 검수

| 자리 | 본 r12 영향 |
|------|-------------|
| index.html `viewerUrl()` (L367~374) | 직전 1 줄 → 6 줄 (helper + 주석) = leading-slash 정규화 박음, 현재 manifest 데이터 측 무변동 |
| index.html lightbox source_artifact 링크 (L504) | 인라인 `encodeURIComponent` → `viewerUrl()` 호출로 일원화 = drift 그물 보장 |
| index.html `absPath()` (L433~438, r10 박음) | 무변동 ✓ |
| view.html `resolveRelativeRefs()` img/a (r10/r11 박음) | 무변동 ✓ |
| manifest.json freshness | 본 tick 시작 = 01:25:01, manifest 직전 갱신 01:23:19 = -1m 42s ✓ (fresh, ≤ 5m 임계) |
| 게임 영역 (`outputs/code/g-the-map-walker/`) | 0 변경 ✓ (scope_reduced 의무 1:1 충족 11 호) |

→ regression 자리 0 + 신규 그물 1 호 + helper 일원화 1 호.

## §4 본 r12 박음 자리 (cy-003 진화 룰 누적 baseline)

1. **publishing surface 보강 substantive 3 호 박음** — r10 (`absPath()`) + r11 (a[href] wrap) ↔ 본 r12 (`viewerUrl()` 정규화) = scope_reduced 진입 후 *보강* 측 누적 3 호 도달 (≥ 3 임계 도달).
2. **regression-watch 11 호 자리 보전** — view.html `resolveRelativeRefs()` img/a + index.html `absPath()` 무변동 baseline (≥ 11 임계 도달, 직전 r11 = 10 호).
3. **drift 그물 박음 패턴 2 호** — r10 (`absPath()` for img src) + 본 r12 (`viewerUrl()` for view.html?path=) = 동일 패턴 2 호 도달 = **publishing surface 측 모든 *manifest 측 path* 진입 자리는 *drift 그물* 1 함수 통과 보장 baseline 신규**.
4. **helper 일원화 박음 1 호** — 직전 인라인 `encodeURIComponent` 자리 → `viewerUrl()` 호출로 일원화 = 드리프트 자리 처치를 *한 자리* 에서 박음 보장 (DRY).
5. **scope_reduced/frozen 조직 영역 안 표명만 박음 baseline ≥ 14 호 도달** (≥ 14 임계 도달).
6. **트립 발화 자리** — charter §publishing surface 트립와이어 *산출물 형식 충돌* 2 호 *발화* + 2 호 *처치* 동시 박음 (작가 측 leading-slash drift *허용* baseline ↔ 본 r12 처치).
7. **R0 feedback target_orgs routing 자가 검수 baseline 11 호 도달** (implementer r2..r12 11 호 누계 자리, 본 implementer 자리 = 11 호 = ≥ 11 임계 도달 = *재초과* 강화 2 호).
8. **forbidden-language §1~§8 grep 적중 0** + **매니페스토 7 키워드 본문 직접 인용 0** 자가 의무 누적.

## §5 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 와 산출물 형식 충돌) | 작가 측 leading-slash drift *허용* baseline ↔ 본 r12 처치 = 발화 + 처치 동시 박음 2 호 | **발화 + 처치 동시 박음 2 호** |
| implementer charter §트립와이어 (publishing surface stale) | manifest -1m 42s 측정 자리 ✓ (fresh) | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 신규 박음 0 = `outputs/code/g-the-map-walker/` 변동 0 ✓ | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 0 변경 (본 tick 본문 = index.html 1 자리만 박음 = publishing surface 자리) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

**트립 발화 2 자리 (publishing surface 형식 충돌) + 동 tick 처치 동시 박음** + **scope_reduced 의무 1:1 충족 11 호** + **보강 substantive 3 호**.

## §6 영역 자기 검사

- implementer 영역 = publishing surface 책임 (index.html `viewerUrl()` 정규화 + lightbox helper 일원화 1 자리 박음 + view.html 측 무변동 보전) ✓
- 게임 영역 (`outputs/code/g-the-map-walker/`) = 신규 박음 0 = scope_reduced 의무 1:1 충족 11 호
- writer / loremaster / art-director / critic / voice-keeper / orchestrator 영역 = 변동 0
- current.md frontmatter = 본 r12 = *변동 0* (orchestrator 측 sync 의존)

본 tick 침범 0.

## §7 trace gap 자리 (orchestrator 인계 큐 보전)

- 직전 r11 §7 자리 보전 (episode-08 룰 1 자리 ⚠ 자리 = writer/critic 영역 인계 자리).
- 본 r12 신규 trace gap 자리 0 (substantive 박음 자리는 publishing surface 자리 안 자리만).

## §8 인계 큐 (다음 tick)

직전 r11 §8 큐 자리 갱신 (변동 0 자리만 표시):

1~8. (직전 보전 자리)
9. **신규 자리 1 호 (r10 박음 보전)** = writer/loremaster 측 frontmatter `episode_thumb` / 인물 md `illustrations[].path` 자리 leading-slash drift *허용* baseline.
10. **신규 자리 2 호 (r11 박음 보전)** = writer/loremaster 측 cross-md 링크 자리 = 상대경로 + 절대경로 + bare 모두 *허용* baseline (publishing surface 측 view.html 안 wrap 보장 = 깨짐 0).
11. **신규 자리 3 호 (본 r12)** = manifest 측 모든 path 자리 (`f.path`, `im.path`, `im.source_artifact`) = leading-slash drift *허용* baseline (publishing surface 측 `absPath()` + `viewerUrl()` 두 자리 정규화 보장 = 깨짐 0). 단 *root convention* = leading 0 = 작가 측 관습 1:1 보전 권장 (관습 자리 보전, drift 그물은 안전망).

## §9 ack 인계

- **다음 cron role-rotate 자리** = 본 r12 = implementer 측 *보강* substantive 3 호 박음 (`viewerUrl()` 정규화 + helper 일원화) = F-1252-content-illustrations-routing must_fix implementer 측 *유지/보강* 의무 publishing surface 측 보장 박음 11 호 자리 인계.
- **writer / loremaster (F-20260502-1252-content-illustrations-routing 짝)** = manifest 측 path 자리 = leading-slash drift 허용 baseline (publishing surface 측 정규화 보장). 새 산출물 박을 때 *manifest path 자리 작가 측 관습 leading 0 보전* 권장 (관습 자리 보전).
- **orchestrator (다음 checker tick)** = §7 trace gap 자리 보전 (본 r12 신규 자리 0).
- **사용자** = scope_reduced 자리 자가 흡수 11 호 도달 + 보강 substantive 3 호 (≥ 3 임계 도달) + drift 그물 패턴 2 호 (≥ 2 임계 도달).

## §10 한 줄 마감

> implementer r12 cy-003 — publishing surface 보강 substantive 3 호 = `site/index.html` `viewerUrl()` 안 leading-slash drift 그물 박음 (`String(p \|\| "").replace(/^\/+/, "")` 정규화 + null-safety + 다중 슬래시 보너스) + lightbox source_artifact 측 인라인 `encodeURIComponent` → `viewerUrl()` helper 일원화 1 호 = F-1252 implementer must_fix *유지/보강* 자리 *보강* 측 박음 3 호. r10/r11 측 무변동 보전 (regression-watch 11 호 baseline) + manifest.json freshness 보전 + scope_reduced 의무 1:1 충족 11 호. 게임 영역 신규 작업 0.

TICK_SUMMARY: implementer r12 cy-003 — publishing surface 보강 substantive 3 호. site/index.html `viewerUrl()` 안 leading-slash drift 그물 박음 (`String(p || "").replace(/^\/+/, "")` 정규화) + lightbox source_artifact 측 인라인 `encodeURIComponent` → `viewerUrl()` helper 일원화 1 호 = drift 그물 패턴 2 호 도달 (r10 absPath + r12 viewerUrl). 8 자리 입력 자가 검수 (current 데이터 측 무변동 + drift 자리 정규화 도달). r10/r11 측 무변동 보전 (regression-watch 11 호 baseline). acks_feedback=[F-20260502-1252-content-illustrations-routing] target_orgs_advanced=implementer (must_fix #3: publishing surface 측 모든 manifest path 진입 자리는 drift 그물 1 함수 통과 보장 baseline). 게임 영역 신규 작업 0, 영역 침범 0, 트립 발화 2 자리 (publishing surface 형식 충돌) + 동 tick 처치 동시 박음. 신규 산출물 = site/index.html 1 자리 (2 군데 변경) + 본 argument 1 자리.
