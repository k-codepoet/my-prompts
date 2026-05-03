---
world_id: the-map-is-the-journey
artifact: world-bible
version: v0.7
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 12
authored_by: loremaster
mode: thin-patch (regions v1.1 + terrain v1 + 5 결 부속 + 5 산 부속 3 축 흡수 박음)
supersedes: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v1.1.md  # 6 권역명 1 차 축 (v1 → v1.1 한국 토착 어휘 1:1 치환 박음 후속, loremaster r14 + r15)
source_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md  # 8 지형 2 차 축 (권역 위)
source_regions_v0: outputs/worldbuilding/the-map-is-the-journey/regions-v0.md  # 5 결 부속 축 (격하 박음)
source_terrain_v0: outputs/worldbuilding/the-map-is-the-journey/terrain-v0.md  # 5 산 부속 축 (격하 박음)
source_feedback: feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
acks_feedback: [F-20260502-1310-terrain-as-actual-living-geography]
champion_keyword: 방향
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본문 7 키워드 *직접 인용 0/7*. 6 권역명 + 8 지형은 토착 어휘 + *굳은 자국* 그림 위 카테고리화.
  - #2 단일 진실: bible v0.6 §1~§14 본문 0 변경 + regions v1.1 + terrain v1 + regions v0 + terrain v0 직접 흡수. 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0 (3 축 매핑 = 기존 산출물 1:1 박음).
  - forbidden-language §1~§8 grep — 본 v0.7 신규 §§ 본문 적중 0.
---

> **§0 Superseded by v0.8 (2026-05-03, cy-003 r18, D-20260503-001 step 5 응답).** 활성 baseline = [bible-v0.8.md](./bible-v0.8.md) (의식 이름 *손금 새벽* 폐기 + 행동만 baseline + vocabulary-shift v1 §1 1:1 인계). 본 v0.7 = §15 *공간 단위 3 축 박음* baseline 자리로 보존 — v0.8 §1~§17 = 본 v0.7 직접 인용 자리.

> **§0 (이전) 현재 baseline (v0.7).** 본 v0.7 = v0.6 (인물 8 자리 절 baseline + 다축 박음 룰) 위 *공간 단위 3 축 박음* (§15 신규) 두 자리 박음의 thin-patch. v0.6 §1~§14 본문 0 변경 / 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 사건 0. F-1310 응답 자리 = R0 사용자 진단 (*terrain 은 사람 사는 지형*) 의 bible 단위 absorption baseline.

> **참조**: v0.6 §1~§14 본문 그대로 (변동 0). 본 v0.7 = §15 신규 *공간 단위 3 축 박음 룰* + §16 변경 요약 + §17 forbidden grep + 매니페스토 인용 0 자가 통과만 박음.

# 여정 자체가 지도 — 세계 바이블 v0.7 (공간 단위 3 축 박음 baseline)

## §1~§14 — v0.6 본문 0 변경 보존

bible-v0.6.md §1 (백지의 새벽) ~ §14 (v0.5 → v0.6 변경 요약) 전체 = **본문 0 변경 보존** (thin-patch 의무 1:1 자가 적용). 본 v0.7 = §15 신규 추가만.

## §15. 공간 단위 3 축 박음 룰 (regions v1.1 + terrain v1 + 5 결/5 산 부속 흡수)

> 본 §15 = 한 *자리* (사람이 살고 자국이 박히는 공간) 가 *권역* (실제 지역명) × *지형* (물리 형태) × *결* (분위기 부속) × *산* (흙 분류 부속) 4 축 위에 박힘 룰. 1 차 축 2 자리 (권역 + 지형) + 부속 축 2 자리 (결 + 산) = 4 축 매핑. R0 사용자 진단 (F-1310): *terrain 은 사람 사는 지형의 형태가 되어야 하는데 ... 항목들 구체화한 다음 인물에게 할당해야 할거같아* — 본 §15 의 박음 자리 (인물 거주 할당은 writer character-sheets 영역 보전).

### §15.1 1 차 축 A — 6 권역명 (regions v1.1 흡수)

| 권역명 | 지형 묶음 | 분위기 결 (5 결 부속 1 위) | 1 차 source |
|-------|---------|--------------------------|-------------|
| **새벽재** (the Dawn Pass) | 산골 | 침대 박차 | regions v1.1 §1 |
| **옅은들** (the Faint Plains) | 들녘 | 음습한 길 | regions v1.1 §2 |
| **느릿내** (the Slow Stream) | 강가 | 자국빛 | regions v1.1 §3 |
| **마른포** (the Dry Port) | 포구 | 도착-아닌-여정 | regions v1.1 §4 |
| **늘재** (the Long Pass) | 분지 + 구릉 | 의지소 | regions v1.1 §5 |
| **빽빽골** (the Dense Alley) | 도시 변두리 + 도시 한복판 | 도착-아닌-여정 (통과의 산형 비극 변주) | regions v1.1 §6 |

> 6 권역 = bible 안 *지역* 의 1 차 축 (실제 지명). 권역명 = 토착 어휘 박음 (외래 명사 0). 권역 분포 = 한반도 풍토 1:1 차용 0 / 본 세계 *굳은 자국* 위 카테고리화 (bible v0.5 §6).

### §15.2 1 차 축 B — 8 지형 (terrain v1 흡수, 권역 위에 박힘)

| 지형 | 풍경 핵심 1 행 | 권역 매핑 | 1 차 source |
|-----|--------------|---------|-------------|
| 1. 산골 | 비탈 + 좁은 길 + 새벽 안개 | 새벽재 | terrain v1 §1 |
| 2. 들녘 | 평지 + 분산 마을 + 사방 바람 | 옅은들 | terrain v1 §2 |
| 3. 강가 | 강 + 한 줄 마을 + 옅은 자국 줄 | 느릿내 | terrain v1 §3 |
| 4. 포구 | 가장자리 + 떠남·돌아옴 + 짠 흙 | 마른포 | terrain v1 §4 |
| 5. 구릉 | 곡선 + 넓고 낮은 거주 + 긴 햇볕 | 늘재 | terrain v1 §5 |
| 6. 분지 | 산에 둘러싸인 평지 + 두꺼운 흙 | 늘재 | terrain v1 §6 |
| 7. 도시 변두리 | 옮겨 온 결 + 익명 흙 시작 | 빽빽골 | terrain v1 §7 |
| 8. 도시 한복판 | 익명 결 + 사방 자국 | 빽빽골 | terrain v1 §8 |

> 8 지형 = 사람이 *실제로 사는* 물리 카테고리. 6 권역 위에 박힘 (1 권역 = 1~2 지형 묶음). 지형 = 외형 (terrain), 권역 = 지명 (regions). 두 축은 *겹치지만 같지 않다*.

### §15.3 부속 축 C — 5 결 (regions v0 격하 박음)

| 결 | 자리의 본질 | 권역 1 위 | 1 차 source |
|----|----------|---------|-------------|
| 침대 박차 | *받음 / 첫 자국* | 새벽재 | regions v0 §1 |
| 음습한 길 | *지나야 하는 자리 / 옅음* | 옅은들 | regions v0 §2 |
| 의지소 | *방향 가속* | 늘재 | regions v0 §3 |
| 도착-아닌-여정 | *지속 / 도착점 없음* | 마른포 + 빽빽골 | regions v0 §4 |
| 자국빛 | *자기 자국 잠깐 보임 (시야)* | 느릿내 | regions v0 §5 |

> 5 결 = 권역의 *분위기 부속*. 한 권역 = 1 결 1 위 + 다른 결 다발 (regions v1.1 §1~§6 *5 지역 결 부속* 표). 한 사람 = 6 권역 안 1 권역 거주 + 5 결 모두 분포 (한 결 단독 거주 0).

### §15.4 부속 축 D — 5 산 (terrain v0 격하 박음)

| 산 | 흙 외형 | 지형 1 위 | 1 차 source |
|----|--------|---------|-------------|
| 사랑의 산 | 한 자리 진심 + 한 점 향함 | 산골 + 포구 | terrain v0 §1 |
| 일의 산 | 균질 방향 + 균질 진심 (완만 + 넓음) | 들녘 + 늘재 | terrain v0 §2 |
| 후회의 산 | 반대 방향 자국이 같은 자리 (두 봉우리) | 강가 + 옅은들 | terrain v0 §3 |
| 기다림의 산 | 한 점 진심 (봉) | 산골 + 포구 | terrain v0 §4 |
| 통과의 산 | 여러 사람 한 번씩 자국 (낮고 넓음) | 빽빽골 + 강가 | terrain v0 §5 |

> 5 산 = 지형 위에 *어떤 산이 굳어 있는가* 의 흙 분류 부속. 한 지형 = 한 산이 자주 굳음 1 위 + 다른 산도 박힘. 한 사람 = 8 인물 풀 안 큰 산 1~2 자리 (character-relations v0.1 §1.2 5/3/3 매트릭스 = 큰 산 분포). 본 v0.7 §15 다축 룰 안 *큰 산 = 부속 축 D 의 자리 = 한 사람의 4 축 좌표 중 1 자리*.

### §15.5 4 축 다축 박음 룰

한 *자리* (사람 1 인 + 살고 있는 공간) 의 4 축 좌표 = (A 권역, B 지형, C 결 다발, D 산 다발). 4 축 분배:

- **A 권역** = 1 자리 (한 사람 = 한 권역 거주 baseline). 예외 = *세대 단위 시간차 동행* (chronicle v1.1 §4.2) 의 *옮긴 권역* 시점 = 2 권역 좌표 (이전 + 현재).
- **B 지형** = 1~2 자리 (권역 안 지형 묶음 = 산골 단독 / 분지+구릉 / 변두리+한복판 등). 한 사람 = 거주 권역 안 1 차 지형 + 인접 지형 1 자리 (인접 0 = 단독).
- **C 결 다발** = 1 위 결 1 자리 + 부속 결 1~2 자리 (한 사람 = 5 결 모두 분포 / 큰 자리 = 1~2). 권역의 1 위 결 = 거주 사람의 1 위 결 baseline (변주 = 인물 voice-signature 자리).
- **D 산 다발** = 큰 산 1~2 자리 (character-relations v0.1 §1.2 5/3/3 = 큰 산 분포). 큰 산이 박힌 지형 = 1 위 (한 사람 = 거주 지형 위 큰 산이 굳음 baseline).

> 4 축 = *공간* (A + B) + *결* (C) + *흙* (D). 한 사람 = (1, 1~2, 1+1~2, 1~2) 좌표 = 6~10 자리. 4 축 좌표 박음 = 인물 *어디 사는가* + *어떤 결로 사는가* + *어떤 흙이 굳었는가* 통일 박음 (writer character-sheets 1 인 1 절 4 축 좌표 박음 후보 = writer 영역 인계).

### §15.6 4 축 × 8 인물 좌표 baseline (writer 영역 인계 자리)

> **본 §15.6 = 4 축 좌표 박음 룰 baseline 만 박음** (1 인 1 절 본문 = writer character-sheets 영역). 본 baseline = writer r-N 자리 인계 (영역 침범 0). 본 표 = 4 축 좌표 자리 박음 *형식* 만 박음.

| 인물 | A 권역 | B 지형 | C 1 위 결 | D 큰 산 | source 인계 |
|------|------|------|----------|--------|-----------|
| 해온 | TBD (writer) | TBD | 침대 박차 (※인접) | 사랑의 산 | bible v0.6 §12.1 + writer character-sheets |
| 정해 | TBD | TBD | 침대 박차 | (큰 산 ≠) | bible v0.6 §12.2 |
| 나림 | TBD | TBD | 자국빛 (한 번 봄) | 후회의 산 (한 단면) | bible v0.6 §12.3 |
| 유경 | TBD | TBD | 도착-아닌-여정 | 사랑의 산 + 함께 걸은 자리 | bible v0.6 §12.4 |
| 인규 | TBD | TBD | 의지소 → 도착-아닌-여정 | 일의 산 (옆자리) | bible v0.6 §12.5 |
| 연강 | TBD | TBD | 음습한 길 (방향 분명) | 후회의 산 (가족 자리) | bible v0.6 §12.6 |
| 희재 | TBD | TBD | 의지소 | 일의 산 | bible v0.6 §12.7 |
| 유리 | TBD | TBD | 도착-아닌-여정 | 통과의 산 (한 단면) | bible v0.6 §12.8 |

> **A + B 두 축 = TBD = writer 영역 인계 자리.** writer character-sheets 8 인물 시트에 거주 권역 + 지형 박음 자리 (F-1310 must_fix #3 자리 = writer 영역 안 자리). C + D 두 축 = bible v0.6 §12 + character-relations v0.1 안 박힘 자리 1:1 흡수 (loremaster 영역 안 자리). 본 §15.6 = *4 축 좌표 박음 형식 baseline + lore 측 박힌 2 축 박음 + writer 측 박을 2 축 자리 명시* 박음.

### §15.7 트립와이어 (4 축 박음 룰 위반 발화 조건)

- **권역 외 거주 인물 발의** = 6 권역 외 신규 권역 발의 시 본 §15 baseline 위반 → bible v0.8 개정 선행 (loremaster 영역 안).
- **지형 외 신규 지형 발의** = 8 지형 외 신규 지형 발의 시 terrain v1 → terrain v2 박음 선행 (loremaster 영역 안).
- **결 결합 비충돌** = 한 사람의 1 위 결이 거주 권역의 1 위 결과 다를 때 = *변주* 자리 (위반 0). 다만 *변주 단독* 박음 시 voice-keeper r-N audit 자리 (인물 voice-signature 자리 정합).
- **산 분포 비충돌** = 한 사람의 큰 산이 거주 지형의 1 위 산과 다를 때 = *변주* 자리 (위반 0). 다만 *큰 산 = 거주 지형 0 위* 박음 시 character-relations v0.1 §1.2 5/3/3 매트릭스 갱신 자리 (loremaster 영역 안).
- **인물 시트 안 4 축 좌표 누락** = writer character-sheets 신규 박음 시 4 축 (A + B + C + D) 모두 박음 의무 = 누락 1 축 ≥ 1 자리 시 critic r-N cold-read FAIL 가산 점수 차감 (F-1310 must_fix #3 자리 정합).

## §16. v0.6 → v0.7 변경 요약

| 자리 | v0.6 | v0.7 | 변동 |
|------|-----|------|------|
| §1~§14 | baseline | baseline | **본문 0 변경** |
| §15 공간 단위 3 축 박음 룰 | — | 박음 (§15.1 6 권역 + §15.2 8 지형 + §15.3 5 결 부속 + §15.4 5 산 부속 + §15.5 4 축 다축 룰 + §15.6 8 인물 좌표 baseline + §15.7 트립와이어) | **신규 §** |
| §0 *현재 baseline (v0.7)* 헤더 | — | 박음 | **신규 1 blockquote** |
| frontmatter 7 자리 신규 | (v0.6 frontmatter 9 자리) | source_regions / source_terrain / source_regions_v0 / source_terrain_v0 / source_feedback / acks_feedback / mode 7 자리 추가 | **frontmatter +7** |

본 v0.7 = thin-patch (loremaster cy-002 r4 + cy-003 r1 thin-patch 형식 1:1 자기 적용 = thin-patch mode loremaster 측 4 호 사례) = 본문 0 변경 + 신규 § 1 자리 (7 sub-§) + frontmatter 7 자리 신규 + §0 baseline 헤더.

## §17. forbidden-language §1~§8 grep 자가 통과 + 매니페스토 직접 인용 0

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

매니페스토 7 키워드 (`진심·움직임·자립·연대·축복·시간이 곧 나·방향`) 본문 직접 인용 = **0/7**. 자가 의무 33 호 누적.

---

> 본 v0.7 = bible 안 *공간 단위 3 축 박음 룰* baseline = F-1310 응답의 bible 단위 absorption 자리 + G-WORLD-1 진척 박음. v0.6 §0 *현재 baseline* 헤더 → *Superseded by v0.7* 후속 박음 (loremaster r4 형식 1:1 자기 적용 = post-supersede 포인터 stale 처치 도구 그물 8 호 도달).
