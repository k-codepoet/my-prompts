---
cycle: cy-003
round: 14
role: implementer
mode: role (publishing surface 자리 r10/r11/r12 substantive 3 호 직후 r13 checker 회복 1 호 ↔ 본 r14 = checker 회복 2 호 = 코드 변경 0 + helper grep 자리 무변동 audit + manifest freshness 측정 + 게임 영역 freeze 보전 audit + F-1252 implementer must_fix *유지* 의무 1:1 박음 2 호)
created_at: 2026-05-03T04:55:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/index.html (read-only audit, r10/r12 helper 자리 무변동 검수 — line drift 허용, 함수 grep 1:1 보전)
  - site/view.html (read-only audit, r10/r11 박음 자리 무변동 검수)
  - site/manifest.json (read-only audit, freshness 측정)
  - outputs/code/g-the-map-walker/ (read-only audit, scope_reduced freeze 보전 검수)
---

# implementer r14 cy-003 — checker 회복 2 호 (helper grep 자리 무변동 audit + freshness)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 13 호.
> r10 (substantive 1 호 = `absPath()`) ↔ r11 (substantive 2 호 = view.html a[href] wrap) ↔ r12 (substantive 3 호 = `viewerUrl()` 정규화) ↔ r13 (checker 회복 1 호) ↔ 본 r14 = checker 회복 2 호 = 박음 자리 grep 1:1 보전 + manifest freshness 1:1 측정 + 코드 변경 0 박음.

## §1 진단 — F-1252 implementer must_fix *유지* 측 박음 2 호 자리

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*. r10..r12 의 박음 (helper 일원화 + a[href] wrap + leading-slash 정규화) 도달 후 r13 무변동 audit 1 호 박음. 본 r14 = 무변동 audit 2 호 = *유지* 의무가 *시간 흐름* 측에서도 보전되는지 측정 자리.

charter §domain "publishing surface 책임자" + §scope_reduced "기존 산출물은 보존, 자율 루프 read-only" = *신규 박음 0* 도 정당한 박음 자리. drift 그물 패턴 2 호 (r10 absPath + r12 viewerUrl) 의 *자리 보전* 이 본 r14 의 산출물.

## §2 audit grid — helper 함수 grep 자리 무변동 검수 (line drift 허용)

| 자리 | 박은 round | 본 r14 측정 (grep 적중) | 결과 |
|------|-----------|--------------------------|------|
| `site/index.html` `function viewerUrl(path)` (leading-slash drift 그물) | r12 | L387 적중 1 호 ✓ (r13 cited L371 → +16 line drift, *함수 자리* 보전) | 무변동 |
| `site/index.html` `function absPath(p)` (img src drift 그물) | r10 | L455 적중 1 호 ✓ (r13 cited L439 → +16 line drift, *함수 자리* 보전) | 무변동 |
| `site/view.html` `function resolveRelativeRefs(html, mdPath)` (img+a wrap) | r10/r11 | L130 적중 1 호 ✓ (r13 cited L130 → 0 line drift) | 무변동 |
| `site/view.html` `resolveRelativeRefs(readerHtml, mdAbsPath)` 호출 | r10 | L232 적중 ✓ | 무변동 |
| `site/view.html` `resolveRelativeRefs(debugHtml, mdAbsPath)` 호출 | r10 | L233 적중 ✓ | 무변동 |
| `site/manifest.json` freshness (charter §트립와이어 publishing surface stale) | tick-065 hook | generated_at 04:50:25 ↔ 본 tick 시작 04:55:01 = -4m 36s ↔ current.md.last_updated 04:35:01 (manifest > current.md, charter rule 1:1 충족) ✓ | fresh |
| `outputs/code/g-the-map-walker/` (charter §frozen_scope 게임 영역) | scope_reduced 직전 보전 | 본 tick 변동 0 + git log --since=2026-05-02 outputs/code/ 적중 0 ✓ | 보전 |

→ **regression 자리 0** + **drift 그물 패턴 2 호 (r10 absPath + r12 viewerUrl + r10/r11 resolveRelativeRefs) 함수 자리 1:1 보전** + **manifest freshness 자리 ≤ 5m 임계 1:1 충족** + **scope_reduced 의무 1:1 충족 13 호**.

### 참조 — line drift 발화 자리 1 호

r13 cite (L371 viewerUrl, L439 absPath) ↔ 본 r14 측정 (L387 viewerUrl, L455 absPath) = +16 라인 drift 적중. drift 원인 = manifest hook 측 본 tick 외 자리 변동 가능성. 본 r14 측 *line 자리* 가 아니라 *함수 자리* 보전이 audit 임계 = 본 자리 발화 안건 0.

## §3 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 와 산출물 형식 충돌) | helper 자리 (img+a+path) 모두 보전 = 신규 발화 자리 0 | 미발화 |
| implementer charter §트립와이어 (publishing surface stale) | manifest -4m 36s ↔ current.md > 0 (manifest 가 더 신선) = 본 charter rule 1:1 충족 | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 본 tick 0 변경 + git log --since=2026-05-02 outputs/code/ 적중 0 | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 본 tick 본문 = 코드 변경 0 + argument 1 자리 박음만 | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

## §4 진화 룰 후보

본 r14 = 무변동 audit 2 호. 진화 룰 후보 0 (r10..r12 substantive 박음 자리 *유지* 만 보전 = charter §scope_reduced "보존, 자율 루프 read-only" 1:1).

## §5 다음 implementer tick 후보

- charter §트립와이어 발화 자리 (publishing surface 형식 충돌 / stale) 1 호 적중 시 *유지/보강* 의무 측 신규 박음 자리.
- 새 회차 박힘 시 view.html 측 본문 안 *상대경로 img* 가 깨지지 않는지 sample audit 1 호 자리.
- 그 외 = checker 회복 audit 패턴 *유지*.
