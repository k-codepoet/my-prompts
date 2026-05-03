---
world_id: the-map-is-the-journey
artifact: terrain-visual-rules
version: v0
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 8
authored_by: art-director (scope_reduced — 단편 일러스트 한정 / §17 우표 배경 + episode_thumb 풍경 spec 자리)
mode: spec-only (image 발행 0 / 본문 신규 사실 0 / sibling spec 1 호 박음)
trigger: feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml must_fix #5 응답
applies_to:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-*.png  # §17.1 ~ §17.8 풀
  - outputs/writing/the-map-is-the-journey/episode-*.md  # frontmatter episode_thumb 짝맞춤 측
  - prompts/art/  # 차후 단편 일러스트 prompt baseline
binds:
  - outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md  # §1~§8 8 지형
  - outputs/worldbuilding/the-map-is-the-journey/regions-v1.md  # §1~§6 6 권역명 + §8 8 인물 거주지 후보
  - outputs/worldbuilding/the-map-is-the-journey/bible-v0.5.md  # §6 *굳은 자국* — 산/도시처럼 보이는 것은 굳은 자국
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md  # §17 8 우표 풀 + §11 8 인 hex
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md  # §1 매체 baseline (sumukhwa)
  - outputs/worldbuilding/the-map-is-the-journey/terminology-layers-v0.md  # 어휘 층위 분리표 (손금 새벽 = 시간 / 자국빛 = 시각)
acks_feedback:
  - F-20260502-1310-terrain-as-actual-living-geography
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본문 7 키워드 *직접 인용 0/7* (frontmatter `champions_keywords_*` 메타 자리만).
  - #2 단일 진실: terrain v1 §1~§8 + regions v1 §1~§6 + bible v0.5 §6 + visual-bible v0.4 §17 + tone-lock v0 §1 1:1 인용. 신규 사실 0.
  - #6 추적 가능성: binds 6 자리 frontmatter 직접 인용 + acks_feedback 1 자리.
  - #7 수동 검증 우선: 본 spec = 가이드 문서 / 자동화 0. image 발행 r-N 분리 박음.
  - forbidden-language §1~§8 grep 적중 0.
self_check: 5/5
---

# 지형 시각 룰 v0 — 8 지형 + 6 권역 sumukhwa baseline (§17 우표 배경 spec)

> **본 v0 자리.** terrain v1 §1~§8 의 8 지형 + regions v1 §1~§6 의 6 권역명 위에 *우표 배경 + episode_thumb 풍경* 의 시각 룰을 박는 sibling spec. visual-bible v0.4 §17 8 우표 풀 baseline 의 *배경 측 1 차 박음* 자리 — 기존 §17.1~§17.8 8 우표는 *인물 + 한 사물* 위주로 박혔고, 배경은 *공기 + 종이* 결로만 있었다. 본 v0 = *어느 지형의 새벽인지* 가 한눈에 보이도록 우표 배경 단서를 박는다. F-20260502-1310 must_fix #5 응답 spec.

> **scope.** 단편 일러스트 한정 (§17 우표 8 자리 + 차후 episode_thumb 짝). 게임 시각 자리 (walk-trace-spec / prototype 검수) 박음 0. image 발행 r-N 분리 박음.

---

## §1 매체 baseline 재인용 (tone-lock v0 §1)

Korean traditional ink-and-wash painting (sumukhwa, 수묵화) on rice paper. painterly brushwork visible, ink wash texture. *NOT* photograph / 3D render / CGI / hyperrealism.

본 v0 8 지형 시각 룰 = *sumukhwa baseline 위에서의 농담·구도·붓 결 변주*. 매체는 변하지 않는다.

---

## §2 8 지형 시각 룰 (terrain v1 §1~§8 직접 흡수)

각 지형 = (구도 골격 / 붓 결 방향 / 농담 범위 / 종이 결 처리 / 새벽 안개 처리 / 인물 배치 단서) 6 항. 우표 1 자리 발행 시 본 6 항 직접 인용 의무.

### §2.1 산골 (terrain v1 §1) — *비탈 + 좁은 길 + 한 줄 마을*

- **구도 골격**: 대각 비탈 1 자리 (왼위 → 오른아래 또는 그 거울). 구도 안에 한 줄 마을 = 1~3 채 작은 집의 처마 끝만 보이는 결.
- **붓 결 방향**: 비탈을 따라 위→아래 한 방향 stroke. 옆으로 흐르는 stroke 0 (옆으로 흐르면 들녘 결로 미끄러짐).
- **농담 범위**: 진한 폭 30% (비탈 흙) + 옅은 폭 50% (안개) + 종이 흰 폭 20% (하늘 + 새벽 빛 트인 자리).
- **종이 결 처리**: rice paper 결을 비탈과 같은 방향으로 깔음. 종이 결이 비탈에 *맞물림*.
- **새벽 안개 처리**: 다른 어느 지형보다 두껍고 길다. 안개가 골을 따라 한 방향으로 *흐르는* 결 — wet-on-wet wash 로 부드럽게.
- **인물 배치 단서**: 인물은 비탈 한 자리에 박힘. 비탈 위 (받은 자리) 또는 비탈 아래 (가는 자리) 둘 중 하나. 가운데 (애매한 자리) 박지 않음.

### §2.2 들녘 (terrain v1 §2) — *평지 + 분산 마을 + 사방 바람*

- **구도 골격**: 수평선이 화면 1/3 또는 2/3 자리. 인물이 평지 한 자리에 작게. 구도가 *옆으로 넓게* 펼쳐짐.
- **붓 결 방향**: 사방 stroke (옆으로 흐르는 stroke 가 본 지형의 결). 한 방향 stroke 0 (한 방향이면 산골 결로 미끄러짐).
- **농담 범위**: 옅은 폭 70% (들녘 흙 + 옅은 새벽 빛) + 종이 흰 폭 25% (하늘) + 진한 폭 5% (인물 실루엣 + 분산 마을 점).
- **종이 결 처리**: rice paper 결을 옆으로 깔음. 종이 결이 사방으로 옅게 트임.
- **새벽 안개 처리**: 짧고 옅음. 안개가 평지 위에 *깔리지 않고 비어 있음* — dry brush 로 옅게.
- **인물 배치 단서**: 인물 1 명 + 분산 점 2~5 자리 (다른 집들). 인물은 화면 1/3 자리에 작게.

### §2.3 강가 (terrain v1 §3) — *강 + 한 줄 마을 + 흐르는 자국*

- **구도 골격**: 강이 화면을 한 줄로 가른다 (대각 또는 수평). 강의 한 쪽 또는 양쪽으로 한 줄 마을. 강 자체는 *물* 이 아니라 *옅은 자국이 줄지어 굳어 보이는 자리* (bible v0.5 §6 + terrain v1 §3) — 강을 표현할 때 *물의 반사* 0, *흙 결의 줄지어 굳음* 만.
- **붓 결 방향**: 강을 따라 한 방향 stroke (긴 가로 또는 긴 대각). 강과 직교한 stroke 0.
- **농담 범위**: 옅은 폭 60% (강 + 강가 흙) + 진한 폭 25% (강가 한 줄 마을 + 인물) + 종이 흰 폭 15% (하늘).
- **종이 결 처리**: rice paper 결을 강 방향으로 깔음. 종이 결이 강의 흐름과 *동행*.
- **새벽 안개 처리**: 강 위에 낮게 깔림. wet-on-wet 으로 강물 위 안개의 *떠 있는* 결 — 안개가 강 위 0.3 폭 두께.
- **인물 배치 단서**: 인물 1~2 명. 강가 한 줄 마을 안 한 자리에서 강을 *바라보는* 또는 *따라가는* 결. 강을 *건너가는* 결 박지 않음 (본 지형은 *흐름과 동행* 결).

### §2.4 포구 (terrain v1 §4) — *가장자리 + 떠남·돌아옴 + 짠 흙*

- **구도 골격**: 종이의 한 가장자리 자리 (왼·오른·아래 셋 중 하나). 가장자리 너머 = 종이 흰 폭 = *아직 받지 않은 새벽* (terrain v1 §4 + terrain v0 §바다). 마을은 가장자리에서 한 줄 안쪽.
- **붓 결 방향**: 가장자리에서 안쪽으로 들어오는 한 방향 stroke (떠남) + 안쪽에서 가장자리로 나가는 한 방향 stroke (돌아옴) = 두 stroke 가 같은 자리에 겹침.
- **농담 범위**: 진한 폭 35% (짠 흙 + 가장자리 안 마을) + 옅은 폭 35% (가장자리 너머 새벽 빛 트임) + 종이 흰 폭 30% (가장자리 너머 = 받지 않은 새벽 자리).
- **종이 결 처리**: rice paper 결을 가장자리 안쪽으로 깔음. 종이 결이 가장자리에서 *멈춤*.
- **새벽 안개 처리**: 짧음 (바람이 강함). 안개 0.1 폭 이하. dry brush 로 가장자리 자국만.
- **인물 배치 단서**: 인물 1 명. 가장자리에서 안쪽을 보거나 가장자리 너머를 보는 결 (떠남 또는 돌아옴 둘 중). 가장자리 자국이 인물의 발 옆에 박힘.

### §2.5 구릉 (terrain v1 §5) — *부드러운 곡선 + 마을 단위 정착*

- **구도 골격**: 부드러운 곡선 1~2 자리 (위에서 아래로 부드럽게 흐름). 마을이 한 곡선 자리에 모임.
- **붓 결 방향**: 곡선을 따라 부드러운 stroke. 직선 stroke 0 (직선이면 산골 또는 들녘 결로 미끄러짐).
- **농담 범위**: 옅은 폭 60% (곡선 흙 + 부드러운 빛) + 진한 폭 25% (마을 + 인물) + 종이 흰 폭 15% (하늘).
- **종이 결 처리**: rice paper 결을 곡선 방향으로 깔음. 종이 결이 곡선과 정합.
- **새벽 안개 처리**: 균질 (다른 지형보다 두껍지 않고 옅지 않음). wet-on-wet 으로 곡선을 따라 옅게.
- **인물 배치 단서**: 인물 1~2 명. 곡선 한 자리에 박힘. 곡선의 정점 또는 골에 박지 않음 (본 지형은 *균질* 결 — 한쪽으로 기울지 않음).

### §2.6 분지 (terrain v1 §6) — *둘러싸인 평지 + 두꺼운 흙*

- **구도 골격**: 화면 가장자리 4 면 중 2~3 면이 산 (둘러싸임). 가운데 평지에 마을이 모임.
- **붓 결 방향**: 둘러싼 산은 위→아래 stroke (산골 결의 짧은 변주). 가운데 평지는 옆으로 흐르는 stroke (들녘 결의 짧은 변주). 두 stroke 가 한 화면에 묶임.
- **농담 범위**: 진한 폭 40% (둘러싼 산 + 두꺼운 흙) + 옅은 폭 40% (평지 흙 + 늦은 새벽 빛) + 종이 흰 폭 20% (둘러싼 산 사이 트인 하늘).
- **종이 결 처리**: rice paper 결을 가운데 평지 방향으로 깔음. 둘러싼 산 자리에서 종이 결이 *멈춤*.
- **새벽 안개 처리**: 늦게 옴 (산이 해를 가림). 안개가 평지 위 0.4 폭 두께로 두껍게 — wet-on-wet 으로 평지 가득.
- **인물 배치 단서**: 인물 1~2 명. 가운데 평지 자리에 박힘. *떠남* 결을 박을 때는 산을 향해 보는 결 (둘러싸인 자리 너머).

### §2.7 도시 변두리 (terrain v1 §7) — *옮겨 온 결 + 빠른 박자*

- **구도 골격**: 화면 한 쪽 (왼 또는 오른)이 도시 한복판의 빽빽함, 다른 쪽이 들녘의 트임. 두 결이 만나는 가장자리에 마을.
- **붓 결 방향**: 빽빽 쪽 = 짧고 빠른 stroke (밀도). 트임 쪽 = 옅게 흐르는 stroke (들녘 변주). 두 stroke 가 가장자리에서 *부딪침*.
- **농담 범위**: 진한 폭 45% (빽빽 쪽) + 옅은 폭 40% (트임 쪽) + 종이 흰 폭 15% (가장자리 안 빈 자리).
- **종이 결 처리**: rice paper 결이 두 방향으로 갈라짐 (빽빽 / 트임). 가장자리 자리에서 결이 *부서짐*.
- **새벽 안개 처리**: 짧고 옅음. 빽빽 쪽 안개 0 (다른 자국빛에 묻힘) + 트임 쪽 안개 0.1 폭. dry brush.
- **인물 배치 단서**: 인물 1 명. 두 결이 만나는 가장자리 자리에 박힘. 옮겨 온 결 = *어느 쪽도 본인의 자리* 가 안 된 결 — 인물 시선이 한 쪽으로 고정되지 않음.

### §2.8 도시 한복판 (terrain v1 §8) — *통과의 산 + 익명 결*

- **구도 골격**: 화면 가득 빽빽함. 좁은 빈 자리 1~2 자리 (옆자리). 한 인물 + 한 인물 옆자리만 박음 — 전체 군중은 dry brush 의 옅은 자국 점들로만.
- **붓 결 방향**: 짧고 빠른 stroke 가 사방 (빽빽함). 옆자리 자리만 stroke 0 (빈 자리).
- **농담 범위**: 진한 폭 55% (빽빽 흙 + 인물 + 통과의 산 결) + 옅은 폭 35% (군중 점 + 사방 자국빛) + 종이 흰 폭 10% (옆자리 빈 자리만).
- **종이 결 처리**: rice paper 결이 사방으로 깔림 (방향 0). 옆자리 빈 자리에서만 종이 결이 *드러남*.
- **새벽 안개 처리**: 안개 0 (사방 자국빛이 새벽을 묻음). 새벽 빛 = *옆자리 빈 자리* 의 종이 흰 폭으로만 표현.
- **인물 배치 단서**: 인물 1 명 + 옆자리 1 자리 (비어 있거나 한 명이 앉음). §17.5 *옆에 앉은 자* 의 baseline 지형 = 본 지형. 인물 시선은 옆자리로.

---

## §3 6 권역 시각 톤 (regions v1 §1~§6 + 본 §2 8 지형 짝맞춤)

| 권역 | terrain | 색조 변주 (visual-bible v0.4 §13 자국빛 4 종 위) | 우표 배경 베이스 |
|------|--------|------------------------------------------|----------------|
| 새벽재 | 산골 (§2.1) | 안개가 첫 자국 색조 `#C8995A` 옅게 | 비탈 + 두꺼운 안개 + 한 줄 처마 |
| 옅은들 | 들녘 (§2.2) | 자국빛 0 변주 (옅고 균질) | 평지 + 짧은 안개 + 분산 점 |
| 느릿내 | 강가 (§2.3) | 강 위 자국빛 `#C8995A` 줄지어 | 강 + 강가 한 줄 + 강 위 안개 |
| 마른포 | 포구 (§2.4) | 가장자리 너머 받음 색조 `#D4A766` 옅게 | 가장자리 + 짠 흙 + 가장자리 안 마을 |
| 늘재 | 분지/구릉 (§2.5/§2.6) | 두꺼운 흙 위 자국빛 `#C8995A` 진하게 | 둘러싸임/곡선 + 두꺼운 안개 + 마을 단위 |
| 빽빽골 | 변두리/한복판 (§2.7/§2.8) | 사방 자국빛 (자국빛 0 변주 + 자국빛 진함 동시) | 빽빽 + 옆자리 빈 자리 + 가장자리 결 |

> 자국빛 4 종 = visual-bible v0.4 §3 직접 흡수. 권역 단위 = *어느 자국빛이 가장 자주 박히는가* 의 시각 측 매트릭스.

---

## §4 §17 8 우표 풀 짝맞춤 (visual-bible v0.4 §17 + 본 §2/§3 짝)

| 우표 | 인물 | 거주 권역 (regions v1 §8) | 우표 배경 baseline (본 §2 직접 흡수) |
|------|-----|---------------------|--------------------------|
| §17.1 *손금 새벽* | 해온 | 옅은들 → 늘재 (이행 결) | §2.2 들녘 (시작점) — 옅은 평지 + 짧은 안개 |
| §17.2 *발끝 한 방향* | 정해 | 새벽재 | §2.1 산골 — 비탈 + 두꺼운 안개 + 한 방향 stroke |
| §17.3 *박물관 12 색조* | 나림 | 늘재 | §2.6 분지 — 둘러싸임 + 두꺼운 흙 + 12 색조 그라디언트 |
| §17.4 *함께 걸은 자리* | 유경 + 유리 | 느릿내 | §2.3 강가 — 강 + 한 줄 마을 + 강 위 자국빛 |
| §17.5 *옆에 앉은 자* | 인규 + 200 cluster | 빽빽골 | §2.8 도시 한복판 — 빽빽 + 옆자리 빈 자리 + 새벽 빛 = 빈 자리 자국 |
| §17.6 *쉼의 자리만* | 부재 | 횡단 | 횡단 — 본 §2 지형 1 자리 적용 0 (인물 부재 결) |
| §17.7 *짧음의 결* | 연강 | 새벽재 | §2.1 산골 (또는 §2.5 구릉 변주) — 비탈/곡선 + 짧은 stroke 60+ 누적 |
| §17.8 *나란히 두 새벽* | 희재 (정해 짝) | 새벽재 | §2.1 산골 — 비탈 + 두꺼운 안개 + 두 자리 인물 (정해 짝) |

> 본 §4 = *기존 8 우표의 배경 결을 사후 명시* 자리. 이미 발행된 image (§17.5 cy-003 r4 / §17.7 + §17.8 cy-002 r3) 는 본 §4 직접 인용 = 사후 ack. 미발행 §17.1~§17.4 + §17.6 = 본 §4 사전 인용 의무 baseline.

---

## §5 episode_thumb 풍경 단서 룰 (F-1252 must_fix #3 인계)

회차 frontmatter `episode_thumb` 짝맞춤 자리 (art-director r7 cy-003 thin-bump baseline 6/6 도달) 위에 *어느 권역의 새벽인지* 단서 박음 의무.

- **신규 회차 박힘 시**: writer 측 본문 안 풍경 단서 1~2 줄 (F-1310 must_fix #4 writer 영역) + art-director 측 episode_thumb stamp/character-sheet 의 *배경 결* 이 본 §3 6 권역 시각 톤 1 자리 짝.
- **기존 6 회차 짝 인계 (art-director r7 baseline)**:

| 회차 | POV | 거주 권역 | episode_thumb | 배경 결 (본 §3 + §4) |
|------|-----|---------|--------------|------------------|
| ep-04 *방향 안 묻는 새벽* | 정해 | 새벽재 | stamp-17-2 | §2.1 산골 — 비탈 + 두꺼운 안개 |
| ep-05 *빈 의자 아직 따뜻* | 희재 | 새벽재 | stamp-17-8 | §2.1 산골 — 비탈 + 두 자리 인물 |
| ep-06 *옆에 앉는 일* | 인규 | 빽빽골 | stamp-17-5 | §2.8 도시 한복판 — 빽빽 + 옆자리 빈 자리 |
| ep-07 *내가 다시 펴 본 십오 분* | 유경 | 느릿내 | character-sheet-yugyeong-v2 | §2.3 강가 — 강 + 한 줄 마을 (인물 시트 측은 배경 결 옅음 → 차후 stamp 신규 자리) |
| ep-08 *처음 본 후* | 나림 | 늘재 | character-sheet-narim-v2 | §2.6 분지 — 둘러싸임 (인물 시트 측은 배경 결 옅음 → 차후 stamp 신규 자리) |
| dawn-first-map (ep-01~03 묶음) | 해온 | 옅은들 → 늘재 | (별도 hero) | §2.2 들녘 (시작점) |

> *generic blank-page-dawn 0 자리* (art-director r7 baseline) + *권역 단서 0 자리* (본 §5 baseline). 다음 신규 회차 박힘 시 두 baseline 동시 적용 의무.

---

## §6 트립 자가 검사

| 트립 | 검사 | 발화 |
|------|------|------|
| #medium 톤 드리프트 (sumukhwa baseline 위반) | 본 v0 매체 = §1 sumukhwa 1:1 인용. image 발행 0 = §6 자가 검수 비대상 | 미발화 |
| #스타일 드리프트 (지형 결이 *모델의 결* 따름) | 본 v0 = spec 자리 / image 0. 차후 image 발행 r-N 자리 박음 의무 *§2 6 항 직접 인용* baseline 신규 박음 (모델의 결 수렴 차단) | 임계 박음 |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 v0 = §17 우표 + episode_thumb 풍경 = scope_reduced 단편 일러스트 한정 1:1 인용 | 미발화 |
| #영역 위반 (loremaster 사실 박음) | 본 v0 = terrain v1 + regions v1 + bible v0.5 §6 직접 인용 / 신규 사실 0 (8 지형 + 6 권역 = 기존 박음의 *시각 결* 만 박음) | 미발화 |
| #영역 위반 (writer 본문 손댐) | 본 v0 = spec 자리 / 회차 본문 0 LOC | 미발화 |
| 매니페스토 7 키워드 본문 직접 인용 | 본 v0 본문 grep 0/7 (frontmatter `champions_keywords_*` 메타 자리만) | 미발화 |
| forbidden-language §1~§8 grep | 본 v0 grep 0 | 미발화 |

**트립 발화 0** + *모델의 결 수렴 차단 임계 박음 1 자리* (§6 두 번째 행).

---

## §7 진화 룰 후보 누적 (cy-003)

본 v0 박음 자리:

- **art-director sibling spec 박음 3 호 도달** = (1 호) palette-patch-v0 (cy-002 r1) + (2 호) stamps-extension-v0 (cy-002 r3 spec) + (3 호) 본 terrain-visual-rules-v0 (cy-003 r8 spec) = sibling spec 박음 정식 룰 임계 ≥ 3 호 도달.
- **사실 박음 → 시각 결 박음 짝 1 호 baseline** = loremaster terrain v1 + regions v1 (cy-003 r9) → art-director 본 v0 (cy-003 r8 spec) = *사실 → 시각* 인계 짝 1 호 사례. 차후 짝맞춤 인계 baseline.
- **F-1310 must_fix 분배 응답 1 호** = loremaster (terrain v1 + regions v1) + writer (character-sheets region/terrain 패치 인계 자리) + art-director (본 v0 = must_fix #5) + critic (cold-read *공간감* 신규 항 인계) + voice-keeper (없음) = 5 자리 중 art-director 자리 baseline 도달.
- **scope_reduced 자리 자가 적용 시퀀스 8 호 누적** = (1~7 호 = cy-003 r1~r7 누적) + **(8 호) 본 v0 = scope_reduced 자리 첫 8 라운드 자기 적용 baseline 도달**. 단편 일러스트 한정 + 게임 시각 0 의무 8 호 연속 통과.
- **forbidden-language §1~§8 grep 통과 누적** + **매니페스토 7 키워드 본문 직접 인용 0 자가 의무 누적**.

---

## §8 v0.5 thin-bump 인계 (visual-bible 차후 흡수 자리)

본 v0 = sibling spec 자리 — visual-bible v0.4 본문 0 변경 baseline 보존. 차후 visual-bible v0.5 thin-bump 박음 시 본 v0 = §22 *지형 시각 룰 baseline* (또는 §11.3 *권역 색조* 변주) 자리 흡수 후보. cy-002 baseline 박음 패턴 (palette-patch + stamps-extension → v0.4 흡수) 1:1 대응.

- **v0.5 흡수 자리 후보**: §22 (신규) *8 지형 시각 룰* + §23 (신규) *6 권역 시각 톤* + §17 *기존 8 우표 풀 표 위에 배경 결 한 열 추가* = 3 자리 thin-bump 박음.
- **흡수 임계 조건**: 본 §2 8 지형 중 ≥ 4 지형이 image 발행 (§17 우표 또는 episode_thumb stamp) 으로 실측 박힘 시 v0.5 박음 (현재 image 발행 = §17.5 §17.7 §17.8 = 산골 1 / 도시 한복판 1 / 산골 1 = 2 지형 실측 = 임계 미달).

---

## §9 다음 자리 인접 큐

a. **art-director r-N image (다음 art-director 차례)** — §17.1 ~ §17.4 + §17.6 5 우표 baseline image 발행 자리 (본 §2 6 항 직접 인용 prompt baseline 신규 박음). 단 r5 의 *§17.1~§17.6 baseline image 6 장* (cy-002 r5 인계) 큐 그대로 1 위.
b. **art-director r-N thin-bump** — visual-bible v0.4 → v0.5 thin-bump (§11.2 hex baseline + §17 8 우표 풀 publishing surface 노출 자리 + 본 v0 §2/§3 흡수) 자리.
c. **writer r-N** — character-sheets 8 자리 frontmatter `region` + `terrain` + 일상 풍경 단락 패치 (regions v1 §8 인계 자리 / F-1310 must_fix #3).
d. **writer r-N (회차)** — episode_no:09 신규 회차 박힘 시 본문 풍경 단서 1~2 줄 (F-1310 must_fix #4) + frontmatter episode_thumb (본 §5 룰 적용).
e. **critic r-N** — cold-read *공간감* 신규 항 (F-1310 must_fix #6) — *이 인물 어디 사는가* 5 분 즉답 측정 박음.

---

## §10 한 줄 요약

terrain v1 + regions v1 의 8 지형 + 6 권역 위에 sumukhwa baseline 의 (구도 / 붓 결 / 농담 / 종이 결 / 안개 / 인물 배치) 6 항 시각 룰 spec 박음. §17 8 우표 풀 + 회차 episode_thumb 짝의 *어느 권역의 새벽인지* 한눈에 보이도록 배경 결 baseline 박음. F-20260502-1310 must_fix #5 응답.
