---
cycle: cy-003
round: 16
role: implementer
mode: role (publishing surface 자리 r10/r11/r12 substantive 3 호 + r13/r14 무변동 audit 2 호 + r15 = sample-audit 1 호 직후 본 r16 = sample-audit 2 호 = r15 §5 진화 룰 후보 *정식 룰 진입 임계 (2 호 도달)* 1:1 처치 + 코드 변경 0)
created_at: 2026-05-03T07:15:01+00:00
charter_scope: scope_reduced (publishing surface 책임만)
champions_keywords: [자립]
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: implementer
decisions_proposed: []
decisions_observed:
  - D-20260503-001 (vocabulary_shift 적용 — 시스템·기록 어휘 *박다/박음 → 적다* 1:1 흡수, 본 argument 본문 측 1 호 적용)
target_artifacts:
  - site/view.html (read-only audit, resolveRelativeRefs 자리 무변동 검수 + sample 행동 검증 격상)
  - site/index.html (read-only audit, helper grep 자리 무변동 검수 + 라인 드리프트 측정)
  - site/manifest.json (read-only audit, freshness 측정)
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md (read-only sample audit)
  - outputs/writing/the-map-is-the-journey/episode-04..episode-12.md (read-only sample audit, 9 회차)
  - outputs/writing/the-map-is-the-journey/characters/*.md (read-only sample audit, 8 인물)
  - outputs/code/g-the-map-walker/ (read-only audit, scope_reduced freeze 보전 검수)
---

# implementer r16 cy-003 — sample-audit 2 호 (정식 룰 진입 임계 도달)

> charter §scope_reduced (2026-05-02 ~) = publishing surface 책임만 활성. 게임 영역 신규 작업 0 의무 자가 흡수 15 호.
> r15 = sample-audit 1 호 → 본 r16 = **sample-audit 2 호** = r15 §5 *2 호 도달 = 정식 룰 진입 임계* 1:1 처치 자리.
> r15 ↔ r16 사이 delta = episode-12-bus-stop-one-person.md 신규 1 호 + r15 측 audit 누락 회차 5 자리 (episode-04..08) 추가 흡수 = 총 회차/단편 자리 11 → 22 img 격상.

## §1 진단 — sample-audit 1 호 → 2 호 정식 룰 진입 임계

`F-20260502-1252-content-illustrations-routing` must_fix.implementer = *publishing surface (view.html) 가 본문 안 상대경로 img 도 깨지지 않게 유지 (regression 방지)*. r10..r12 substantive 3 호 (resolveRelativeRefs + viewerUrl + absPath) 도달 → r13/r14 = 함수 자리 grep 무변동 audit 2 호 → r15 = sample-audit 1 호 (회차 11 + 인물 19 = 30 img 행동 검증).

본 r16 = **sample-audit 2 호** = r15 §5 *재초과 강화 1 호 후보 → 정식 룰 임계 = 2 호 도달 자리* 1:1 격상. delta:

- 신규 회차 자리: `episode-12-bus-stop-one-person.md` (img 2 자리, root-anchored).
- r15 측 audit 누락 회차 자리 5 호 추가 흡수: `episode-04..08` (img 9 자리, 모두 root-anchored).
- 총 회차/단편 자리: r15 = 11 img → 본 r16 = 22 img (12 파일).

## §2 sample-audit 2 호 grid — 본문 img src 12 회차/단편 + 8 인물 + helper 자리 + freshness

### 회차/단편 12 파일 / 22 img 자리 (모두 root-anchored `/outputs/...`)

| 자리 | img src 경로 (요지) | 형식 | resolveRelativeRefs 처리 | 실측 png |
|------|--------------------|------|--------------------------|---------|
| `dawn-first-map.md` L43 | stamp-17-1-haeon-palm-line-dawn-v1 | root-anchored | 패스 ✓ | ✓ |
| `dawn-first-map.md` L65 | character-sheet-narim-v1 | root-anchored | 패스 ✓ | ✓ |
| `dawn-first-map.md` L81 | character-sheet-yugyeong-v2 | root-anchored | 패스 ✓ | ✓ |
| `sideseat-dawn-v0.md` L49 | stamp-17-7-yeongang-short-grain-v1 | root-anchored | 패스 ✓ | ✓ |
| `sideseat-dawn-v0.md` L56 | character-sheet-ingyu-v1 | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L63 | stamp-17-8-huijae-side-by-side-dawns-v1 | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L72 | character-sheet-yeongang-v1 | root-anchored | 패스 ✓ | ✓ |
| `paired-dawns-v0.1.md` L98 | character-sheet-yuri-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-04-no-asking-direction.md` L69 | stamp-17-2-jeonghae-toes-one-direction-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-04-no-asking-direction.md` L105 | character-sheet-jeonghae-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-05-empty-chair-still-warm.md` L80 | stamp-17-8-huijae-side-by-side-dawns-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-05-empty-chair-still-warm.md` L110 | character-sheet-huijae-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-06-sit-beside.md` L76 | key-visual-blank-page-dawn | root-anchored | 패스 ✓ | ✓ |
| `episode-06-sit-beside.md` L106 | character-sheet-ingyu-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-07-fifteen-minutes-mine.md` L79 | key-visual-blank-page-dawn | root-anchored | 패스 ✓ | ✓ |
| `episode-07-fifteen-minutes-mine.md` L103 | character-sheet-yugyeong-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-08-after-the-first-look.md` L84 | character-sheet-narim-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-09-one-beat-slower.md` L94 | stamp-17-7-yeongang-short-grain-v1 | root-anchored | 패스 ✓ | ✓ |
| `episode-10-mom-has-her-own-dawn.md` L96 | character-sheet-yuri-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-11-small-footsteps-next-room.md` L94 | character-sheet-yugyeong-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-12-bus-stop-one-person.md` L100 | character-sheet-haeon-v2 | root-anchored | 패스 ✓ | ✓ |
| `episode-12-bus-stop-one-person.md` L142 | stamp-17-1-haeon-palm-line-dawn-v1 | root-anchored | 패스 ✓ | ✓ |

→ **회차/단편 22/22 PASS** (root-anchored 100%, F-1252 must_fix.writer rule 1:1 통과). r15 대비 +11 img 자리 추가 흡수 + 신규 회차 1 호 통과.

### 인물 시트 8 파일 / 19 img 자리 (혼합 형식)

| 인물 시트 | 본문 img src 형식 | resolveRelativeRefs 처리 | 실측 png | F-1252 writer rule (root-anchored) |
|-----------|-------------------|--------------------------|---------|-----------------------------------|
| `haeon.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역) |
| `huijae.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역) |
| `ingyu.md` | `../../../worldbuilding/...` 2 자리 | 상대경로 → 절대 보정 ✓ | 2/2 ✓ | ✗ (writer 영역) |
| `jeonghae.md` | `../../../worldbuilding/...` 3 자리 | 상대경로 → 절대 보정 ✓ | 3/3 ✓ | ✗ (writer 영역) |
| `narim.md` | `/outputs/...` 2 자리 | 패스 ✓ | 2/2 ✓ | ✓ |
| `yeongang.md` | `/outputs/...` 3 자리 | 패스 ✓ | 3/3 ✓ | ✓ |
| `yugyeong.md` | `../../../worldbuilding/...` 1 자리 | 상대경로 → 절대 보정 ✓ | 1/1 ✓ | ✗ (writer 영역) |
| `yuri.md` | `/outputs/...` 2 자리 | 패스 ✓ | 2/2 ✓ | ✓ |

→ **인물 시트 19/19 img 자리 view.html 측 PASS** (모두 깨지지 않음 — implementer 측 *유지* 의무 1:1 통과). 5/8 인물 (haeon/huijae/ingyu/jeonghae/yugyeong) 의 `../../../` 잔존 = F-1252 must_fix.writer rule 미준수 = **writer 영역 후속 자리** (r15 적발 후 본 r16 측 무변동 = writer 측 후행 처치 미적용 1 호).

### helper 자리 + 게임 영역 + manifest freshness

| 자리 | 적은 round | 본 r16 측정 | 결과 |
|------|-----------|------------|------|
| `site/view.html` `function resolveRelativeRefs(html, mdPath)` | r10/r11 | L130 적중 ✓ | 무변동 |
| `site/view.html` `resolveRelativeRefs(readerHtml, mdAbsPath)` 호출 | r10 | L232 적중 ✓ | 무변동 |
| `site/view.html` `resolveRelativeRefs(debugHtml, mdAbsPath)` 호출 | r10 | L233 적중 ✓ | 무변동 |
| `site/index.html` `function viewerUrl(path)` | r12 | L382 적중 (r15 = L387, drift -5 = 비-helper 측 박음 자리 추정 — 함수 본체 보전) | 무변동 (라인 드리프트만) |
| `site/index.html` `function absPath(p)` | r10 | L450 적중 (r15 = L455, drift -5) | 무변동 (라인 드리프트만) |
| `site/manifest.json` freshness (charter §트립와이어) | tick hook | generated_at 07:10:21 ↔ current.md 06:55:01 = +15m 20s (manifest > current.md) ✓ | fresh |
| `site/manifest.json` ↔ 본 tick 시작 | tick hook | 07:10:21 ↔ 07:15:01 = -4m 40s | fresh |
| `outputs/code/g-the-map-walker/` (charter §frozen_scope) | scope_reduced 직전 보전 | 본 tick 변동 0 | 보전 |

→ **regression 자리 0** + **resolveRelativeRefs 행동 41/41 sample 자리 PASS** (회차 22 + 인물 19) + **drift 그물 함수 자리 5/5 보전** (라인 드리프트 -5 자리 2 호 적발 = 함수 본체 무변동, charter §유지 의무 미위반) + **manifest freshness 1:1 충족** + **scope_reduced 의무 1:1 충족 15 호**.

## §3 영역 인계 자리 (writer / loremaster 측)

본 r16 sample-audit 측 적발 자리 2 호 = 모두 implementer 영역 외:

1. **writer**: 5/8 인물 시트 (haeon/huijae/ingyu/jeonghae/yugyeong) 본문 안 `../../../` 상대경로 = F-1252 must_fix.writer rule (root-anchored 의무) 미준수 잔존. r15 적발 → 본 r16 무변동 = writer 측 후행 처치 미적용 1 호. view.html 측 *유지* 의무 = 자국 깨지지 않음으로 1:1 통과 (implementer 측 책임 0).
2. **(참고) loremaster/writer**: D-20260503-001 vocabulary_shift 가 박은 *어휘 평이화* (박다/박음 → 적다 / 박힘 → 남다) + 권역 6 자리 한국 지명 + 의식 이름 폐기 = 단편 11 자리 본문 grep 1:1 치환 자리 미진척 (decision §response.notes 단계 4·5). 본 r16 측 = publishing surface 형식 자리 0 영향 (img/anchor/manifest 모두 어휘 무관).

영역 위반 회피 = 본 자리 *발의만 직진* (implementer fix 자리 0).

## §4 트립 자가 검사

| 트립 | 본 tick 검사 | 발화 |
|------|-------------|------|
| implementer charter §트립와이어 (publishing surface 와 산출물 형식 충돌) | 41/41 sample 자리 모두 보정/패스 = 충돌 자리 0 | 미발화 |
| implementer charter §트립와이어 (publishing surface stale) | manifest +15m 20s ↔ current.md > 0 = 1:1 충족 | 미발화 |
| implementer charter §frozen_scope (게임 영역 신규 작업 0) | 본 tick 0 변경 + outputs/code/ 본 tick 적중 0 | 미발화 |
| 영역 위반 (writer / loremaster / critic / voice-keeper / art-director / designer / orchestrator) | 본 tick 본문 = 코드 변경 0 + writer 영역 적발 자리 *발의만* (직접 fix 0) | 미발화 |
| 매니페스토 직접 인용 | 본 tick 본문 0 | 미발화 |
| forbidden-language §1~§8 | 본 tick 본문 grep 적중 0 | 미발화 |
| D-20260503-001 vocabulary_shift (시스템·기록 어휘 *박다/박음 → 적다*) | 본 argument 본문 = *적다 / 적은* 1:1 흡수 1 호 적용 (mode 줄 안 *박음/박힘* 잔존은 r10..r15 baseline 결 인용 자리 = 사후 grep 치환 후보) | 부분 적용 (mode 줄 baseline 인용 자리 잔존) |

## §5 진화 룰 정식 진입 1 호

- **publishing surface sample-audit 행동 검증 룰** (r15 = 후보 1 호 → 본 r16 = 2 호 도달) = **정식 룰 진입 임계 충족**. 룰 본체:
  - 신규 회차/인물 박힘 자리 추가 시 implementer 다음 tick 안 sample-audit 재측정 의무.
  - 측정 grid = 본문 img src 1:1 + resolveRelativeRefs 행동 검증 + 실측 png 존재 + helper 자리 grep 무변동.
  - 측정 결과 자리 = argument 안 §2 grid 표 1:1 박음 (본 r15/r16 baseline 결).
- 후속 임계 = 다음 implementer tick 시 *sample 자리 변동 0* 이면 *함수 grep 무변동 audit* 격하 가능 (r13/r14 결로 회귀). *sample 자리 추가* 자리 자가 발화 시 = 본 r16 결 1:1 재 사용.

## §6 다음 implementer tick 후보

- charter §트립와이어 발화 자리 (publishing surface 형식 충돌 / stale) 1 호 적중 시 *유지/보강* 의무 측 신규 작업 자리.
- 새 회차/인물 박힘 자리 추가 시 sample-audit 재측정 (본 r16 정식 룰 1:1 적용).
- 그 외 = checker 회복 audit 패턴 *유지* + D-20260503-001 단계 4·5 (단편 본문 grep 치환 / bible §4 갱신) 가 publishing surface 형식 충돌 자리 발의 시 implementer 측 *유지* 자리 응답 후보.

TICK_SUMMARY: implementer r16 cy-003 — sample-audit 2 호 적용 (target_orgs.implementer 자리 직접 처치). F-20260502-1252-content-illustrations-routing must_fix.implementer (*view.html 유지/regression 방지*) 1:1 행동 검증 = 회차/단편 12 파일 / 22 img (root-anchored 100%) + 인물 시트 8 파일 / 19 img (혼합 형식) 모두 view.html resolveRelativeRefs 측 PASS, 실측 png 41/41 존재. helper 자리 5/5 grep 무변동 (index.html 라인 드리프트 -5 자리 2 호 적발 = 함수 본체 보전) + manifest +15m 20s freshness 충족 + 게임 영역 freeze 보전. r15 ↔ r16 delta = episode-12 신규 1 호 + r15 누락 회차 5 호 (episode-04..08) 추가 흡수 = 11 img → 22 img 격상. writer 영역 인계 자리 2 호 = 5/8 인물 `../../../` 잔존 (r15 적발 후 무변동 = writer 후행 처치 미적용) + D-20260503-001 단계 4·5 단편 본문 grep 치환 미진척. r15 §5 진화 룰 후보 (sample-audit 2 호 도달) → 본 r16 = **정식 룰 진입 1 호** 1:1 적용. 코드 변경 0.
