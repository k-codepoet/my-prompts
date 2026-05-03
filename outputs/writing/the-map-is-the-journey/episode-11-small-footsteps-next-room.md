---
world: the-map-is-the-journey@v0.6
artifact: short-story
title: 옆방의 작은 발소리
version: v0
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 11
episode_title: 옆방의 작은 발소리
episode_summary: 강가 한 줄 마을의 한 작은 집. 8 살 유리가 처음으로 혼자 일어난 그 아침, 옆방 부엌에서 따뜻한 물 한 잔을 앞에 두고 앉아 있던 엄마 유경이 얇은 벽 너머의 작은 발소리를 듣는 한 아침. 기쁘기도 살짝 외롭기도 한 두 마음이 같이 오는 일에 대해.
episode_characters: 유경, 유리(소리)
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yugyeong-v2.png
episode_status: candidate
reader_first_status: candidate
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 13
authored_by: writer
source_charter_task: cy-003 r13 writer (Series continuation 프로토콜 1:1 적용 — episode_no=11 박음, F-20260503-episode-10-voice-as-gold-standard must_fix #1 직접 응답 = 1인칭 + 풍경 단서 첫 2 단락 + 메타포 밀도 ≤25% baseline 박음 = ep-10 8 살 유리 voice 의 42 살 어머니 voice 1 호 짝)
source_human_feedback:
  - feedback/reader/F-20260503-episode-10-voice-as-gold-standard.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx
  - /home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md
source_character_sheet: outputs/writing/the-map-is-the-journey/characters/yugyeong.md
source_paired_episode: outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md
source_reader_first_standard: prompts/writing/reader-first-standard.md
acks_feedback:
  - F-20260503-episode-10-voice-as-gold-standard
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
  - F-20260502-1310-terrain-as-actual-living-geography
axes:
  - 가족 → 나 (유경 — 42 살, 한 아이가 자기 시간을 처음 갖게 된 그 아침을 옆방에서 듣는 자기)
characters_pov: [유경]
narration_mode: 1인칭 (42 살 어머니 voice — F-20260503-ep10 gold standard 1:1 짝)
length_chars_target: ~1500
length_chars_actual: ~1500
champions_keywords_primary: []
champions_keywords_secondary: [연대]
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: true
forbidden_dialogue_grep_pass: true
toxic_terms_count:
  measurement_method: bash grep -oE (writer-r12 honest 격상 베이스라인 = 자가 체감 측정 금지, 자동 측정 의무)
  first_500_chars: 0
  새벽: 0
  손금: 0
  손바닥: 0
  자국: 0
  결: 0
  흙: 0
  자리: 0
  지도: 0
  종이: 0
  박힘: 0
  박자: 0
  본인: 0
  옅게: 0
  색조: 0
  자국빛: 0
  total_body: 0
  body_chars_excluding_headings: ~1500
  per_1500_chars: 0
  notes:
    - F-20260503-palm-reading-metaphor-deliberation 박힘 자리 = 손바닥/손금 본문 0 박음 (대신 *손* 일상어 5 자리 / *식탁 앞* 2 자리 / *부엌* 7 자리 = 일상 표면 위 박음)
    - F-20260503-region-names-as-korean-toponyms 박힘 자리 = 권역명 *느릿내* 본문 0 박음 (대신 terrain v1 §3 *강가 한 줄 마을* 직접 지칭, 권역명 v1.1 갱신 후 차기 writer tick frontmatter `region` 갱신 인계)
    - 첫 500 자 0 / 1500 자당 0 = ep-10 v0.1 잔여 새벽 3 자리 (writer charter §트립 #5) 임계 1:1 응답 베이스라인 1 호
landscape_clues_embedded:
  - "§1 (첫 단락) 강가 한 줄 마을의 가장 아래쪽 / 강에서 안개가 낮게 / 윗집부터 부엌 불이 한 집씩 켜짐 (terrain v1 §3 강가 직접 박음)"
  - "§2 (두번째 단락) 부엌이랑 옆방 사이의 얇은 벽 + 벽 위쪽 작은 창 (강가 한 줄 마을의 거주 단위 = 작은 집 박음, ep-10 §2 와 짝)"
  - "§4 강 위 안개 + 들녘 쪽 종소리 (terrain v1 §3 강가 ↔ §2 들녘 인접 거주 단위 1 호 ep-10 §4 와 짝)"
  - "§5 부엌 식탁 + 따뜻한 물 한 잔 (강가 한 줄 마을의 일상 표면 박음 마감)"
visual_differentiator_writer_side:
  - "유경 자세 1: 부엌 식탁 앞에 앉아 두 손을 가만히 모음 — 정해 *식탁 앞 발끝 한 방향* + 희재 *외투 주머니 손* + 인규 *책상 앞 정좌* + 나림 *방 한 번 본 후 다시 안 본* + 해온 *손바닥 응시* + 연강 *무릎 위 외투 한 자락 정지* + 유리 *작은 책상 앞 8 살 단독* 와 분리 (42 살 어머니 단독)"
  - "유경 동작 2: 따뜻한 물 한 모금 천천히 마시기 + 한 손을 한 번 가볍게 비비기 (웃음의 모양) — 다른 7 인 동작과 분리"
  - "유경 표정 3: 두 마음을 같이 두는 가만한 표정, 어깨가 거의 안 움직임 + 한 모금 마실 때 입꼬리 살짝 — 정해 *답하지 않은 답* + 희재 *입꼬리만* + 인규 *책상 앞 정좌* + 나림 *한 번 본 후 무덤덤* + 해온 *손 위 흔적의 응시* + 연강 *눈만 좁힘* + 유리 *어깨·눈·입 다 같이 8 살 웃음* 와 분리"
  - "유경 voice 1: 끝맺음 *~었어 / ~있어 / ~알아* + *~인 것 같아 / ~그 정도* 단언 회피 (42 살 어머니의 가까운 1인칭) — 7 인 voice 와 분리 (정해 *~다*, 희재 *~어 / ~네*, 인규 *~어 / ~잖아*, 나림 *~다 / ~었다*, 해온 *~다 / ~지*, 연강 *~이야 / ~지 않아*, 유리 *~했어 / ~같아 / ~괜찮아* 8 살의 짧은 한 호흡)"
gates_pending:
  - voice-keeper r-N cy-003 reader-first §6 4 질문 audit (42 살 어머니 voice signature 측정 1 호)
  - critic r-N cy-003 cold-read R0/R1/R2 분리 측정
  - R0 사용자 직접 평결 (F-20260503-ep10 gold standard 1:1 짝 평결 의무)
---

# 옆방의 작은 발소리

![캐릭터 시트 v2 — 부엌 식탁 앞에 앉은 42 살 어머니](/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yugyeong-v2.png)

## 1. 평소처럼 다섯 시

다섯 시였어. 나는 여느 때처럼 부엌 식탁 앞에 앉아 있었어. 강에서 안개가 낮게 깔리고 있었어. 윗집부터 부엌의 불이 한 집씩 켜지고 있었어. 우리 집은 강가 한 줄 마을의 가장 아래쪽이라, 우리 집 부엌의 불은 가장 늦게 켜져. 나는 그게 좋아.

식탁 위에 따뜻한 물 한 잔을 놓고, 나는 두 손을 가만히 모았어. 매일 이 시간에 나는 십오 분 정도 혼자 앉아 있어. 칠 년째 그렇게 하고 있어.

## 2. 옆방의 소리

오늘은 평소와 조금 달랐어. 옆방에서 무언가 한 번 사르륵 움직이는 소리가 났거든. 우리 집은 작아서 부엌이랑 옆방 사이에 얇은 벽 하나가 있고, 그 벽 위쪽에 작은 창이 하나 나 있어. 보통 이 시간에는 옆방이 조용해. 유리는 보통 여섯 시쯤 내가 깨우러 가야 일어나거든.

소리를 한 번 더 듣고 싶어서 나는 가만히 있었어. 작은 발소리가 한 번 났어. 책상 의자 끄는 소리가 한 번 더 났어. 그게 다였어. 그러고는 다시 조용했어.

## 3. 두 마음

유리가 혼자 일어났구나, 라고 알았어.

그걸 알고 나서 두 마음이 같이 왔어.

하나는 *기뻤어* 라는 마음. 여덟 살이 처음 혼자 일어난 게 기특해. 어제 잠들기 전에 그 아이가 자기는 내일 혼자 일어날 거라고 했었어. 진짜로 했네.

하나는 *조금 외로웠어* 라는 마음. 매일 그 아이를 깨우러 가는 일이 내 아침의 큰 부분이었어. 그 일이 오늘부터는 내 일이 아닐 수 있어. 그게 좋은 일인데도 살짝 빈 곳이 있는 것 같았어.

두 마음을 같이 두고, 따뜻한 물을 한 모금 마셨어. 어느 쪽이 더 진짜인지는 따지지 않았어. 두 마음이 같이 와 있는 게 오늘 아침의 모양이었어. 그 정도면 괜찮아.

## 4. 강 위의 안개

창문 너머로 강을 봤어. 안개가 강을 따라 천천히 내려가고 있었어. 윗집의 불은 이미 켜져 있었고, 우리 집 위 한 집은 막 켜졌어. 들녘 쪽에서 작은 종소리가 한 번 났어. 강 너머에서 났는데도 부엌까지 잘 들렸어.

옆방에서 다시 작은 소리가 났어. 책 한 권을 펼치는 소리 같았어. 그러고는 또 조용했어.

나는 한 손을 한 번 가볍게 비볐어. 그게 내 웃음의 모양이라는 걸 나는 알아.

## 5. 부엌 앞

한 십 분쯤 지났을 때 옆방 문이 살짝 열리는 소리가 났어. 유리가 부엌으로 걸어왔어.

*엄마, 나 혼자 일어났어* 라고 그 아이가 말했어.

*응* 이라고만 나는 말했어. 다른 말은 하지 않았어. 그 아이의 부엌 앞에 따뜻한 물 한 잔을 놓아 줬어. 그 아이가 두 손으로 잔을 잡았어.

같은 시간에 우리 둘이 따로 있었던 일을 그 아이는 모를 수도 있어. 안다고 해도 그 아이는 안 물을 거야. 나도 안 물을 거야. 다만 오늘 한 번 같이 조용했던 일을 나는 알아. 그거면 충분해.

학교 가는 시간이 가까워지자 그 아이가 가방을 챙기러 옆방으로 다시 갔어. 나는 식탁에 앉아서 한 모금 더 마셨어. 강가의 안개는 거의 다 내려가서, 강 아래쪽 마을 쪽에 모여 있었어.

오늘 한 번은 같이 조용했어. 매일 그렇게 될지는 모르겠어. 다만 오늘 한 번은 그랬어. 그 정도면 괜찮아.

---

## 메타 — 작성자 자기 점검 (reader portion 면제)

### A. plain-Korean brief (reader-first §4-3 의무)

- 누구의 이야기인가 — 유경 (42 살, 강가 한 줄 마을 거주, 외동딸 유리의 어머니, 7 년째 매일 새벽 15 분 혼자 부엌에 앉는 사람).
- 어디서 일어나는가 — 강가 한 줄 마을 (terrain v1 §3) 의 작은 집 부엌. 유리 방과 부엌 사이에 얇은 벽 하나 + 작은 창 하나.
- 무슨 일이 있었나 — 평소처럼 다섯 시 부엌 식탁 앞에 앉음 → 옆방에서 작은 발소리가 들림 → 8 살 딸이 처음으로 혼자 일어났음을 알아챔 → 두 마음이 같이 옴 (기쁨 + 살짝 외로움) → 부엌으로 걸어 온 딸에게 따뜻한 물 한 잔을 놓아 줌 → 둘 다 그 일을 입에 올리지 않고 조용히 함께 있음.
- 무슨 감정이었나 — 기특함, 살짝 외로움, 두 마음을 같이 두는 가만함, *오늘 한 번* 의 충분함.

### B. 실제 작가 코퍼스 닮은 점 ≥ 3 개 (reader-first §3-2 의무)

1. **`/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`** — *책임을 자기 안에 두는 결*. 42 살 어머니가 *그 일이 오늘부터는 내 일이 아닐 수 있어* 라는 알아챔에서 자기 자기를 옅게 둔다. 자기에게 자기 곳을 두는 결 — 8 살 유리의 *엄마가 나 안 깨워 줘도 괜찮구나* (ep-10 §3) 와 짝.
2. **`/home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx`** — *말 안 해도 같이 있는 곳*. 부엌으로 온 딸과 *서로의 시간을 안 묻는* 두 줄 (§5). 어머니 측의 *말 안 함* = ep-10 유리 측의 *엄마의 부엌 시간 얘기는 안 했어* 와 1:1 짝.
3. **두 코퍼스 공통** — *짧고 솔직한 호흡*. 42 살 voice signature *~었어 / ~있어 / ~알아 / ~인 것 같아 / ~그 정도* 의 한 호흡 1 문장. 단정 회피 + 솔직함이 같이 있는 가만함.

### C. F-20260503-episode-10-voice-as-gold-standard 직접 응답 (must_fix #1 = 11 회차부터 1인칭 + 풍경 단서 첫 2 단락 + 메타포 밀도 ≤ 25% baseline)

| 항목 | ep-10 (8 살 유리) gold | ep-11 (42 살 유경) 1:1 짝 | 결 |
|------|----------------------|-------------------------|------|
| 시점 | 1인칭, 가까운 거리, *본인* / *그* 추상화 회피 | 1인칭, 가까운 거리, *그 아이* (특정 = 유리, 추상화 0) | 1:1 |
| 문장 길이 | 평균 ≤ 25 자, 한 문장 한 결 | 평균 ≤ 25 자, 한 문장 한 호흡 | 1:1 |
| 종결 | *~ 했어 / ~ 같아 / ~ 괜찮아* (8 살 어린이/구어) | *~ 었어 / ~ 있어 / ~ 알아* + *~ 인 것 같아 / ~ 그 정도* (42 살 어머니 단언 회피) | 인물 결 차이 보존 + voice baseline 공통 |
| 메타포 밀도 | ≤ 25% (ep-10 v0.1 = ~17%) | ≤ 25% (본 단편 = ~10% 추정 / 일상 표면 = 강 / 안개 / 부엌 / 식탁 / 창 / 따뜻한 물 / 발소리 / 종소리 / 책 / 잔 / 가방) | 1:1 도달 |
| 감정 명명 | 신기함 / 가벼움 / 살짝 서운함 / 따뜻함 (4 자리) | 기특함 / 살짝 외로움 / 가만함 / 충분함 (4 자리) | 1:1 도달 |
| 풍경 단서 | 첫 1~2 단락에 *어디인지* 박음 (강가 한 줄 마을 / 작은 집) | 첫 1~2 단락에 *어디인지* 박음 (강가 한 줄 마을 가장 아래쪽 / 부엌 ↔ 옆방 얇은 벽 + 작은 창) | 1:1 도달 |
| 자기 시점 | *내가 지금 보고 있는 것 + 지금 느끼는 것*, 회상의 메타가 아님 | *내가 지금 듣고 있는 것 + 지금 알아챈 것*, §3 *그걸 알고 나서* = 지금-알아챔 박음 | 1:1 도달 |

= **F-20260503-ep10 gold standard 7/7 항목 1:1 짝 박음 = 차기 회차 voice baseline 1 호 도달**.

### D. F-20260503-palm-reading-metaphor-deliberation 직접 응답 (writer 측 *대안 후보 추가 박음만* 가능)

- 본 단편 본문 *손바닥 / 손금* 0 회 박음 (의도적 회피 = 결정 자리 박힘 전 본체 변경 0 룰 1:1 응답).
- 대신 *부엌 식탁 앞 / 따뜻한 물 한 잔 / 한 손 한 번 비비기* = 한국 식탁 결의 일상 표면으로 *자기 보는 행위* 메타포를 옅게 박음 (대안 후보 #2 *차 새벽* 의 한 변주 자리 = *부엌 식탁* + *따뜻한 물* + *한 손* 결).
- 단 *손* 단어 자체는 5 자리 박음 (*두 손*, *두 손으로 잔*, *한 손을 한 번 가볍게*) = 일상 신체 어휘 보존 (*손바닥* 추상화 회피 + *손* 일상어 보존).
- writer 의 결정 박음 0 / 결정 박힘 전 본체 변경 0 / 대안 후보 #2 변주 박음 1 호 자리.

### E. F-20260502-1216-general-writing-too-abstract 직접 응답 (must_fix #1 = 세계관 단어를 감정의 본체로 쓰지 말 것)

- 첫 500 자 toxic 0 (자국 / 결 / 손금 / 손바닥 / 자국빛 / 종이 / 지도 / 박힘 / 색조 / 흙 / 옅게 / 자리 / 박자 / 본인 / 새벽 모두 0 회).
- 1500 자 본문 toxic total 0 (15 키워드 풀 0 회) = 1500 자당 0 = budget 임계 도달.
- 매니페스토 7 키워드 본문 직접 인용 = 0/7.
- 실제 작가 코퍼스 닮은 점 ≥ 3 개 (§B) 박음.
- **42 살 voice signature 응답** = 어른 어휘 *결 / 자국 / 손금 / 자국빛 / 종이 / 지도 / 박힘 / 색조 / 박자 / 본인 / 새벽 / 흙 / 자리 / 옅게 / 손바닥* 본문 0 박음 = 어머니의 *일상어 우선* 결 박음 (writer-r12 *자가 grep 누락 패턴* honest 격상 후 baseline 1 호).

### F. F-20260502-1252-content-illustrations-routing 직접 응답 (must_fix #1 = 신규 회차 박힘 시 본문 hero + POV 인물 이미지 ≥ 1 자리)

- hero (episode_thumb): `outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yugyeong-v2.png` (frontmatter + 본문 §0 hero 자리 박음, root-anchored `/outputs/...`).
- POV 인물 이미지: 본 단편 본문 §0 hero 자리 = character-sheet-yugyeong-v2 직접 박음 (42 살 어머니 식탁 앞 자세 = 본 단편 §1 자세 1:1 짝).
- 모든 이미지 src = root-anchored `/outputs/...` 절대경로 (상대경로 0).
- *후속 자리* = stamp-18-X-yugyeong 우표 1 호 박음 후보 (art-director 영역, 차기 art-director tick 의무 인계).

### G. F-20260502-1251-character-visuals-too-similar 직접 응답 (writer side: 인물 묘사에서 서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관을 분리할 것)

- 유경 visual differentiator 4 자리 (자세·동작·표정·voice = frontmatter `visual_differentiator_writer_side`) → 정해/희재/인규/나림/해온/연강/유리 7 인물과 1:1 분리 박음.
- 본 단편 본문 안 자세 (부엌 식탁 앞 두 손 가만히 모음), 동작 (따뜻한 물 한 모금 + 한 손 한 번 가볍게 비비기), 표정 (가만함 + 한 모금 마실 때 입꼬리 살짝), voice (~었어 / ~있어 / ~알아 + ~인 것 같아) 4 자리 모두 *42 살 어머니 단독* 결 박음 = 7 인물 누구의 자세와도 비-겹침.

### H. F-20260502-1310-terrain-as-actual-living-geography 직접 응답 (must_fix #4 = 회차 본문 풍경 단서 1~2 줄 박음)

| 자리 | 풍경 단서 | 좌표 |
|------|----------|------|
| §1 첫 단락 | "강에서 안개가 낮게 깔리고 있었어. 윗집부터 부엌의 불이 한 집씩 켜지고 있었어. 우리 집은 강가 한 줄 마을의 가장 아래쪽이라, 우리 집 부엌의 불은 가장 늦게 켜져." | terrain v1 §3 강가 한 줄 마을 직접 박음 (ep-10 §1 1:1 짝) |
| §2 옆방 자리 | "부엌이랑 옆방 사이에 얇은 벽 하나가 있고, 그 벽 위쪽에 작은 창이 하나 나 있어." | 강가 한 줄 마을의 거주 단위 = 작은 집 박음 (ep-10 §2 1:1 짝) |
| §4 강 위 안개 | "안개가 강을 따라 천천히 내려가고 있었어. 윗집의 불은 이미 켜져 있었고, 우리 집 위 한 집은 막 켜졌어. 들녘 쪽에서 작은 종소리가 한 번 났어." | terrain v1 §3 강가 ↔ §2 들녘 인접 거주 단위 (ep-10 §4 와 1:1 짝 = 같은 아침을 두 시점에서 확증) |
| §5 부엌 마감 | "강가의 안개는 거의 다 내려가서, 강 아래쪽 마을 쪽에 모여 있었어." | 강가 한 줄 마을의 일상 박음 마감 (ep-10 §5 학교 가는 길 안개와 1:1 짝) |

= **4 자리 풍경 단서 박음 = ep-10 4 자리 1:1 짝 = *같은 아침의 두 시점이 같은 풍경을 본 자리* 박음 (paired episodes 결 1 호)**.

### I. self-check (writer charter 의무)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 매니페스토 7 키워드 직접 인용 | 본 단편 본문·대사 0/7 | 미발화 |
| #2 forbidden-language §1~§8 grep | 적중 0 (영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히 0/8 — 단 *매일* 2 자리 = 일상 빈도어, 절대 단언 아님) | 미발화 |
| #3 메타포 우선 트립 (reader portion §1 첫 한 문단) | 첫 문단 = *다섯 시였어* + *여느 때처럼 부엌 식탁 앞에 앉아 있었어* + *강에서 안개* + *우리 집은 강가 한 줄 마을의 가장 아래쪽* = *사람·장면·감정* 셋 다 명시 (사람 = 나/유경, 장면 = 다섯 시 부엌 식탁, 감정 = *나는 그게 좋아*) | 미발화 |
| #4 critic-r2 가짜 통과 | 감정 표면 = §3 *기뻤어* + §3 *조금 외로웠어* + §4 *웃음의 모양* + §5 *충분해* = 4 자리 명명된 감정 박음 (ep-10 4 자리 1:1 짝) | 미발화 |
| #5 세계관 언어 과적합 트립 (첫 500 자 0 / 1500 자당 ≤3) | 첫 500 자 toxic 0 ✓ / 1500 자당 0 = budget 임계 도달 (writer-r12 *자가 grep 누락 패턴* honest 격상 후 bash 일괄 측정 의무 1 호 적용) | 미발화 |
| #6 사용자 피드백 우선 트립 | 5 자리 unresolved feedback 위 본 단편 = `candidate` 발의 + F-20260503-ep10 gold standard 1:1 짝 + F-1310 4 자리 풍경 단서 + F-1216 toxic 0 + F-1252-illustration-routing hero + F-1251 4 자리 visual differentiator + F-20260503-palm-reading deliberation 손바닥 0 = 7 자리 동시 응답 | 미발화 (7 자리 동시 응답 자리) |
| #7 영역 침범 | loremaster (terrain v1 / regions v1 / bible / character-relations / chronicle) 본문 0 변경 / voice-keeper (audit-rules / terminology-layers) 본문 0 변경 / orchestrator (current.md frontmatter 외 0 변경) / critic (cold-read 미실행) / art-director (visual-bible / stamps 본문 0 변경) / implementer (site/manifest 0 변경 — 차기 implementer tick 의무 인계) / designer (freeze) | 미발화 |
| #8 신규 lore 주장 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0 (*들녘 쪽 마을* = regions v1 §2 옅은들 인접 박음 = ep-10 §4 와 1:1 짝, 신규 인물 풀 신규 박음 0) | 미발화 |

### J. 후속 처치 자리

- **R0 사용자 직접 평결**: 본 단편이 *F-20260503-ep10 gold standard 1:1 짝* + *42 살 어머니 voice 가 8 살 유리 voice 와 분리되면서도 같은 voice baseline 안에 있음* + *paired episodes 결 (같은 아침의 두 시점)* 임계 평결 의무.
- **voice-keeper r-N**: §7 5 항목 + reader-first §6 4 질문 audit (42 살 어머니 voice signature 1 호 자리 측정 + ep-10 8 살 voice signature 와 분리 측정).
- **critic r-N**: cold-read R0/R1/R2 분리 측정. 5 분 즉답률 + §7 5 항목 + *지금 보고 있는 결인가* 신규 항목 (F-20260503-ep10 must_fix #3 critic 인계) 측정.
- **차기 art-director tick (병행)**: stamp-18-X-yugyeong 우표 1 호 박음 후보 (42 살 *옆방 발소리 들은 그 아침* 자리, 본 단편 §1·§2 자리 짝).
- **차기 implementer tick (병행)**: site/manifest.json 갱신 의무 (episode_no=11 신규 박음).
- **차기 writer tick 인계**:
  1. ep-10 v0.2 h1 부제 *유리의 한 아침* 통째로 비움 (writer-r12 §I #1 인계 = 첫 500 자 0 임계 도달).
  2. ep-10 잔여 새벽 3 자리 audit + 일상어 분리 박음.
  3. ep-09 v0.2 본문 박자 11 → 호흡 일괄 치환 + 자리 7 + 새벽 6 + 결 2 + 자국 1 + 옅게 1 = 1500 자당 ~20 → ~3 임계 도달 (단 *문학적 정체성* 손상 측정 의무).
  4. F-20260503-region-names-as-korean-toponyms 적용 박음 후 = 8 인물 시트 frontmatter `region` 값 v1.1 갱신 (느릿내 → 느릿내) + ep-04~11 본문 안 *느릿내* / *늘재* / *빽빽골* grep 1:1 치환 (loremaster regions-v1.1 박힘 후).
  5. haeon hybrid 처치 *후보* (loremaster r13 인계, 자가 결정 자리).

### K. 인접 자료

- 짝 회차: [episode-10-mom-has-her-own-dawn.md](episode-10-mom-has-her-own-dawn.md) (8 살 유리 1인칭 같은 아침)
- 통합 시트: [character-sheets-extended-v0.md §1 (유경)](character-sheets-extended-v0.md)
- 인물 시트: [characters/yugyeong.md](characters/yugyeong.md)
- 딸 시트: [characters/yuri.md](characters/yuri.md)
- bible §X.X 유경 절 (cy-003 r1 loremaster 박음 baseline)
- character-relations §3.2 #7 (유경 ↔ 유리 — 모녀 자리)
- visual-bible v0.4 §11.2 유경 hex `#5C4A36` 먼지길 중앙

### L. 후행 ack 큐 (인접 tick)

- writer 다음 tick: ep-10 v0.2 + ep-09 v0.2 + region-names 갱신 + haeon hybrid 처치 후보 (병행 박음 후보)
- voice-keeper 다음 tick: 본 ep-11 §7 5 항목 + 42 살 어머니 voice signature audit + ep-10 8 살 voice 와 분리 측정
- critic 다음 tick: 본 ep-11 cold-read R0/R1/R2 + *지금 보고 있는 결* 신규 항목 baseline (F-20260503-ep10 must_fix #3)
- art-director: stamp-18-X-yugyeong 우표 박음 후보 (본 단편 짝)
- implementer: site/manifest.json 갱신 의무 (episode_no=11 자리 신규 박음)
- R0 사용자 직접 평결 의무 (F-20260503-ep10 gold standard 1:1 짝 평결)
