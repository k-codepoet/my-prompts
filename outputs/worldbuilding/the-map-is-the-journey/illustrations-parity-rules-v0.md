---
world_id: the-map-is-the-journey
artifact: rules
domain: lore (시각 자료 박음의 두 자리 동기화)
rule_id: RULE-LORE-ILLUSTRATIONS-PARITY-v0
version: v0
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 5
authored_by: loremaster
acks_feedback: [F-20260502-1252-content-illustrations-routing]
sources:
  - generations/gen-001/cycles/cy-003/arguments/loremaster-r3.md §2  # baseline 발의
  - generations/gen-001/cycles/cy-003/arguments/loremaster-r4.md §4  # 부속 발견 (v1 → v2 supersede 포인터 누락 8/8)
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml  # must_fix 측 loremaster 발의 자리
champions_keywords_primary: [방향]
forbidden_language_grep_pass: true
manifesto_direct_quote_count: 0
---

# `RULE-LORE-ILLUSTRATIONS-PARITY-v0` — 인물 md 시각 자료 박음의 두 자리 동기화

> **Superseded by illustrations-parity-rules-v0.1.md (2026-05-02, cy-003 r10, loremaster r8 §3.4 + r9 §10.6 thin-bump 박음).** 활성 baseline = [illustrations-parity-rules-v0.1.md](./illustrations-parity-rules-v0.1.md) (§2.2 active 풀 일반화 1 호 + §4 양측 일관 박음 의무 강화 + §4.1 supersede 표지 형식 박음 + §8.1 r10 시점 audit baseline). 본 v0 = 시간 좌표 baseline (r5 박음 + r5 audit 8/8) 보존 — v0.1 §8.1 분포 곡선 시작 자리.

본 룰은 *여정 자체가 지도 (The Map is the Journey)* 세계의 인물 md 자리에 한해 적용된다.
loremaster 차터 §도메인 *다른 조직의 산출물에 세계 사실이 등장할 때, 그 사실의 정합성에 대한 최종 의견* 의 직접 발휘 자리.

## §0. 발의 근거 (3 자리 입력)

1. **F-20260502-1252-content-illustrations-routing must_fix loremaster 항** — *"인물 md frontmatter `illustrations:` 와 본문 갤러리 표 일치 룰 발의 자리."* — R0 직접 routing.
2. **publishing surface (site/view.html resolveRelativeRefs) 측 두 자리 짝 박음 baseline** — implementer r2 cy-003 (tick-022) 이미 도달.
3. **post-supersede 포인터 stale 처치 lore 측 그물** — character-relations v0 → v0.1 (loremaster r1 cy-003) + chronicle v1 → v1.1 (loremaster r2 cy-003) + bible 측 (cy-002 r4 thin-patch) = 6 호 도달 도구. 본 룰 = 인물 md 측 그물 7 호 도달.

## §1. 두 자리 정의

| 자리 | 정의 | 도메인 |
|------|-----|-------|
| **표면 자리** | 인물 md 본문 `## 일러스트 갤러리` 표 안 *실측 박힘* 행 (markdown image syntax `![alt](path)`). | writer 측 작성 (본문 prose 짝) |
| **메타 자리** | 인물 md frontmatter `illustrations:` YAML 배열 안 path 항목. | loremaster 측 정합 (worldbuilding-fact 포인터) |

## §2. 동기화 의무 (1:1 일치)

1. **path 집합 1:1 일치** — 표면 자리 안 *실측 박힘* image path = 메타 자리 path 집합. 한 자리만 박음 = 룰 위반.
2. **blockquote 안 후보 자리 제외** — `## 일러스트 갤러리` 본문 표 직후 `> 확장 자리 (cy-003+ 후보):` blockquote 안 *미박힘 후보* 는 메타 자리 제외. 즉 표면 자리 = `|` 표 행 안 박음만 카운트.
3. **메타 자리 path 형식** — root-anchored `outputs/...` 형식 의무 (상대경로 `../` 금지). publishing surface (view.html resolveRelativeRefs 후) 와 정합.
4. **표면 자리 path 형식** — markdown 표 안 image src 는 (a) root-anchored `/outputs/...` 또는 (b) 상대경로 `../../../worldbuilding/...` 둘 다 허용. publishing surface 자동 절대경로 보정 박힘 (implementer r3 cy-003 안전망).

## §3. 신규 image 박음 시점 — 두 자리 동시 박음 의무

writer + art-director 공동:

- **(a) 본문 표 + 1 행** — `## 일러스트 갤러리` 표 안 새 markdown image 행 + 1.
- **(b) frontmatter `illustrations:` + 1 entry** — root-anchored path 1 entry.
- **(a) ↔ (b) 시점 일치** — 한 PR / 한 round 안 두 자리 동시 박음. 한 자리만 박음 = 룰 위반 (드리프트 1 호 신규).

## §4. supersede 포인터 의무 (v1 → v2+ 박힘 자리)

신규 v(N) image 박음 = 직전 v(N-1) image 와 짝 박음 의무:

| 자리 | 의무 |
|-----|-----|
| 표면 자리 | 표 안 *현재 baseline = v(N)* 행만 박음 (이전 v(N-1) 행 제거 또는 *과거 baseline* 표지). |
| 메타 자리 | `illustrations:` 배열 안 path = v(N) 으로 갱신 (v(N-1) path 보존 시 *superseded_by* 표지 의무). |
| supersede 표지 형식 | 메타 자리 path 항 옆 인접 행 또는 별도 `illustrations_superseded:` 배열 안 v(N-1) 박음. |

## §5. disk 검증 의무

- 메타 자리 path = disk 안 실재 file 일 것 (404 박음 금지).
- 표면 자리 안 박힘 path = 본 메타 자리 path 와 disk 측 1:1 매치.
- 본 룰 적용 시 *disk 검증 자가 통과* 의무 = 본 audit 1 호 사례 박음 (loremaster 영역 안).

## §6. 검수 자리 분배

| 조직 | 자리 | scope |
|-----|-----|------|
| loremaster | 본 룰 발의 + audit-only (frontmatter 정합 의견 발휘) | 영역 안 |
| writer | 본문 표 + frontmatter 두 자리 *적용 자리* (인물 md 8 자리 갱신) | 영역 안 |
| art-director | 신규 image disk 산출 + path 박음 짝 검증 (scope reduced) | 영역 안 (단편 일러스트) |
| critic | cold-read 시 frontmatter ≠ 본문 갤러리 = R1+ 평가 점수 차감 자리 (신규 발의 자리) | 외부 시선 측 |
| voice-keeper | 자국빛 / silhouette / palette 정합은 §8 visual blind-distinction gate 와 짝 박음 | 정렬 측 |

## §7. 적용 임계 (정식 룰 진입 자리)

| 단계 | 정의 | 본 r5 도달 |
|------|------|-----------|
| baseline | 룰 본문 박음 + 1 호 audit 사례 박음 | ✓ (loremaster r3 cy-003) |
| 1 호 사례 박음 (artifact) | 본 룰 = 별도 referable artifact 박음 | ✓ (본 r5 cy-003) |
| 1 호 적용 | writer 측 *모든 8 인물 md frontmatter `illustrations:` ↔ 본문 갤러리 표 1:1 일치* 박음 | ✗ (writer 측 큐 1 위, R0 독립 자율 진척 가능) |
| 정식 룰 진입 | 적용 ≥ 2 호 (writer 8 자리 처치 + cy-003+ 신규 인물 1 자리 박음 = 2 호) | ✗ (cy-003+ 큐) |

## §8. 본 r5 audit — 인물 md 8 자리 frontmatter ↔ 본문 표 드리프트 분포 baseline

본 r5 시점 audit 결과 (8/8 자리 측정, source = `outputs/writing/the-map-is-the-journey/characters/*.md`):

| # | 인물 md | 표면 자리 (본문 표 박힘 image 풀) | 메타 자리 (frontmatter `illustrations:`) | 두 자리 매치 | supersede 포인터 (v1 → v2 짝 자리) |
|---|--------|---------------------------------|----------------------------------------|--------------|----------------------------------|
| 1 | haeon.md | character-sheet-haeon-v1.png + stamp-17-1-haeon-palm-line-dawn-v1.png (2 자리) | stamp-17-1-haeon-palm-line-dawn-v1.png (1 자리) | **✗ (메타 1 누락 = character-sheet)** | ✗ (disk 안 v2 존재 / md 안 v1 행 보존) |
| 2 | jeonghae.md | character-sheet-jeonghae-v1.png + stamp-17-2-jeonghae-toes-one-direction-v1.png (2 자리) | stamp-17-2-jeonghae-toes-one-direction-v1.png (1 자리) | **✗ (메타 1 누락 = character-sheet)** | ✗ (disk 안 v2 존재 / md 안 v1 행 보존) |
| 3 | huijae.md | character-sheet-huijae-v1.png + stamp-17-8-huijae-side-by-side-dawns-v1.png (2 자리) | stamp-17-8-huijae-side-by-side-dawns-v1.png (1 자리) | **✗ (메타 1 누락 = character-sheet)** | ✗ (disk 안 v2 존재 / md 안 v1 행 보존) |
| 4 | yugyeong.md | character-sheet-yugyeong-v2.png (1 자리) | (빈 자리 `[]`) | **✗ (메타 1 누락)** | △ (표면 자리 v2 직진 박음 / 메타 자리 0 = 동기화 부재) |
| 5 | yeongang.md | character-sheet-yeongang-v1.png + stamp-17-7-yeongang-short-grain-v1.png (2 자리) | stamp-17-7-yeongang-short-grain-v1.png (1 자리) | **✗ (메타 1 누락 = character-sheet)** | n/a (disk 안 v2 부재) |
| 6 | ingyu.md | character-sheet-ingyu-v1.png (1 자리) | (빈 자리 `[]`) | **✗ (메타 1 누락)** | n/a (disk 안 v2 부재) |
| 7 | narim.md | character-sheet-narim-v1.png (1 자리) | (빈 자리 `[]`) | **✗ (메타 1 누락)** | n/a (disk 안 v2 부재) |
| 8 | yuri.md | character-sheet-yuri-v1.png (1 자리) | (빈 자리 `[]`) | **✗ (메타 1 누락)** | n/a (disk 안 v2 부재) |

**드리프트 분포** = 8/8 (100%) 매치 부재. **이중 드리프트** (frontmatter 비어 있거나 1 자리 누락 + v1 → v2 supersede 포인터 누락) = 4/4 자리 (haeon / jeonghae / huijae / yugyeong, disk 안 v2 박힘 인물 풀 100%).

## §9. 처치 인계 (writer 측 큐 1 위)

writer 측 적용 자리:

1. **8 인물 md frontmatter `illustrations:` 갱신** — 표 안 박힘 image path 전체를 메타 자리 배열에 박음 (root-anchored 형식).
2. **v1 → v2 supersede 포인터 박음** (4 인물: haeon / jeonghae / huijae / yugyeong) —
   - 본문 표 안 *현재 baseline = v2* 행 박음 (v1 행은 *과거 baseline* 표지 또는 제거).
   - frontmatter `illustrations:` 안 v2 path 박음 + (선택) `illustrations_superseded:` 배열 안 v1 path 박음.
3. **신규 회차 박음 시 본 룰 §3 동시 박음 의무 적용** — F-20260502-1252-content-illustrations-routing must_fix writer 항 (hero `episode_thumb` + POV 인물 image ≥ 1 자리) 박음과 짝.

## §10. 트립 자가 검사 (본 룰 박음 자리)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 게임/글/이미지 세계관 위반 | 본 룰 = 메타 룰 (lore-fact 포인터 정합), 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0. | 미발화 |
| #2 다른 조직이 bible 거치지 않고 새 lore 주장 | 본 룰 발의 = 본 조직 영역 안 (charter §도메인 §"다른 조직의 산출물에 세계 사실이 등장할 때, 그 사실의 정합성에 대한 최종 의견"). | 미발화 |
| #3 *영구 보존* / *완벽한 지도* 류 lore | 0. 본 룰 = 박음 형식 정합 룰 = *영구 보존* 결 0 + *완벽한 지도* 결 0. | 미발화 |
| 영역 위반 (writer / art-director) | 0. 본 룰 = 발의 + audit + referable artifact 박음만. writer 본문 0 변경 / art-director image 0 변경. | 미발화 |
| forbidden-language §1~§8 grep | 적중 0 (본 artifact 본문). | 미발화 |
| 매니페스토 7 키워드 직접 인용 | 0/7 (자가 의무). | 미발화 |

## §11. 후속 자리

- **writer 다음 r3 cy-003** — 본 §9 처치 인계 1 호 적용 자리 (R0 독립 자율 진척).
- **art-director 다음 r-N (scope_reduced)** — cy-003+ 추가 v2 image 박음 시 본 §3 두 자리 동시 박음 의무 + §4 supersede 포인터 의무 짝 검수.
- **critic 다음 r-N** — 본 §6 *cold-read frontmatter ≠ 본문 갤러리 = R1+ 평가 점수 차감 자리* 신규 발의 흡수.
- **loremaster 다음 r-N (cy-003+)** — 본 룰 1 호 적용 (writer r3 처치 후) audit baseline 박음 → 정식 룰 진입 임계 (적용 ≥ 2 호) 도달 후보.
- **F-20260502-1252-content-illustrations-routing status** — 본 r5 룰 artifact 박음 + writer 적용 자리 인계 도달 후 R0 응답 자리 (must_fix loremaster 항 처치 도달 baseline).
