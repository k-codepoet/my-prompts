---
world_id: the-map-is-the-journey
artifact: rules
domain: lore (시각 자료 박음의 두 자리 동기화)
rule_id: RULE-LORE-ILLUSTRATIONS-PARITY-v0.1
version: v0.1
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 10
authored_by: loremaster
mode: thin-bump (v0 → v0.1, §2.1 ↔ §4 supersede 스타일 ambiguity 박음 + active 풀 일반화 + supersede 표지 형식 의무 강화)
supersedes: outputs/worldbuilding/the-map-is-the-journey/illustrations-parity-rules-v0.md
acks_feedback: [F-20260502-1252-content-illustrations-routing]
sources:
  - generations/gen-001/cycles/cy-003/arguments/loremaster-r8.md §3.4  # v0.1 thin-bump 발의 자리
  - generations/gen-001/cycles/cy-003/arguments/loremaster-r9.md §10.6  # 박음 시점 연기 + r10 박음 인계
  - outputs/worldbuilding/the-map-is-the-journey/illustrations-parity-rules-v0.md  # baseline (본 v0.1 = thin-bump)
champions_keywords_primary: [방향]
forbidden_language_grep_pass: true
manifesto_direct_quote_count: 0
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본문 7 키워드 직접 인용 0/7. 본 v0.1 = 박음 형식 정합 룰 thin-bump (메타 룰).
  - #2 단일 진실: v0 §1~§11 직접 흡수 + r8 §3.4 발의 + r9 §10.6 박음 시점. 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0.
  - forbidden-language §1~§8 grep — 본 v0.1 본문 적중 0.
---

# `RULE-LORE-ILLUSTRATIONS-PARITY-v0.1` — 두 자리 동기화 + supersede 스타일 ambiguity 박음

> **본 v0.1 = thin-bump.** v0 §1~§11 본문 0 변경 보존. 본 v0.1 = §2.2 *active 풀 일반화* + §4 *supersede 표지 박음 양측 일관 의무* + §4.1 *형식 신규 박음* + §8.1 *r10 시점 audit 재측정 baseline* 4 자리 박음. 다른 §1, §3, §5, §6, §7, §9, §10, §11 = v0 본문 1:1 보존.

> **활성 baseline 이동 = v0 → v0.1.** v0 §1~§8 audit 본문 = baseline 시간 좌표 측 보존 (post-supersede pointer 그물 6 호 = 본 r10 박음 자리). v0.1 = v0 위에 4 자리 추가 박음.

## §0. v0 → v0.1 변경 골자 (1 페이지)

| § | v0 자리 | v0.1 변경 자리 |
|---|--------|--------------|
| §2.2 | blockquote 안 후보 자리 제외 | + *과거 baseline 표지 박음 row / path* 도 active 풀 측정 제외 (일반화 1 호) |
| §4 | supersede 포인터 의무 (제거 OR 표지 보존, 양측 자유) | + 양측 자유 안 *서로 같은 옵션 박음 의무* (스타일 A 또는 B 양측 일관, 비대칭 = 위반) |
| §4.1 | (신규) | supersede 표지 형식 박음 (본문 표 *superseded* 표지 + frontmatter *superseded_by* 표지) |
| §8.1 | (신규) | r10 시점 audit 재측정 baseline (8/8 → 4/8 → 3/8 → r10 시점 = 본 §8.1 안 측정) |

다른 § (§1, §3, §5, §6, §7, §9, §10, §11) = v0 본문 1:1 보존.

---

## §2.2 active 풀 일반화 (v0 §2.2 1 호 → v0.1 일반화 1 호)

> **v0 §2.2 baseline 보존**: "blockquote 안 후보 자리 제외 — `## 일러스트 갤러리` 본문 표 직후 `> 확장 자리 (cy-003+ 후보):` blockquote 안 *미박힘 후보* 는 메타 자리 제외."

**v0.1 §2.2 일반화 1 호 박음**: §2.1 *path 집합 1:1 일치* 측정 시 *active path 풀* 만 측정 대상. *active path 풀* 정의:

| 자리 | active 풀 정의 (v0.1) |
|------|---------------------|
| 표면 자리 (본문 표) | 표 안 박힘 row 중 *현재 baseline = v(N)* 으로 박음 row 풀. *과거 baseline 표지 박음 row* (예: v(N-1) row 안 *superseded* 표지 박음) = 측정 제외. |
| 메타 자리 (frontmatter) | `illustrations:` 배열 안 path 중 *현재 baseline = v(N)* path 풀. *superseded_by 표지 박음 path* 또는 별도 `illustrations_superseded:` 배열 안 path = 측정 제외. |

→ active 풀 = 양측 *현재 baseline* 박음 자리만. *과거 baseline 표지 박음* 양측 = 측정 자리 외부.

**측정 흐름 (자가 점검 의무)**:

1. 본문 표 안 박힘 모든 row 풀 측정.
2. 각 row 안 *superseded* 표지 박음 자리 (예: 셀 안 *superseded* 자리 또는 row 끝 표지 박음 자리) → 측정 제외.
3. frontmatter `illustrations:` 안 박힘 모든 path 풀 측정.
4. 각 path 옆 *superseded_by* 표지 박음 자리 (인접 comment 행 또는 별도 `illustrations_superseded:` 배열 안 자리) → 측정 제외.
5. (1)−(2) active 풀 ↔ (3)−(4) active 풀 = path 집합 1:1 일치 의무.

**v0 §2.2 = blockquote 일반화 1 호 (baseline 보존)** + **v0.1 §2.2 = supersede 표지 일반화 1 호 추가** = active 풀 측정 baseline 도구 1 호 → 2 호 (도구 *재초과 강화 1 호*).

---

## §4 supersede 포인터 의무 — 양측 일관 박음 의무 강화 (v0 §4 → v0.1 §4)

> **v0 §4 baseline 보존**: 표면 자리 = "표 안 *현재 baseline = v(N)* 행만 박음 (이전 v(N-1) 행 제거 또는 *과거 baseline* 표지)." / 메타 자리 = "`illustrations:` 배열 안 path = v(N) 으로 갱신 (v(N-1) path 보존 시 *superseded_by* 표지 의무)."

**v0.1 §4 강화 1 호 박음**: 양측 *제거* 또는 양측 *표지 보존* 둘 중 한 자리 *일관 박음 의무*. 양측 자유 = *서로 같은 옵션 박음* 의무. 비대칭 박음 = 본 룰 위반 baseline 1 호.

| 옵션 | 표면 자리 | 메타 자리 |
|------|---------|---------|
| **A 양측 제거** | 본문 표 안 v(N-1) row *제거* | frontmatter `illustrations:` 안 v(N-1) path *제거* |
| **B 양측 표지 보존** | 본문 표 안 v(N-1) row 보존 + *superseded* 표지 박음 | frontmatter `illustrations:` 안 v(N-1) path 보존 + *superseded_by* 표지 박음 (또는 별도 `illustrations_superseded:` 배열 안 박음) |
| **C 비대칭 (위반)** | (한 자리 제거 + 다른 자리 표지 보존) → 본 v0.1 룰 위반 baseline | 동일 |

**위반 트리거 사례 (v0.1 baseline 박음)**:

- 본문 표 안 v1 row *superseded* 표지 보존 + frontmatter `illustrations:` 안 v1 path 0 박음 = **C 비대칭 위반 1 호** (예: r8 audit 시점 haeon / huijae / jeonghae 3 자리).
- 본문 표 안 v1 row *제거* + frontmatter `illustrations:` 안 v1 path *superseded_by* 표지 보존 = **C 비대칭 위반 1 호 변주** (반대 방향).

**일관 박음 의무 = §2.1 strict 1:1 baseline 보존 자리** (active 풀 측정 = §2.2 일반화 1 호 적용 후 결과 양측 동일 path 집합 박음 의무).

---

## §4.1 supersede 표지 형식 박음 (신규 v0.1 자리)

본 §4.1 = §4 양측 일관 박음 의무의 *형식 baseline* 박음. 표지 형식 = 본 v0.1 안 박음 자리 = lore 영역 측 *재현 가능 baseline*.

### §4.1.1 표면 자리 (본문 표) *superseded* 표지 형식

| 형식 | 박음 자리 | 박음 사례 |
|------|---------|---------|
| **A 셀 본문 안 표지** | 표 안 image alt 자리 또는 캡션 자리 끝에 *superseded* 박음 | `\| ![캐릭터 시트 v1](path) \| 캐릭터 시트 v1 — ... (회화 톤 baseline, superseded) \| cy-003 r2 ... \|` (현재 haeon / huijae / jeonghae / narim / yeongang / yuri 6 자리 박음 baseline 1 호 = 형식 A 적용 baseline 보존) |
| **B 표 옆 footnote** | 표 직후 별도 footnote 행 박음 | (cy-003+ 신규 인물 1 자리 후보 박음, 본 v0.1 = 형식 A 단독 적용 baseline 보존) |

본 v0.1 = **형식 A baseline 박음** (현재 6 자리 baseline 보존, 변경 0). 형식 B = cy-003+ 후보 자리 (본 v0.1 박음 시점 0 박음).

### §4.1.2 메타 자리 (frontmatter) *superseded_by* 표지 형식

| 형식 | 박음 자리 | 박음 사례 |
|------|---------|---------|
| **A 인접 comment 행** | `illustrations:` 배열 안 v(N-1) path 옆 인접 행 안 `# superseded_by <v(N) path>` 박음 | `- outputs/.../character-sheet-haeon-v1.png  # superseded_by character-sheet-haeon-v2.png` |
| **B 별도 배열** | frontmatter 안 `illustrations_superseded:` 배열 박음 + v(N-1) path 박음 | `illustrations_superseded:` `- outputs/.../character-sheet-haeon-v1.png  # by character-sheet-haeon-v2.png` |

본 v0.1 = **형식 A baseline 박음** (writer 측 적용 자리 = 단일 형식 박음 의무 1 호 baseline). 형식 B = 단일 인물 v3+ 박음 시점 후보 (cy-004+ 후보).

**비교 — 현재 잘못 박음 사례 (v0.1 위반 baseline 1 호)**:

- haeon / huijae / jeonghae 3 자리 = 현재 박음 형식 = `- outputs/.../character-sheet-haeon-v2.png  # supersedes character-sheet-haeon-v1.png` (v(N) 옆 *supersedes* 표지). 본 형식 = §4 *제거* 옵션 적용 + comment 박음 = path 풀 측정 시 v1 부재. 본 v0.1 형식 A 박음 의무 = v(N-1) path 박음 + *superseded_by* 표지 의무 = **현재 박음 = 형식 미박음 baseline 1 호**.
- 처치 = (i) `illustrations:` 배열 안 v1 path 추가 박음 + (ii) v1 path 옆 인접 comment `# superseded_by character-sheet-<name>-v2.png` 박음 + (iii) v2 path 옆 *supersedes* comment 제거 (또는 보존, comment 자리 위반 0). writer r-N 처치 자리.

---

## §8.1 r10 시점 audit 재측정 baseline (v0.1 박음 자리)

본 §8.1 = v0 §8 baseline (r5 시점 8/8 매치 부재) + r7 시점 (4/8) + r8 시점 (3/8) → **r10 시점 audit 재측정 baseline 1 호**.

### §8.1.1 r10 시점 8 자리 audit (active 풀 측정 = §2.2 일반화 1 호 적용)

| # | 인물 md | 본문 active 풀 (§2.2 일반화 적용) | frontmatter active 풀 | 1:1 (active) | supersede 형식 박음 (§4.1 적용) | r8 → r10 변화 |
|---|--------|--------------------------------|---------------------|--------------|-----------------------------|--------------|
| 1 | haeon.md | stamp-17-1 + sheet-v2 (v1 *superseded* 표지 → 제외) | stamp-17-1 + sheet-v2 (v2 옆 *supersedes v1* comment / v1 path 0 박음) | ✓ | ✗ (§4.1.2 형식 A 박음 0 = v1 path frontmatter 0) | C 비대칭 → C 비대칭 (보존) |
| 2 | huijae.md | stamp-17-8 + sheet-v2 (v1 표지 → 제외) | stamp-17-8 + sheet-v2 (동일) | ✓ | ✗ (동일) | C 비대칭 → C 비대칭 (보존) |
| 3 | jeonghae.md | stamp-17-2 + sheet-v2 (v1 표지 → 제외) | stamp-17-2 + sheet-v2 (동일) | ✓ | ✗ (동일) | C 비대칭 → C 비대칭 (보존) |
| 4 | ingyu.md | sheet-v2 + stamp-17-5 | sheet-v2 + stamp-17-5 | ✓ | n/a (disk 안 v1 부재) | 정합 보존 |
| 5 | narim.md | sheet-v2 (v1 표지 → 제외) | sheet-v2 (v1 path *superseded_by* 표지 0 박음 baseline → 제외, sheet-v1 + sheet-v2 = active 풀 = sheet-v2 단독) | ✓ (단 frontmatter 측 v1 path 안 *superseded_by* 표지 0 박음 = §4.1.2 형식 A 박음 0) | △ (양측 박음 baseline 1 호 = 표지 0 박음 = §2.2 일반화 적용 시 frontmatter v1 = active 풀 안 = 표면 측 active 풀 sheet-v2 ↔ frontmatter active 풀 sheet-v1 + sheet-v2 = 1:1 위반) | B 대칭 → B-비표지 (frontmatter 측 *superseded_by* 표지 박음 0 = 형식 A 박음 0) |
| 6 | yeongang.md | sheet-v2 + stamp-17-7 (v1 표지 → 제외) | stamp-17-7 + sheet-v1 + sheet-v2 (sheet-v1 옆 *superseded_by* 표지 0 박음) | △ (동일) | △ (동일) | B 대칭 → B-비표지 (동일) |
| 7 | yugyeong.md | sheet-v2 | sheet-v2 | ✓ | n/a (disk 안 v1 부재) | 정합 보존 |
| 8 | yuri.md | sheet-v2 (v1 표지 → 제외) | sheet-v1 + sheet-v2 (sheet-v1 옆 *superseded_by* 표지 0 박음) | △ (동일) | △ (동일) | B 대칭 → B-비표지 (동일) |

### §8.1.2 분포 측정 (r5 → r7 → r8 → r10 곡선)

| 시점 | strict 1:1 매치 부재 (§2.1 v0) | active 1:1 매치 부재 (§2.1 + §2.2 일반화 v0.1) | §4.1 형식 박음 부재 |
|-----|----------------------|----------------------------------|------------------|
| r5 | 8/8 (100%) | 8/8 (적용 0) | n/a (룰 미박음) |
| r7 | 4/8 (50%) | 4/8 (적용 0) | n/a |
| r8 | 3/8 (37.5%) | 3/8 (적용 0) | n/a |
| **r10 (본 §8.1)** | **3/8 (37.5%) C 비대칭** | **0/8** (§2.2 일반화 적용 시 active 풀 측정 = 8/8 → 0 매치 부재 = 표면 ↔ 메타 active path 같음) | **6/8 형식 0 박음** (haeon/huijae/jeonghae frontmatter v1 0 + narim/yeongang/yuri frontmatter v1 *superseded_by* 표지 0) |

**r10 baseline 박음 1 호** = (i) **§2.1 strict 1:1 측정 = 3/8 (보존)** + (ii) **§2.2 일반화 적용 active 측정 = 0/8** + (iii) **§4.1 형식 박음 부재 = 6/8** = 측정 도구 3 자리 동시 박음 *재초과 강화 1 호 도달*.

→ 본 r10 = active 풀 측정 시 *0 매치 부재* baseline 도달 (§2.2 일반화 자가 적용) + 형식 부재 6/8 자리 인계 baseline 박음. 잔여 처치 = §4.1 형식 A 박음 자리 (writer r-N 인계).

### §8.1.3 처치 인계 (writer 측 r-N 큐, 잔여 6 자리 = 형식 A 박음)

writer 측 자율 진척 가능 자리 (r10 baseline 갱신 후 잔여 = 6/8):

1. **(haeon / huijae / jeonghae 3 자리)** = frontmatter `illustrations:` 안 v1 path 추가 박음 + v1 path 옆 인접 comment `# superseded_by character-sheet-<name>-v2.png` 박음. (선택) v2 path 옆 *supersedes* comment 제거 (또는 보존). C 비대칭 → B 대칭 격상 baseline 자리.
2. **(narim / yeongang / yuri 3 자리)** = frontmatter 안 v1 path 옆 인접 comment `# superseded_by character-sheet-<name>-v2.png` 박음. v1 path 박음 baseline 보존 (변경 0). B-비표지 → B-표지 격상 baseline 자리.
3. **잔여 6 자리 처치 후** = §4.1 형식 박음 8/8 도달 baseline + §7 단계 4 (정식 룰 진입) 적용 ≥ 2 호 도달 baseline 직전 자리 (cy-003+ 신규 인물 1 자리 박음 = 2 호 도달).

---

## §1. 두 자리 정의 (v0 §1 1:1 보존)

(v0 §1 본문 보존 = 표면 자리 / 메타 자리 정의 1:1.)

## §3. 신규 image 박음 시점 — 두 자리 동시 박음 의무 (v0 §3 1:1 보존)

(v0 §3 본문 보존 = (a) 본문 표 + 1 행 + (b) frontmatter `illustrations:` + 1 entry + 시점 일치 의무 1:1.)

## §5. disk 검증 의무 (v0 §5 1:1 보존)

(v0 §5 본문 보존 = disk 안 실재 file 의무 + 표면 자리 박힘 path 와 메타 자리 path 1:1 매치 의무 1:1.)

## §6. 검수 자리 분배 (v0 §6 1:1 보존)

(v0 §6 본문 보존 = loremaster / writer / art-director / critic / voice-keeper 각 자리 5 자리 1:1.)

## §7. 적용 임계 (정식 룰 진입 자리)

| 단계 | 정의 | 본 v0.1 도달 |
|------|------|-----------|
| baseline | 룰 본문 박음 + 1 호 audit 사례 박음 | ✓ (loremaster r3 cy-003) |
| 1 호 사례 박음 (artifact) | 본 룰 = 별도 referable artifact 박음 | ✓ (loremaster r5 cy-003 v0 박음) |
| **thin-bump 박음 (v0 → v0.1)** | **§2.2 일반화 1 호 + §4 강화 1 호 + §4.1 형식 박음 1 호 + §8.1 r10 시점 audit baseline 박음** | **✓ (본 v0.1 박음 = loremaster r10 cy-003)** |
| 1 호 적용 | writer 측 *모든 8 인물 md frontmatter `illustrations:` ↔ 본문 갤러리 표 §2.2 active 풀 1:1 + §4.1 형식 A 박음 8/8* 박음 | ✗ (writer 측 큐 1 위, R0 독립 자율 진척 가능, 잔여 6/8) |
| 정식 룰 진입 | 적용 ≥ 2 호 (writer 8 자리 처치 + cy-003+ 신규 인물 1 자리 박음 = 2 호) | ✗ (cy-003+ 큐) |

## §9. 처치 인계 (v0 §9 1:1 보존 + §8.1.3 추가)

(v0 §9 본문 보존 + 본 v0.1 §8.1.3 추가 잔여 6 자리 처치 인계.)

## §10. 트립 자가 검사 (본 v0.1 박음 자리)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 게임/글/이미지 세계관 위반 | 본 v0.1 = 메타 룰 thin-bump (lore-fact 포인터 정합), 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0. | 미발화 |
| #2 다른 조직이 bible 거치지 않고 새 lore 주장 | 본 v0.1 박음 = 본 조직 영역 안 (charter §도메인 §"다른 조직의 산출물에 세계 사실이 등장할 때, 그 사실의 정합성에 대한 최종 의견"). | 미발화 |
| #3 *영구 보존* / *완벽한 지도* 류 lore | 0. 본 v0.1 = 박음 형식 정합 룰 = *영구 보존* 결 0 + *완벽한 지도* 결 0. | 미발화 |
| 영역 위반 (writer / art-director) | 0. 본 v0.1 = 박음 형식 강화 + audit baseline 갱신 + referable artifact thin-bump 박음만. writer 본문 0 변경 / art-director image 0 변경. | 미발화 |
| forbidden-language §1~§8 grep | 적중 0 (본 artifact 본문). | 미발화 |
| 매니페스토 7 키워드 직접 인용 | 0/7 (자가 의무). | 미발화 |

## §11. 후속 자리 (v0 §11 + §8.1.3 인계)

- **writer 다음 r-N cy-003** — 본 §8.1.3 처치 인계 (잔여 6 자리 형식 A 박음, R0 독립 자율 진척).
- **art-director 다음 r-N (scope_reduced)** — cy-003+ 추가 v3 image 박음 시 본 §3 두 자리 동시 박음 의무 + §4 강화 양측 일관 박음 의무 + §4.1 형식 A 박음 의무 짝 검수.
- **critic 다음 r-N** — 본 §6 *cold-read frontmatter ≠ 본문 갤러리 = R1+ 평가 점수 차감 자리* 신규 발의 흡수 (§2.2 active 풀 일반화 적용 baseline).
- **loremaster 다음 r-N (cy-003+)** — 본 v0.1 1 호 적용 (writer r-N 처치 후, 잔여 6 자리 → 8/8 도달) audit baseline 박음 → 정식 룰 진입 임계 (적용 ≥ 2 호) 도달 후보.
- **F-20260502-1252-content-illustrations-routing status** — 본 v0.1 박음 = must_fix.<loremaster> 항 *4 단계 → 5 단계 진척* baseline (r5 referable artifact + r7 partial-progress + r8 progress-2 + r9 보존 + 본 r10 thin-bump = 5 단계 진척).
