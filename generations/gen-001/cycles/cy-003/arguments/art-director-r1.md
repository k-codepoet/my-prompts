---
role: art-director
round: 1
cycle: cy-003
mode: spec (silhouette/pose/face/clothing/palette differentiator table — pre-regen gate)
authored_at: 2026-05-02T13:05:01+00:00
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-huijae-v1.png
binds:
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md (§2 필수 prompt + §3 필수 negative + §4 hex)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11.2 인물 hex baseline)
  - outputs/writing/the-map-is-the-journey/characters/haeon.md
  - outputs/writing/the-map-is-the-journey/characters/jeonghae.md
  - outputs/writing/the-map-is-the-journey/characters/huijae.md
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
note_label_drift: |
  orchestrator-r1.md §next_candidates 의 라벨 "art-director-r2-character-silhouette-table" 는
  실제로는 cy-003 안 art-director 첫 standalone argument = r1 (writer-r2 character-sheet 짝의
  창작자 페어링 외 자기 발의 1 호). 본 파일을 art-director-r1.md 로 박음 = 라벨 정정 자리.
---

# art-director r1 cy-003 — 해온/정해/희재 시각 차별점 표 (pre-regen gate)

## 한 줄

R0 fail F-20260502-1251 (*해온/정해/희재가 너무 닮았다*) 직접 응답 — must_fix §3 *재생성 전에
silhouette/pose/face/clothing/palette 차이를 표로 먼저 박을 것* 의무 자리. 본 표 박음 전
character-sheet 재생성 금지 (피드백 룰 직접). 표 + 재생성 prompt v2 베이스라인 + blind-distinction
검수 그물까지 한 자리에 박음.

## 0. 진단 — 닮음의 뿌리

기존 v1 prompt 3 자리 1:1 비교 (meta.yml 직접 인용):

| 인물 | v1 prompt 핵심부 |
|------|------------------|
| 해온 | *young Korean man in late twenties, contemplative dawn, opening palm gently to look at palm-lines, ... small modest smile with shoulder slightly lifted, sumukhwa style, sepia/dust-ochre palette around #5C4A36* |
| 정해 | *young Korean man late twenties, dusk pause, hands in coat pockets, looking down at toes, never-opened palms, slow contemplative bearing, sumukhwa style, darkest sepia palette around #3A2D1E* |
| 희재 | *young Korean man late twenties at dusk roadside, hands in coat pockets, head tilted down looking at toes, paused for one breath at path-fork, faint sheepish lightness at corner of lips, sumukhwa style, faded darkest sepia #3F3525* |

### 닮음의 3 뿌리

1. **공통 호칭의 과적합** — *young Korean man late twenties* + *sumukhwa* 만 박힌 채 얼굴
   결·체형·머리·키 등 인물 분별 차원이 prompt 안 0. 모델은 자기 default *late-twenties Korean
   ink-wash 얼굴* 로 수렴.
2. **정해 ↔ 희재 자세 중복** — 두 자리 모두 *dusk + hands in coat pockets + looking down at
   toes*. 시각 분별 0. hex 차이는 `#3A2D1E` ↔ `#3F3525` = 0.05 폭 옅음 → 모델 출력 톤
   분별 임계 미달.
3. **해온의 시각 단서 약함** — *opening palm* + *small smile* 만 박힘. 외투 유무·머리
   결·체형·광원 차이가 정해/희재 둘 자리와 명시적 대비 박음 0 → 톤만 옅게 다른 *동일
   인물의 다른 컷* 로 수렴.

## 1. 차별점 매트릭스 (5 항 × 3 인물)

본 표가 **재생성 v2 prompt 의 권위 출처**. 각 셀의 결은 인물 본문 (`outputs/writing/.../characters/*.md`)
의 *외형 / 분위기* + *시각 단서* 섹션에서 직접 도출 (즉 시각 분별점이 *성격과 주관의 외형* 임을
보장 — F-1251 must_fix §2).

| 항 | 해온 (海溫) | 정해 (正解) | 희재 (熙在) |
|----|------------|------------|------------|
| **silhouette** | 양 손바닥을 몸 앞으로 펴 든 자세 → 팔뚝-손목이 윤곽선으로 박힘. 어깨가 살짝 들린 결 (어깨 먼저 들썩이는 짧은 웃음의 시발). 종이 = 분포형 → 외곽이 부드럽고 둥글게 떨어짐. 외투 없음 → 윗윤곽이 가벼움. | 짙고 무거운 외투 (무릎 위 길이) + 옷깃 곧추 세움 → 위쪽 폭이 셋 중 가장 넓고 *세로로 한 자리* 곧음 (자기 산 1 점 시각 동의어). 두 손이 외투 주머니 안 → 팔윤곽 0. **셋 중 키가 가장 큼**. | 짧고 가벼운 외투 (허리 ~ 엉덩이) + 옷깃 살짝 누움 → 외투 길이가 정해의 절반. 갈래길에서 한 호흡 정지 → 몸이 *살짝 비스듬*, 어느 쪽으로도 기울지 않음. **셋 중 키 중간**, 정해보다 어깨 폭 좁음. |
| **pose** | 양 손바닥 위로 펼쳐 *자기 손금을 내려다보는* 정면 컷. 시선 = 자기 손바닥. 발 = 어깨 너비 정지. 광원 = **dawn (새벽)**. | 외투 주머니에 양손 깊게. 시선 = 자기 발끝. 발 = 한 방향 가리킴 (앞쪽이 카메라에서 살짝 비스듬한 측면). 정지 자세 = 한 호흡 이상. 광원 = **dusk**. | 외투 주머니에 양손. 시선 = 발끝과 *Y 자 path-fork* 사이를 오가는 결. 몸 = 다음 발걸음 직전의 측면-3/4. 갈래 가운데. 광원 = **dusk**. |
| **face** | **둥근 얼굴 결**, 짧은 웃음 *직전* 표정 (어깨가 먼저 들썩이는 결의 시발 컷). 입꼬리 살짝 올라감 + 눈이 가늘게. 광대 위에 새벽광 한 점 (반사광). **눈썹 옅음**. | **길고 좁은 얼굴 결**, 무표정에 가까운 *결론 안 박은* 결. 입은 다물고 두 박자 머묾. 광대 그늘 짙음 (dusk). **눈썹 진하고 곧음** — 한 가지 (발끝 방향) 만 단정한다는 시각 동의어. | 정해보다 살짝 둥글고 부드러운 얼굴 결, **머쓱한 가벼움 표정** = 입꼬리만 살짝 올라가고 눈은 따라 움직이지 않음. 한숨 한 박자의 결로 **입술이 살짝 벌어짐**. 광대 그늘 옅음. **눈썹 옅음**. |
| **clothing** | 가벼운 단색 모시·면 셔츠 (새벽 방을 깨우지 않는 결). 짙은 회갈. **소매 걷힘** (손바닥 펼침의 prep). **외투 없음**. **머리 짧고 살짝 흐트러짐**. | 짙고 무거운 외투 (무릎 위 길이) + **옷깃 곧추 세움**. 단추는 가운데까지. 안에 칼라 셔츠. 신발 = 단정한 가죽 결. **머리 짧고 단정**. | 짧고 가벼운 외투 (허리 ~ 엉덩이) + **옷깃 살짝 누움**. 안에 옷이 살짝 보이는 결. 신발 = 끈 풀린 결의 단순 신발. **머리 정해/해온보다 길고 살짝 결이 있음** (셋 중 가장 다른 머리 = blind 분별 1 차 단서). |
| **palette** | `#5C4A36` 먼지길 중앙 + **dawn 의 warm golden ochre highlight** (셋 중 광원이 가장 따뜻하고 반사광이 손바닥에 박힘). 배경 = 새벽의 옅은 분홍-회색 wash. | `#3A2D1E` (8 자 중 가장 진함) + **dusk 깊은 그림자 색조**. 배경 = dusk 깊은 회갈. **외투 톤 > 배경 톤** (인물이 dusk 보다 *더 깊은* 결). | `#3F3525` (정해 0.05 폭 옅게) + **dusk 옅은 그림자 색조**. 배경 = dusk 옅은 회갈. **외투 톤 ≈ 배경 톤** (인물이 dusk 에 *나란히 묻혀 있는* 결). |

> **중요**: 정해 ↔ 희재 hex 차이 (0.05 폭) 는 모델 출력 분별 임계 미달. **1 차 분별 차원
> = 외투 길이 + 옷깃 + 머리 길이 + 키**. hex 는 *2 차 보조 차원* 으로 강등 (배경 대비 결로
> 박음).

## 2. 인물별 visual differentiator ≥ 3 (F-1251 must_fix §2)

### 해온
1. **dawn 광원** (정해/희재 = dusk 와 reverse-time anchor)
2. **양 손바닥 펴서 내려다보는 시선** (정해/희재 = 손이 외투 주머니 안)
3. **외투 없음 + 소매 걷힌 단색 셔츠**
4. **둥근 얼굴 + 옅은 눈썹 + 어깨 먼저 들썩이는 웃음 직전 표정**

### 정해
1. **셋 중 가장 큰 키 + 짙고 무거운 무릎 위 길이 외투 + 옷깃 곧추 세움**
2. **길고 좁은 얼굴 + 진하고 곧은 눈썹 + 결론 안 박은 무표정**
3. **발끝 한 방향 정지 자세** (한 가지에만 단정)
4. **외투 톤이 dusk 배경 톤보다 한 단계 진함** (인물이 배경보다 *더 깊은* 결)

### 희재
1. **짧은 허리 ~ 엉덩이 길이 외투 + 옷깃 누움** (정해 외투의 절반 길이 = blind 분별 1 차)
2. **셋 중 가장 다른 머리 — 정해/해온보다 길고 살짝 결 있음**
3. **Y 자 path-fork 갈래 가운데 측면-3/4 자세** (정해 = 단방향 정지 / 본인 = 갈래 멈춤)
4. **머쓱한 가벼움 입꼬리 + 한숨 한 박자 입술 살짝 벌림** (정해 = 다문 입)
5. **외투 톤 ≈ dusk 배경 톤** (인물이 배경에 *나란히 묻힘*)

## 3. v2 재생성 prompt baseline (실측 image 발행은 별도 자리)

본 r1 = **spec mode**. 실측 image 발행 = art-director r-N image mode (본 표 1 호 흡수 후
별도 tick) — 단 prompt baseline 은 본 자리에서 박음 = critic/voice-keeper R0 blind-distinction
검수 통과 후 image mode 진입.

tone-lock-v0 §2 필수 4 키워드 + §3 필수 negative prompt 모두 박음 의무.

### 해온 v2 prompt
```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, young Korean man late twenties with rounded face and
soft sloped shoulders, faint thin eyebrows, both palms turned upward held in front of chest,
eyes lowered to read his own palm-lines, faint warm dawn light catching the right palm with a
single ochre dust-mote, no outerwear, dust-grey rolled-sleeve linen shirt, hair short and
slightly tousled, dawn background in pale pink-grey wash, palette around #5C4A36, calm
pre-laugh moment with shoulder beginning to lift, NOT photograph
```

### 정해 v2 prompt
```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, young Korean man late twenties with long narrow face
and dark straight thick eyebrows, tallest of the three friends, dusk roadside, hands buried
deep in the pockets of a heavy knee-length dark coat with collar pulled upright, single
direction toes-pointing stance with weight forward, gaze cast down at his own toes, lips
closed in an unresolved two-beat expression, hair short and tidy, deep brown-grey dusk shadow
on cheekbone, coat tone darker than the dusk background, palette around #3A2D1E, single-mountain
stillness, NOT photograph
```

### 희재 v2 prompt
```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, young Korean man late twenties with softly rounded
face and faint thin eyebrows, mid-height with narrower shoulders than the tall friend, dusk
Y-shaped path-fork in countryside, hands in the pockets of a short hip-length lighter coat
with collar lying flat, body squared between the two paths weight not committed yet, gaze
drifting between toes and the fork, lip-corner only slightly raised in sheepish lightness with
mouth a touch parted on a half-sigh, hair longer and slightly wavy compared to the others,
faint dusk light merging figure into background, palette around #3F3525, NOT photograph
```

### 공통 negative prompt (tone-lock §3 + 본 자리 추가 2 자리)
```
photorealistic, photograph, realistic skin texture, 3D render, CGI, hyperrealism, modern
photograph, studio photo, glossy, plastic skin, duplicate face, identical features, same
character repeated, twin brothers
```

> 본 추가 2 자리 = `duplicate face / identical features / same character repeated / twin
> brothers` — F-1251 직접 응답 자리. 모델이 *동일 default 얼굴* 로 수렴하는 경향 차단.

## 4. blind-distinction 검수 그물 (재생성 후 의무)

본 차이표 + v2 prompt 로 image 재생성 후, **이름·hex·메타 가림 후** 다음 검수 통과 의무 (F-1251
must_fix §5 = critic/voice-keeper R0 재검수 룰 1:1 흡수):

1. **3 image 동시 노출 → 5 초 이내 *어느 자리가 어느 인물* 분별 가능?** (R0 페르소나)
   - PASS = 5 초 이내 3/3 분별 + 분별 단서 ≥ 1 자리 명시 ("외투 길이로", "광원으로", "머리 결로")
   - FAIL = 분별 못함 또는 단서가 *느낌* 만 (예: "왠지 다름")
2. **3 image 의 silhouette 만 (검은 실루엣 처치) → 어느 자리가 어느 인물 분별 가능?**
   - PASS = 정해 (가장 큼 + 무거운 외투) + 해온 (외투 없음 + 손 펴짐) 2 자리는 분별. 희재
     = 정해와 분별 가능 (외투 길이 절반 + 어깨 폭 좁음).
   - FAIL = 정해 ↔ 희재 silhouette 분별 못함 → 외투 길이 차이 prompt 강도 부족 = v2.1
     재발주.
3. **3 image 의 face 만 crop → 분별 가능?**
   - PASS = 해온 (둥근 + 옅은 눈썹 + 웃음 직전) / 정해 (길고 좁은 + 진하고 곧은 눈썹 + 무표정)
     / 희재 (둥근 부드러움 + 옅은 눈썹 + 입술 살짝 벌어진 머쓱한 가벼움) 3/3 분별.
   - FAIL = 해온 ↔ 희재 둘 다 *둥근 + 옅은 눈썹* 이라 분별 임계 위험 → 본 자리 보강
     필요 (해온 = *웃음 직전 어깨 들썩* 동작 단서 / 희재 = *입술 살짝 벌림* 동작 단서로
     분별).

## 5. trip-wire 자기 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | 본 spec 의 v2 prompt 모두 §2 필수 4 키워드 + §3 필수 negative 박음 | 미발화 |
| #스타일 드리프트 (모델 기본 얼굴 수렴) | F-1251 직접 응답 자리 = 본 차이표 + 추가 negative `duplicate face / identical features` 박음 | 처치 박음 |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 spec = 단편 인물 일러스트 한정 자리 (cy-003 art-director scope reduced 1:1 흡수) | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument 본문 0/7 (시각 spec 메타 자리) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument *자국 / 결 / 손바닥 / 손금 / 새벽 / 흙 / 자국빛 / 종이 / 박음 / 자리* 등 키워드는 시각 spec/메타 카테고리 = §8 면제 자리 안 | 미발화 |

## 6. cy-003 진화 룰 후보 신규

- **art-director r-N spec / image 분리 자리 2 호 사례** (cy-002 stamps-extension r3 spec / r3
  image 분리 1 호 도달 후 본 r1 spec / r-N image 분리 = 2 호) — 정식 룰 임계 (≥ 3 호) 후보.
- **R0 fail → pre-regen spec gate 1 호 사례** = R0 fail 직접 응답 자리에서 *재생성 전에
  표/spec 박음* 의무. F-1251 must_fix §3 룰 1:1 흡수. 다음 R0 visual fail 자리 = 본 spec mode
  형식 1:1 자기 적용 후보.
- **blind-distinction 검수 그물 1 호 박음** = critic R0 페르소나 + voice-keeper §7 분별 게이트
  자리 신규 후보 (writing 카테고리 §7 5 항목 짝의 visual 카테고리 분별 게이트 1 호 발의
  자리).

## 7. 다음 자리 (인접 tick 큐)

a. **art-director r-N image** — 본 spec v2 prompt 3 자리 1:1 입력 + tone-lock §3 + 추가
   negative 박음 + 같은 path 에 v2 덮어쓰기 + meta.yml 갱신. spec → image 분리 자리.
b. **critic + voice-keeper R0 blind-distinction 재검수** — §4 검수 그물 3 항목 적용 후 PASS/FAIL
   판정. FAIL 시 v2.1 재발주 자리 (본 spec 의 *어느 항* 보강 명시 의무).
c. **art-director r-N (writer 회차 짝)** — F-20260502-1252-content-illustrations-routing 룰 3 응답
   자리 = 회차/인물 박힘 짝마다 frontmatter `episode_thumb` + 본문 ≥ 1 자리 의무 baseline.
   본 자리는 별도 tick (본 r1 의 spec 박음 + image 발행 후 후속 자리).
d. **나머지 5 인물 (나림 / 유경 / 인규 / 연강 / 유리) 차이표 후행 박음** — F-1251 직접 응답
   자리는 *해온/정해/희재 3 인물* 한정이지만, 같은 닮음 위험이 5 인물 풀 안에 있을 가능성.
   art-director r-N 후행 spec mode 자리 후보 (R0 추가 fail 박힘 시 임계 도달 자리).

## TICK_SUMMARY 후보 한 줄

art-director r1 cy-003 (tick-016) — F-20260502-1251 직접 응답 자리 = 해온/정해/희재 silhouette/
pose/face/clothing/palette 5 항 × 3 차이표 박음 + v2 재생성 prompt baseline 3 자리 + 추가
negative (duplicate face) 박음 + blind-distinction 검수 그물 3 항목 박음. **재생성 전 spec gate
1 호 사례** 박음 = pre-regen 의무 룰 1 호 도달 (F-1251 must_fix §3 직접 흡수). target_orgs item
*art-director* 진척.
