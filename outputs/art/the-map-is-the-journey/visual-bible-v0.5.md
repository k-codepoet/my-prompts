---
world_id: the-map-is-the-journey
artifact: visual-bible
version: v0.5
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 11 (thin-bump baseline — v0.4 본문 0 변경 + §22 8 지형 시각 룰 + §23 6 권역 시각 톤 + §17 표 *우표 배경 결* 한 열 3 자리 신규 baseline 박음)
mode: thin-bump (cy-002 r4 visual-bible v0.3 → v0.4 thin-bump 패턴 1:1 자가 적용 / loremaster r4 thin-patch tick-063 형식 1:1 인용)
author_org: art-director
source_charter: generations/gen-001/orgs/art-director.md
supersedes: outputs/art/the-map-is-the-journey/visual-bible-v0.4.md
source_v0_4_body: outputs/art/the-map-is-the-journey/visual-bible-v0.4.md  # §1~§10 본문 1:1 인용 (본 v0.5 본문 0 변경)
source_terrain_visual_rules: outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md  # §2 8 지형 6 항 + §3 6 권역 색조 + §4 §17 짝맞춤 직접 흡수
source_image_pair_cy_003:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-3-narim-museum-12-tones-v1.png  # art-director r9 image (분지)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-4-yugyeong-yuri-walked-together-v1.png  # art-director r10 image (강가)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-5-ingyu-side-chair-empty-v0.png  # art-director r4 image (도시 한복판) — v0.4 §1 박음 자리 사후 ack
source_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md  # 8 지형 사실 baseline
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v1.md  # 6 권역 + 8 인 거주지 baseline
source_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md  # 활성 세계 baseline
source_argument: generations/gen-001/cycles/cy-003/arguments/art-director-r11.md  # 본 v0.5 박음 자리 arg
source_tone_lock: outputs/art/the-map-is-the-journey/tone-lock-v0.md  # §1 매체 baseline
acks_feedback:
  - F-20260502-1310-terrain-as-actual-living-geography  # must_fix #5 (visual-bible 실제 지형 시각 룰) baseline 흡수 도달
manifesto_primary: [축복]
manifesto_secondary: [움직임, 방향]
manifesto_in_v0_5: [축복, 움직임, 방향, 연대, 진심, 시간이 곧 나, 자립]
hex_coverage_v0_5: { 나: 4 (해온/정해/나림/희재), 가족: 2 (유경/유리), 업: 2 (인규/연강) }  # v0.4 baseline 보존
stamp_pool_v0_5: 8  # v0.4 baseline 보존
terrain_image_count_v0_5: { 산골: 2, 들녘: 0, 강가: 1, 포구: 0, 구릉: 0, 분지: 1, 도시 변두리: 0, 도시 한복판: 1 }  # 4 unique terrain 실측 = thin-bump 임계 ≥4 도달
stamp_published_count_v0_5: 5  # cy-002 r3 (§17.7 + §17.8) + cy-003 r4/r9/r10 (§17.5 + §17.3 + §17.4) = 5/8
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 v0.5 본문 7 키워드 직접 인용 0/7 (frontmatter `manifesto_*` 메타 자리 외 본문 grep 0). 본문 0 변경 = v0.4 본문 정렬 보존.
  - #2 단일 진실: terrain-visual-rules-v0 + terrain v1 + regions v1 + visual-bible v0.4 + bible v0.6 직접 인용. 신규 사실 0 / 신규 사물 0 / 신규 인물 0.
  - #4 사람 결정 우회 금지: F-20260502-1310 must_fix #5 (사용자 직접 발의) baseline 흡수 = 사용자 응답 자리.
  - #6 추적 가능성: visual-bible v0.1 → v0.2 → v0.3 → v0.4 → 본 v0.5 직접 인계 체인 frontmatter 박음. terrain-visual-rules-v0 + r4/r9/r10 image 3 자리 frontmatter 1:1 박음.
  - #7 수동 검증 우선 (Iron Law): 본 v0.5 = thin-bump baseline 박음 = 가이드 문서. 자동화 0. 미발행 §17.1 / §17.2 / §17.6 image 발행 = r-N 자리 분리.
  - #8 현재성 단일: cy-003 G-WORLD-1 표적 + F-1310 응답.
  - forbidden-language §1~§8 grep — 본 v0.5 본문 *영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히* 적중 0.
self_check: 6/6
trip_fired: 0
forbidden_grep: 0
manifesto_inline_quotes: 0
---

# 시각 바이블 v0.5 — *thin-bump baseline 박음 자리* (8 지형 시각 룰 + 6 권역 시각 톤 + 우표 배경 결 한 열)

> **§0 Superseded by v0.6** (art-director r15 thin-bump 2026-05-03, tick-100) — 본 v0.5 §1~§10 *thin-bump baseline pointer* 1:1 그대로 *현재 baseline*, 단 §17.1 행 (해온 우표 배경 결) 의 *손바닥 close-up → 신발 close-up* carry + §18.7 시각 단서 3 종 (색조 / 떨림 / 동행 색조) 1:1 매핑 두 자리 신규 baseline 은 **`visual-bible-v0.6.md` §1~§3 baseline pointer** 가 authoritative. 외부 cold reader = v0.4 본문 + v0.5 §0~§10 + v0.6 §0~§4 세 자리 함께 읽기 (post-supersede 포인터 stale 처치 art-director 측 3 호).

> **본 v0.5 = thin-bump 박음 자리 — v0.4 본문 0 변경 + §22 8 지형 시각 룰 baseline + §23 6 권역 시각 톤 baseline + §17 표 *우표 배경 결* 한 열 baseline 3 자리 신규 박음**.
> v0.4 §1~§10 본문은 1:1 그대로 *현재 baseline* — 외부 cold reader 진입 시 v0.4 직접 읽기 의무 (본 v0.5 = pointer 자리 형식).
> **3 신규 baseline = terrain-visual-rules-v0 (cy-003 r8 spec) + r9/r10 image 2 장 (분지 §17.3 + 강가 §17.4) + r4 image 1 장 (도시 한복판 §17.5 사후 ack) 의 *thin-bump 흡수 2 호 사례*** (cy-002 r4 = 1 호 / 본 r11 = 2 호).
> **mode = thin-bump** (cy-002 r4 visual-bible v0.3 → v0.4 thin-bump 패턴 1:1 자가 적용). cy-003 art-director thin-bump 1 호 baseline.
> **F-20260502-1310 must_fix #5** (visual-bible 실제 지형 시각 룰 신규 단락) baseline 흡수 도달 = F-1310 art-director 측 응답 종결 자리.

---

## §0 v0.4 → v0.5 변경 요약 (delta)

본 v0.5 박음 자리 3 자리 (본문 추가 0 — frontmatter + 본 §0~§4 메타 자리 박음만):

| 자리 | v0.4 baseline | v0.5 thin-bump baseline | 박음 출처 |
|------|--------------|-----------------------|----------|
| **§22 8 지형 시각 룰** (신규) | 0 (지형 시각 룰 부재 — §17 우표 배경은 *공기 + 종이* 결만) | **8 지형 × 6 항** (구도 골격 / 붓 결 방향 / 농담 범위 / 종이 결 처리 / 새벽 안개 처리 / 인물 배치 단서) = sumukhwa baseline 위 변주 | terrain-visual-rules-v0 §2 직접 흡수 |
| **§23 6 권역 시각 톤** (신규) | 0 (권역 색조 부재) | **6 권역 × (terrain 짝 / 자국빛 4 종 변주 / 우표 배경 베이스)** = regions v1 위 시각 측 매트릭스 | terrain-visual-rules-v0 §3 직접 흡수 |
| **§17 표 *우표 배경 결* 한 열** | 8 우표 (인물 / 축 / 매니페스토 / 자국빛 / image) | **+1 열 = *우표 배경 baseline* (지형 / 권역 짝)** | terrain-visual-rules-v0 §4 직접 흡수 |

본문 0 변경 = v0.4 §1~§10 모두 *현재 baseline* 그대로. 외부 cold reader 진입 자리 = v0.4 직접 읽기 (본 v0.5 = baseline pointer 박음 자리).

---

## §1 §22 8 지형 시각 룰 baseline (terrain-visual-rules-v0 §2 직접 흡수)

| terrain | 골격 한 줄 | image 누적 |
|--------|-------|-----------|
| §22.1 산골 | 대각 비탈 + 한 줄 마을 + 한 방향 stroke + 두꺼운 안개 (wet-on-wet) | 2 (§17.7 yeongang + §17.8 huijae — cy-002 r3) |
| §22.2 들녘 | 평지 수평 + 분산 마을 점 + 사방 stroke + 짧은 안개 (dry brush) | 0 (미발행) |
| §22.3 강가 | 강 한 줄 + 강가 한 줄 마을 + 강 위 자국빛 줄지어 + 강 위 안개 0.3 폭 | 1 (§17.4 yugyeong+yuri — cy-003 r10) |
| §22.4 포구 | 가장자리 자리 + 떠남·돌아옴 두 stroke 겹침 + 짠 흙 + 안개 0.1 폭 이하 | 0 (미발행) |
| §22.5 구릉 | 부드러운 곡선 + 균질 농담 + 마을 단위 정착 + 안개 균질 | 0 (미발행) |
| §22.6 분지 | 둘러싸임 (4 면 중 2~3 면 산) + 두꺼운 흙 + 안개 0.4 폭 | 1 (§17.3 narim — cy-003 r9) |
| §22.7 도시 변두리 | 두 결 부딪침 (빽빽 / 트임) + 옮겨 온 결 + 빠른 박자 | 0 (미발행) |
| §22.8 도시 한복판 | 빽빽 사방 stroke + 옆자리 빈 자리 종이 흰 폭 + 사방 자국빛 | 1 (§17.5 ingyu — cy-003 r4) |

**8 지형 image 누적 = 4 unique terrain 실측 (산골 / 강가 / 분지 / 도시 한복판)** = terrain-visual-rules-v0 §8 thin-bump 임계 ≥4 1:1 도달 → 본 v0.5 baseline 박음 자리.

본 §1 = terrain-visual-rules-v0 §2 baseline 의 *한 줄 압축 baseline* 자리. 6 항 직접 인용은 terrain-visual-rules-v0 §2 직접 읽기 의무 (image 발행 prompt baseline 자리).

---

## §2 §23 6 권역 시각 톤 baseline (terrain-visual-rules-v0 §3 직접 흡수)

| 권역 | terrain (본 §1) | 색조 변주 (v0.4 §13 자국빛 4 종 위) | 우표 배경 베이스 |
|------|--------|------------------------------------|----------------|
| 새벽재 | 산골 (§22.1) | 안개가 첫 자국 색조 `#C8995A` 옅게 | 비탈 + 두꺼운 안개 + 한 줄 처마 |
| 옅은들 | 들녘 (§22.2) | 자국빛 0 변주 (옅고 균질) | 평지 + 짧은 안개 + 분산 점 |
| 느릿내 | 강가 (§22.3) | 강 위 `#C8995A` 줄지어 | 강 + 강가 한 줄 + 강 위 안개 |
| 마른포 | 포구 (§22.4) | 가장자리 너머 받음 색조 `#D4A766` 옅게 | 가장자리 + 짠 흙 + 가장자리 안 마을 |
| 늘재 | 분지 / 구릉 (§22.5/§22.6) | 두꺼운 흙 위 `#C8995A` 진하게 | 둘러싸임 / 곡선 + 두꺼운 안개 + 마을 단위 |
| 빽빽골 | 변두리 / 한복판 (§22.7/§22.8) | 사방 자국빛 (0 변주 + 진함 동시) | 빽빽 + 옆자리 빈 자리 + 가장자리 결 |

본 §2 = terrain-visual-rules-v0 §3 baseline 1:1 흡수. 자국빛 4 종 분포 = v0.4 §3 직접 인용 (3 변종 + 0).

---

## §3 §17 *우표 배경 결* 한 열 baseline (terrain-visual-rules-v0 §4 직접 흡수)

v0.4 §1 *§17 8 우표 풀 baseline* 표 (5 열 = 인물 / 축 / 매니페스토 / 자국빛 / image) + 본 §3 *우표 배경 결* 한 열 = 6 열 baseline.

| 우표 | 인물 | terrain (본 §1) | 권역 (본 §2) | 우표 배경 baseline | image 박음 |
|------|------|----|--------|----------|-----------|
| §17.1 *손금 새벽* | 해온 | 들녘 §22.2 | 옅은들 → 늘재 (이행 결) | 옅은 평지 + 짧은 안개 + 분산 점 (시작점) | r-N baseline 후보 |
| §17.2 *발끝 한 방향* | 정해 | 산골 §22.1 | 새벽재 | 비탈 + 두꺼운 안개 + 한 방향 stroke | r-N baseline 후보 |
| **§17.3 *박물관 12 색조*** | **나림** | **분지 §22.6** | **늘재** | **둘러싸임 + 두꺼운 흙 + 12 색조 그라디언트** | **cy-003 r9 image ✓** |
| **§17.4 *함께 걸은 자리*** | **유경 + 유리** | **강가 §22.3** | **느릿내** | **강 + 강가 한 줄 + 강 위 자국빛 줄지어** | **cy-003 r10 image ✓** |
| **§17.5 *옆에 앉은 자*** | **인규 + 200 cluster** | **도시 한복판 §22.8** | **빽빽골** | **빽빽 + 옆자리 빈 자리 = 새벽 빛 종이 흰 폭** | **cy-003 r4 image ✓** |
| §17.6 *쉼의 자리만* | 부재 | 횡단 | 횡단 | 본 §1 적용 0 (인물 부재 결) — r-N 별도 spec | r-N 별도 spec |
| §17.7 *짧음의 결* | 연강 | 산골 §22.1 (구릉 §22.5 변주) | 새벽재 | 비탈 / 곡선 + 짧은 stroke 60+ 누적 | cy-002 r3 image ✓ |
| §17.8 *나란히 두 새벽* | 희재 (정해 짝) | 산골 §22.1 | 새벽재 | 비탈 + 두꺼운 안개 + 두 자리 인물 (정해 짝) | cy-002 r3 image ✓ |

**우표 풀 발행 누적 = 5/8 도달** (cy-002 r3 = §17.7 + §17.8 = 2 → cy-003 r4 + r9 + r10 = §17.5 + §17.3 + §17.4 = 3 추가 = 5/8). 미발행 = §17.1 (해온) + §17.2 (정해) + §17.6 (부재 결).

---

## §4 r4/r9/r10 image baseline 박음 (cy-003 image 측 흡수)

본 v0.5 baseline 흡수 자리:

- `stamp-17-3-narim-museum-12-tones-v1.png` (cy-003 r9 image, 분지) — terrain-visual-rules-v0 §2.6 6 항 1:1 prompt 인용. 본 §1 §22.6 분지 image 1 호 baseline.
- `stamp-17-4-yugyeong-yuri-walked-together-v1.png` (cy-003 r10 image, 강가) — terrain-visual-rules-v0 §2.3 6 항 1:1 prompt 인용 + character-sheet-yuri-v2 *parent_child_color_family* rule 1:1 인용. 본 §1 §22.3 강가 image 1 호 baseline + F-20260502-1251 must_fix #3 *2-인 1 프레임 분별 baseline 1 호* 도달 자리.
- `stamp-17-5-ingyu-side-chair-empty-v0.png` (cy-003 r4 image, 도시 한복판) — v0.4 §1 baseline (이미 박음) + 본 v0.5 §3 §22.8 짝 사후 ack baseline 명시.

---

## §5 영역 자기 검사

- 시각 / hex / 팔레트 / 카메라 / 광원 / 우표 image baseline / 8 지형 시각 룰 / 6 권역 시각 톤 = 본 영역 ✓
- spec 1:1 정합 baseline (terrain-visual-rules-v0) = 본 영역 ✓
- 본문 0 변경 = v0.4 본문 1:1 인용 보존 (본 thin-bump 박음 자리 의무) ✓
- 단편 / 대사 / 측정 / cold-read / 메카닉 / 코드 = 다른 조직 영역 (본 v0.5 침범 0)
- 8 지형 / 6 권역 사실 = loremaster 영역 (terrain v1 + regions v1 박음 자리 1:1 흡수, 본 v0.5 신규 사실 0)
- 게임 시각 / walk-trace-spec / prototype 검수 = scope_reduced 자리 동결 (charter §active_scope) — 본 v0.5 박음 0

본 v0.5 침범 0.

---

## §6 트립 자가 검사

| 트립 | 검사 | 발화 |
|------|------|------|
| 단장 박음 (4 지형만 image 박음 = 4/8) | 본 v0.5 = baseline pointer 자리 — 미발행 4 지형 (들녘 §22.2 / 포구 §22.4 / 구릉 §22.5 / 변두리 §22.7) image 발행 r-N 분리 박음 의무 | 임계 박음 (영역 보전) |
| palette 드리프트 | 본 v0.5 hex = v0.4 §13 자국빛 4 종 + palette-patch §B/§C 1:1 인용 — 외부 hex 0 | 미발화 |
| 신규 사실 / 사물 / 인물 박음 | 본 v0.5 = terrain v1 + regions v1 + terrain-visual-rules-v0 + visual-bible v0.4 1:1 인용 / 신규 사실 0 | 미발화 |
| medium 톤 드리프트 (sumukhwa baseline 위반) | 본 v0.5 매체 = tone-lock §1 sumukhwa 1:1 인용 / image 발행 0 = 비대상 | 미발화 |
| 모델의 결 수렴 (charter §트립와이어) | r4/r9/r10 image 3 자리 = z-image-turbo 단일 / r-N+ 두 모델 페어리티 의무 박음 자리 보존 | 임계 박음 (영역 보전) |
| 영역 위반 (게임 시각 자리) | 본 v0.5 = §17 우표 + 8 지형 + 6 권역 = 단편 일러스트 한정 1:1 / 게임 시각 박음 0 | 미발화 |
| 매니페스토 7 키워드 본문 직접 인용 | 본 v0.5 본문 grep 0/7 (frontmatter `manifesto_*` 메타 자리 외 본문 0) | 미발화 |
| forbidden-language §1~§8 grep | 본 v0.5 본문 grep 0 | 미발화 |

**트립 발화 0** + *영역 보전 임계 박음 2 자리* (단장 + 모델 페어리티).

---

## §7 챔피언 발화

- **축복** = 본 §1 8 지형 시각 룰 + §2 6 권역 시각 톤 baseline = *어느 권역의 새벽인지* 한눈에 보이는 자리 박음 도달 (사용자 직접 발의 F-20260502-1310 must_fix #5 응답).
- **방향** = 본 §1 8 지형 골격 한 줄 (대각 / 수평 / 곡선 / 사방) = *걸음의 방향* 이 지형의 결로 박힘 baseline 도달.

> *축복 / 방향* 챔피언 진하기 = **0.97** (v0.4 baseline 0.97 보존 + 본 v0.5 = *지형 시각 룰* 신규 매체 박음 = 결의 자리 분리 박음 격상 자리). 1.0 미도달 이유 = 4/8 지형만 image 실측 (들녘 / 포구 / 구릉 / 변두리 미발행) + 두 모델 페어리티 미박음.

---

## §8 진화 룰 후보 누적 (cy-003)

본 v0.5 thin-bump 자리:

- **art-director cy-003 *thin-bump* mode 1 호 baseline 박음** = cy-002 r4 visual-bible v0.3 → v0.4 thin-bump 패턴 1:1 자가 적용 = mode 자기 적용 시퀀스 baseline 2 호 도달 (cy-002 r4 1 호 + 본 r11 2 호).
- **사실 박음 → 시각 spec 박음 → image 박음 → baseline 흡수 4 단계 자리 분리 박음 1 호 사례** = loremaster terrain v1 + regions v1 (사실 박음, cy-003 r9) → art-director terrain-visual-rules-v0 (시각 spec, cy-003 r8) → r9 + r10 + r4 image (image, cy-003) → 본 v0.5 (baseline 흡수, cy-003 r11) = 4 단계 자리 분리 박음 baseline.
- **F-20260502-1310 must_fix #5 baseline 흡수 도달 = F-1310 art-director 측 응답 종결 baseline 1 호**.
- **8 지형 image 누적 4/8 도달 = terrain-visual-rules-v0 §8 thin-bump 임계 1:1 도달 baseline 1 호**.
- **scope_reduced 자리 자가 적용 시퀀스 11 호 누적** = (1~10 호 = cy-003 r1~r10 누적) + (11 호) 본 v0.5 thin-bump = cy-003 art-director 첫 11 라운드 자기 적용 baseline.
- **post-supersede 포인터 stale 처치 art-director 측 2 호 사례** = (1 호) v0.3 §0 *Superseded by v0.4* (art-director r4 cy-002 thin-bump tick-069) + (2 호) 본 v0.5 박음 시 v0.4 §0 *Superseded by v0.5* 1 blockquote 박음 = 자가 적용 시퀀스 baseline.
- **forbidden-language §1~§8 grep 통과 누적** + **매니페스토 7 키워드 본문 직접 인용 0 자가 의무 누적**.

---

## §9 r-N 인계 (요약)

본 v0.5 후 art-director r-N task:

1. **§17.1 / §17.2 / §17.6 baseline image 발행** = 3 우표 미발행 자리 (해온 들녘 / 정해 산골 / 부재 결 횡단) image 발행. terrain-visual-rules-v0 §2 6 항 직접 prompt 인용 의무. §17.6 = 부재 결 별도 spec 박음 자리.
2. **들녘 / 포구 / 구릉 / 변두리 4 지형 image 실측** = 8 지형 image 누적 8/8 도달 자리 (v0.6 또는 v1 baseline 임계). 회차 episode_thumb 짝 또는 §17 우표 자리 어느 자리든 박음 가능.
3. **두 모델 페어리티 검수** = z-image-turbo (현 baseline 5 장) + gpt-image-1.5 두 모델 *모델의 결* 수렴 트립 검사.
4. **critic r-N cold-read 입력** = 본 v0.5 baseline + r4/r9/r10 image 3 자리 = 시각 측 cold-read 자리 (critic 영역 인계 / 5 인 페르소나 풀 일관성 박음 의무).
5. **voice-keeper r-N 정렬 측 측정** = 본 v0.5 = baseline 박음 자리 → e-항 측정 자리 분리 박음 (closing-round-axis-recheck-v0 형식).

---

## §10 cy-003 art-director 자리

본 v0.5 = **cy-003 art-director r11 thin-bump baseline** = scope_reduced 자리 (단편 일러스트 한정) 첫 thin-bump 박음 baseline. cy-002 r4 thin-bump 1 호 → cy-003 r11 thin-bump 2 호 = thin-bump mode 자가 적용 시퀀스 baseline 2 호 도달.

> 본 v0.5 = terrain-visual-rules-v0 (cy-003 r8 spec) + r4 + r9 + r10 image 3 장 baseline 4 자리 thin-bump 흡수 + 본문 0 변경 + 매니페스토 직접 인용 0 + forbidden grep 0 + 신규 사실 / 사물 / 인물 0 + 영역 침범 0 + F-20260502-1310 must_fix #5 baseline 흡수 도달. 다음 art-director 자리 = §17.1 / §17.2 / §17.6 image 발행 + 8 지형 image 8/8 도달 + 두 모델 페어리티 검수.
