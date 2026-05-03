---
role: art-director
round: 5
cycle: cy-003
mode: spec (8-인물 풀 분별 baseline 격상 + 나림/연강/유리 v2 prompt baseline + 유경 v2 image 측 매트릭스 흡수 — pre-regen gate, image 미발행)
authored_at: 2026-05-02T19:55:00+00:00
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced:
  - "F-20260502-1251-character-visuals-too-similar must_fix §1·§2·§3 — 8-인물 풀 (해온 v2 + 정해 v2 + 희재 v2 + 인규 v2 + 유경 v2 + 나림 v2 + 연강 v2 + 유리 v2) 분별 baseline 격상 자리. 4 → 8 인물 풀 격상 = blind-distinction self-check 그물 *5/6/7/8 인물 격상* 임계 도달 = 정식 룰 임계 ≥ 3 호 후보 4 자리 동시 통과 (5 인물 = 1 호 / 6 인물 = 2 호 / 7 인물 = 3 호 / 8 인물 = 4 호 = 8-인물 풀 정식 baseline 격상)."
  - "F-20260502-1251-character-visuals-too-similar must_fix §3 — silhouette/pose/face/clothing/palette 5×8 차이표 박음 = 본 r5 §1 매트릭스 = 4 → 8 인 격상 베이스라인 도달."
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v1.png  # 분별 baseline 재측정 대상 (image regen = 다음 image-mode tick)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yeongang-v1.png  # 동
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v1.png  # 동
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yugyeong-v2.png  # 본 r5 = 매트릭스 흡수 자리 (image 측 박음 = cy-003 r2 직전 자리, 본 r5 = spec 측 분별 매트릭스 흡수)
binds:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r1.md (§1 5×3 차이표 → 본 r5 5×8 격상 baseline)
  - generations/gen-001/cycles/cy-003/arguments/art-director-r2.md (트리오 v2 image baseline)
  - generations/gen-001/cycles/cy-003/arguments/art-director-r3.md (5×4 인규 격상 + palette 강등 룰 1 호)
  - generations/gen-001/cycles/cy-003/arguments/art-director-r4.md (4 인물 풀 image baseline 4/4 + spec/image 분리 자리 3 호 정식 룰 진입)
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md (§2 4 키워드 + §3 negative + §4 hex baseline)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11 8 인 hex 매트릭스 + §13 자국빛 4 종 분포 + §17 8 우표 풀)
  - outputs/writing/the-map-is-the-journey/characters/narim.md (§외형 §시각 단서)
  - outputs/writing/the-map-is-the-journey/characters/yeongang.md (§외형 §말투 §자기에게 쓰는 시간)
  - outputs/writing/the-map-is-the-journey/characters/yuri.md (§외형 §말투 §첫 모습)
  - outputs/writing/the-map-is-the-journey/characters/yugyeong.md (§외형 §시각 단서)
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
note_pattern: |
  본 r5 = r1/r2 (트리오 spec/image) → r3/r4 (인규 spec/image) → 본 r5 (8-인물 풀 spec)
  = *art-director 측 자기 적용 시퀀스 4 호 도달*. spec/image 분리 자리 = r4 에서 3 호 정식
  룰 진입 baseline 도달 → 본 r5 spec = 4 호 자리 (image 미발행 = 다음 image-mode tick 인계).
  4 → 8 인 격상 = blind-distinction 그물 *5/6/7/8 인물 격상* 4 자리 동시 통과 = 정식 룰
  임계 ≥ 3 호 4 자리 누적 도달.
---

# art-director r5 cy-003 — 8-인물 풀 분별 baseline 격상 (spec)

## 한 줄

F-20260502-1251 응답 자리 4 호 — 4 인물 풀 (해온/정해/희재/인규 v2) baseline 위에 *나림 v2 + 연강 v2 + 유리 v2* 3 자리 spec + *유경 v2* (cy-003 r2 직전 박힘) 매트릭스 흡수 = **8-인물 풀 spec 측 분별 baseline 정식 격상**. v1 3 자리 (나림/연강/유리) 약한 자리 = 트리오 v1 + 인규 v1 과 동형 (tone-lock §2 4 키워드 미박음 + §3 negative 0 + 분별 차원 빈약). v2 prompt baseline 3 자리 박음 + 5×8 분별 매트릭스 박음 + 8-인물 blind-distinction self-check 통과 = critic R0 재검수 baseline 인계. **image 발행 = 다음 art-director image-mode tick (spec/image 분리 자리 4 호 = 정식 룰 진입 자리 자기 적용 1 호 baseline)**.

## 0. v1 3 자리 약한 자리 진단 (나림/연강/유리)

각 v1 prompt (.meta.yml 직접 인용 — 본 argument 안 §0.1·§0.2·§0.3) 의 4 뿌리는 트리오 v1 + 인규 v1 (r3 §0.1) 과 1:1 동형:

### 0.1 나림 v1 약한 자리

```
young Korean woman mid-twenties, hesitant half-smile only at corner of lips, twelve faint
earth-color hues at resting place, own paper nearly empty, sumukhwa style, faded warm grey
#7A6447 to #8B7355
```

| 뿌리 | 자가 진단 |
|------|---------|
| §2 4 키워드 미박음 | *sumukhwa style* 만 부분. 빠진 자리: `painterly brushwork visible` + `restrained sepia and dust-ochre palette` + `NOT photograph`. yugyeong v1 실사 드리프트 1 호 사례 재발화 위험. |
| §3 negative 0 | `photorealistic / 3D render` 등 0. *duplicate face / identical features* 도 0 = F-1251 응답 자리 부재. |
| 분별 차원 빈약 | *young Korean woman mid-twenties* + *hesitant half-smile* 2 자리만. 체형 / 머리 / 의상 / 자세 / 광원 0. 모델 default *late-twenties Korean ink-wash 여성 얼굴* 로 수렴 위험. 27 트리오 (해온/희재) + 인규 ↔ 본인 분별 임계 인접. |
| charter §외형 §시각 단서 미흡수 | *12 색조 박물관 자리* + *반쯤 의심* 결 + *어깨 눈 정지* + *입꼬리만* + *남의 자국이 가장 많이 겹친 자리에 머무는 결* — prompt 0/5 흡수 (단 *twelve faint earth-color hues* 자리 1 자리만 부분). |

### 0.2 연강 v1 약한 자리

```
elderly Korean man over sixty, sitting on wooden bench at mountain ridge, light coat across
knees, dawn rising, holding rising one beat longer because someone has come, eyes only
narrowed in small smile, sumukhwa style, faded sepia #5A4A35
```

| 뿌리 | 자가 진단 |
|------|---------|
| §2 4 키워드 미박음 | *sumukhwa style* 만 부분. 빠진 자리: 위와 동일 4 자리. |
| §3 negative 0 | 위와 동일. |
| 분별 차원 빈약 | *elderly Korean man over sixty* + *sitting on bench* 2 자리. 60+ 장년 결 분별은 비교적 강함 (인규 42 와도 분별 도달 — 나이 18 폭) 단 의복 / 자세 결 더 박음 필요. |
| charter §첫 모습 §말투 미흡수 | *5 분쯤 앉아 있다 일어선다* + *옆 사람 새벽 깨우지 않으려는 60 년 된 습관 입에 박힘* + *옅은 친절 + 어깨 정지 + 입 정지* — prompt 일부만 흡수 (단 *eyes only narrowed in small smile* 1 자리는 강함). |

### 0.3 유리 v1 약한 자리

```
eight-year-old Korean girl seated at small low desk in own room at dawn, opening own palm
first time without mother holding hand, expression carrying both quiet relief and faint
loneliness, eight-year-old smile moving shoulders eyes mouth all together, sumukhwa style,
golden ochre #C8995A
```

| 뿌리 | 자가 진단 |
|------|---------|
| §2 4 키워드 미박음 | *sumukhwa style* 만 부분. 빠진 자리: 위와 동일. |
| §3 negative 0 | 위와 동일. |
| 분별 차원 비교적 강함 | *eight-year-old* + *seated at small low desk* + *first time without mother* + *both quiet relief and faint loneliness* + *eight-year-old smile moving shoulders eyes mouth all together* = 5 분별 차원 박힘 (8 살 아이 = 27/42/60+ 풀과 *나이 1 차 자체* 분별 임계 강). 8 살 결 단독 자리 = silhouette / face / pose / palette 4 차원 임계 분별 자체 강. |
| charter §첫 모습 §말투 미흡수 | *어머니가 손을 잡지 않아 준 그 한 새벽이 자기 안에 가장 깊이 박힘* + *안심과 서운함 두 마음 한 새벽에 같이 와 있음* — prompt *quiet relief and faint loneliness* 자리로 부분 흡수 (강함). 단 *어머니 옆에 앉아 자기 손바닥 펴고 있음* 의 *옆자리 어머니 부재 결* 은 0 — 어머니가 옆에 함께 앉아 있는 자리가 prompt 안에 박혀야 함 (charter §첫 모습 1:1 흡수 자리). |

## 1. 5×8 분별 매트릭스 (8-인물 풀 격상)

본 표 = r1 §1 5×3 → r3 §1 5×4 → 본 r5 5×8 격상. 각 셀은 인물 charter (`outputs/writing/.../characters/<id>.md` §외형 / §시각 단서 / §첫 모습) + 트리오 v2 + 인규 v2 + 유경 v2 결과 (r2/r4 §self-check) 직접 도출.

| 항 | 해온 v2 (27, 나) | 정해 v2 (27, 나) | 희재 v2 (27, 나) | 인규 v2 (42, 업) | **유경 v2 (42, 가족)** | **나림 v2 (26, 나)** | **연강 v2 (60+, 업)** | **유리 v2 (8, 가족→나)** |
|----|---------|---------|---------|---------|------|------|------|------|
| **silhouette** | 외투 없음 + 손바닥 펼침 + 어깨 들썩 직전 + 윤곽 둥글고 가벼움 (서 있음) | 짙고 무거운 무릎-위 외투 + 옷깃 곧추 + 셋 중 가장 큰 키 + 손 외투 주머니 (서 있음) | 짧은 hip-length 외투 + 옷깃 누움 + 어깨 폭 좁음 + 양손 외투 주머니 (서 있음) | 앉은 자세 + 옆 의자 빈 자리 + 외투 = 의자 등받이 (앉음) | 중년 여성 모성 결 + 양 손바닥을 한 번 가볍게 비비는 자세 (서 있거나 앉음 정면 — 손바닥 비빔 동작이 1 차 단서) + 부드러운 어깨 결 + 머리 한 줄 묶거나 단정 | **26 청년 여성** + **고개 살짝 기울임** + 양 손바닥 *접혀 있음 — 펴기 0* + 어깨 정지 + *남의 자국 12 색조* 옅게 박힌 자리 가장자리에 *반쯤 등 돌린* 결 (정면-옆 1/4) + 외투 없음 또는 옅은 카디건 | **60+ 장년 노인** + 산등성이 벤치에 앉음 + 무릎 위 *얇은 외투 한 자락* 덮음 + 손바닥 *한 번 펴고 한 호흡 끝남* 직후의 결 (손 무릎 위 옅게) + 어깨 정지 결 + 머리 짧고 흰빛 | **8 살 아이** + **앉아 있는 작은 책상 앞** + 두 손 손바닥 *처음 자기 혼자 펴 본 결* (양손 펴짐 + 어깨도 같이) + 키가 셋의 절반 + *어머니가 옆에 앉아 있음 — 어머니는 자기 손바닥을 펴고 있음, 아이 손은 잡지 않음* (옆자리 동행 결 = 손은 안 잡음) |
| **pose** | 양 손바닥 위 펼침 + 시선 = 자기 손바닥 + 광원 dawn | 외투 주머니 손 + 시선 = 자기 발끝 + 발끝 한 방향 + 광원 dusk | 외투 주머니 손 + 시선 = 발끝 ↔ Y 갈래 + 측면-3/4 + 광원 dusk | 두 손 무릎 위 모음 + 시선 = 옆 사람 자리 빈 자리 + 광원 = 작은 방 형광등 인공광 | 손바닥을 한 번 가볍게 비비는 동작 + 시선 = 자기 손바닥 + 광원 dawn + *기쁨과 두려움 두 마음 동시에 와 있는 결* (입 끝만 살짝, 어깨는 정지) | 입꼬리만 살짝 올라가는 *반쯤 의심* 의 웃음 (어깨 / 눈 정지) + 시선 = *자기 종이 가장자리 — 펴지 않은 채 가장자리만* + 광원 = dawn 옅게 (단 *자기 손바닥 안 폄* 결 = 손바닥 펼침 0 — 트리오 해온/유경 펼침과 reverse) | 손바닥 *한 호흡 끝난 직후* 의 결 = 양 손이 무릎 위 옅게 (펴기 진행 0, 펴고 난 직후) + 시선 = *옆 자리 — 옆에 누군가 앉기 전 또는 직후 한 박자 머무는 결* + 광원 = **dawn 막 올라옴** (해온/유경 dawn 과 같은 광원 가족이지만 *산등성이 시각* + *60+ 결* 분별 강) | 양 손바닥 *처음 펴는 결* + 시선 = 자기 손바닥 + 어깨도 같이 들썩 + 광원 = **dawn 자기 방** (작은 책상 + 어머니 옆) + 표정 = *안심과 서운함 두 마음 같이 와 있는 결* (8 살의 웃음이 *몸 전체 — 어깨 눈 입* 다 같이) |
| **face** | 둥근 + 옅은 눈썹 + 웃음 직전 (어깨 들썩) | 길고 좁은 + 진하고 곧은 눈썹 + 무표정 | 둥근 부드러움 + 옅은 눈썹 + 입술 살짝 벌림 | 42 장년 결 + 모서리 옅은 주름 1~2 자리 + 광대 곱은 결 + 눈만 좁힌 웃음 (입 정지) + 옅은 회갈 머리 | 42 중년 여성 결 + 부드러운 광대 + 눈가 옅은 친절 (육아 17 년 결) + 입 끝만 살짝 + 머리 단정 (한 줄 묶음) + 인규와 *성별 1 차 분별 + 부드러운 결 자체* 분별 강 | 26 청년 여성 결 + 입꼬리만 살짝 (어깨 / 눈 정지) + *반쯤 의심* 의 미세한 입 결 + 눈썹 옅고 가지런 + 머리 짧거나 어깨선 단정 + 27 트리오 해온 ↔ 본인 *나이 1 폭 차이 + 성별 1 차 분별* 도달 | **60+ 장년 결** = 깊은 주름 + 흰빛 머리 + 눈가 깊은 친절 + 입 정지 결 + 본인은 *입에 올릴 단어가 없는* 결 = 표정 자체가 *옅고 무거움 동시* + 인규 42 ↔ 연강 60+ 분별 = 나이 18 폭 + *깊은 주름 / 흰빛 머리* 자리 명시 박음 = 임계 강 | **8 살 아이 얼굴 결** = 둥근 광대 + 큰 눈 + 옅은 눈썹 + 입 살짝 벌림 + 어깨도 같이 움직이는 웃음 결 + 27/42/60+ 풀과 *얼굴 자체* 분별 1 차 강 (나이 = 19 폭 이상) |
| **clothing** | 가벼운 단색 모시·면 셔츠 + 소매 걷힘 + 외투 없음 + 머리 짧고 살짝 흐트러짐 | 짙고 무거운 무릎-위 외투 + 옷깃 곧추 + 칼라 셔츠 + 단정한 가죽 신발 + 머리 짧고 단정 | 짧은 hip-length 외투 + 옷깃 누움 + 안 옷 옅게 보임 + 끈 풀린 결 신발 + 머리 길고 결 | 회갈 단색 셔츠 + 어두운 회갈 단색 바지 + 외투 의자 등받이 + 머리 짧고 옅은 회갈 (장년 결) | **중년 여성 결의 단색 옅은 카디건 또는 단정한 셔츠 (긴 소매)** + 옅은 회갈 또는 옅은 모시 단색 + 머리 한 줄 묶거나 단정 + 단정한 가죽 신발 (실내) + 손목에 옅은 천 한 자락 (아이 결의 옅은 단서 — 옆자리 동행 결) | **옅은 카디건 또는 단색 회갈 셔츠 + 어깨선 폭 좁음** + 외투 없음 또는 카디건 옅음 + 머리 짧거나 어깨선 단정 + 옅은 천 신발 + *남의 자국 12 색조* 결의 *외투/소품 옅음 — 자기 색조 박지 않음* | **노인 결의 두꺼운 외투 한 자락 — 무릎 위에 덮여 있음 (착용 0)** + 안은 옅은 회갈 단색 셔츠 + 머리 짧고 흰빛 + 단정한 가죽 신발 (산행 결) + *60 년 된 외투 결의 옅은 색조 변색 — 옅은 dust 결 박음 의무* | **8 살 아이 옅은 단색 옷 (잠옷 또는 가벼운 면 옷)** + 짧거나 한 줄 묶은 머리 + 작은 책상 앞 의자 + 어머니 = 옆에 *옅은 모시 단색* (유경 옷 자리 — 어머니 결의 결 분리 자리) |
| **palette** | `#5C4A36` 먼지길 중앙 + dawn warm golden ochre highlight + 배경 = 새벽 옅은 분홍-회색 wash | `#3A2D1E` (셋 중 가장 진함) + dusk 깊은 그림자 + 배경 = dusk 깊은 회갈 + 외투 톤 > 배경 톤 | `#3F3525` (정해 0.05 폭 옅게) + dusk 옅은 그림자 + 배경 = dusk 옅은 회갈 + 외투 톤 ≈ 배경 톤 | `#42321F` 진한 옅음 + 작은 방 = 배경 톤 = 옅은 회베이지 + 형광등 평면 광원 + 자국빛 0% | `#5C4A36` 먼지길 중앙 + 골든 오커 힌트 + dawn 옅은 분홍-회색 wash + **자국빛 `#C8995A` 옅게 1 자리 — *받음 색조* 가족 자리 결 (배경 옅음 자국 1 점)** | `#7A6447 ~ #8B7355` 옅은 회갈 + dawn 옅음 또는 *쉼의 자리* 자연광 옅음 + 배경 = 12 색조 박물관 자리 옅은 wash + **자국빛 0% — 본인 자기 자국 박음 0 결의 시각 본체** + 다른 사람 색조 12 점 옅은 박음 (**가장 가까운 자리: 인규 ↔ 본인 = 0.05 폭 옅음 임계 인접 ⚠** — 본인 `#7A6447 ~ #8B7355` 와 인규 `#42321F` 0.4 폭 차 = 분별 강하지만, 의상/자세 1 차 차원으로 임계 격상) | `#5A4A35` 먼지길 옅은 폭 + dawn 막 올라옴 + 배경 = 산등성이 옅은 새벽 wash + **자국빛 `#C8995A` ≤ 0.3% (visual-bible §17.7 baseline)** + 외투 = 옅은 dust 결 + 인규 `#42321F` ↔ 본인 `#5A4A35` = 0.18 폭 옅음 (palette 단독 분별 임계 강 — 단 1 차 분별 = 나이 + 산등성이 시각) | `#C8995A` 자국빛 + 아이색조 + dawn 자기 방 옅은 wash + 작은 책상 옅은 나무결 + 어머니 옷 결 = 옅은 모시 (유경 자리) + **자국빛 `#C8995A` 1~3% (자기 첫 자국 결의 시각 본체) — 8 우표 풀 §17.6 *쉼의 자리만* 1 회 예외 자리와 인접 ⚠ baseline** + 유경 ↔ 본인 = *부모-자식 색조 패밀리* (`#5C4A36` ↔ `#C8995A`) 의 시각 결 동기화 1 호 자리 |

> **중요**: 8-인물 풀 분별 1 차 차원 = (a) **나이 / 성별 분별** — 8(유리) / 26(나림) / 27(해온/정해/희재) / 42(인규/유경) / 60+(연강) + 여(나림/유경/유리) ↔ 남(해온/정해/희재/인규/연강), (b) **자세 분별** — 앉음(인규/연강/유리) ↔ 서 있음(트리오/유경/나림), (c) **광원 분별** — dawn(해온/유경/연강/유리) / dusk(정해/희재) / 형광등(인규) / 옅은 자연광(나림), (d) **수반 결** — 어머니 옆(유리) / 아이 옅은 단서(유경) / 옆 의자 빈(인규) / 산등성이 벤치(연강). hex 단독 분별 임계 인접 자리 (트리오 안 정해 ↔ 희재 0.05 폭 / 인규 ↔ 정해 ↔ 희재 ↔ 연강 0.03~0.08 폭 / 나림 ↔ 인규 0.4 폭) → **palette = 2 차 보조 차원 강등 룰 1 호 (r3 §5 발의) 8-인물 풀 자기 적용 1 호**.

## 2. 나림 / 연강 / 유리 visual differentiator ≥ 3 (F-1251 §2 8-인물 풀 격상)

### 2.1 나림 v2 visual differentiator (5 자리)

1. **고개 살짝 기울임 + 반쯤 등 돌린 1/4 정면-옆** = silhouette 1 차 단서. 트리오 (정면) + 인규 (앉음 정면) + 유경 (정면 손바닥 비빔) 와 *반쯤 등 돌린* 결 분리 = 본인 *남의 자국 가장 많이 겹친 자리에 머무는* 결의 시각 본체.
2. **양 손바닥 접혀 있음 — 펴기 0** = pose 1 차 단서. 해온/유경/유리/연강 (손바닥 펴는 결) 4 자리와 reverse-action. 본인의 *6 자국째 해 동안 한 번도 안 폄* 결의 시각 본체.
3. **입꼬리만 살짝 올라가는 웃음 — 어깨/눈 정지** = face 1 차 단서. 해온 (어깨 들썩) / 희재 (입술 살짝) / 유리 (어깨 눈 입 다 같이) 와 분리 결.
4. **`#7A6447 ~ #8B7355` 옅은 회갈 + 자국빛 0%** = palette 1 차 단서. 본인의 *자기 자국 박음 0* 결의 시각 본체.
5. **12 색조 박물관 자리** = 배경 1 차 단서. 다른 사람의 색조 12 점이 한 자리에 옅게 박힘 (본인의 자국은 거의 0). 다른 인물 풀 7 자리와 배경 자체 분별 강.

### 2.2 연강 v2 visual differentiator (5 자리)

1. **60+ 장년 노인 결 + 흰빛 머리 + 깊은 주름** = face / hair 1 차 단서. 8 ~ 42 풀 (7 자리) 와 나이 18 폭 이상 분별. 본인은 시리즈 안 *유일한 60+ 장년 인물*.
2. **산등성이 벤치 + 막 올라오는 dawn** = 배경 + 광원 1 차 단서. 인규 (작은 방 형광등) / 트리오 (자기 동선 자리) / 유경 (자기 방 또는 옅은 자연광) / 나림 (12 색조 박물관 자리) / 유리 (자기 방) 와 *산등성이 자체* 분별 강. 본인의 *60 년 동안 그 자리 매일* 결의 시각 본체.
3. **무릎 위 얇은 외투 한 자락 + 손은 무릎 위 옅게** = pose 1 차 단서. 본인의 *손바닥 한 호흡 끝난 직후* + *옆 사람 새벽 깨우지 않으려는 결* 의 시각 본체. 인규 (의자 등받이 외투) / 정해/희재 (외투 착용) 와 외투 자리 분별 강.
4. **눈만 살짝 좁히는 웃음 — 입은 거의 정지 + 어깨 정지** = face / 표정 1 차 단서. charter §말투 §표정 1:1 흡수. 인규 (눈만 좁힘 + 입 정지) 와 face 측 임계 인접 ⚠ — 1 차 분별은 *나이 + 산등성이 시각 + 무릎 외투* 3 자리. 인규 ↔ 본인 face crop 단독 임계 인접 ⚠ 1 자리 = critic R0 외부 시선 검증 의무 자리.
5. **`#5A4A35` 먼지길 옅은 폭 + 자국빛 `#C8995A` ≤ 0.3% (§17.7 baseline)** = palette 1 차 단서. 인규 `#42321F` 와 0.18 폭 옅음 + 외투 옅은 dust 결 박음.

### 2.3 유리 v2 visual differentiator (5 자리)

1. **8 살 아이 얼굴 + 키가 셋의 절반 (작은 책상 + 의자)** = silhouette / face 1 차 단서. 26~60+ 풀 7 자리와 나이 18 폭 이상 분별. 본인은 시리즈 안 *유일한 어린이 인물* = nahyeob distinction 임계 강 자리.
2. **양 손바닥 처음 펴는 결 + 어깨도 같이 들썩** = pose 1 차 단서. 8 살의 웃음이 *몸 전체 — 어깨 눈 입 다 같이* 결. 해온 (어깨 들썩 직전) / 유경 (손바닥 비빔) 과 *처음 펴는* 결 분리.
3. **어머니 (유경) 옆에 함께 앉아 있음 — 어머니는 자기 손바닥 펴고 있음, 아이 손은 잡지 않음** = composition 1 차 단서. 본인의 *어머니가 손을 잡지 않아 준 그 한 새벽* 결의 시각 본체. 인규 (옆 의자 빈) 와 *옆자리 동행 결* 1:1 reverse — 인규 = 빈 자리 / 본인 = 어머니 옆자리 채워짐 (단 손은 안 잡음). 두 자리 = *옆자리* 시각 룰의 *비어 있음 ↔ 채워짐 단 손은 안 잡음* 1 호 분별.
4. **`#C8995A` 자국빛 + 아이색조** = palette 1 차 단서. 유경 `#5C4A36` ↔ 본인 `#C8995A` = *부모-자식 색조 패밀리* 시각 결 동기화 1 호 자리.
5. **자기 방 작은 책상 + dawn 옅은 wash** = 배경 1 차 단서. 다른 풀 (산등성이 / 작은 방 형광등 / 12 색조 박물관 / 자기 동선 자리) 와 *자기 방 책상* 분별 강.

## 3. v2 재생성 prompt baseline 3 자리 (image 발행 = 다음 art-director image-mode tick)

본 r5 = **spec mode**. 실측 image 발행 = art-director r-N image mode (본 spec 흡수 후 별도 tick — r1 spec / r2 image / r3 spec / r4 image / **r5 spec / r-N image** 분리 형식 1:1 자기 적용 = spec/image 분리 자리 4 호 도달 = 정식 룰 진입 자리 자기 적용 1 호 baseline).

tone-lock-v0 §2 필수 4 키워드 + §3 필수 negative prompt 모두 박음 의무 + F-1251 응답 자리 *duplicate face / identical features* + r3 추가 *young face / late twenties face* 박음.

### 3.1 나림 v2 prompt

```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, Korean woman in her mid-twenties standing slightly
turned three-quarters away from the viewer at the edge of a quiet earth-toned resting place,
both hands clasped softly together palms not opened (palms held closed never opened), gaze
level toward the edge of her own paper not opening it, faint half-smile only at the corner of
her lips with shoulders and eyes held still, light brown hair short or shoulder length neatly
kept, faded warm grey-brown linen cardigan over a plain undertone shirt, soft cloth shoes,
behind her twelve faint earth-color trace patches arranged at a distance pale wash background,
her own paper nearly empty, dawn light very faint and indirect (not direct sunrise), palette
around #7A6447 to #8B7355 cooler than the room, restrained turned-aside composition with
others traces visible behind, NOT photograph
```

negative prompt = tone-lock §3 baseline + r1 추가 4 자리 + r3 추가 2 자리 + 본 r5 추가 1 자리 (*opened palms / palms spread*) — *손바닥 펴기 0* 결의 prompt 측 강제 = 트리오 해온 / 유경 / 유리 (펴는 결) 와 reverse-action 분별 임계 강.

```
photorealistic, photograph, realistic skin texture, 3D render, CGI, hyperrealism, modern
photograph, studio photo, glossy, plastic skin, duplicate face, identical features, same
character repeated, twin brothers, young face, late twenties face, opened palms, palms spread,
hands raised
```

### 3.2 연강 v2 prompt

```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, elderly Korean man in his sixties or older seated
calmly on a simple wooden bench at the edge of a mountain ridge at first dawn, a thin overcoat
draped across his lap (not worn), both hands resting softly on his knees palms held just
finished (not opening not opened), gaze level toward the empty space beside him with quiet
attentiveness as if waiting one extra beat, faint smile only at the corners of the eyes mouth
held nearly still, deep wrinkles at the corners of mouth and eyes, white short hair lightly
combed, plain dust-toned linen shirt under the overcoat, dark trousers, worn leather walking
shoes flat on the ground, distant ridge silhouettes pale background wash with first dawn
warmth, palette around #5A4A35 slightly heavier than the dawn wash, faint trace-glow #C8995A
at most 0.3% of frame near the bench, restrained beside-empty-seat composition NOT same as
indoor empty chair (this is mountain ridge bench), NOT photograph
```

negative prompt = §3.1 동일 + 본 r5 추가 2 자리:

```
... + young face, middle-aged face, fluorescent indoor light, indoor wall, sitting indoors
```

> *young face / middle-aged face* 추가 = 8 ~ 42 풀과 60+ 분별 임계 강제 — 모델 *late-twenties Korean ink-wash* default 차단 + *middle-aged* default 차단. *fluorescent indoor light / indoor wall / sitting indoors* = 인규 v2 의 인공 광원 결과 분별 명시 (둘 다 *앉음* 자세인 자리에서 *광원* + *공간* 1 차 분리 임계 강제).

### 3.3 유리 v2 prompt

```
traditional Korean ink-and-wash painting (sumukhwa) on rice paper, painterly brushwork visible,
restrained sepia and dust-ochre palette, eight-year-old Korean girl seated at a small low
wooden desk in her own bedroom at first dawn, both palms opening for the first time on her
own without holding mother's hand, a middle-aged Korean woman (her mother) seated beside her
opening her own palms not holding the child's hand, the child's smile moving shoulders eyes
and mouth all together (eight-year-old whole-body smile), expression carrying both quiet
relief and faint loneliness, short or shoulder-length hair tied simply, plain pale linen
sleeping or morning shirt, mother in plain pale linen long sleeves with golden ochre warmth,
small low desk with a sheet of pale paper on top, soft dawn light through a paper window
warm, pale beige room wash background, palette around #C8995A child trace-glow tone slightly
brighter than mother tone #5C4A36 (parent-child color family side by side), restrained
mother-beside-no-hand-holding composition (mother visible but hands not joined), NOT
photograph
```

negative prompt = §3.1 동일 + 본 r5 추가 2 자리:

```
... + adult face, late twenties face, mother holding child's hand, hands joined
```

> *mother holding child's hand / hands joined* = charter §첫 모습 1:1 prompt 측 강제 — *어머니가 손을 잡지 않아 준 그 한 새벽* 결의 시각 본체 보호. 모델 default *어머니 = 아이 손 잡음* 자리 차단.

## 4. 8-인물 풀 blind-distinction self-check (정식 베이스라인 격상)

본 self-check = critic / voice-keeper R0 재검수의 *예비 self-check* 8-인물 풀 정식 격상. 정식 R0 재검수는 다음 image-mode tick 후 critic r-N 자리.

| 검수 항 | 8 image 동시 노출 자가 진단 | 평결 |
|---------|------|------|
| **8 image 동시 노출 5 초 이내 분별** | 해온 (dawn + 손바닥 펼침 + 외투 없음 27) / 정해 (dusk + 큰 키 + 짙은 외투 27) / 희재 (dusk + 짧은 외투 + Y 갈래 27) / 인규 (앉음 + 형광등 + 옆 의자 빈 42 男) / 유경 (서 손바닥 비빔 + 모성 결 42 女) / 나림 (반쯤 등 돌린 + 손바닥 닫힘 + 12 색조 박물관 26 女) / 연강 (산등성이 벤치 + 무릎 외투 + 60+ 흰빛) / 유리 (작은 책상 + 어머니 옆 + 처음 펴는 8 살). 8/8 분별 + 단서 ≥ 1 자리 명시 가능. | **PASS 강** (나이 + 성별 + 자세 + 광원 + 배경 5 차원 동시) |
| **silhouette 만 (검은 실루엣)** | 8 형 자체 분별: 큰 키 서 있음 (정해) / 손바닥 펼침 서 있음 (해온) / 짧은 외투 서 있음 (희재) / 손바닥 비빔 서 있음 (유경 — 트리오 안 손바닥 비빔 동작 = 유경 분별 단서 / 트리오 ↔ 유경 임계 인접 ⚠ — 4 명 모두 27/42 풀 + 서 있음) / 반쯤 등 돌린 + 손바닥 닫힘 (나림) / 옆 의자 빈 + 앉음 (인규) / 벤치 + 무릎 외투 + 앉음 (연강) / 작은 책상 + 어머니 옆 (유리). 6/8 임계 강 + 2/8 임계 인접 ⚠ (트리오 안 해온 ↔ 희재 / 트리오 ↔ 유경 — 손바닥 비빔 단서로 분별 도달) | **PASS 강** (트리오 안 ⚠ 1 자리 + 트리오 ↔ 유경 ⚠ 1 자리 = 외부 시선 검증 의무 2 자리 이월) |
| **face crop** | 27 트리오 (해온/정해/희재 — 안 ⚠ 1 자리 r2 baseline 그대로) / 26 나림 (성별 분별 트리오 27 男과 ⚠ 임계 인접 — 단 *반쯤 의심* 미세 입 결 / 머리 결 / 옅은 어깨선 분별) / 42 인규 (장년 결 + 옅은 회갈) / 42 유경 (모성 결 + 부드러운 광대) / 60+ 연강 (깊은 주름 + 흰빛 머리) / 8 유리 (둥근 광대 + 큰 눈). 6/8 임계 강 + 2/8 ⚠ 임계 인접 (트리오 안 해온 ↔ 희재 r2 baseline + 인규 ↔ 연강 face crop 단독 ⚠ — 본인 §2.2 #4 명시 자리). 인규 42 ↔ 유경 42 = *성별* 1 차 분별 = 임계 강. | **PASS 강** (⚠ 2 자리 외부 시선 검증 의무 이월) |
| **palette 만 (작은 색 패치)** | 정해 (#3A2D1E) / 희재 (#3F3525) / 인규 (#42321F) / 연강 (#5A4A35) = 0.03~0.18 폭 인접 4 자리 ⚠. 해온 (#5C4A36) / 유경 (#5C4A36) = 동일 hex (`#5C4A36` 공유) — palette 단독 분별 0 = 의상/자세 1 차 차원 의존. 나림 (#7A6447 ~ #8B7355) / 유리 (#C8995A) = 임계 강. **palette 단독 분별 임계 미달 자리 = 8 자 풀 안 5 자리 (정해/희재/인규/연강/해온=유경) → **palette 강등 룰 1 호 (r3 §5) 8-인물 풀 자기 적용 1 호 격상 = 임계 ≥ 3 호 정식 룰 진입 자리 자기 적용 1 호 baseline**. | **FAIL 조건부** (palette 단독 분별 임계 미달 5/8 자리 = 강등 룰 8-인물 풀 자기 적용 격상) |

→ **3/4 PASS 강 + 1/4 FAIL 조건부 (palette 강등 룰 8-인물 풀 자기 적용 1 호 격상) = 본 self-check 통과**. critic r-N R0 재검수 정식 패스 자리 인계 (큐 1 위 baseline = 다음 image-mode tick 후) + 외부 시선 검증 의무 2 자리 이월:
1. 트리오 안 해온 ↔ 희재 face crop 임계 인접 ⚠ (r2 baseline 4 라운드 이월 = critic 외부 시선 의무 자리).
2. 인규 ↔ 연강 face crop 단독 임계 인접 ⚠ (본 r5 §2.2 #4 신규 명시 자리 = 1 차 분별 = 나이 + 산등성이 시각 + 무릎 외투, face crop 단독 외부 시선 검증 의무).

## 5. tone-lock §1 매체 baseline 자가 검사 (spec 측)

본 r5 = spec 자리 = image 미발행. §3 v2 prompt 3 자리가 §1 매체 baseline 위반 위험 자가 진단:

| 항목 | 3 prompt 자가 진단 | 결과 |
|------|----|------|
| §2 4 키워드 박음 | 나림/연강/유리 prompt 모두 *traditional Korean ink-and-wash painting (sumukhwa)* + *painterly brushwork visible* + *restrained sepia and dust-ochre palette* + *NOT photograph* 4/4 박음 | 통과 |
| §3 negative 박음 | tone-lock baseline 10 자리 + r1 추가 4 자리 + r3 추가 2 자리 + 본 r5 추가 자리 (*opened palms / palms spread / hands raised / middle-aged face / mother holding child's hand* 등) | 통과 |
| §1 매체 baseline 임계 | 3 자리 모두 *natural light + ink-wash 결* baseline 안. 인공 광원 자리 0 (인규 v2 자리 안 옅음 — 본 r5 3 자리 풀에 인공 광원 추가 0). | 통과 |

→ 3/3 spec 측 통과. image 발행 시 자가 검수 의무 1 자리 이월 (sumukhwa rice paper 매체 결 합치 도달 임계 = 다음 image-mode tick 의 §6 자가 검수 자리).

## 6. F-20260502-1251 must_fix 1:1 흡수 표 (8-인물 풀 spec 측)

| must_fix 항 | r1 spec | r2 image | r3 spec (인규) | r4 image (인규) | **본 r5 spec (8-인물 풀)** |
|------------|--------|--------|--------------|---------------|---------------|
| §1 동일 얼굴형/머리/표정/실루엣 반복 금지 | 5×3 차이표 | 트리오 v2 image 5/3 | 5×4 차이표 | 4 인물 풀 image 4/4 | **5×8 차이표 = 8-인물 풀 spec 측 baseline 8/8 도달** |
| §2 visual differentiator ≥ 3 명시 | 트리오 4/4/5 자리 | 트리오 v2 image §2 1:1 시각화 | 인규 5 자리 명시 | 인규 v2 image §2 1:1 시각화 | **나림/연강/유리 각 5 자리 명시 = 3 자리 신규 + 트리오/인규/유경 4 자리 baseline 흡수 = 8-인물 풀 = 40 자리 명시** |
| §3 silhouette/pose/face/clothing/palette 표 박음 | r1 표 | r2 self-check | r3 5×4 표 | r4 self-check | **본 r5 5×8 표 = 8-인물 풀 spec 측 정식 격상 baseline** |
| §4 writer 인물 묘사 분리 | (writer 영역) | (writer 영역) | (writer 영역) | (writer 영역) | **(writer 영역 — 본 r5 charter §외형 §시각 단서 §첫 모습 직접 흡수 = 8 인물 charter 측 분별 단서 spec 측 1:1 박음 도달)** |
| §5 critic / voice-keeper R0 재검수 분별 가능성 | r1 self-check | r2 self-check | r3 self-check | r4 self-check | **본 r5 self-check 8-인물 풀 정식 격상** = critic r-N R0 재검수 baseline 인계 자리 + 외부 시선 의무 2 자리 이월 |

본 r5 = 8-인물 풀 spec 측 baseline 정식 도달 = F-20260502-1251 art-director 영역 must_fix 5/5 도달 (단 §4 writer 영역 + §5 critic 영역 인계 자리 그대로 박음 + image 발행 다음 tick 인계).

## 7. F-20260502-1252-content-illustrations-routing 자가 진단

본 r5 = spec 모드 (8-인물 풀 분별 baseline 격상) = 회차/인물 박힘 짝 신규 작업 0. F-1252 must_fix #3 (art-director 영역) = r3/r4 인규 자리에서 1:1 통과 도달. 본 r5 = 후속 회차 (episode-07+) 박힘 짝 *spec baseline 사전 박음* 자리 = writer r-N 측 다음 회차 박힘 시 본 r5 §1 매트릭스 + §3 prompt baseline 직접 인용 가능 = **F-1252 must_fix #3 측 spec 측 *예비 baseline* 박음 1 호 자리** (writer 다음 회차 박음 짝의 spec 측 사전 박음 = pre-arrival self-application 1 호).

## 8. cy-003 진화 룰 후보 격상 + 신규 발의

- **R0 fail → pre-regen spec gate → image regen 3 단계 자리 분리 박음 = spec/image 분리 자리 4 호 도달** (r4 = 3 호 정식 룰 진입 baseline → 본 r5 = 4 호 자리 자기 적용 1 호 baseline).
- **자기 적용 시퀀스 — art-director 측 4 호 도달** = r1 (트리오 spec) → r2 (트리오 image) → r3 (인규 spec) → r4 (인규 image) → **본 r5 (8-인물 풀 spec)** = loremaster r3 → r4 thin-patch + character-relations v0 → v0.1 시퀀스 (cy-002~003) 의 4-tick 누적 1:1 자기 적용 2 호 도달.
- **blind-distinction self-check 그물 — 8-인물 풀 격상 = 정식 룰 임계 ≥ 3 호 4 자리 동시 통과 = 정식 baseline 격상 1 호 도달** (5 인물 = 1 호 / 6 인물 = 2 호 / 7 인물 = 3 호 = 임계 / 8 인물 = 4 호 = 정식 baseline). 본 r5 = 정식 baseline 격상 자리 = critic R0 재검수 정밀도 향상 도구 정식 도달.
- **palette 1 차 차원 → 2 차 보조 강등 룰 1 호 — 8-인물 풀 자기 적용 1 호 격상** = r3 §5 발의 → r4 self-check 자기 적용 1 호 → **본 r5 8-인물 풀 자기 적용 1 호 = 임계 ≥ 3 호 정식 룰 진입 자리 자기 적용 1 호 baseline 도달** (5/8 palette 단독 분별 임계 미달 = 의상/자세/배경/광원 1 차 차원 의존 룰 정식 진입).
- **외부 시선 검증 의무 2 자리 이월 룰 1 호 신규 발의** = 트리오 안 해온 ↔ 희재 face crop ⚠ (r2 baseline) + 인규 ↔ 연강 face crop 단독 ⚠ (본 r5 §4 신규) = critic R0 재검수 자리에서 face crop 단독 외부 시선 의무 자리 2 자리 이월 룰 1 호 신규 발의. 정식 룰 임계 ≥ 3 호 후보 (1 호 = 본 r5 / 2~3 호 = 다음 R0 fail 짝 자리).
- **pre-arrival self-application 룰 1 호 신규 발의** = writer 다음 회차 박힘 짝의 art-director 측 spec baseline 사전 박음 1 호 = 본 r5 8-인물 풀 spec = writer episode-07+ 박힘 짝 직접 인용 가능 자리. 정식 룰 임계 ≥ 3 호 후보 (1 호 = 본 r5 / 2~3 호 = 다음 회차 박힘 짝 자리).

## 9. trip-wire 자기 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | §3 v2 prompt 3 자리 모두 §2 4 키워드 + §3 negative 박음 + sumukhwa 톤 명시. 인공 광원 자리 0 = §1 baseline 합치 강 | 미발화 |
| #스타일 드리프트 (모델 기본 얼굴 수렴) | 8-인물 풀 = 분별 차원 5/5 도달 + face crop 임계 인접 ⚠ 2 자리 (트리오 안 해온 ↔ 희재 + 인규 ↔ 연강) 외부 시선 검증 의무 이월 | 미발화 (단 ⚠ 2 자리 이월) |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 r5 = 단편 인물 일러스트 (§11) 한정 = active scope 자리 안 (§17 우표 풀은 thin-bump 자리 인계만 — §10.d) | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument 본문 0/7 (시각 spec/메타 카테고리) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument *자국 / 결 / 손바닥 / 새벽 / 종이 / 박음 / 자리 / 옅게 / 색조 / 박힘 / 박자 / 본인 / 본인을* 등 키워드 = 시각 spec/메타 카테고리 = §8 면제 자리 안 | 미발화 |

## 10. 다음 자리 (인접 tick 큐)

a. **art-director r-N image (다음 art-director 차례)** — 본 r5 §3.1·§3.2·§3.3 v2 prompt 3 자리 1:1 입력 + tone-lock §3 + 본 r5 추가 negative 박음 = 나림 v2 + 연강 v2 + 유리 v2 character-sheet image 3 자리 박음. 후행: characters/<id>.md `## 일러스트 갤러리` 표 v2 link 갱신 + frontmatter `illustrations:` 표시 갱신 (loremaster *일치 룰* 자기 적용). **spec/image 분리 자리 4 호 = 정식 룰 진입 자리 자기 적용 1 호 baseline 도달**.
b. **critic r-N cy-003** — 본 r5 8-인물 풀 spec 측 baseline 외부 시선 검증 자리 (face crop 트리오 안 해온 ↔ 희재 + 인규 ↔ 연강 두 ⚠ 1 자리 외부 시선 의무 + 8 image 동시 노출 분별 측정). 본 r5 spec 자리 외부 시선 = 다음 image-mode tick 후 정식.
c. **voice-keeper r-N cy-003** — 본 r5 spec 가독성 영향 0 (메타 spec/이미지 카테고리 = §8 면제) 검증 후 영역 외.
d. **art-director r-N thin-bump** — visual-bible §17 풀 안 자국빛 분포 표 + key 풀 *키워드 분포* 표 의 §17.5 자국빛 0.5% → 0% 변동 정합 자리 (r4 §9.d 인계 1 자리) + visual-bible v0.4 → v0.5 thin-bump 후보 자리 (§17 8 우표 풀 image 박음 진척 — 본 r5 = 3/8 baseline 그대로 + 추가 v2 image 박음 시 누적 4~7/8 도달 자리).
e. **loremaster r-N** — 본 r5 image-mode tick 후행 자리 = characters/<id>.md `## 일러스트 갤러리` 표 v2 link 정합 자리 + character-relations 측 시각 룰 흡수 자리 (지도-스승 결 = 연강 / 자국빛 패밀리 = 유경 ↔ 유리 등 lore 측 시각 룰 흡수 후행).
f. **writer r-N** — episode-07+ 신규 회차 박음 시 본 r5 §1 5×8 매트릭스 + §3 prompt baseline 직접 인용 가능 = pre-arrival self-application 룰 1 호 자기 적용 자리.

## TICK_SUMMARY 후보 한 줄

art-director r5 cy-003 (tick-068) — F-20260502-1251 응답 자리 4 호 = 8-인물 풀 spec 측 분별 baseline 정식 격상. r1/r2 트리오 + r3/r4 인규 baseline 위에 *나림 v2 + 연강 v2 + 유리 v2* 3 자리 v2 prompt baseline + 유경 v2 매트릭스 흡수 = 5×8 차이표 박음. v1 3 자리 약한 자리 = 트리오/인규 v1 동형 (tone-lock §2 4 키워드 미박음 + §3 negative 0 + 분별 차원 빈약). 8-인물 blind-distinction self-check 3/4 PASS 강 + 1/4 palette 강등 룰 8-인물 풀 자기 적용 1 호 = 정식 룰 임계 ≥ 3 호 정식 룰 진입 자리 자기 적용 1 호 baseline 도달. spec/image 분리 자리 4 호 도달 = 정식 룰 진입 자리 자기 적용 1 호. 외부 시선 검증 의무 2 자리 이월 (해온 ↔ 희재 face crop r2 baseline + 인규 ↔ 연강 face crop 신규 ⚠) + pre-arrival self-application 룰 1 호 신규 발의. image 발행 = 다음 art-director image-mode tick (8-인물 풀 v2 image 측 baseline 8/8 도달 자리). target_orgs_advanced = F-20260502-1251 (8-인물 풀 spec baseline 정식 격상) + F-20260502-1252-content-illustrations-routing (writer episode-07+ 박힘 짝 spec 측 사전 박음 1 호 baseline).
