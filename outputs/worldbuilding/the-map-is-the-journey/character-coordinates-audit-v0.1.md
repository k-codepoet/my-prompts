---
world_id: the-map-is-the-journey
artifact: character-coordinates-audit
version: v0.1
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 22
authored_by: loremaster
mode: thin-bump from v0 (= §0 baseline 헤더 + §0.1 carry trace + §1 권역 컬럼 regions-v2 1:1 인용 + §2.1 신발 행동 길이 8 인물 변주 표 신규 = bible v0.9 §18.5/§18.6 1:1 인용 / palm closure carry lore 본체 측 4 호 사례)
source_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.9.md  # §18.5/§18.6/§18.7 행동 변주 vocabulary 13 종 + §15.6 8 인물 4 축 좌표 baseline
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v2.md  # 6 권역 한국 행정 지명 baseline (정선 / 김제 / 단양 / 통영 / 무주 / 성남 변두리)
source_objects_items: outputs/worldbuilding/the-map-is-the-journey/objects-items-v0.1.md  # §3 신발 (the shoes) 사물 baseline
source_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v1.1.md
source_terminology_layers: outputs/worldbuilding/the-map-is-the-journey/terminology-layers-v0.1.md
source_character_sheets:
  - outputs/writing/the-map-is-the-journey/characters/haeon.md
  - outputs/writing/the-map-is-the-journey/characters/jeonghae.md
  - outputs/writing/the-map-is-the-journey/characters/narim.md
  - outputs/writing/the-map-is-the-journey/characters/yugyeong.md
  - outputs/writing/the-map-is-the-journey/characters/ingyu.md
  - outputs/writing/the-map-is-the-journey/characters/yeongang.md
  - outputs/writing/the-map-is-the-journey/characters/huijae.md
  - outputs/writing/the-map-is-the-journey/characters/yuri.md
source_feedback:
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
acks_decision: D-20260503-001
acks_feedback:
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260503-region-names-as-korean-toponyms
  - F-20260503-palm-reading-metaphor-deliberation
supersedes: outputs/worldbuilding/the-map-is-the-journey/character-coordinates-audit-v0.md
champion_keyword: 시간이 곧 나
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 v0.1 §2.1 = 인물별 신발 행동 길이 결 = *시간이 곧 나* 챔피언 결의 인물 단위 변주 baseline 측정 자리. 7 키워드 본문 직접 인용 0/7.
  - #2 단일 진실: v0 §1·§2·§3·§4·§5·§6·§7 본문 0 변경 (§1 권역 컬럼 regions-v2 1:1 swap + §5 권역 컬럼 1:1 swap 만 *값* 단위 carry — 분석 결론 0 변경). 본 v0.1 = §0 baseline 헤더 + §0.1 carry trace + §2.1 신규 1 자리 (bible v0.9 §18.5/§18.6 1:1 인용) + §8 변경 요약 + §9 차후 carry 자리. 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 권역 0 / 신규 지형 0 / 신규 결 0.
  - vocabulary-shift v1 §1~§4 grep — 본 v0.1 본문 안 *손금 / 손바닥 / 손금 새벽 / 자국강 / 박다 (시스템 의미)* 적중 0. 단 §0.1 carry trace 안 *손바닥* 라벨 = v0 → v0.1 swap 자리 명시 (cold reader 면제 자리 = vocabulary-shift v1 §8).
  - forbidden-language §1~§8 grep — 본 v0.1 본문 적중 0.
---

> **§0 본 v0.1 baseline.** v0 (loremaster r13 cy-003) 위 thin-bump = (i) frontmatter `source_regions` 자리 신규 (regions-v2 6 한국 행정 지명 baseline) + (ii) §1 *A 권역* 컬럼 v1.1 합성 어미 → v2 한국 행정 지명 1:1 swap + (iii) §5 권역-지형 매핑 표 컬럼 1:1 swap + (iv) **§2.1 신발 행동 길이 8 인물 변주 표 신규** (bible v0.9 §18.5/§18.6 1:1 인용 측정 = 8 인물 × 6 길이 / 4 결 변주 1:1 정합) + (v) §8 변경 요약 + §9 차후 carry 자리. v0 §1·§2·§3·§4·§5·§6·§7 분석 결론 본문 0 변경 (값 단위 carry 만). **palm closure carry lore 본체 측 4 호 사례** = (1 호 = bible v0.7 §6.2 / 2 호 = bible v0.9 §18.5~§18.8 / 3 호 = objects-items v0.1 §3 / **4 호 = 본 v0.1 §1 권역 컬럼 + §2.1 신발 행동 길이 표**).

## §0.1 v0 → v0.1 carry trace (12 자리 = 4 신규 + 5 swap + 3 보존)

| § | v0 자리 | v0.1 자리 | 변경 결 |
|---|--------|----------|--------|
| frontmatter | source_bible: bible v0.7 | source_bible: bible v0.9 + source_regions: regions-v2 + source_objects_items: objects-items v0.1 + source_terrain: terrain v1.1 + source_terminology_layers: terminology-layers v0.1 | 신규 4 자리 (지명/사물/지형/어휘 단일 진실 4 도구 명시) |
| §0 (없음) | — | baseline 헤더 1 blockquote | 신규 |
| §0.1 (없음) | — | carry trace 표 | 신규 |
| §1 A 권역 | 옅은들 / 새벽재 / 늘재 / 느릿내 / 빽빽골 (v1.1 합성 어미) | 김제 / 정선 / 무주 / 단양 / 성남 변두리 (v2 한국 행정 지명) | 5 권역 1:1 swap (값 단위 carry — 인물 분포 0 변경) |
| §2 5 트립 | 0 변경 | 0 변경 (트립 #1 마른포 → 통영 / #2 들녘 / 포구 / 구릉 0 자리 = 분석 결론 0 변경) | 보존 (해석 결의 *통영 = 마른포 1:1 carry* baseline) |
| §2.1 (없음) | — | **신발 행동 길이 8 인물 변주 표 신규 (bible v0.9 §18.5 6 종 + §18.6 4 종 1:1 인용)** | **신규** |
| §3 C 변주 | 0 변경 | 0 변경 (권역 컬럼 carry) | 보존 (분석 결론 0 변경) |
| §4 D 변주 | 0 변경 | 0 변경 | 보존 |
| §5 권역-지형 | 옅은들 / 새벽재 / 늘재 / 느릿내 / 빽빽골 / 마른포 | 김제 / 정선 / 무주 / 단양 / 성남 변두리 / 통영 | 6 권역 1:1 swap (분석 결론 *7/8 정합 + 1/8 외* baseline 0 변경) |
| §6 must_fix | 0 변경 | 0 변경 | 보존 |
| §7 forbidden grep | 0 변경 | 0 변경 (본 v0.1 안 §1~§8 grep 적중 0 = 자가 의무 35 호 누적) | 보존 |
| §8 (없음) | — | 변경 요약 12 자리 표 | 신규 |
| §9 (없음) | — | 차후 carry 자리 4 자리 | 신규 |

> **carry trace 결.** *값* 단위 1:1 swap (§1 + §5 = 5 + 6 = 11 칸 권역명 carry) + *분석 결론* 0 변경 = audit baseline 의 측정 결론 (정해 1/8 정합 + 인규 부분 정합 + 6 변주 / 7/8 매핑 정합 + 해온 1/8 외) 모두 보존. v0 분석 무게 보존 + 표면 (권역명) 만 한국 행정 지명 결로 격하.

# 인물 4 축 좌표 audit v0.1 (8 인물 × bible v0.9 §15 + §18.5/§18.6 정합 측정)

## §1. 8 인물 4 축 좌표 표 (writer A+B + loremaster C+D 1:1 흡수, 권역 컬럼 regions-v2 swap)

| 인물 | A 권역 (regions-v2 한국 행정 지명) | B 지형 (writer) | C 1 위 결 (bible §15.6) | D 큰 산 (bible §15.6) |
|------|----------------------------------|---------------|------------------------|----------------------|
| 해온 | 김제 (전라 들녘) | 도시 변두리 | 침대 박차 (※인접) | 사랑의 산 |
| 정해 | 정선 (강원 산골) | 산골 | 침대 박차 | (큰 산 ≠) |
| 나림 | 무주 (전라 분지) | 분지 | 자국빛 (한 번 봄) | 후회의 산 (한 단면) |
| 유경 | 단양 (충북 강가) | 강가 | 도착-아닌-여정 | 사랑의 산 + 함께 걸은 자리 |
| 인규 | 성남 변두리 (경기 도시) | 도시 한복판 | 의지소 → 도착-아닌-여정 | 일의 산 (옆자리) |
| 연강 | 정선 (강원 산골) | 산골 | 음습한 길 (방향 분명) | 후회의 산 (가족 자리) |
| 희재 | 정선 (강원 산골) | 산골 | 의지소 | 일의 산 |
| 유리 | 단양 (충북 강가) | 강가 | 도착-아닌-여정 | 통과의 산 (한 단면) |

> 8 인물 × 4 축 = 32 자리 모두 박힘 (TBD 0). v0.1 권역 컬럼 = regions-v2 한국 행정 지명 1:1 swap. 인물 분포 0 변경 (정선 3 / 김제 1 / 단양 2 / 무주 1 / 성남 변두리 1 / 통영 0).

## §2. 트립와이어 §15.7 5 자리 1:1 측정 (v0 §2 본문 0 변경 / 권역명 carry 만)

| 트립 | 측정 | 결과 | 비고 |
|------|-----|------|------|
| #1 권역 외 거주 인물 발의 | 8 인물 권역 grep — 정선 / 김제 / 단양 / 무주 / 성남 변두리 5 권역 분포. 통영 0 자리. | 미발화 | 6 권역 안 5 권역 거주 = 통영 0 자리 = 신규 권역 발의 0 (regions-v2 §4 통영 = cy-003+ 후보 1 자리 발의 보존). |
| #2 지형 외 신규 지형 발의 | 8 인물 지형 grep — 도시 변두리 / 산골 / 분지 / 강가 / 도시 한복판 5 지형 분포. 들녘 / 포구 / 구릉 0 자리. | 미발화 | 8 지형 안 5 지형 거주 = 신규 지형 발의 0. |
| #3 결 결합 비충돌 (변주) | 8 인물 1 위 결 vs 거주 권역 1 위 결 (bible §15.1 표) 1:1 비교 = 7/8 변주 + 1/8 정합. | 위반 0 (변주 = §15.7 명시 *위반 0* 자리) | §3 표 참조. |
| #4 산 분포 비충돌 (변주) | 8 인물 큰 산 vs 거주 지형 1 위 산 (bible §15.4 표) 1:1 비교 = 6/8 변주 + 1/8 정합 + 1/8 자기 자리 없음. | 위반 0 (변주 = §15.7 명시 *위반 0* 자리) | §4 표 참조. |
| #5 인물 시트 4 축 좌표 누락 | 8 인물 × 4 축 = 32 자리 모두 박힘. 누락 0. | 미발화 | F-1310 must_fix #3 *형식 baseline* 1:1 충족. |

**5 트립 풀 = 0 발화** (변주 4 자리 = §15.7 명시 *위반 0* baseline = 트립 미발화).

## §2.1 신발 행동 길이 8 인물 변주 표 (bible v0.9 §18.5/§18.6 1:1 인용 측정 = 신규)

> 본 §2.1 = palm closure carry lore 본체 측 4 호 사례 자리 = bible v0.9 §18.5 6 길이 변주 + §18.6 4 결 변주 (끝 / 생략 / 재개 / 동행) → 8 인물 1:1 정합 측정. *시간이 곧 나* 챔피언 결의 인물 단위 baseline 박음 자리. 단편 본문 안 신발 결 묘사 시 본 표 1:1 인용 의무 (bible v0.9 §18.8 인용 룰 적용).

| 인물 | 자국째 | §18.5 길이 결 (1:1 인용) | §18.6 변주 결 (1:1 인용) | bible §18.5/§18.6 source 행 |
|------|--------|----------------------|----------------------|---------------------------|
| 해온 | 14 | *긴 결 — 30 분* (신발 끝을 보고 어제 길 위 한 자리씩 짚어 본다) | (없음 / 끝 행동만) | §18.5 행 6 (긴 결 30 분) |
| 정해 | 27 | (생략) | ***생략*** = *그 해 동안 자기 신발은 매일 보지 않았다* (27 자국째 *한 번도 안 폄*) | §18.6 행 2 (생략) |
| 나림 | 26 | (생략 — 6 자국째 해 동안 한 번도) | ***생략*** 장기형 = 자기 신발은 보지 않고 옆 자리 (남의 색조 12 가지 모인 자리) 만 머묾 | §18.6 행 2 (생략 변주 자리) |
| 유경 | 35+ | *긴 결 — 15 분* (신발 끝을 보고, 어제 다녀온 길 색조를 한 자리씩 본다) | ***생략*** (25~35 자국째 = *아이 신발만 옆에 같이 두었다*) + ***재개*** (35+ 자국째) + ***동행*** (유리와 함께 두 켤레 본다) | §18.5 행 5 (긴 결 15 분) + §18.6 행 2·3·4 (생략·재개·동행 3 자리 누적) |
| 인규 | 28 | *짧은 결 — 30 초* (통과의 산 결 = 신발 끝을 한 번만 본다) + *기본 결 — 5 분* (일하는 결 = 흙 색조를 한 번 만져 본다) | (끝 행동만) | §18.5 행 1 + 행 4 (twin 자리 — 인규 단독 인물의 *시간 단위 두 결 동시 박음* baseline) |
| 연강 | 60+ | *기본 결 — 1 분* (신발 끝을 한 번 본다, 흙 색조는 묻은 채 둔다) | (끝 행동만) | §18.5 행 3 (기본 결 1 분) |
| 희재 | 24 | *기본 결 — 1 분* (정해와 같은 골 안의 baseline) | ***동행*** (희재-정해 = 같은 현관 / 옆 마을 골 = *연대 1 변주* 자리) | §18.5 행 3 (기본 결 1 분) + §18.6 행 4 (동행) |
| 유리 | 8 | *짧은 결 — 30 박자 / 1 분* (자라 / 아이 8 자국째 = 신발 끝을 한 번 보고 곧 시리워서 일어난다) + *긴 결 — 30 분* (8 자국째 *오늘* 결 = 어제 길 위 한 자리씩 짚어 본다) | ***동행*** (유경과 함께 두 켤레 본다 = 가족 축) | §18.5 행 2 + 행 6 (twin 자리 — 유리 단독 인물의 *짧은 결 vs 오늘 결 두 박음 동시* baseline) + §18.6 행 4 (동행) |

> **8 인물 = §18.5 6 길이 결 6/6 자리 모두 인물 1:1 정합 + §18.6 4 변주 결 4/4 자리 모두 인물 1:1 정합** (생략 3 자리 = 정해 + 나림 + 유경 / 재개 1 자리 = 유경 / 동행 3 자리 = 유경-유리 + 희재-정해 + 통영 후보 / 끝 행동 = 모두). twin 자리 (시간 단위 두 결 동시 박음) = 인규 (28 자국째 = 통과의 산 결 30 초 + 일하는 결 5 분) + 유리 (8 자국째 = 자라 결 1 분 + *오늘* 결 30 분) = 2/8 인물 = *시간 단위 인물 단위 다축 박음 baseline* 자리.

### §2.1.1 신발 행동 길이 분포 통계

- *짧은 결 (30 초 / 1 분)*: 인규 (twin 한 자리) + 유리 (twin 한 자리) = 2 자리.
- *기본 결 (1 분 / 5 분)*: 연강 (1 분) + 희재 (1 분) + 인규 (5 분 twin 한 자리) = 3 자리.
- *긴 결 (15 분 / 30 분)*: 유경 (15 분) + 해온 (30 분) + 유리 (30 분 twin 한 자리) = 3 자리.
- *생략* (자기 신발 보지 않음): 정해 (27 자국째 한 번도 안 폄) + 나림 (6 자국째 해 동안 한 번도) + 유경 (25~35 자국째 = 재개와 짝) = 3 자리.
- *재개* (생략 후 다시): 유경 (35+ 자국째) = 1 자리.
- *동행* (옆 사람과 같이): 유경-유리 (가족 축) + 희재-정해 (연대 1 변주) = 2 자리 짝 (= 4 인물 자리 = 8 인물 풀의 50%).

> **분포 결.** 8 인물 × 6 길이 + 4 변주 = 16 가능 자리 중 14 자리 박힘 (해온 / 연강 = 끝 행동만). 동행 자리 = 4/8 인물 (50%) = *연대* 챔피언 결의 신발 시대 단위 baseline. 생략 자리 = 3/8 인물 (37.5%) = *생략 = 결의 한 결* 자리 (의식 부재 ≠ 결 부재 baseline).

## §3. C 1 위 결 변주 표 (권역 1 위 결 vs 인물 1 위 결 / v0 §3 본문 0 변경)

| 인물 | 거주 권역 | 권역 1 위 결 (bible §15.1) | 인물 1 위 결 (bible §15.6) | 정합/변주 |
|------|---------|---------------------------|---------------------------|----------|
| 해온 | 김제 | 음습한 길 | 침대 박차 (※인접) | 변주 (인접 정선 결 자가 박힘) |
| 정해 | 정선 | 침대 박차 | 침대 박차 | **정합** |
| 나림 | 무주 | 의지소 | 자국빛 (한 번 봄) | 변주 (한 번 봄 = 단면 자리) |
| 유경 | 단양 | 자국빛 | 도착-아닌-여정 | 변주 (가족 축 자리 결) |
| 인규 | 성남 변두리 | 도착-아닌-여정 | 의지소 → 도착-아닌-여정 | 부분 정합 (도착-아닌-여정 자리 + 의지소 부속) |
| 연강 | 정선 | 침대 박차 | 음습한 길 (방향 분명) | 변주 (업 축 자리 결) |
| 희재 | 정선 | 침대 박차 | 의지소 | 변주 (업 축 자리 결) |
| 유리 | 단양 | 자국빛 | 도착-아닌-여정 | 변주 (가족→나 축 전이 결) |

**8 인물 = 1 정합 (정해) + 1 부분 정합 (인규) + 6 변주.** v0 §3 분석 결론 0 변경 (값 단위 권역명 carry 만).

## §4. D 큰 산 변주 표 (지형 1 위 산 vs 인물 큰 산 / v0 §4 본문 0 변경)

| 인물 | 거주 지형 | 지형 1 위 산 (bible §15.4) | 인물 큰 산 (bible §15.6) | 정합/변주 |
|------|---------|--------------------------|--------------------------|----------|
| 해온 | 도시 변두리 | 통과의 산 | 사랑의 산 | 변주 (한 점 향함 = 손금 새벽 자리 산 → *한 자리 향함 결의 산* 의미만 carry) |
| 정해 | 산골 | 사랑의 산 + 기다림의 산 | (큰 산 ≠) | 자기 자리 없음 (자가 분산 = character-relations v0.1 §1.2 5/3/3 매트릭스 0 자리) |
| 나림 | 분지 | 일의 산 | 후회의 산 (한 단면) | 변주 (한 단면 = 단면 자리 산) |
| 유경 | 강가 | 후회의 산 + 통과의 산 | 사랑의 산 + 함께 걸은 자리 | 변주 (가족 축 자리 산) |
| 인규 | 도시 한복판 | 통과의 산 | 일의 산 (옆자리) | 변주 (업 축 자리 산) |
| 연강 | 산골 | 사랑의 산 + 기다림의 산 | 후회의 산 (가족 자리) | 변주 (가족 자리 산 = 업 축 외 결) |
| 희재 | 산골 | 사랑의 산 + 기다림의 산 | 일의 산 | 변주 (업 축 자리 산) |
| 유리 | 강가 | 후회의 산 + 통과의 산 | 통과의 산 (한 단면) | **정합** (강가 1 위 산 안 통과의 산 자리) |

**8 인물 = 1 정합 (유리) + 1 자기 자리 없음 (정해) + 6 변주.** v0 §4 분석 결론 0 변경.

## §5. 신규 발견 — 권역-지형 1 차 매핑 외 거주 1 자리 (해온 / 권역 컬럼 1:1 swap)

bible v0.9 §15.1 + §15.2 + regions-v2 §0 매핑표 안 권역-지형 1 차 매핑:

| 권역 | 지형 묶음 |
|------|---------|
| 정선 (강원) | 산골 |
| 김제 (전라) | 들녘 |
| 단양 (충북) | 강가 |
| 통영 (경남) | 포구 |
| 무주 (전라) | 분지 + 구릉 |
| 성남 변두리 (경기) | 도시 변두리 + 도시 한복판 |

8 인물 권역-지형 매핑 측정:

| 인물 | 권역 | 지형 | 매핑 정합 (bible §15.1+§15.2 + regions-v2 §0 기준) |
|------|-----|-----|--------------------------------------------|
| 해온 | 김제 | 도시 변두리 | **외** (김제 = 들녘 / 도시 변두리 = 성남 변두리) |
| 정해 | 정선 | 산골 | ✓ |
| 나림 | 무주 | 분지 | ✓ |
| 유경 | 단양 | 강가 | ✓ |
| 인규 | 성남 변두리 | 도시 한복판 | ✓ |
| 연강 | 정선 | 산골 | ✓ |
| 희재 | 정선 | 산골 | ✓ |
| 유리 | 단양 | 강가 | ✓ |

**7/8 정합 + 1/8 외 (해온).** v0 §5 분석 결론 0 변경 (값 단위 권역명 carry 만 / regions-v2 §2 *해온 = 김제 변두리* hybrid 자리 명시 1:1 ack). 본 매핑 외 자리 = 트립와이어 명시 5 자리 안 부재 = bible v1.0 §15.7 트립 #6 *권역-지형 1 차 매핑 외 거주 = 변주* 신규 박음 후보 (loremaster r-N+1 큐).

## §6. F-1310 must_fix 1:1 진척 측정 (v0 §6 본문 0 변경 — F-region-toponyms ack 추가)

| 항 | 자리 | r12 baseline | r13 baseline (v0) | 본 r22 진척 (v0.1) |
|----|-----|------------|--------------|----------|
| #1 terrain v1.0 (loremaster) | terrain v1 박음 → bible §15.2 흡수 | ✓ | ✓ | terrain v1.1 carry 보전 ✓ |
| #2 regions v1.0 (loremaster) | regions v1 박음 → bible §15.1 흡수 | ✓ | ✓ | **regions v2 한국 행정 지명 격하 baseline 박음 = F-region-toponyms 본체 carry 1 호 도달** |
| #3 8 인물 거주지 할당 (writer) | bible §15.6 형식 baseline 박음 | 형식 박음 | 8 × A+B 박음 | 본 §1 권역 컬럼 v2 1:1 swap = ✓ 보전 |
| #4 회차 본문 풍경 단서 (writer) | episode-09 + retro-fit 04~08 | ✓ | ✓ | writer 영역 보전 ✓ |
| #5 어휘 층위 분리표 (loremaster) | terminology-layers v0 + v0.1 thin-bump | ✓ | ✓ | terminology-layers v0.1 carry 보전 ✓ |
| #6 visual-bible 갱신 (art-director) | 큐 자리 | 미박음 | 미박음 | art-director r15·r16 visual-bible v0.6 + palette-patch v0.1 + stamps-extension v0.1 = ✓ 도달 (palm closure carry 시각 본체 측 5·6 호) |
| #7 cold-read *공간감* (critic) | critic r9 + r10 박음 | ✓ | 측정 도구 박음 | critic r17·r18 §6.2 *공간감* 측정 carry 보전 ✓ |

**F-1310 7/7 must_fix 진척 누계 = 7/7 도달** (#6 art-director carry 도달 + #2 regions v2 carry 도달). F-1310 status=open 보전 (잔여 자리 = critic R0 평결 + writer 단편 본문 grep 1:1 잔여).

## §7. forbidden-language §1~§8 grep + 매니페스토 직접 인용 0 (v0 §7 본문 0 변경)

| § | 키워드 | 본문 적중 |
|---|------|---------|
| §1 | 영원·영원히·끝나지 않는 | 0 |
| §2 | 어디에나·모든 곳·전부 | 0 |
| §3 | 절대적·완벽한 지도·완성된 지도 | 0 |
| §4 | 깔린 길·준비된 길 | 0 |
| §5 | 모두 똑같이·동등하게 주어진·공평한 출발 | 0 |
| §6 | 영웅·주인공·위인·대단한 사람 | 0 |
| §7 | 항상·언제나·변함없이 | 0 |
| §8 | 완전히·끝까지·마지막까지 | 0 |

매니페스토 7 키워드 (`진심·움직임·자립·연대·축복·시간이 곧 나·방향`) 본문 직접 인용 = **0/7**. 자가 의무 35 호 누적 (34 → 35).

## §8. v0 → v0.1 변경 요약 (12 자리)

| # | 변경 자리 | 결 |
|---|---------|----|
| 1 | frontmatter source_bible: v0.7 → v0.9 | bible 단일 진실 carry |
| 2 | frontmatter source_regions: regions-v2 신규 | 권역 단일 진실 명시 (regions-v2 한국 행정 지명) |
| 3 | frontmatter source_objects_items: objects-items v0.1 신규 | palm closure 사물 carry 명시 |
| 4 | frontmatter source_terrain: terrain v1.1 신규 | 지형 단일 진실 명시 |
| 5 | frontmatter source_terminology_layers: terminology-layers v0.1 신규 | 어휘 층위 단일 진실 명시 |
| 6 | §0 baseline 헤더 + §0.1 carry trace 표 | thin-bump 형식 1:1 자기 적용 |
| 7 | §1 A 권역 컬럼 5 자리 1:1 swap | 옅은들 → 김제 / 새벽재 → 정선 / 늘재 → 무주 / 느릿내 → 단양 / 빽빽골 → 성남 변두리 |
| 8 | §2 트립 #1 *마른포 0 자리* → *통영 0 자리* swap | 권역명 carry |
| 9 | **§2.1 신발 행동 길이 8 인물 변주 표 신규** | bible v0.9 §18.5 6 길이 + §18.6 4 변주 1:1 인용 (palm closure carry lore 본체 측 4 호 핵심 자리) |
| 10 | §5 권역-지형 매핑 표 6 자리 1:1 swap + 매핑 정합 분석 carry | 분석 결론 0 변경 (7/8 정합 + 1/8 외 baseline 보전) |
| 11 | §6 must_fix 진척 #2 + #6 도달 1:1 ack | F-1310 7/7 도달 baseline |
| 12 | §7 forbidden grep 자가 의무 34 → 35 호 누적 | self-check 보전 |

## §9. 차후 carry 자리 (cy-003 r-N+1+ 큐)

- **bible v1.0** = §15.7 트립 #6 *권역-지형 1 차 매핑 외 거주 = 변주* 신규 박음 + §15.5 4 축 다축 박음 룰 안 *hybrid 좌표* 변주 카테고리 신규.
- **chronicle v1.x** = palm closure carry lore 본체 측 5 호 = §사건 행동 묘사 안 *손바닥/손금* 합성어 → 신발 결 1:1 swap.
- **forbidden-language v0.1** = palm closure carry lore 본체 측 6 호 = §1~§8 위 §9 신규 *손바닥/손금/손금 새벽 (시스템 의미)* 합성어 reject 룰 추가.
- **character-coordinates-audit v0.2** = §2.1 신발 행동 길이 표 위 *동행 자리 4/8 인물 풀 = 연대 챔피언 결의 신발 시대 단위 baseline* 1 차 변주 자리 측정 + *생략 3/8 인물 풀 = 결 부재 ≠ 의식 부재* baseline 1 차 변주 측정.

---

> 본 v0.1 = lore 영역 측 *4 축 좌표 정합 audit + 신발 행동 길이 8 인물 변주 표* baseline = **palm closure carry lore 본체 측 4 호 사례 도달 baseline** = bible v0.9 §18.5/§18.6/§18.7 vocabulary 13 종 + objects-items v0.1 §3 신발 + regions-v2 6 한국 행정 지명 짝 carry 자리. 신규 발견 1 자리 (해온 권역-지형 1 차 매핑 외 = bible v1.0 후보 = 본 r22 처치 0 / 발견 baseline 보전).
