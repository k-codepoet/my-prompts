---
role: art-director
round: 8
cycle: cy-003
mode: spec-only (terrain-visual-rules-v0 sibling spec 박음 / image 발행 0 / 본문 신규 사실 0 / visual-bible v0.4 본문 0 변경)
authored_at: 2026-05-02T23:05:01+00:00
acks_feedback:
  - F-20260502-1310-terrain-as-actual-living-geography
target_orgs_advanced:
  - "F-20260502-1310-terrain-as-actual-living-geography must_fix #5 (art-director — visual-bible 에 실제 지형 시각 룰 (산골/강가/포구 등) 신규 단락) — 본 r8 = sibling spec doc `outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md` 박음. 8 지형 (산골/들녘/강가/포구/구릉/분지/도시 변두리/도시 한복판) × 6 항 시각 룰 (구도 골격 / 붓 결 방향 / 농담 범위 / 종이 결 처리 / 새벽 안개 처리 / 인물 배치 단서) + 6 권역 시각 톤 (새벽재/옅은들/자국강/흙포구/굳은마을/빽빽골목) baseline 박음. visual-bible v0.4 본문 0 변경 = sibling spec 자리 (palette-patch-v0 + stamps-extension-v0 박음 패턴 1:1 대응)."
target_artifacts:
  - outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md  # 신규 sibling spec 박음
binds:
  - outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md  # loremaster cy-003 r9 박음
  - outputs/worldbuilding/the-map-is-the-journey/regions-v1.md  # loremaster cy-003 r9 박음
  - outputs/worldbuilding/the-map-is-the-journey/bible-v0.5.md  # §6 *굳은 자국*
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md  # §17 8 우표 풀 + §11 8 인 hex
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md  # §1 sumukhwa baseline
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
note_pattern: |
  본 r8 = scope_reduced art-director 측 *sibling spec 박음 3 호* 자리.
  cy-002 r1 (palette-patch-v0) + cy-002 r3 spec (stamps-extension-v0) + cy-003 r8 (본 terrain-visual-rules-v0) = sibling spec 박음 정식 룰 임계 ≥ 3 호 도달.
  domain 자리 = "활성 세계의 *시각 바이블* (팔레트·실루엣·재료감·라이팅) 작성 책임자" charter §도메인 1:1 인용
  + F-1310 must_fix #5 art-director 영역 명시 (visual-bible 에 실제 지형 시각 룰 신규 단락).
  scope_reduced 자리 = §17 우표 배경 + episode_thumb 풍경 = *단편 일러스트 한정* 1:1 인용. 게임 시각 자리 박음 0.
self_check: 5/5
---

# art-director r8 cy-003 — terrain-visual-rules-v0 sibling spec 박음 (F-1310 must_fix #5 응답)

## §1 박음 자리

| 자리 | 박음 | 출처 |
|------|-----|------|
| `outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md` | 신규 sibling spec doc 1 자리 (8 지형 × 6 항 + 6 권역 + 8 우표 짝맞춤 + episode_thumb 룰 + v0.5 흡수 후보) | F-1310 must_fix #5 직접 응답 |

→ visual-bible v0.4 본문 **0 변경**. terrain v1 / regions v1 / bible v0.5 / tone-lock v0 본문 **0 변경**. image 발행 **0**.

## §2 F-1310 must_fix 5 항 분배 응답 자리 정렬

| must_fix 항 | 담당 조직 | 응답 자리 |
|-----------|---------|---------|
| #1 terrain v1.0 신규 (사람 사는 지형 카테고리) | loremaster | terrain-v1.md 박음 (cy-003 r9 인계) ✓ |
| #2 regions v1.0 신규 (실제 권역 이름) | loremaster | regions-v1.md 박음 (cy-003 r9 인계) ✓ |
| #3 8 인물 거주지 할당 (region + terrain + 일상 풍경) | writer + loremaster | regions-v1.md §8 후보 박음 (loremaster 측) → writer 측 character-sheets 8 자리 패치 인계 (writer r-N 자리) |
| #4 회차 본문 안 풍경 단서 1~2 줄 | writer | writer r-N 자리 인계 (다음 신규 회차 박힘 시) |
| **#5 visual-bible 에 실제 지형 시각 룰 신규 단락** | **art-director** | **본 r8 = `terrain-visual-rules-v0.md` sibling spec 박음 ✓** |
| #6 어휘 층위 분리표 1 페이지 | loremaster | terminology-layers-v0.md 이미 박음 baseline (확장 후보 자리) |
| #7 cold-read *공간감* 항 신규 | critic | critic r-N 자리 인계 |

→ F-1310 5 항 (#1~#7 중 art-director 영역 1 자리) 응답 자리 baseline 도달.

## §3 sibling spec 박음 패턴 인계 정합

| 호수 | spec doc | 박음 자리 | thin-bump 흡수 자리 |
|-----|---------|---------|-----------------|
| 1 호 | palette-patch-v0 | cy-002 r1 | visual-bible v0.4 §11 8 인 hex 매트릭스 흡수 ✓ |
| 2 호 | stamps-extension-v0 | cy-002 r3 spec | visual-bible v0.4 §17 8 우표 풀 + §13 자국빛 4 종 흡수 ✓ |
| **3 호** | **terrain-visual-rules-v0** | **cy-003 r8 (본 자리)** | **visual-bible v0.5 §22 8 지형 시각 룰 + §23 6 권역 시각 톤 흡수 후보 (image 실측 ≥ 4 지형 임계 도달 시 박음)** |

→ **sibling spec 박음 정식 룰 임계 ≥ 3 호 도달 1 호** = cy-003 안 art-director *spec doc → visual-bible thin-bump 흡수* 인계 패턴 정식 룰 자리 격상 후보.

## §4 8 지형 시각 룰 골격 (terrain-visual-rules-v0 §2 직접 인용)

| # | 지형 | 구도 골격 | 붓 결 방향 | 농담 진:옅:흰 | 인물 단서 |
|---|----|---------|---------|----------|--------|
| 1 | 산골 | 대각 비탈 + 한 줄 마을 | 위→아래 한 방향 | 30:50:20 | 비탈 위/아래 (가운데 0) |
| 2 | 들녘 | 수평선 1/3 또는 2/3 | 사방 stroke | 5:70:25 | 작은 인물 1 + 분산 점 2~5 |
| 3 | 강가 | 강 한 줄 가르기 | 강 따라 한 방향 | 25:60:15 | 강가에서 바라봄/따라감 |
| 4 | 포구 | 종이 가장자리 | 가장자리 안↔밖 두 stroke 겹침 | 35:35:30 | 가장자리에서 안/너머 시선 |
| 5 | 구릉 | 부드러운 곡선 1~2 | 곡선 따라 부드럽게 | 25:60:15 | 곡선 한 자리 (정점/골 0) |
| 6 | 분지 | 가장자리 2~3 면 산 + 가운데 평지 | 산 위→아래 + 평지 옆 | 40:40:20 | 가운데 평지 |
| 7 | 도시 변두리 | 빽빽/트임 가장자리 | 짧고 빠른 + 옅게 흐르는 두 결 부딪침 | 45:40:15 | 가장자리에서 시선 미정 |
| 8 | 도시 한복판 | 빽빽 가득 + 옆자리 빈 자리 | 짧고 빠른 사방 + 빈 자리만 stroke 0 | 55:35:10 | 인물 + 옆자리 1 |

→ 8 지형 = *6 항 시각 룰* (구도 / 붓 / 농담 / 종이 / 안개 / 인물) 직접 인용 baseline.

## §5 6 권역 시각 톤 (terrain-visual-rules-v0 §3 직접 인용)

| 권역 | terrain | 자국빛 변주 (visual-bible v0.4 §13 자국빛 4 종) | 우표 배경 베이스 |
|------|--------|--------------------------------------|----------------|
| 새벽재 | 산골 | 첫 자국 색조 `#C8995A` 옅게 | 비탈 + 두꺼운 안개 + 한 줄 처마 |
| 옅은들 | 들녘 | 자국빛 0 변주 | 평지 + 짧은 안개 + 분산 점 |
| 자국강 | 강가 | 강 위 자국빛 `#C8995A` 줄지어 | 강 + 강가 한 줄 + 강 위 안개 |
| 흙포구 | 포구 | 가장자리 너머 받음 색조 `#D4A766` | 가장자리 + 짠 흙 + 가장자리 안 마을 |
| 굳은마을 | 분지/구릉 | 두꺼운 흙 위 자국빛 `#C8995A` 진하게 | 둘러싸임/곡선 + 두꺼운 안개 + 마을 단위 |
| 빽빽골목 | 변두리/한복판 | 자국빛 0 + 자국빛 진함 동시 | 빽빽 + 옆자리 빈 자리 + 가장자리 결 |

→ 6 권역 = visual-bible v0.4 §13 자국빛 4 종 1:1 짝 + 우표 배경 베이스 1 자리 짝.

## §6 §17 8 우표 풀 사후 짝맞춤 (terrain-visual-rules-v0 §4 직접 인용 / image 발행 자리 = ack 자리)

| 우표 | 거주 권역 | 지형 | 발행 상태 | 사후 ack |
|------|--------|----|---------|---------|
| §17.1 *손금 새벽* (해온) | 옅은들 → 굳은마을 | §2.2 들녘 (시작점) | r5 baseline 후보 | 발행 자리에서 본 §2.2 직접 인용 의무 baseline |
| §17.2 *발끝 한 방향* (정해) | 새벽재 | §2.1 산골 | r5 baseline 후보 | 발행 자리에서 본 §2.1 직접 인용 의무 baseline |
| §17.3 *박물관 12 색조* (나림) | 굳은마을 | §2.6 분지 | r5 baseline 후보 | 발행 자리에서 본 §2.6 직접 인용 의무 baseline |
| §17.4 *함께 걸은 자리* (유경+유리) | 자국강 | §2.3 강가 | r5 baseline 후보 | 발행 자리에서 본 §2.3 직접 인용 의무 baseline |
| §17.5 *옆에 앉은 자* (인규) | 빽빽골목 | §2.8 도시 한복판 | cy-003 r4 image 박음 ✓ | 사후 ack = 본 §2.8 1:1 정합 (옆자리 빈 자리 = §2.8 인물 배치 단서 1:1) |
| §17.6 *쉼의 자리만* (부재) | 횡단 | (적용 0) | r5 baseline 후보 | 횡단 = 본 §2 지형 1 자리 적용 0 (인물 부재 결) |
| §17.7 *짧음의 결* (연강) | 새벽재 | §2.1 산골 (또는 §2.5 구릉 변주) | cy-002 r3 image 박음 ✓ | 사후 ack = 본 §2.1 짧은 stroke 60+ 누적 짝 |
| §17.8 *나란히 두 새벽* (희재) | 새벽재 | §2.1 산골 | cy-002 r3 image 박음 ✓ | 사후 ack = 본 §2.1 비탈 + 두 자리 인물 짝 |

→ 8 우표 중 image 발행 3 자리 (§17.5 + §17.7 + §17.8) = 본 §2 6 항 사후 ack 자리. 미발행 5 자리 (§17.1 + §17.2 + §17.3 + §17.4 + §17.6) = 본 §2 6 항 사전 인용 의무 baseline.

## §7 episode_thumb 풍경 단서 룰 인계 (F-1252 must_fix #3 + F-1310 must_fix #5 묶음)

art-director r7 cy-003 thin-bump baseline 6/6 회차 episode_thumb 짝 도달 + 본 r8 = *어느 권역의 새벽인지* 단서 룰 baseline 박음. 두 baseline 동시 인계.

- **신규 회차 박힘 시 의무**: writer 본문 풍경 단서 1~2 줄 (F-1310 must_fix #4) + art-director episode_thumb stamp/character-sheet 의 *배경 결* = 본 §3 6 권역 시각 톤 1 자리 짝.
- **publishing surface 측 인계**: 본 §5 + §6 = 회차 카드 hero 가 어느 권역인지 한눈 즉답 baseline 박음. 빽빽골목 (도시 한복판) 우표 1 자리 (§17.5) + 새벽재 (산골) 우표 2 자리 (§17.7 + §17.8) = 3 권역 중 2 권역 image 실측 자리 도달. 차후 4 권역 image 실측 도달 시 visual-bible v0.5 thin-bump 흡수 임계 도달.

## §8 트립 자가 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | 본 r8 = spec 자리 / image 발행 0 = §6 자가 검수 비대상 + sumukhwa baseline 1:1 인용 (§1) | 미발화 |
| #스타일 드리프트 (모델의 결 수렴) | 본 r8 = spec 자리. 차후 image 발행 자리 박음 의무 *§2 6 항 직접 인용* baseline 신규 박음 (모델의 결 수렴 차단) | 임계 박음 |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 r8 = §17 우표 배경 + episode_thumb 풍경 = scope_reduced 단편 일러스트 한정 1:1 인용. 게임 시각 자리 박음 0 | 미발화 |
| #영역 위반 (loremaster 사실 박음) | 본 r8 = terrain v1 + regions v1 + bible v0.5 §6 직접 인용 / 신규 사실 0 (8 지형 + 6 권역 = 기존 박음의 *시각 결* 만 박음) | 미발화 |
| #영역 위반 (writer 본문 손댐) | 본 r8 = spec 자리 / 회차 본문 0 LOC | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument + spec doc 본문 grep 0/7 (frontmatter `champions_keywords_*` 메타 자리 + §17.2 *발끝 한 방향* 우표 명 (proper noun 1:1 인용) + 붓 결 방향 등 기술 용어 = manifesto inline 자리 0) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument + spec doc grep 0 | 미발화 |

## §9 cy-003 진화 룰 후보 격상

- **art-director sibling spec 박음 3 호 도달 → 정식 룰 임계 박음 1 자리 신규** = palette-patch-v0 + stamps-extension-v0 + 본 terrain-visual-rules-v0 = *spec doc → visual-bible thin-bump 흡수* 인계 패턴 정식 룰 자리 격상 후보.
- **사실 박음 → 시각 결 박음 짝 baseline 1 호** = loremaster terrain v1 + regions v1 (cy-003 r9) → art-director 본 r8 spec = *사실 → 시각* 인계 짝 1 호 사례. 차후 *사실 박음 + 시각 결 박음 동시 박음* (loremaster + art-director 짝 tick) 인계 baseline.
- **F-1310 must_fix 분배 응답 baseline 1 호** = 5 항 (#1~#7 중 art-director #5 자리) baseline 도달. 차후 writer (#3 + #4) + critic (#7) 인계 자리.
- **scope_reduced 자리 자가 적용 시퀀스 8 호 누적 도달** = (1~7 호 = cy-003 r1~r7) + **(8 호) 본 r8 spec** = scope_reduced 자리 첫 8 라운드 자기 적용 baseline 도달 (단편 일러스트 한정 + 게임 시각 0 의무 8 호 연속 통과).

## §10 다음 자리 인접 큐

a. **art-director r-N image** — §17.1 ~ §17.4 + §17.6 5 우표 baseline image 발행 (terrain-visual-rules-v0 §2 6 항 직접 인용 prompt baseline 신규 박음). r5 인계 (cy-002 r5 인계) 1 위 그대로.
b. **art-director r-N thin-bump** — visual-bible v0.4 → v0.5 thin-bump (§11.2 hex baseline + §17 8 우표 풀 publishing surface 노출 + 본 r8 §2/§3 흡수). 임계 = §2 8 지형 중 ≥ 4 지형 image 실측 박힘 (현재 = 산골 1 + 도시 한복판 1 = 2 지형 실측 = 임계 미달).
c. **writer r-N (character-sheets 패치)** — 8 자리 character-sheets 의 frontmatter `region` + `terrain` + 일상 풍경 단락 박음 (regions v1 §8 후보 직접 흡수 / F-1310 must_fix #3).
d. **writer r-N (episode-09)** — 신규 회차 박힘 시 본문 풍경 단서 1~2 줄 (F-1310 must_fix #4) + frontmatter episode_thumb (본 r8 §7 룰 적용).
e. **critic r-N** — cold-read *공간감* 신규 항 박음 (F-1310 must_fix #7) — *이 인물 어디 사는가* 5 분 즉답 측정.
f. **loremaster r-N** — terminology-layers-v0 확장 자리 (F-1310 must_fix #6 — 손금 새벽 / 자국빛 / 손금 / 자국 / 결 / 흙 / 박음 7 어휘 층위 분리표 1 페이지 baseline 도달 자리).

## TICK_SUMMARY 후보 한 줄

art-director r8 cy-003 (tick-071) — F-20260502-1310 응답 1 호 = `terrain-visual-rules-v0.md` sibling spec 박음. 8 지형 (산골/들녘/강가/포구/구릉/분지/도시 변두리/도시 한복판) × 6 항 시각 룰 (구도/붓 결/농담/종이 결/안개/인물 배치) + 6 권역 (새벽재/옅은들/자국강/흙포구/굳은마을/빽빽골목) 시각 톤 + §17 8 우표 풀 사후 짝맞춤 + episode_thumb 풍경 단서 룰 baseline 박음. visual-bible v0.4 본문 0 변경 / image 발행 0 / 신규 사실 0 = sibling spec 박음 3 호 도달 (palette-patch-v0 + stamps-extension-v0 위 본 v0). target_orgs_advanced = F-20260502-1310 must_fix #5 art-director 영역 baseline 도달. scope_reduced 자리 자가 적용 시퀀스 8 호 누적.
