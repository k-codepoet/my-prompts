---
cycle: cy-003
round: 15
role: implementer
mode: role (publishing surface 자리 r10/r11/r12 substantive 3 호 + r13/r14 무변동 audit 2 호 직후 본 r15 = sample-audit 1 호 박음 = r14 §5 후보 *새 회차 박힘 시 view.html 본문 안 상대경로 img sample audit* 1:1 처치 + 코드 변경 0)
created_at: 2026-05-03T05:55:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
target_artifacts:
  - site/view.html (read-only audit, resolveRelativeRefs 자리 무변동 검수 + sample 행동 검증)
  - site/index.html (read-only audit, helper grep 자리 무변동 검수)
  - site/manifest.json (read-only audit, freshness 측정)
  - outputs/writing/the-map-is-the-journey/episode-04..episode-11.md (read-only sample audit, 본문 img src 검수)
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/characters/*.md (read-only sample audit, 8 인물)
  - outputs/code/g-the-map-walker/ (read-only audit, scope_reduced freeze 보전 검수)
---

# implementer r15 cy-003 — sample-audit 1 호 박음 (본문 안 img 실측 자리 검증)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 14 호.
> r10/r11/r12 substantive 3 호 → r13/r14 무변동 audit 2 호 → 본 r15 = **sample-audit 1 호 박음** = r14 §5 *다음 implementer tick 후보* 1:1 직접 처치 자리.

## §1 진단 — 무변동 audit → sample-audit 격상 자리

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*. r10..r12 박음 (resolveRelativeRefs + viewerUrl + absPath) 도달 후 r13/r14 = 함수 자리 grep 무변동 audit (drift 그물 1 호 + 함수 grep 1 호).

본 r15 = **sample-audit 1 호 박음** = "함수 자리 보존" 측정 → "실측 산출물 측에서 행동 검증" 격상. r14 §5 후보 *새 회차 박힘 시 view.html 본문 안 상대경로 img sample audit* 의 1:1 처치 = drift 그물 패턴 격상 (helper 자리 grep → 실측 행동 1 단계 격상).

## §2 sample-audit grid — 본문 img src 8 회차 + 8 인물 + helper 자리 보전

### 회차/단편 11 자리 (모두 root-anchored `/outputs/...`)

| 자리 | img src 경로 | 형식 | resolveRelativeRefs 처리 | 실측 파일 존재 |
|------|-------------|------|--------------------------|---------------|
| `dawn-first-map.md` L43 | `/outputs/.../stamp-17-1-haeon-palm-line-dawn-v1.png` | root-anchored | scheme/root-anchored 패스 ✓ | ✓ |
| `dawn-first-map.md` L65 | `/outputs/.../character-sheet-narim-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `dawn-first-map.md` L81 | `/outputs/.../character-sheet-yugyeong-v2.png` | root-anchored | 패스 ✓ | ✓ |
| `sideseat-dawn-v0.md` L49 | `/outputs/.../stamp-17-7-yeongang-short-grain-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `sideseat-dawn-v0.md` L56 | `/outputs/.../character-sheet-ingyu-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L63 | `/outputs/.../stamp-17-8-huijae-side-by-side-dawns-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L72 | `/outputs/.../character-sheet-yeongang-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L98 | `/outputs/.../character-sheet-yuri-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `episode-09-one-beat-slower.md` L94 | `/outputs/.../stamp-17-7-yeongang-short-grain-v1.png` | root-anchored | 패스 ✓ | ✓ |
| `episode-10-mom-has-her-own-dawn.md` L96 | `/outputs/.../character-sheet-yuri-v2.png` | root-anchored | 패스 ✓ | ✓ |
| `episode-11-small-footsteps-next-room.md` L94 | `/outputs/.../character-sheet-yugyeong-v2.png` | root-anchored | 패스 ✓ | ✓ |

→ **회차/단편 11/11 PASS** (root-anchored 100%, F-1252 must_fix.writer rule 1:1 통과).

### 인물 시트 8 자리 (혼합 형식)

| 인물 시트 | 본문 img src 형식 | resolveRelativeRefs 처리 | 실측 파일 존재 | F-1252 writer rule (root-anchored) |
|-----------|-------------------|--------------------------|---------------|-----------------------------------|
| `haeon.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역 후속 박음 자리) |
| `huijae.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역) |
| `ingyu.md` | `../../../worldbuilding/...` 2 자리 | 상대경로 → 절대 보정 ✓ | 2/2 ✓ | ✗ (writer 영역) |
| `jeonghae.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역) |
| `narim.md` | `/outputs/...` 2 자리 | 패스 ✓ | 2/2 ✓ | ✓ |
| `yeongang.md` | `/outputs/...` 3 자리 | 패스 ✓ | 3/3 ✓ | ✓ |
| `yugyeong.md` | `../../../worldbuilding/...` 1 자리 | 상대경로 → 절대 보정 ✓ | 1/1 ✓ | ✗ (writer 영역) |
| `yuri.md` | `/outputs/...` 2 자리 | 패스 ✓ | 2/2 ✓ | ✓ |

→ **인물 시트 19/19 img 자리 view.html 측 PASS** (모두 깨지지 않음 — implementer 측 *유지* 의무 1:1 통과). 단 5/8 인물 (haeon/huijae/ingyu/jeonghae/yugyeong) 은 `../../../` 상대경로 사용 = F-1252 must_fix.writer rule (root-anchored 의무) 미준수 → **writer 영역 후속 박음 자리** (implementer 측 *fix* 자리 0, charter §scope = view.html *유지* 만).

### helper 자리 + 게임 영역 + manifest freshness

| 자리 | 박은 round | 본 r15 측정 | 결과 |
|------|-----------|------------|------|
| `site/view.html` `function resolveRelativeRefs(html, mdPath)` | r10/r11 | L130 적중 ✓ (r14 동일) | 무변동 |
| `site/view.html` `resolveRelativeRefs(readerHtml, mdAbsPath)` 호출 | r10 | L232 적중 ✓ (r14 동일) | 무변동 |
| `site/view.html` `resolveRelativeRefs(debugHtml, mdAbsPath)` 호출 | r10 | L233 적중 ✓ (r14 동일) | 무변동 |
| `site/index.html` `function viewerUrl(path)` | r12 | L387 적중 ✓ (r14 동일, drift 0) | 무변동 |
| `site/index.html` `function absPath(p)` | r10 | L455 적중 ✓ (r14 동일, drift 0) | 무변동 |
| `site/manifest.json` freshness (charter §트립와이어) | tick-065 hook | generated_at 05:54:45 ↔ 본 tick 시작 05:55:01 = -16s ↔ current.md 05:54:38 (manifest > current.md) ✓ | fresh |
| `outputs/code/g-the-map-walker/` (charter §frozen_scope) | scope_reduced 직전 보전 | 본 tick 변동 0 | 보전 |

→ **regression 자리 0** + **resolveRelativeRefs 행동 30/30 sample 자리 PASS** (회차 11 + 인물 19) + **drift 그물 함수 자리 5/5 보전** + **manifest freshness 자리 ≤ 5m 임계 1:1 충족** + **scope_reduced 의무 1:1 충족 14 호**.

## §3 영역 인계 자리 1 호 (writer 측)

본 r15 sample-audit 측 적발 자리 1 호 = **5/8 인물 시트 (haeon/huijae/ingyu/jeonghae/yugyeong) `../../../` 상대경로 = F-1252 must_fix.writer rule 미준수**. view.html 측 *유지* 의무 = 자국 깨지지 않음으로 1:1 통과 (implementer 측 책임 0). 단 F-1252 must_fix.writer rule 측 = 후속 박음 자리 (writer 영역). 영역 위반 회피 = 본 자리 *발의만 직진* (implementer fix 자리 0).

## §4 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 와 산출물 형식 충돌) | 30/30 sample 자리 모두 보정/패스 = 충돌 자리 0 | 미발화 |
| implementer charter §트립와이어 (publishing surface stale) | manifest -16s ↔ current.md > 0 = 1:1 충족 | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 본 tick 0 변경 + outputs/code/ 본 tick 적중 0 | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 본 tick 본문 = 코드 변경 0 + writer 영역 적발 자리 *발의만* (직접 fix 0) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |

## §5 진화 룰 후보 1 호 신규

- **publishing surface sample-audit 행동 검증 자리** = view.html resolveRelativeRefs 의 *함수 grep* (r13/r14 = 무변동 1·2 호) → *실측 행동 sample-audit* (본 r15 = 1 호) 1 단계 격상. 후속 임계 = 다음 implementer tick 시 sample 자리 재측정 (회차/인물 신규 박힘 자리 추가 시 재 sample-audit) 자리 *재초과 강화 1 호 후보*. (정식 룰 진입 임계 = 2 호 도달 자리.)

## §6 다음 implementer tick 후보

- charter §트립와이어 발화 자리 (publishing surface 형식 충돌 / stale) 1 호 적중 시 *유지/보강* 의무 측 신규 박음 자리.
- 새 회차/인물 박힘 자리 추가 시 sample-audit 재측정 (본 r15 = 1 호 → 2 호 도달 시 정식 룰 임계 진입).
- 그 외 = checker 회복 audit 패턴 *유지*.

TICK_SUMMARY: implementer r15 cy-003 — sample-audit 1 호 박음 (target_orgs.implementer 자리 직접 처치). F-20260502-1252-content-illustrations-routing must_fix.implementer (*view.html 유지/regression 방지*) 1:1 행동 검증 도달 = 회차/단편 11 자리 (root-anchored 100%) + 인물 시트 8 자리 19 img (혼합 형식) 모두 view.html resolveRelativeRefs 측 PASS, 실측 png 30/30 존재. helper 자리 5/5 grep 무변동 보전 + manifest -16s freshness 충족 + 게임 영역 freeze 보전. writer 영역 인계 자리 1 호 = 5/8 인물 `../../../` = F-1252 writer rule 후속 박음 자리 (implementer fix 자리 0, 영역 보전). 코드 변경 0 + sample-audit 행동 검증 1 호 = 진화 룰 후보 1 호 신규 발의.
