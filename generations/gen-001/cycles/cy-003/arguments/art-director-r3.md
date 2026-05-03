---
role: art-director
round: 3
cycle: cy-003
mode: spec (ingyu-v2 character-sheet 4-인물 분별 baseline 재측정 짝 + *옆 의자 빈 자세* stamp 후보 1 자리 — pre-regen gate)
authored_at: 2026-05-02T17:45:01+00:00
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced:
  - "F-20260502-1252-content-illustrations-routing must_fix #3 — art-director: writer 새 회차 박음 짝에 부합하는 stamp/character-sheet 1 자리 + frontmatter `episode_thumb` 명시 짝. writer r4 = episode-06 박음 hero (key-visual-blank-page-dawn) + POV (character-sheet-ingyu-v1) 두 자리 자가 박음 = art-director 책임 = ingyu-v1 분별 baseline 재측정 + v2 prompt baseline 박음 + *인규 옆 의자 빈 자세* stamp 후보 spec 박음 1:1 응답."
  - "F-20260502-1251-character-visuals-too-similar must_fix §1·§2·§3 — 4 인물 (해온 v2 + 정해 v2 + 희재 v2 + 인규 v2) blind-distinction baseline 재측정 자리 = r1/r2 트리오 baseline 위 인규 1 자리 추가 = 인물 풀 *분별 임계* 3 → 4 명 격상."
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-ingyu-v1.png  # 본 spec 측 분별 baseline 재측정 대상 (image regen = 다음 tick image mode)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-5-ingyu-side-chair-empty-v0.png  # 신규 stamp 후보 spec (image 발행 = 다음 tick)
binds:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r1.md (§1 5×3 차이표 + §3 v2 prompt 형식 1:1 자기 적용)
  - generations/gen-001/cycles/cy-003/arguments/art-director-r2.md (§2 self-check 형식 + 트리오 v2 결과 baseline)
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md (§2 4 키워드 + §3 negative + §4 hex baseline)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11.5 인규 hex `#42321F` + §17 8 우표 풀)
  - outputs/art/the-map-is-the-journey/stamps-extension-v0.md (*옆자리가 비어 있는 결* 시각 룰 1 호 직접 흡수 — 본 stamp 후보의 spec 측 권위 출처)
  - outputs/writing/the-map-is-the-journey/characters/ingyu.md (§외형 / 분위기 + §시각 단서)
  - outputs/writing/the-map-is-the-journey/episode-06-sit-beside.md (cy-003 r4 writer 박음 = POV character-sheet-ingyu-v1 직접 인용 자리, 본 spec 의 image-mode 후행 적용 짝)
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
note_pattern: |
  본 r3 = r1 (트리오 spec) → r2 (트리오 image) 분리 박음 직후 *4 번째 인물 인규* 분별 baseline 재측정
  spec 자리. r1/r2 형식 1:1 자기 적용 = *art-director 측 자기 적용 시퀀스* 2 호 (r1 발의 → r2
  자가 적용 → r3 인접 인물 풀 격상) = 정식 룰 임계 ≥ 3 호 후보 인접 자리.
---

# art-director r3 cy-003 — 인규 v2 character-sheet 4-인물 분별 baseline 재측정 짝 (pre-regen gate)

## 한 줄

writer r4 cy-003 = episode-06 *옆에 앉는 일* 박음 hero + POV 두 자리 자가 박음 (F-1252-content-illustrations-routing must_fix #1 충족). POV = `character-sheet-ingyu-v1.png` 사용. **본 r3 = F-1252 must_fix #3 art-director 짝 응답** = ingyu v1 분별 baseline 재측정 + F-1251 트리오 v2 풀에 *4 번째 인물 인규* 추가 분별표 + v2 prompt baseline + 신규 stamp 후보 *옆 의자 빈 자세* spec 한 자리에 박음. **image 발행 = 다음 art-director image-mode tick** (r1 spec / r2 image 분리 형식 1:1 자기 적용 = spec/image分리 자리 3 호 도달 후보).

## 0. 진단 — ingyu v1 의 약한 자리

기존 v1 prompt (`character-sheet-ingyu-v1.png.meta.yml` 직접 인용):

```
Korean man early forties sitting beside unseen companion, attentive listening posture,
faint smile only at corner of eyes mouth nearly still, hands open on knees, sumukhwa style,
deep sepia #42321F
```

### 0.1 약한 자리 4 뿌리

1. **tone-lock §2 4 키워드 미박음** — *sumukhwa style* 만 부분 박음. 빠진 자리: `painterly brushwork visible` + `restrained sepia and dust-ochre palette` + `NOT photograph`. yugyeong v1 실사 드리프트 1 호 사례 (cy-003 r2 직전) 의 재발화 위험.
2. **§3 negative prompt 0** — `photorealistic / photograph / 3D render / CGI / hyperrealism` 등 미박음. *duplicate face / identical features* 도 0 = F-1251 응답 자리 부재.
3. **분별 차원 빈약** — *Korean man early forties* + *attentive listening* 만 박힘. 얼굴 결 / 머리 / 체형 / 의상 / 자세 결 0. 모델 default *early-forties Korean ink-wash 얼굴* 로 수렴 위험. 트리오 v1 (해온/정해/희재) 의 *late twenties Korean man + sumukhwa* 만 박힘과 1:1 동형.
4. **인규 charter §외형 / 분위기 1:1 미흡수** — *눈만 살짝 좁히는 웃음 (입 거의 정지)* + *옆 사람 새벽 안 깨우는 결이 몸에 박힘* + *통과의 산 가장자리 — 200 명 자국이 한 자리에 모인 산* 등 인물 charter 의 시각 단서가 prompt 0/4. *unseen companion* 만 *옆자리* 단서 1 자리.

## 1. 4-인물 분별 매트릭스 (5 항 × 4 인물)

본 표 = r1 §1 5×3 차이표 + 본 r3 인규 1 행 추가 = **블라인드 분별 임계 3 → 4 명 격상**. 각 셀의 결은 인물 charter (`outputs/writing/.../characters/ingyu.md` §외형 §시각 단서) + 트리오 v2 결과 (r2 §2 self-check) 직접 도출.

| 항 | 해온 v2 (27, 나) | 정해 v2 (27, 나) | 희재 v2 (27, 나) | **인규 v2 (42, 업)** |
|----|---------------|---------------|---------------|------------------|
| **silhouette** | 외투 없음 + 양 손바닥 펴 든 자세 + 어깨 들썩 직전 + 팔윤곽 박힘 + 윤곽 둥글고 가벼움 | 짙고 무거운 무릎-위 외투 + 옷깃 곧추 + 셋 중 가장 큰 키 + 세로 한 자리 곧음 + 손 외투 주머니 안 (팔윤곽 0) | 짧은 hip-length 외투 + 옷깃 누움 + 키 중간 + 어깨 폭 가장 좁음 + 양손 외투 주머니 | **앉은 자세 (3 트리오 = 모두 서 있음 → 1 차 분별 차원 = 자세 자체)**. 옆 의자에 차분히 앉음 + 무릎 위 두 손 모음 + 두 손 펴기 0 (트리오 해온의 손바닥 펴기와 reverse) + 어깨 자연히 떨어짐 + **윤곽이 셋 중 가장 낮고 옆으로 폭 약간 넓음** (앉음 윤곽). 외투 = 의자 등받이에 걸린 결 (writer r4 §1 *외투를 의자 등받이에 걸고 옆 의자에 천천히 앉음* 1:1 흡수). |
| **pose** | 양 손바닥 위로 펼침 + 시선 = 자기 손바닥 + 광원 dawn + 어깨 너비 정지 | 외투 주머니 손 + 시선 = 자기 발끝 + 발끝 한 방향 + 광원 dusk | 외투 주머니 손 + 시선 = 발끝 ↔ Y 갈래 + 측면-3/4 + 광원 dusk | **두 손 무릎 위 모음 + 시선 = 옆 사람의 손/탁자 한 점 (정면 살짝 옆)** + 발은 바닥에 평평 + **광원 = 작은 방 형광등 한 줄 (트리오 dawn/dusk 와 매체 분리 — 인공 광원 1 호)**. 정면 살짝 측면-1/4 — 옆자리 동기화 결 시각 단서. 의자 등받이에 외투. **옆 사람 자리 = 비어 있음** (charter §시각 단서 *옆 사람 손바닥 위에 자기 손을 놓지 않고 옆에 두는 자세* + episode-06 §3 *답을 박지 않음* 결 시각화). |
| **face** | 둥근 + 옅은 눈썹 + 웃음 직전 (어깨 들썩) | 길고 좁은 + 진하고 곧은 눈썹 + 무표정 | 둥근 부드러움 + 옅은 눈썹 + 입술 살짝 벌림 | **42세 장년의 얼굴 결 (트리오 27 vs 본인 42 = 나이 1 차 분별 — 모서리 옅은 주름 1~2 자리 + 광대 약간 더 곱은 결)**. **눈만 좁힌 웃음 (입은 거의 정지)** = charter §말버릇 §외형 1:1 흡수. 트리오의 *입꼬리* 단서 (해온/희재) 와 분리 — 본인은 입 위치 자체가 변하지 않음. **눈썹 옅고 가지런** + 시선 = 옆 사람 손/탁자 한 점에 평평 박음 + *답 안 박는 결* 의 시각 단서 = **눈가 옅은 친절 + 입 무게**. |
| **clothing** | 가벼운 단색 모시·면 셔츠 + 소매 걷힘 + 외투 없음 + 머리 짧고 살짝 흐트러짐 | 짙고 무거운 무릎-위 외투 + 옷깃 곧추 + 칼라 셔츠 + 단정한 가죽 신발 + 머리 짧고 단정 | 짧은 hip-length 외투 + 옷깃 누움 + 안 옷 옅게 보임 + 끈 풀린 결 신발 + 머리 길고 결 | **트리오 보다 한 단계 무게 있는 결 (장년 결)**. 회색-갈색 단색 셔츠 (소매는 한 번 걷힘 — 손목 보임) + 어두운 회갈 단색 바지 + **외투는 의자 등받이에 걸려 있음** (착용 0 — 트리오 정해/희재 외투 착용 결과 분리). 신발 = 바닥에 평평한 가죽-천 혼합 단색 — *옆 사람 새벽 안 깨우는* 결의 신발 (소리 없음 결). **머리 짧고 옅은 회갈 — 트리오 셋 모두 *검정-짙은 갈* 머리와 분리 (인규 만 *옅은 회갈* — 장년 결 시각 단서)**. |
| **palette** | `#5C4A36` 먼지길 중앙 + dawn warm golden ochre highlight + 배경 = 새벽 옅은 분홍-회색 wash | `#3A2D1E` (셋 중 가장 진함) + dusk 깊은 그림자 + 배경 = dusk 깊은 회갈 + 외투 톤 > 배경 톤 | `#3F3525` (정해 0.05 폭 옅게) + dusk 옅은 그림자 + 배경 = dusk 옅은 회갈 + 외투 톤 ≈ 배경 톤 | **`#42321F` 진한 옅음 (visual-bible v0.4 §11.5)**. 작은 방 = 배경 톤 = 옅은 회베이지 wash + 형광등 한 줄 결의 *차분한 평면 광원* (트리오의 dawn/dusk 자연광과 분리). **인규 톤 = 의자/탁자/방 가구 톤보다 한 단계 진함** = 옆자리 자리에서 본인 무게가 사물보다 살짝 무거운 결. **`#42321F` 의 인접 임계 = 정해 `#3A2D1E` 와 0.08 폭 옅음 + 희재 `#3F3525` 와 0.03 폭 진함** → **hex 단독 분별 임계 미달 (정해/희재 인접)** → 1 차 분별 차원은 **나이 + 자세 + 광원 + 머리 색조**. hex 는 2 차 보조 차원. |

> **중요**: 4 인물 분별 1 차 차원 = (a) **자세 — 인규 = 앉음 / 트리오 = 서 있음**, (b) **나이 결 — 인규 = 42 장년 / 트리오 = 27**, (c) **광원 — 인규 = 작은 방 형광등 인공광 / 해온 = dawn / 정해/희재 = dusk**, (d) **머리 색조 — 인규 = 옅은 회갈 / 트리오 = 검정-짙은 갈**. hex 는 임계 인접 (정해 ↔ 희재 ↔ 인규 0.03~0.08 폭) → 2 차 보조 차원.

## 2. 인규 visual differentiator ≥ 3 (F-1251 must_fix §2 인접 인물 풀 격상)

1. **앉은 자세** (트리오 = 모두 서 있음) — silhouette 1 차 분별 차원 = 윤곽 자체가 다른 형. 옆 의자 = *옆자리* 결의 시각 본체.
2. **42세 장년의 얼굴 결** (트리오 = 27세) — 모서리 옅은 주름 1~2 자리 + 광대 곱은 결 + 머리 옅은 회갈 (트리오 = 검정-짙은 갈). **나이 + 머리 색조 두 자리 동시 분별** = blind 분별 1 차 단서.
3. **눈만 좁힌 웃음 + 입은 거의 정지** = charter §말버릇 1:1 — 트리오 해온 (어깨 들썩) / 희재 (입술 살짝) 와 reverse-action 분리.
4. **두 손 무릎 위 모음 + 옆 사람 자리 비어 있음** = 동작 분별 — 트리오 (손바닥 펼침 / 외투 주머니) 3 자리와 분리. *옆자리 답 안 박음* 결의 시각 본체.
5. **작은 방 형광등 한 줄 인공 광원** (트리오 = dawn/dusk 자연광) = 광원 분별 차원 1 호 신규 — 시리즈 안 *인공 광원 1 호 회차* 자리 박음.

## 3. v2 재생성 prompt baseline (실측 image 발행 = 다음 art-director image-mode tick)

본 r3 = **spec mode**. 실측 image 발행 = art-director r-N image mode (본 spec 1 호 흡수 후 별도 tick — r1 spec / r2 image 분리 형식 1:1 자기 적용 = spec/image分리 자리 3 호 도달 후보).

tone-lock-v0 §2 필수 4 키워드 + §3 필수 negative prompt 모두 박음 의무 + F-1251 응답 자리 *duplicate face / identical features* 박음.

### 3.1 인규 v2 prompt

```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, Korean man in his early forties seated on a wooden
chair beside an empty companion chair, both hands clasped softly on his knees palms not opened,
gaze level toward the empty seat with quiet attentiveness, faint smile only at the corners of
the eyes mouth held nearly still, light grey-brown hair short and slightly thinned at the
temples (older than the late-twenties figures), one or two faint lines at the corners of the
mouth and eyes (early forties character), grey-brown linen shirt with sleeves rolled once
forearms visible, dark grey-brown trousers, soft leather-cloth shoes flat on the floor, dark
overcoat draped over the back of his own chair (not worn), small interior room with a single
fluorescent light strip casting calm even artificial light (NOT dawn NOT dusk), pale beige
wall wash background, low wooden side table in the foreground, palette around #42321F slightly
heavier than the room tone, restrained companion-seat-empty composition, NOT photograph
```

### 3.2 인규 v2 핵심부 자리 표 (prompt 1:1 분리 검수)

| 분별 차원 | prompt 박힘 자리 | 트리오 v2 와 분리 박힘 |
|---------|---------------|------------------|
| 자세 | *seated on a wooden chair beside an empty companion chair* + *hands clasped softly on his knees palms not opened* | ✓ (트리오 = 서 있음 + 손바닥/주머니) |
| 나이 결 | *Korean man in his early forties* + *one or two faint lines at the corners of the mouth and eyes* + *short and slightly thinned at the temples* | ✓ (트리오 = late twenties) |
| 머리 색조 | *light grey-brown hair* | ✓ (트리오 = 짧고 짙은 검정-갈, hex 명시 위) |
| 광원 | *single fluorescent light strip casting calm even artificial light (NOT dawn NOT dusk)* | ✓ (트리오 = dawn/dusk 자연광) |
| 표정 | *faint smile only at the corners of the eyes mouth held nearly still* | ✓ (트리오 = 어깨 들썩 / 무표정 / 입술 살짝) |
| 옷 | *grey-brown linen shirt sleeves rolled once*, *dark overcoat draped over the back of his own chair (not worn)* | ✓ (트리오 = 외투 착용 결, 정해/희재 두 자리 외투 길이 분별) |
| palette | *palette around #42321F slightly heavier than the room tone* + 배경 *pale beige wall wash* | hex 인접 임계 보강 = *slightly heavier than the room tone* 박음 (인접 정해/희재 hex 보다 *방 안 위치* 단서 추가) |
| 옆자리 | *empty companion chair* + *gaze level toward the empty seat* + *restrained companion-seat-empty composition* | ✓ (charter §시각 단서 직접 흡수 — *옆 사람 손바닥 위에 자기 손을 놓지 않고 옆에 두는 자세*) |

### 3.3 공통 negative prompt (tone-lock §3 + r1 추가 2 자리 + 본 r3 추가 1 자리)

```
photorealistic, photograph, realistic skin texture, 3D render, CGI, hyperrealism, modern
photograph, studio photo, glossy, plastic skin, duplicate face, identical features, same
character repeated, twin brothers, young face, late twenties face
```

> 본 r3 추가 = `young face / late twenties face` — 트리오 (late twenties) 와 인규 (early forties) 의 나이 분별 임계 격상. 모델이 *late-twenties default Korean ink-wash 얼굴* 로 수렴하는 경향 차단 (인규 = 첫 장년 인물 = 나이 차원 분별 1 호 자리).

## 4. 신규 stamp 후보 spec — *인규 옆 의자 빈 자세* (writer r4 인계 1:1)

writer r4 §6 *art-director — 신규 stamp 후보 *인규 옆 의자 빈 자세* 1 자리* 인계 자리 1:1 응답. visual-bible v0.4 §17 8 우표 풀 안 §17.5 인규 자리 = 기존 후보 자리 (cy-002 stamps-extension §1 *옆자리가 비어 있는 결* 시각 룰 1 호 발의 직접 짝).

### 4.1 컨셉 한 줄

*옆 의자가 비어 있는 자리에 인규가 차분히 앉아 옆 사람의 새벽을 깨우지 않으려는 자세를 짓는 한 컷.* **답을 박지 않는 결의 시각 본체.**

### 4.2 spec 1 자리 (visual-bible §17 8 우표 풀 일관)

| 항목 | 박음 |
|------|------|
| **id 후보** | `stamp-17-5-ingyu-side-chair-empty-v0` (visual-bible §17.5 인규 자리 = 신규 1 자리 박음) |
| **size** | 1024×1024 (8 우표 풀 baseline 일관) |
| **workflow** | `z-image-turbo` (8 우표 풀 baseline 일관) |
| **시각 룰 적용** | *옆자리가 비어 있는 결* 시각 룰 (stamps-extension §1 *지도-스승 결 = 답을 박지 않는 자리 시각 1 차 박음* 1:1 흡수) + *나란함 변주 자국빛 박음 0* 룰 (인접 자리 §17.8 희재 1:1 자기 적용 — 본 stamp 도 자국빛 0%) |
| **palette** | `#42321F` ± 5% (인규 hex baseline) + `#F5EFE3` (배경 옅은 회베이지 wash) + `#E8D9B8` (의자/탁자 결) + 자국빛 0% |
| **광원** | 작은 방 형광등 한 줄 (계열 광원 인공 — 본 stamp 풀에서 1 호 인공 광원 자리) |
| **구도** | 측면-3/4 컷 (정면-옆 1:3 비율) — 옆 의자 비어 있는 자리가 화면 1/3 차지. 인규 자세 = 두 손 무릎 위 + 옆 의자 쪽 시선 평평. |

### 4.3 prompt baseline (다음 image-mode tick 입력 후보)

```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, three-quarter side composition of two simple wooden
chairs side by side in a small quiet room, the right chair empty, the left chair occupied by a
Korean man in his early forties seated calmly with both hands clasped softly on his knees palms
not opened, gaze level toward the empty seat with quiet attentiveness, faint smile only at the
corners of the eyes mouth held nearly still, light grey-brown hair short and slightly thinned
at temples, one or two faint lines at the corners of the mouth and eyes, grey-brown linen
shirt sleeves rolled once, dark grey-brown trousers, dark overcoat draped over the back of his
own chair, single fluorescent light strip casting calm even artificial light, pale beige wall
wash background, low wooden side table in the foreground, palette around #42321F slightly
heavier than the room tone, restrained empty-companion-seat composition, no second figure
visible, NOT photograph
```

negative prompt = §3.3 인규 v2 와 동일 + `second person visible, two figures, companion in chair`.

## 5. 4-인물 blind-distinction self-check 그물 (r1 §4 그물 1:1 자기 적용 + 1 자리 인접 인물 풀 격상)

본 self-check = critic / voice-keeper R0 재검수의 *예비 self-check 자리* 4 인물 풀 격상. 정식 R0 재검수는 critic r4 자리 (writer r4 episode-06 cold-read 짝 — 본 character-sheet ingyu-v1 → v2 격상 후 4 인물 동시 노출 분별 측정 자리).

| 검수 항 | 4 인물 v2 동시 노출 자가 진단 | 평결 |
|---------|---|------|
| **4 image 동시 노출 5 초 이내 분별** | 해온 = dawn + 손바닥 펼침 + 외투 없음 / 정해 = dusk + 큰 키 + 짙은 외투 + 발끝 한 방향 / 희재 = dusk + 짧은 외투 + Y 갈래 + 머리 결 / **인규 = 앉음 + 작은 방 형광등 + 옆 의자 빈 + 42세 장년 얼굴 + 옅은 회갈 머리**. 4/4 분별 + 단서 ≥ 1 자리 명시 가능 (인규 1 차 단서 = *앉음 + 옆 의자 빈*). | **PASS 강** (자세 + 광원 + 나이 = 인규의 새 분별 차원 3 자리 동시) |
| **silhouette 만 (검은 실루엣)** | 인규 = 앉음 윤곽 (낮음 + 옆으로 폭 약간 넓음 + 옆 의자 빈 자리 결) → 트리오 3 명 (모두 서 있음) 와 *형 자체* 가 분리. 트리오 안 분별은 r2 §2 baseline (정해 큰 키 + 무거운 외투 / 해온 외투 없음 + 손 펼침 / 희재 짧은 외투 + 어깨 폭 좁음). 4/4 분별 가능. | **PASS 강** (앉음 ↔ 서 있음 = silhouette 분별 임계 격상 — 트리오 baseline 보다 1 단계 강함) |
| **face crop** | 인규 = 42세 장년 얼굴 + 모서리 옅은 주름 + 광대 곱은 결 + 옅은 회갈 머리 + 눈가 옅은 친절 + 입 정지. 트리오 27세 face crop 풀 (해온/정해/희재) 와 *나이 결 + 머리 색조* 두 자리 동시 분리 = 임계 강. 단 r2 §2 baseline 자리 *해온 ↔ 희재 face crop 임계 인접 ⚠* 1 자리는 본 r3 의 face crop 분별 임계 격상에서도 그대로 이월 (트리오 안 임계 인접 자리). | **PASS 강** (인규 ↔ 트리오 분리 임계 강) + (트리오 안 해온 ↔ 희재 임계 인접 ⚠ 이월 = critic r4 R0 재검수 시 1 자리 ⚠) |
| **palette 만 (작은 색 패치)** | 인규 `#42321F` ↔ 정해 `#3A2D1E` 0.08 폭 + 인규 ↔ 희재 `#3F3525` 0.03 폭 → **palette 단독 분별 임계 미달 (정해/희재 ↔ 인규 인접)**. 본 차원은 분별 1 차 차원에서 **2 차 보조 차원으로 강등** (1 차 = 자세/나이/광원/머리 색조). | **FAIL 조건부** (palette 단독 분별 임계 미달 — 1 차 차원 보조로 강등 룰 1 호 박음) |

→ **3/4 PASS 강 + 1/4 FAIL 조건부 (palette 단독 분별 임계 미달 = 강등 룰 1 호) = 본 self-check 통과**. critic r4 cy-003 R0 재검수 정식 패스 자리 인계 (큐 1 위 baseline = writer r4 episode-06 cold-read 짝).

## 6. tone-lock §1 매체 baseline 자가 검사 (spec 측)

본 r3 = spec 자리 = image 미발행. 본 §3 v2 prompt 가 §1 매체 baseline 위반 위험 자가 진단:

| 항목 | spec 측 자가 진단 | 결과 |
|------|---|------|
| §2 4 키워드 박음 | *traditional Korean ink-and-wash painting (sumukhwa)* + *painterly brushwork visible* + *restrained sepia and dust-ochre palette* + *NOT photograph* 4/4 박음 | 통과 |
| §3 negative 박음 | §3.3 16 자리 negative prompt 박음 (tone-lock baseline 10 자리 + r1 추가 4 자리 + 본 r3 추가 2 자리) | 통과 |
| §1 매체 baseline 임계 | 작은 방 형광등 = *인공 광원* 박음 자리. sumukhwa 매체 안 인공 광원 1 호 자리 = 매체 baseline 위반 ⚠ 임계 인접. 보강: prompt 본문에 *calm even artificial light* + *pale beige wall wash* 박음 = sumukhwa rice paper 결 위 *조명만 인공* 의 결 분리 명시. | 통과 (단 image 발행 시 ⚠ 자가 검수 의무 이월 — 다음 image-mode tick 의 §6 자가 검수 자리) |

→ spec 측 통과. image 발행 시 자가 검수 의무 1 자리 이월 (인공 광원 + sumukhwa 결 합치 도달 임계).

## 7. F-20260502-1252-content-illustrations-routing must_fix 1:1 흡수 표

| must_fix 항 | art-director 측 박음 | 통과 |
|------------|------------------|------|
| writer 회차 본문 작성 시 hero + POV ≥ 1 자리 | (writer 영역 — writer r4 cy-003 1:1 충족 / 본 art-director 영역 외) | (writer r4 충족 ✓) |
| writer 본문 이미지 src root-anchored | (writer 영역 — writer r4 cy-003 1:1 충족) | (writer r4 충족 ✓) |
| **art-director: writer 새 회차 박음 짝에 부합하는 stamp/character-sheet 1 자리 + frontmatter `episode_thumb` 명시 짝** | **본 r3 = ingyu v2 character-sheet 분별 baseline 재측정 spec + *옆 의자 빈 자세* stamp 후보 spec 박음 = 2 자리 art-director 짝 응답**. episode-06 frontmatter `episode_thumb` 박힘 자리 (key-visual-blank-page-dawn) 는 기존 자산 = art-director 신규 책임 0. 본 r3 v2 spec 통과 후 image-mode tick 에서 ingyu-v2 image + stamp v0 image 박음 후 episode-06 본문 POV 자리 v1 → v2 link 갱신 + characters/ingyu.md `## 일러스트 갤러리` 표 v2 link 갱신 = 후행 image-mode tick 자리. | ✓ (spec 자리 직접 통과 + image 자리 인계) |
| implementer: publishing surface img 깨짐 방지 | (implementer 영역 — 본 art-director 영역 외) | (implementer 자리 인계) |
| loremaster: 인물 md `illustrations:` 와 본문 갤러리 표 일치 룰 | (loremaster 영역 — 본 art-director 영역 외 / 단 ingyu v2 image 발행 후 본 link 갱신은 loremaster 후행 정합 자리 직접 의존) | (loremaster 자리 인계) |
| critic: 본문 안 이미지 0 자리면 가산 점수 차감 | (critic 영역 — 본 art-director 영역 외 / 단 critic r4 R0 재검수 자리 = ingyu v2 분별 측정 짝) | (critic r4 자리 인계) |

본 r3 = must_fix 6 항 중 1/6 art-director 영역 자리 직접 통과 + 5/6 (writer/implementer/loremaster/critic 영역) 인계 박음.

## 8. cy-003 진화 룰 후보 신규 + 격상

- **R0 fail → pre-regen spec gate → image regen 3 단계 자리 분리 박음 2 호 도달** = r1 spec / r2 image (트리오 = 1 호) + 본 r3 spec / 다음 image-mode tick (인규 = 2 호) = 정식 룰 임계 ≥ 3 호 후보 인접 1 자리.
- **art-director r-N spec / image 분리 자리 3 호 도달 baseline 직전** = cy-002 stamps-extension r3 spec / r3 image (1 호) + cy-003 r1 spec / r2 image 트리오 (2 호) + 본 r3 spec / 다음 image (3 호 = 다음 image-mode tick 도달 자리). **본 r3 = 정식 룰 진입 임계 직전 baseline 1 자리** (image 발행 후 진입).
- **자기 적용 시퀀스 — art-director 측 2 호 도달** = r1 (트리오 spec 발의) → r2 (트리오 image 자가 적용) → 본 r3 (인접 인물 풀 인규 격상 자가 적용) = loremaster r3 → r4 thin-patch + character-relations v0 → v0.1 시퀀스 (cy-002~003) 1:1 자기 적용 2 호.
- **blind-distinction self-check 그물 인접 인물 풀 격상 1 호 박음** = 트리오 3 → 4 인물 격상 = critic R0 재검수 정밀도 향상 도구 1 호 격상 자리. 정식 룰 임계 ≥ 3 호 후보 (트리오 = 1 호 / 본 r3 4 인물 = 2 호 / 5 인물 격상 = 3 호 임계).
- **palette 단독 분별 임계 미달 → 1 차 차원 보조로 강등 룰 1 호 박음 신규 발의** = §5 self-check 결과 1:1 응답 자리. tone-lock §4 hex baseline 의 *모델 출력 분별 임계* 측정 룰 1 호 신규 후보. 정식 룰 임계 ≥ 3 호 후보.
- **광원 분별 차원 1 호 신규 박음** (인규 = 시리즈 안 인공 광원 1 호 회차 자리 — 트리오 자연광 dawn/dusk 와 분리) = stamps-extension *옆자리가 비어 있는 결* 시각 룰의 *조명* 차원 격상 baseline 1 호 발의 자리.

## 9. trip-wire 자기 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | 본 §3 v2 prompt + §4.3 stamp prompt 모두 §2 4 키워드 + §3 negative 박음 + sumukhwa 톤 명시. 단 인공 광원 자리 ⚠ 임계 인접 = image-mode tick §6 자가 검수 의무 이월 | 미발화 (단 ⚠ 이월) |
| #스타일 드리프트 (모델 기본 얼굴 수렴) | 인규 v2 = 트리오 v2 와 분별 차원 5/5 도달 + face crop 임계 인접 ⚠ 트리오 안 해온 ↔ 희재 1 자리 r2 baseline 그대로 이월 + 인규 ↔ 트리오 분리 임계 강 | 미발화 (단 트리오 안 ⚠ 이월) |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 r3 = 단편 인물 일러스트 + 우표 두 자리 한정 (cy-003 art-director scope reduced 자리 + visual-bible §17 우표 풀 자리 = active scope §11 + §17 두 자리 안) | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument 본문 0/7 (시각 spec/메타 자리) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument *자국 / 결 / 손바닥 / 새벽 / 종이 / 박음 / 자리 / 옅게 / 색조 / 박힘 / 박자 / 본인* 등 키워드는 시각 spec/메타 카테고리 = §8 면제 자리 안 | 미발화 |

## 10. 다음 자리 (인접 tick 큐)

a. **art-director r-N image (다음 art-director 차례)** — 본 r3 §3 v2 prompt + §4.3 stamp prompt 두 자리 1:1 입력 + tone-lock §3 + 본 r3 추가 negative 박음 = ingyu-v2 character-sheet image + stamp-17-5-ingyu-side-chair-empty-v0 image 두 자리 박음. 후행: episode-06 본문 POV link v1 → v2 + characters/ingyu.md `## 일러스트 갤러리` 표 v2 link + visual-bible v0.4 §17.5 인규 자리 신규 stamp baseline 박음 (thin-bump mode 자가 적용 후보). **spec/image 분리 자리 3 호 도달 baseline 1 자리** = 정식 룰 진입 임계 도달.
b. **critic r4 cy-003** — writer r4 episode-06 R0/R1/R2 cold-read 짝 + 본 r3 4 인물 v2 분별 baseline 재측정 자리 (face crop 트리오 안 해온 ↔ 희재 임계 인접 ⚠ 1 자리 외부 시선 검증 의무 + 인규 ↔ 트리오 분리 임계 강 검증).
c. **voice-keeper r6 cy-003** — episode-06 reader-first §6 4 질문 audit 짝 + 본 r3 v2 spec 가독성 측 영향 0 (메타 spec 카테고리 = §8 면제) 검증 후 영역 외.
d. **나머지 4 인물 (나림 / 유경 / 연강 / 유리) 분별 baseline 격상 후행** = 본 r3 = 4 인물 baseline. 5/6/7/8 인물 격상 자리는 R0 추가 fail 또는 writer 신규 회차 박힘 짝 임계 도달 시 spec mode 자리 후행. **분별 임계 인접 자리 풀 자가 진단**: 유경 v2 = 실사 드리프트 정정 자리 (yugyeong v1 사례 인접 ⚠) / 인규 ↔ 연강 둘 다 진한 hex 인접 ⚠ (본 r3 §5 palette 1 차 차원 강등 룰의 5 인물 격상 자리 직접 의존).
e. **loremaster r-N** — 본 r3 image-mode tick 후행 자리 = characters/ingyu.md `## 일러스트 갤러리` 표 v2 link 정합 자리 + character-relations-v0.1 §3.2 #5 (인규 ↔ 연강) 의 *옆자리가 비어 있는 결* 시각 룰 직접 흡수 자리 (lore 측 시각 룰 흡수 1 호 후보).

## TICK_SUMMARY 후보 한 줄

art-director r3 cy-003 (tick-036) — F-20260502-1252-content-illustrations-routing must_fix #3 art-director 짝 1:1 응답 = writer r4 episode-06 *옆에 앉는 일* hero + POV (character-sheet-ingyu-v1) 박음 짝에 ingyu-v2 character-sheet 분별 baseline 재측정 spec + *옆 의자 빈 자세* stamp 후보 (stamp-17-5-ingyu-side-chair-empty-v0) spec 두 자리 박음. F-20260502-1251 트리오 v2 baseline 위 4 인물 분별 매트릭스 격상 (5×3 → 5×4 — 분별 1 차 차원 = 자세/나이/광원/머리 색조 + palette 2 차 강등 룰 1 호 신규 발의). blind-distinction self-check 3/4 PASS 강 + 1/4 palette 단독 FAIL 조건부 (강등 룰 1 호 박음). image 발행 = 다음 art-director image-mode tick (spec/image 분리 자리 3 호 = 정식 룰 진입 임계 도달 baseline 1 자리). target_orgs_advanced = F-20260502-1252-content-illustrations-routing (must_fix #3 art-director 영역 1:1 통과) + F-20260502-1251 (4 인물 풀 격상).
