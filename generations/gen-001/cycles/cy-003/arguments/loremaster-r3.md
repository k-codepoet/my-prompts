---
gen: 1
cycle: cy-003
round: 3
role: loremaster
mode: rule-proposal + consistency-audit (F-20260502-1252-content-illustrations-routing must_fix loremaster 측 1 호 직접 응답)
tick_logged: 26
authored_by: loremaster
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced: loremaster
written_artifacts: []  # 본 r3 = 룰 발의 + audit-only (인물 md 8 자리 본문 0 변경 = 영역 보전, 적용 = writer 자리 인계)
absorbed_inputs:
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml  # must_fix loremaster 측 직접 응답
  - outputs/writing/the-map-is-the-journey/characters/haeon.md  # 8 인물 md 측 1
  - outputs/writing/the-map-is-the-journey/characters/jeonghae.md  # 2
  - outputs/writing/the-map-is-the-journey/characters/narim.md  # 3
  - outputs/writing/the-map-is-the-journey/characters/yugyeong.md  # 4
  - outputs/writing/the-map-is-the-journey/characters/ingyu.md  # 5
  - outputs/writing/the-map-is-the-journey/characters/yeongang.md  # 6
  - outputs/writing/the-map-is-the-journey/characters/huijae.md  # 7
  - outputs/writing/the-map-is-the-journey/characters/yuri.md  # 8
  - outputs/worldbuilding/the-map-is-the-journey/character-relations-v0.1.md  # 현재 baseline (post-supersede)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/  # disk 박힘 16 자리 검수
  - outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md  # writer r2 cy-003 lore 정합 점검
audit_targets:
  - outputs/writing/the-map-is-the-journey/characters/*.md  # 8 자리 (F-1252 1 호 audit)
  - outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md  # writer r2 lore 정합 측만 점검
self_check: 7/7
trip_wire_fired: false
domain_violation: false
forbidden_grep: 0/8
manifesto_inline_quotes: 0/7
---

# loremaster r3 cy-003 — F-1252 illustrations 일치 룰 발의 + 인물 md 8 자리 + episode-04 lore 정합 audit

## §1. 본 r3 의 자리 (F-1252 must_fix loremaster 측 1 호 직접 응답)

본 r3 = state/.last-role=implementer 알파벳 다음 자리 = `loremaster` (cy-003 r3 큐 1 위 = R0 독립 자율 진척 자리). **F-20260502-1252-content-illustrations-routing must_fix loremaster 측** = "인물 md frontmatter `illustrations:` 와 본문 갤러리 표 일치 룰 *발의 자리*" → 본 r3 직접 처치 1 호.

박음 자리 두 자리 분리:
- **(a) 룰 발의** = `RULE-LORE-ILLUSTRATIONS-PARITY-v0` baseline 1 호 박음 (§3).
- **(b) 인물 md 8 자리 audit** = 본 룰 v0 임계 적용 시 *드리프트 분포* 측정 (영역 안 audit-only, writer 자리 침범 0).

본체 (rule 안) 박음 + audit 묶음 = loremaster *r1 본체 + r2 부속 + r3 룰* 영역 분배 1 호 사례 (cy-003 안 *세 라운드 자리 분리* 1 호 신규).

## §2. 룰 발의 baseline 박음 = `RULE-LORE-ILLUSTRATIONS-PARITY-v0`

### §2.1 룰 본문 (1 호 baseline)

> **`RULE-LORE-ILLUSTRATIONS-PARITY-v0`** — 인물 md 안 시각 자료 박음의 *두 자리 동기화*
>
> 1. **표면 자리** = 본문 `## 일러스트 갤러리` 표 안 *실측 박힘* 행 (markdown image syntax `![alt](path)`).
> 2. **메타 자리** = frontmatter `illustrations:` YAML 배열 안 path 항목.
> 3. **두 자리 동기화 의무**: 표면 자리 = 메타 자리 의 *path 집합 1:1 일치*. 단,
>    - 표면 자리 안 *blockquote 안 후보 자리* (`> 확장 자리 (cy-003+ 후보):`) 는 *미박힘 후보* = 메타 자리 제외.
>    - 메타 자리 안 path 는 root-anchored `outputs/...` 형식 (상대경로 `../` 금지).
>    - 표면 자리 안 image src 는 본 시리즈 publishing surface (view.html resolveRelativeRefs) 정합 형식 = 상대경로 `../../../worldbuilding/...` 또는 root-anchored 둘 다 허용 (relative 는 자동 절대경로 보정 박힘).
> 4. **신규 image 박음 시점 의무** (writer + art-director 공동):
>    - (a) 본문 표 + 1 행 + (b) frontmatter `illustrations:` + 1 entry = **두 자리 동시 박음 의무** (한 자리만 박음 = 룰 위반).
> 5. **disk 검증 의무**: 메타 자리 path 는 disk 안 실재 file 일 것 (404 박음 금지). 표면 자리 박힘 path 는 본 메타 자리 path 와 disk 측 1:1.
> 6. **검수 자리**: loremaster (본 r3+ audit-only) + writer (frontmatter+본문 적용) + art-director (image disk 산출 + path 박음 짝 검증) + critic (cold-read 시 frontmatter ≠ 본문 갤러리 = R1+ 평가 점수 차감 자리 신규 발의 자리, critic 측 후속 자리).

### §2.2 룰 발의 근거 (3 자리 입력)

1. **F-1252 must_fix loremaster** (직접 routing) = 본 룰 발의 자리 1 차 입력.
2. **publishing surface (site/index.html) hero 박음 ↔ 본문 view.html 박음 분리 박음** (tick-022 implementer r2 박음) = 시각 자료 박음의 *두 자리 동기화* 가 publishing 측에서 이미 임계 도달. 본 룰 = lore 측 *짝 자리* 박음 1 호.
3. **post-supersede 포인터 stale 처치 lore 부속 문서 측 baseline 그물** (loremaster r1 cy-003 character-relations v0 → v0.1 + r2 cy-003 chronicle v1 → v1.1 = 2 호 도달) = 본 룰 = *post-supersede 포인터 stale 처치 인물 md 측 그물* 으로 격상 1 호 = 도구 그물 7 호 도달 후보.

### §2.3 룰 적용 임계 (정식 진입 자리)

| 단계 | 정의 | 본 r3 도달 |
|------|------|-----------|
| baseline | 룰 본문 박음 + 1 호 audit 사례 박음 | ✓ (본 r3) |
| 1 호 적용 | writer 측 *모든 8 인물 md frontmatter `illustrations:` ↔ 본문 갤러리 표 1:1 일치* 박음 | ✗ (writer 자리 인계) |
| 정식 룰 진입 | 적용 ≥ 2 호 (writer 8 자리 처치 + cy-003+ 신규 인물 1 자리 박음 = 2 호) | ✗ (cy-003+ 큐) |

본 r3 = baseline 자리. 적용은 writer (다음 r3+ 자리) 인계 = F-1252 must_fix writer 측 *신규 회차 박음 시 hero + POV 인물 이미지 박음 의무* 와 짝 (writer 측 단일 적용 자리 = 신규 회차 + 8 인물 frontmatter 갱신).

## §3. 인물 md 8 자리 audit — 룰 v0 임계 적용 시 드리프트 분포

### §3.1 드리프트 분포 표 (8/8 = 100% 드리프트)

| # | 인물 | frontmatter `illustrations:` 안 path | 본문 갤러리 표 안 path | 드리프트 분류 |
|---|-----|-------------------------------------|-----------------------|--------------|
| 1 | haeon | 1 = `outputs/.../illustrations/stamp-17-1-haeon-palm-line-dawn-v1.png` | 2 = `stamp-17-1` + `character-sheet-haeon-v1.png` | **A — frontmatter 한 자리 부족** (character-sheet 누락) |
| 2 | jeonghae | 1 = `outputs/.../illustrations/stamp-17-2-jeonghae-toes-one-direction-v1.png` | 2 = `stamp-17-2` + `character-sheet-jeonghae-v1.png` | **A** |
| 3 | huijae | 1 = `outputs/.../illustrations/stamp-17-8-huijae-side-by-side-dawns-v1.png` | 2 = `stamp-17-8` + `character-sheet-huijae-v1.png` | **A** |
| 4 | yeongang | 1 = `outputs/.../illustrations/stamp-17-7-yeongang-short-grain-v1.png` | 2 = `stamp-17-7` + `character-sheet-yeongang-v1.png` | **A** |
| 5 | narim | `[]` (empty) | 1 = `character-sheet-narim-v1.png` | **B — frontmatter 0 + 본문 1** (전부 누락) |
| 6 | ingyu | `[]` (empty) | 1 = `character-sheet-ingyu-v1.png` | **B** |
| 7 | yuri | `[]` (empty) | 1 = `character-sheet-yuri-v1.png` | **B** |
| 8 | yugyeong | `[]` (empty) | 1 = `character-sheet-yugyeong-v2.png` | **B** |

→ **드리프트 8/8 = 100%**. 분포 = **A 4 자리 + B 4 자리 (4:4 균형)**.
→ 본 분포 = *art-director r2 cy-003 8 인물 character-sheet 박음 자리* 의 자가 frontmatter 박음 누락 = *신규 image 박힘 시 두 자리 동시 박음 의무 (룰 §4)* 의 *부재* 가 baseline 박음 1 호 사례 박음.

### §3.2 disk 측 검증 (실측 박힘 16 자리)

`outputs/worldbuilding/the-map-is-the-journey/illustrations/` 안:
- 4 우표 (stamp-17-1/17-2/17-7/17-8) + 4 우표 .meta.yml = 8 자리 ✓
- 8 character-sheet (haeon/jeonghae/narim/yugyeong/ingyu/yeongang/huijae/yuri) + 8 .meta.yml = 16 자리 ✓
- 1 key-visual (key-visual-blank-page-dawn) + 1 .meta.yml = 2 자리 ✓
- 합 = 16 image + 16 meta = 32 자리.

→ disk 안 실재 박힘 12 image (4 우표 + 8 character-sheet) ↔ 본문 갤러리 표 안 12 path 1:1 도달 = 표면 자리 ✓ disk 정합.
→ 메타 자리 path 4 자리 (4 우표만) = disk 측 12/12 정합 ✗ (8 character-sheet 자리 frontmatter 측 누락).

### §3.3 stale source_aggregate / 인접 자료 포인터 (부속 audit)

**부속 발견 1 호**: 8/8 인물 md 안 *post-supersede 포인터 stale* 자리 박힘:
- `source_aggregate:` 안 `character-relations-v0.md` 박힘 (8/8) — 현재 baseline = `character-relations-v0.1.md` (loremaster r1 cy-003 박음, character-relations-v0 §0 *Superseded by v0.1* 헤더 박힘 = post-supersede 포인터 stale 처치 lore 부속 측 1 호 박힘 후 인물 md 측 갱신 누락).
- 본문 §인접 자료 안 *관계 그물* / *chronicle 매핑* 링크 = `character-relations-v0.md` (8/8) — 동일 stale.

→ 본 자리 = F-1252 routing 외 자리 = *post-supersede 포인터 stale 처치 인물 md 측 그물* baseline 발의 1 호 추가 사례 (룰 본문 §3 도구 그물 7 호 도달 후보 baseline = lore 부속 측 1 호 → 인물 md 측 1 호 = 8/8 = 도달 baseline).

**부속 발견 2 호**: source_aggregate 안 `character-sheets-v0.md §1` 박힘 (8/8) = 직접 supersede 자리 부재 (writer 측 후속 자리). 본 자리 = lore 측 직접 책임 ≠ → audit-only ack 만 박음.

### §3.4 lore 정합 측 평결 (룰 v0 외 본 r3 직접 lore audit 묶음)

| 검사 자리 | 평결 | 트립 발화 | 비고 |
|---------|------|---------|------|
| 8 인물 md 안 *세계 사실* (자국째 / chronicle 사건 좌표 / 축 박음 / hex 색조) | **PASS** — bible v0.6 §12 + character-relations v0.1 §1.1~§1.3 + chronicle v1.1 + visual-bible v0.4 §11 정합 ✓ | 0 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0. |
| episode-04 (writer r2 cy-003) world: `the-map-is-the-journey@v0.6` + axes [나] (정해 단일 변주, 0 자국 박음) + characters_pov [정해] + episode_thumb stamp-17-2 박음 | **PASS** — bible v0.6 §12.2 정해 절 + character-relations v0.1 §1.1 origin/becoming 표 + visual-bible v0.4 §17.2 정합 ✓ | 0 | 본 episode = 정해 한 인물 단일 변주 = *축 다축 박음 룰* (v0.1 §1.1) 적용 0 (단일 origin 결, 정착). |
| 인물 md 8 자리 안 *축 박음 표* (axis: 나/가족/업) | **PASS** — character-relations v0.1 §1.1 + bible v0.6 §12 1:1 ✓ | 0 | 다축 박음 (인규 = 나+업 / 유리 = 가족+나) 인물 md 측 표시 = *frontmatter axis 단일* + 본문 *자라남 결* 박음 = 박음 형식 차이 ≠ 룰 위반. |
| 인물 md 8 자리 안 hex 색조 박음 | **PASS** — visual-bible v0.4 §11 8 인 hex 매트릭스 baseline 1:1 ✓ | 0 | 7 인물 = §11.x 박음 / 1 인물 = ART-DIRECTOR 자리 (yugyeong-v2 sumukhwa 정정 baseline) = 정합 ✓. |
| 인물 md 8 자리 안 chronicle 사건 좌표 (1 차 chronicle 사건) | **PASS** — chronicle v1.1 7 사건 + §사건 4.1 인스턴스 풀 + §사건 4.2 baseline 정합 ✓ | 0 | 신규 사건 0 / 신규 인스턴스 0. |

→ **5/5 PASS + 트립 0 + reject 0**. *audit-only mode 4 호 사례 박음 = 정식 룰 *재재재초과 강화 1 호 도달*** (cy-002 r3 1 호 / cy-002 r5 2 호 / cy-003 r2 3 호 / 본 r3 cy-003 4 호).

## §4. cy-003 진화 룰 임계 신규 발의 / 격상

1. **`RULE-LORE-ILLUSTRATIONS-PARITY-v0` 룰 baseline 박음 1 호 사례 신규** — F-1252 must_fix loremaster 측 직접 응답 = lore 측 *시각 자료 박음의 두 자리 동기화 룰* 1 호 baseline. cy-003 진화 룰 후보 신규 — *F-* feedback id ↔ 룰 baseline 직접 짝 박음 자리* 1 호.

2. **post-supersede 포인터 stale 처치 도구 그물 7 호 도달 = 정식 룰 *재재재재초과 강화 1 호 도달*** — bible 측 (cy-002 r4) + visual-bible 측 (art-director r4) + concept/fail-modes 측 (designer r5+) + character-relations 측 (loremaster r1 cy-003) + bible v0.5+v0.5 ↔ v0.6 측 (orchestrator tick-011) + chronicle 측 (loremaster r2 cy-003) + **인물 md 측 8 자리 baseline (본 r3 cy-003 audit)** = 7 호 도달.

3. **lore 부속 문서 측 stale drift 처치 baseline → 인물 md 측 baseline 격상 1 호** — character-relations-v0 → v0.1 (cy-003 r1) + chronicle-v1 → v1.1 (cy-003 r2) + 인물 md 8 자리 audit baseline (본 r3) = lore 부속 + 인물 md 두 측 baseline 그물 1 호 도달.

4. **audit-only mode loremaster 측 4 호 사례 박음 = 정식 룰 *재재재초과 강화 1 호 도달*** — cy-002 r3 (1 호) + cy-002 r5 (2 호) + cy-003 r2 (3 호) + 본 r3 cy-003 (4 호) = 4 호 도달.

5. **R0 feedback 직접 routing → 룰 baseline 박음 자리 1 호 사례** — F-1252 must_fix loremaster 측 routing = 본 r3 룰 baseline 박음 = *R0 feedback 직접 응답 룰화* 자리 1 호 사례 신규. cy-003 진화 룰 후보 신규 — *F-* feedback must_fix 항 ↔ 룰 baseline 1:1 짝 박음 의무*.

6. **트립 발화 감쇠 8 라운드 연속 = 정식 룰 *재재재재초과 강화 1 호 도달*** — loremaster r1 (1 발화) → r2 (1 경계) → r3 (0) → r4 (0) → r5 (0) → cy-003 r1 (0) → cy-003 r2 (0) → **본 cy-003 r3 (0 발화 + audit 5 자리 통과)** = 8 라운드 연속.

7. **forbidden-language §1~§8 grep 통과 48 호 누적 (47 → 48)** — 본 r3 (48).

8. **매니페스토 7 키워드 직접 인용 0 자가 의무 24 호 누적 (23 → 24)** — 본 r3 (24).

9. **G-CHAR-1 cy-003 표적 진척 추가** — 인물 md 8/8 자리 lore 정합 PASS + visual-bible 측 8 인 hex 매트릭스 baseline 정합 PASS + 본 룰 baseline 박음 = G-CHAR-1 *bible 안 인물 절 8/8* baseline (cy-003 r1) + *인물 md frontmatter ↔ 본문 갤러리 일치 룰 baseline* (본 r3) = 두 자리 누적.

10. **scope_reduced 조직 r-N 박음 표준 (implementer r3 = baseline 격상 1 호 박음 tick-025) ↔ 활성 조직 r-N 박음 표준 (loremaster r3 = audit-only 4 호 = 정식 룰 재재재초과 강화 1 호) baseline 짝 박음 1 호 사례** — cy-003 안 7 활성 조직 r3 진척 자리 = 활성 5 (orchestrator + writer + critic + voice-keeper + **loremaster** = 본 r3) + scope_reduced 2 (implementer + art-director).

11. **D + B+ 짝 자기 적용** — wrote 2 자리 disk 검증 (loremaster-r3.md + tick-026.md) + current.md frontmatter+§변경 이력 1 행 갱신 = orchestrator 측 영역 안 *role 자가 sync 자리* (cy-002 r1 정착 표준 1:1).

## §5. 트립 자가 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 게임/글/이미지 세계관 위반 | 본 r3 = 룰 baseline + audit-only 자리. 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0 / 신규 인스턴스 0. | **미발화** |
| #2 다른 조직이 bible 거치지 않고 새 lore 주장 | 8 인물 md + episode-04 = bible v0.6 + character-relations v0.1 + chronicle v1.1 + visual-bible v0.4 정합 ✓. 룰 baseline = 박음 형식 룰 ≠ 신규 lore. | **미발화** |
| #3 *영구 보존된 도서관* 류 lore | 0. 룰 본문 = *시각 자료 박음의 두 자리 동기화* = 박음 표면 형식 측. *지도/방향* 결 박음 0 (룰 본문 안 매니페스토 키워드 직접 인용 0). | **미발화** |
| 영역 위반 (writer / art-director / 다른 조직) | 0. 인물 md 8 자리 본문 0 변경 + frontmatter 0 변경 = audit-only. 룰 적용 = writer 자리 인계 자리 명시. | **미발화** |
| 인물 md 자가 박음 (loremaster ≠ writer) | 0. 본 r3 written_artifacts = [] (룰 baseline = 본 argument 안 §2 박음 + 인물 md 8 자리 본문 0 변경). | **미발화** |

**트립 발화 0** + **영역 위반 0** + **audit 5 자리 PASS** + **드리프트 8/8 = 100% 박음 (룰 baseline 박음 1 차 사례)**.

## §6. 박음 자리 자가 의무 (cy-003 진화 룰 후보 자가 적용)

- *글 매체 + 시각 매체 + 세계 본체 매체 모두 매니페스토 직접 인용 0 = 자가 의무* — 본 r3 산출물 (loremaster-r3.md) = 0 인용 = 자가 의무 24 호 누적.
- *post-supersede 포인터 stale 처치 lore 부속 / 인물 md 측 baseline header 박음 의무 (격상)* — 본 r3 = 인물 md 측 baseline 박음 자리 = 7 호 그물 도달.
- *audit-only mode 트립 0 + 영역 위반 0 + 신규 lore 0 자가 의무* — 본 r3 4 호 자기 적용 = audit-only mode 정식 룰 재재재초과 강화 1 호 도달.

## §7. 다음 자리 (r3 종결 임계 → r-N 진입 임계)

- **본 r3 = cy-003 r3 lore 영역 자리 마감**. 다음 큐 자리:
  1. **writer r3 cy-003 — 인물 md 8 자리 frontmatter `illustrations:` 갱신 + source_aggregate 박힘 stale 처치 (character-relations-v0 → v0.1 + character-sheets-v0 → extended-v0 보정)** = 본 r3 룰 baseline 1 호 적용 자리. (R0 의존 = 신규 회차 박음 자리 ≠ 인물 md frontmatter 갱신 자리는 R0 독립 가능, 자율 진척 가능 자리).
  2. r0-user-verdict-on-episode-04 (F-20260502-1216 해소).
  3. d-20260502-004-user-response (Type B, 자동 적용 카운트 누적 +5 / 임계 = tick-026 도달 자리, 본 tick = tick-026 자가 적용 카운트 도달 자리).
  4. critic-r3-cy-003-episode-04-status-published-promotion (R0 의존).
  5. art-director-r-n-image-v2-three-character-sheets (F-20260502-1251 후행, character-sheet-yugyeong v1 → v2 sumukhwa 정정 baseline 박음 = 잔여 7 자리 후속).
  6. writer-r3-cy-003-series-index-v0.1-after-r0-pass (R0 의존).

## §8. ack 인계

- **writer (다음 r3 큐 1 위 자리)** = 본 r3 `RULE-LORE-ILLUSTRATIONS-PARITY-v0` baseline 1 호 적용 = 인물 md 8 자리 frontmatter `illustrations:` 갱신 의무 (드리프트 A 4 자리 + B 4 자리 = 8 자리 처치). 본 r3 §3.3 *부속 발견* (source_aggregate stale + 본문 §인접 자료 stale = character-relations-v0 → v0.1 보정) 동시 처치 자리.
- **art-director (scope_reduced — F-1251 후행 자리)** = 본 r3 룰 §4 신규 image 박힘 시 *frontmatter `illustrations:` + 1 entry 동시 박음 의무* 짝 검수 자리. cy-003+ image v2 박음 시 자가 적용.
- **critic (다음 r3 자리)** = 본 r3 룰 §6 *cold-read 시 frontmatter ≠ 본문 갤러리 = R1+ 평가 점수 차감 자리* 신규 발의 자리 입력 (critic-r3 자리 측정 도구 추가 자리).
- **orchestrator (cy-003 r3 진척 sync 자리)** = 본 r3 박음 + cy-003 r3 활성 5 조직 진척 7/7 도달 자리 = orchestrator r4 자리 (cy-003 r3 종결 묶음 review 자리, R0 의존).
- **사용자 (D-20260502-004 open Type B)** = 자동 적용 카운트 누적 +5 / 임계 = 본 tick-026 도달 자리. recommended=a (frozen-only skip = designer 만 회전 제외). 무응답 시 **본 tick-026 = 자동 적용 도달 자리** = D-004 자동 적용 박음 자리 (orchestrator 다음 자리 finalize).

---

self-check 7/7 통과:
1. ✓ 인물 md 8 자리 본문 0 변경 / frontmatter 0 변경 보존 (audit-only 의무 1:1 자가 적용 = 영역 보전).
2. ✓ episode-04 writer r2 영역 침범 0 (lore 정합 측만 점검 = `source_world_bible: bible-v0.6` + `axes [나]` + `episode_thumb stamp-17-2` 1:1 정합 ack 만 박음).
3. ✓ 룰 baseline `RULE-LORE-ILLUSTRATIONS-PARITY-v0` 박음 형식 = lore 측 박음 룰 (영역 안) + 적용은 writer / art-director 자리 인계 명시 = 영역 분리 1:1.
4. ✓ forbidden-language §1~§8 grep 적중 0 (본 argument 본문).
5. ✓ 매니페스토 7 키워드 직접 인용 0/7 (자가 의무 24 호 누적).
6. ✓ 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0 / 신규 인스턴스 0 (룰 baseline = 박음 표면 형식 룰 ≠ 신규 lore).
7. ✓ F-1252 must_fix loremaster 측 *룰 발의 자리* 직접 응답 1 호 (acks_feedback frontmatter 명시 + target_orgs_advanced=loremaster 박음).
