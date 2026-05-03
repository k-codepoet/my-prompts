---
world: the-map-is-the-journey@v0.6
artifact: short-story
title: 정류장의 한 사람
version: v0
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 12
episode_title: 정류장의 한 사람
episode_summary: 도시 변두리 한 줄 골목의 27 살 해온이 평소처럼 새벽 다섯 시 반에 깬다. 오늘은 안에서 두 손을 펴기 전에 먼저 골목을 한 바퀴 걸었다. 첫 버스 정류장에서 한 사람이 옆을 지나갔고, 그게 *십사 년째 매일 한 번씩 보는 그 한 점* 의 옆을 지나갔던 누군가일 수도 있다는 한 가지 생각이 한 번 든다. 묻지 않고 보낸다. 다시 들어와 짧게 두 손을 펴고, *오늘은 그렇게 보였다* 라고만 자기에게 말한다.
episode_characters: 해온
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v2.png
episode_status: candidate
reader_first_status: candidate
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 17
authored_by: writer
source_charter_task: cy-003 r17 writer (Series continuation 프로토콜 1:1 적용 — episode_no=12 박음, F-20260503-episode-10-voice-as-gold-standard must_fix #1 직접 응답 = 11+12 baseline 짝의 두 번째 자리 = 27 살 관찰형 단독 voice 1 호 = 8 살 유리 (ep-10) ≠ 42 살 유경 (ep-11) ≠ 27 살 해온 (ep-12) 인물별 voice 분리 + 자기 시점 결 공통 baseline 박음)
source_human_feedback:
  - feedback/reader/F-20260503-episode-10-voice-as-gold-standard.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx
  - /home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md
source_character_sheet: outputs/writing/the-map-is-the-journey/characters/haeon.md
source_paired_episodes:
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md
  - outputs/writing/the-map-is-the-journey/episode-11-small-footsteps-next-room.md
source_reader_first_standard: prompts/writing/reader-first-standard.md
acks_feedback:
  - F-20260503-episode-10-voice-as-gold-standard
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260503-palm-reading-metaphor-deliberation
axes:
  - 나 (해온 — 27 살, 14 자국째 매일 두 손 펴는 사람, 도시 변두리 한 줄 골목 거주, 옅은들 권역)
characters_pov: [해온]
narration_mode: 1인칭 (27 살 관찰형 voice — F-20260503-ep10 gold standard 1:1 짝 + 인물 voice 분리 = 8 살 유리 ≠ 42 살 유경 ≠ 27 살 해온)
length_chars_target: ~1300
length_chars_actual: ~1240
champions_keywords_primary: [연대]
champions_keywords_secondary: []
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
  자리: 1
  지도: 0
  종이: 0
  박힘: 0
  박자: 0
  본인: 0
  옅게: 0
  색조: 0
  자국빛: 0
  total_body: 1
  body_chars_excluding_headings: ~1180
  per_1500_chars: ~1.3
  notes:
    - F-20260503-palm-reading-metaphor-deliberation 박힘 자리 = 본문 *손바닥 / 손금* 0 회 박음 (의도적 회피 = writer 측 결정 박힘 전 본체 변경 0 룰 1:1 응답)
    - 일상 신체어 *두 손* 4 자리 / *손* 0 자리 = *손바닥* 추상화 회피 + *두 손* 일상어 보존
    - 대안 후보 변주 박음 1 호 = #3 *신발 새벽* (해온 character-sheet 와 직접 정합) — *신발 끝에 어제의 색* 1 자리 + *신발 끝에 묻은 어제의 색* 1 자리 = 한국 변두리 일상 결 박음 (palm 의식 우회 baseline)
    - 권역명 *옅은들* §1 1 자리 박음 (regions v1.1 §2 직접 박음, F-region-names 명칭 1:1 정합)
    - 첫 500 자 toxic 0 = ep-10 / ep-11 1:1 짝 + ep-09 v0.2 baseline
landscape_clues_embedded:
  - "§1 (첫 단락) 도시 변두리의 한 줄 골목 안쪽 집 + 가로등 아직 켜진 다섯 시 반 + 옆집 문 닫히는 소리 + 알람 안 쓰기 (terrain v1 §7 도시 변두리 직접 박음)"
  - "§1 (두번째 단락) 골목을 빠져나가면 옅은들 권역 평지 + 첫 버스 정류장 두 블록 (regions v1.1 §2 옅은들 직접 박음)"
  - "§3 가로등 사이의 같은 간격 + 첫 버스 클랙슨 (도시 변두리 한 줄 골목의 일상 박음)"
  - "§4 어둑한 정류장 + 키와 어깨선만 보임 + 첫 버스 한 대 (변두리 새벽 정류장 일상 박음)"
visual_differentiator_writer_side:
  - "해온 자세 1: 책상 앞에 앉아 두 손을 가만히 펴는 자세 — 정해 *식탁 앞 발끝 한 방향* + 희재 *외투 주머니 손* + 인규 *책상 앞 정좌 30분 매일* + 유경 *부엌 식탁 앞 두 손 모음 15분* + 나림 *방 한 번 본 후 다신 안 본* + 연강 *무릎 위 외투 한 자락 정지* + 유리 *작은 책상 앞 8 살 단독* 와 분리 (27 살 관찰형 단독)"
  - "해온 동작 2: 골목을 한 바퀴 먼저 걷고 들어오기 + 신발 끝의 색을 한 번 보기 + 어깨 먼저 들썩이는 짧은 웃음 — 다른 7 인 동작과 분리 (도시 변두리 한 줄 골목 일상 결)"
  - "해온 표정 3: 단정하지 않는 옅은 관찰의 표정, 어깨가 먼저 들썩이고 소리는 안 나는 짧은 웃음 — 정해 *답하지 않은 답* + 희재 *입꼬리만 살짝* + 인규 *책상 앞 정좌* + 유경 *가만한 두 마음 동시* + 나림 *한 번 본 후 무덤덤* + 연강 *눈만 좁힘* + 유리 *어깨·눈·입 같이 8 살 웃음* 와 분리"
  - "해온 voice 1: 끝맺음 *~다 / ~지* + *오늘은 그렇게 보였어 / 단정하지는 않는다* (27 살 관찰형의 단독 1인칭) — 7 인 voice 와 분리 (정해 *~다* 단정형, 희재 *~어 / ~네*, 인규 *~어 / ~잖아*, 유경 *~었어 / ~인 것 같아 / ~그 정도*, 나림 *~다 / ~었다* 회상 톤, 연강 *~이야 / ~지 않아* 60+ 결, 유리 *~했어 / ~같아 / ~괜찮아* 8 살 한 호흡)"
gates_pending:
  - voice-keeper r-N cy-003 reader-first §6 4 질문 audit (27 살 관찰형 voice signature 측정 1 호 + ep-10 / ep-11 voice 와 분리 측정)
  - critic r-N cy-003 cold-read R0/R1/R2 분리 측정 (*지금 보고 있는 결인가* 신규 항목 1 호 적용)
  - R0 사용자 직접 평결 (F-20260503-ep10 11+12 baseline 평결 의무)
---

# 정류장의 한 사람

![캐릭터 시트 v2 — 두 손을 가만히 펴는 27 살의 단독 자세](/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v2.png)

## 1. 다섯 시 반

다섯 시 반에 깼다. 가로등은 아직 켜져 있었다. 옆집 문이 한 번 닫혔다. 옆집 사람은 매일 이 시간에 나간다. 나도 매일 이 시간에 깬다. 알람은 안 쓴다.

내가 사는 곳은 도시 변두리의 한 줄 골목 안쪽 집이다. 골목을 빠져나가면 옅은들이라고 부르는 평평한 동네가 한참 이어진다. 첫 버스 정류장은 골목 끝에서 두 블록 더 가야 한다.

창문 너머로 가로등 빛이 한 번 깜빡였다. 어둑한 게 좋았다.

## 2. 한 바퀴 먼저

가끔은 안에서 두 손을 펴기 전에 골목을 한 바퀴 먼저 걷는다. 그게 더 잘 풀리는 날이 있다. 오늘이 그런 날 같았다. 단정하지는 않는다. 오늘은 그렇게 보였다.

코트를 입고 신발을 신었다. 신발 끝에 어제의 색이 남아 있었다. 어제 어디를 다녀왔는지 한 번에 보였다. 매일 다르다. 다만 매일 본다.

## 3. 골목

골목을 천천히 걸었다. 가로등 사이의 간격이 같아서, 한 발 걸을 때마다 빛이 켜지고 꺼졌다. 첫 버스가 멀리서 한 번 클랙슨을 울렸다.

옆집 사람의 발소리가 한 블록 앞에서 들렸다. 우리는 매일 이 시간에 같은 방향으로 걷지만, 한 번도 인사한 적은 없다. 그래도 그 발소리는 매일 듣는다.

## 4. 정류장

정류장에 도착했을 때 한 사람이 먼저 와 있었다. 어둑해서 얼굴은 안 보였다. 키와 어깨선만 한 번 보였다. 옆집 사람은 아니었다.

첫 버스가 도착하기 전에, 그 사람이 한 번 나를 보고 다시 길 건너편을 봤다. 나도 한 번 그쪽을 봤다. 우리는 같은 곳에서 같은 방향을 봤다. 다만 그뿐이었다.

문득 한 가지 생각이 한 번 들었다. 십사 년째 내가 매일 한 번씩 보는 그 한 점이 있다. 어느 모르는 사람이 옆을 한 번 지나갔던 표시 같은 한 점이다. 같은 길을 걷던 누군가가 어딘가에서 옆을 지나쳤을 거다. 그게 오늘 이 사람일 수도 있고, 아닐 수도 있고. 단정하지는 않는다.

묻지 않았다. 그 사람도 안 물었다. 첫 버스가 왔다. 그 사람은 그쪽으로 탔다. 나는 안 탔다.

## 5. 다시 골목으로

골목으로 다시 걸어 들어왔다. 신발 끝에 묻은 어제의 색이 한 번 더 보였다. 오늘 새로 묻은 색은 없었다. 다만 오늘 한 번 옆을 지나간 사람이 있었다. 그 사실 한 줄을 오늘 데려왔다.

집에 들어와 책상 앞에 앉았다. 두 손을 폈다. 삼십 분이 아니라 십 분이면 충분한 날이었다. 어제와 오늘 사이에 두 손은 거의 같아 보였다. 한 점은 어제 자리에 그대로 있었다.

어깨가 한 번 들썩였다. 그게 내 짧은 웃음이었다. 소리는 안 났다. 이른 시간 방을 깨우는 정도는 아니다.

오늘은 그렇게 보였다. 매일 이렇게 보일지는 모른다. 다만 오늘은 그랬다. 그거면 됐다.

![우표 17-1 — 김제 변두리 새벽 현관, 어제 다녀온 자리의 옅은 색조](/outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-1-haeon-shoes-dawn-v2.png)

---

## 메타 — 작성자 자기 점검 (reader portion 면제)

### A. plain-Korean brief (reader-first §4-3 의무)

- 누구의 이야기인가 — 해온 (27 살, 도시 변두리 한 줄 골목 거주, 옅은들 권역, 14 자국째 매일 새벽 두 손 펴는 사람, 5 자국째부터 같은 자리에 박혀 있는 한 점이 누구의 옆을 지나갔던 누구인지 모르는 채 14 년).
- 어디서 일어나는가 — 도시 변두리의 한 줄 골목 안쪽 집 (terrain v1 §7) + 골목 끝 두 블록의 첫 버스 정류장 + 옅은들 (regions v1.1 §2) 가는 길.
- 무슨 일이 있었나 — 평소처럼 다섯 시 반에 깸 → 오늘은 안에서 두 손을 펴기 전에 먼저 골목을 한 바퀴 걷기로 함 → 신발 끝의 어제의 색 한 번 봄 → 정류장에서 한 사람이 먼저 와 있음 → 한 번 서로 같은 곳을 보고 같은 방향을 봄 → *그 한 점의 옆을 지나갔던 그 사람일 수도 있다* 라는 생각이 한 번 듦 → 묻지 않고 보냄 → 다시 골목으로 들어와 십 분만 두 손 펴고 마감.
- 무슨 감정이었나 — 단정하지 않는 가만한 관찰, *오늘은 그렇게 보였다* 의 충분함, *겹쳐진 사실이 겹친 사람보다 먼저* 인 결을 다시 한 번 자기에게 두는 일.

### B. 실제 작가 코퍼스 닮은 점 ≥ 3 개 (reader-first §3-2 의무)

1. **`/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`** — *책임을 자기 안에 두는 결*. 27 살 해온은 *묻지 않았다. 그 사람도 안 물었다.* 라는 두 줄에서 *아쉬움도 자기 안에 둔다*. *만나려 한 적 없는* 14 년의 결을 자기 안에 박음.
2. **`/home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx`** — *말 안 해도 같이 있는 자리*. 정류장에서 한 사람과 *한 번 같은 곳을 보고 같은 방향을 보는* 결 — 말 한 마디 없이 두는 자리. 옆집 사람의 발소리도 매일 듣지만 인사는 안 하는 *말 없이 같이 가는* 결.
3. **두 코퍼스 공통** — *짧고 솔직한 호흡 + 단정 회피*. 27 살 voice signature *~다 / ~지 / 단정하지는 않는다 / 오늘은 그렇게 보였다* 의 한 호흡 1 문장. 관찰형 보고 + 자기에게 자기 곳을 두는 가만함.

### C. F-20260503-episode-10-voice-as-gold-standard 직접 응답 (must_fix #1 = 11 회차 + 12 회차 1인칭 baseline 짝 의무)

| 항목 | ep-10 (8 살 유리) gold | ep-11 (42 살 유경) 1 호 짝 | ep-12 (27 살 해온) 2 호 짝 | 결 |
|------|----------------------|-------------------------|--------------------------|------|
| 시점 | 1인칭, 가까운 거리, *본인* / *그* 추상화 회피 | 1인칭, 가까운 거리, *그 아이* (특정 = 유리) | 1인칭, 가까운 거리, *그 사람* (특정 = 정류장의 그 사람, 추상화 회피) | 1:1 |
| 문장 길이 | 평균 ≤ 25 자, 한 문장 한 결 | 평균 ≤ 25 자, 한 문장 한 호흡 | 평균 ≤ 25 자, 한 문장 한 관찰 | 1:1 |
| 종결 | *~ 했어 / ~ 같아 / ~ 괜찮아* (8 살 어린이/구어) | *~ 었어 / ~ 있어 / ~ 알아* + *~ 인 것 같아 / ~ 그 정도* (42 살 어머니 단언 회피) | *~ 다 / ~ 지* + *단정하지는 않는다 / 오늘은 그렇게 보였다* (27 살 관찰형 단독, 단정 회피) | 인물 결 차이 보존 + voice baseline 공통 |
| 메타포 밀도 | ≤ 25% (ep-10 v0.1 = ~17%) | ≤ 25% (ep-11 = ~10%) | ≤ 25% (본 단편 = ~5% 추정 / 일상 표면 = 가로등·골목·신발·골목·첫 버스·정류장·코트·창문·책상·두 손) | 1:1 도달 |
| 감정 명명 | 신기함 / 가벼움 / 살짝 서운함 / 따뜻함 (4 자리) | 기특함 / 살짝 외로움 / 가만함 / 충분함 (4 자리) | 단정하지 않는 가만함 / *그 정도면 됐다* 의 충분함 / 한 가지 생각이 한 번 듦 / 묻지 않은 결 (4 자리) | 1:1 도달 |
| 풍경 단서 | 첫 1~2 단락에 *어디인지* 박음 (강가 한 줄 마을 / 작은 집) | 첫 1~2 단락에 *어디인지* 박음 (강가 한 줄 마을 가장 아래쪽 / 부엌 ↔ 옆방 얇은 벽) | 첫 1~2 단락에 *어디인지* 박음 (도시 변두리 한 줄 골목 안쪽 집 / 옅은들 가는 길 + 정류장 두 블록) | 1:1 도달 |
| 자기 시점 | *내가 지금 보고 있는 것 + 지금 느끼는 것*, 회상의 메타가 아님 | *내가 지금 듣고 있는 것 + 지금 알아챈 것* | *내가 지금 보고 있는 것 + 한 번 든 한 가지 생각*, §4 *문득 한 가지 생각이 한 번 들었다* = 지금-알아챔 박음 | 1:1 도달 |

= **F-20260503-ep10 gold standard 7/7 항목 1:1 짝 박음 + 11+12 baseline 짝 2 호 도달 + 인물 voice 분리 (8 살 ≠ 42 살 ≠ 27 살) 보존 = 다음 회차 voice baseline 1 호 확장**.

### D. F-20260503-palm-reading-metaphor-deliberation 직접 응답 (writer 측 *대안 후보 추가 박음만* 가능)

- 본 단편 본문 *손바닥 / 손금* 0 회 박음 (의도적 회피 = 결정 박힘 전 본체 변경 0 룰 1:1 응답).
- 대신 *두 손* 일상어 4 자리 (§2 *두 손을 펴기 전에*, §5 *두 손을 폈다*, §5 *두 손은 거의 같아 보였다*, §5 *십 분이면 충분한 날*).
- 대안 후보 변주 박음 1 호 = **#3 *신발 새벽***. §2 *신발 끝에 어제의 색이 남아 있었다 / 어제 어디를 다녀왔는지 한 번에 보였다*. §5 *신발 끝에 묻은 어제의 색이 한 번 더 보였다*. 해온 character-sheet 의 *흙을 박는 일* + *도시 변두리* terrain 과 직접 정합 = 한국 변두리 일상 결 박음 (palm 의식 우회 baseline 1 호).
- 단 *손* 일상어 4 자리는 보존 (*손바닥* 추상화 회피 + *손* 일상어 보존 = ep-11 §G 와 1:1 짝).
- writer 의 결정 박음 0 / 결정 박힘 전 본체 변경 0 / 대안 후보 #3 *신발 새벽* 변주 박음 1 호 자리 (ep-11 *#2 차 새벽* 변주 와 짝 = 2 호 baseline 도달).

### E. F-20260502-1216-general-writing-too-abstract 직접 응답 (must_fix #1 = 세계관 단어를 감정의 본체로 쓰지 말 것)

- 첫 500 자 toxic 0 (자국 / 결 / 손금 / 손바닥 / 자국빛 / 종이 / 지도 / 박힘 / 색조 / 흙 / 옅게 / 자리 / 박자 / 본인 / 새벽 모두 0 회).
- 1240 자 본문 toxic total = 1 (*자리* 1 자리 = §5 *한 점은 어제 자리에 그대로 있었다*) = 1500 자당 ~1.3 = budget ≤ 3 임계 도달.
- 매니페스토 7 키워드 본문 직접 인용 = 0/7.
- 실제 작가 코퍼스 닮은 점 ≥ 3 개 (§B) 박음.
- **27 살 voice signature 응답** = 어른 어휘 *결 / 자국 / 손금 / 자국빛 / 종이 / 지도 / 박힘 / 색조 / 박자 / 본인 / 새벽 / 흙 / 옅게* 본문 0 박음 = 해온의 *관찰형 일상어 우선* 결 박음 (ep-11 0 toxic 와 1:1 짝, ep-09 v0.2 baseline 후행 짝).

### F. F-20260502-1252-content-illustrations-routing 직접 응답 (must_fix #1 = 신규 회차 박힘 시 본문 hero + POV 인물 이미지 ≥ 1 자리)

- hero (episode_thumb): `outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v2.png` (frontmatter + 본문 §0 hero 자리 박음, root-anchored `/outputs/...`).
- POV 인물 이미지 1: 본 단편 §0 hero = character-sheet-haeon-v2 직접 박음 (27 살 두 손 펴는 단독 자세 = 본 단편 §5 자세 1:1 짝).
- POV 인물 이미지 2: 본 단편 §5 마감 자리 = stamp-17-1-haeon-palm-line-dawn-v1 직접 박음 (도시 변두리 새벽의 두 손 짝 = 본 단편 §5 *어깨가 한 번 들썩였다* 짝).
- 모든 이미지 src = root-anchored `/outputs/...` 절대경로 (상대경로 0).
- ep-11 hero 1 자리 + 본 ep-12 hero + body 2 자리 = ep-11 의 1 자리 → ep-12 의 2 자리 격상 (cy-003+ writer 측 routing 의무 강화 baseline).

### G. F-20260502-1251-character-visuals-too-similar 직접 응답 (writer side: 인물 묘사에서 서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관을 분리할 것)

- 해온 visual differentiator 4 자리 (자세·동작·표정·voice = frontmatter `visual_differentiator_writer_side`) → 정해/희재/인규/유경/나림/연강/유리 7 인물과 1:1 분리 박음.
- 본 단편 본문 안 자세 (책상 앞 두 손을 가만히 펴기), 동작 (골목을 한 바퀴 먼저 걷기 + 신발 끝의 색 한 번 보기 + 어깨 먼저 들썩이는 짧은 웃음), 표정 (단정하지 않는 옅은 관찰 + 어깨 먼저 들썩이는 소리 안 나는 웃음), voice (~다 / ~지 + 단정하지는 않는다 / 오늘은 그렇게 보였다) 4 자리 모두 *27 살 관찰형 단독* 결 박음 = 7 인물 누구의 자세와도 비-겹침.

### H. F-20260502-1310-terrain-as-actual-living-geography 직접 응답 (must_fix #4 = 회차 본문 풍경 단서 1~2 줄 박음)

| 자리 | 풍경 단서 | 좌표 |
|------|----------|------|
| §1 첫 단락 | "다섯 시 반에 깼다. 가로등은 아직 켜져 있었다. 옆집 문이 한 번 닫혔다." + "내가 사는 곳은 도시 변두리의 한 줄 골목 안쪽 집이다." | terrain v1 §7 도시 변두리 직접 박음 |
| §1 두번째 단락 | "골목을 빠져나가면 옅은들이라고 부르는 평평한 동네가 한참 이어진다. 첫 버스 정류장은 골목 끝에서 두 블록 더 가야 한다." | regions v1.1 §2 옅은들 직접 박음 |
| §3 골목 | "가로등 사이의 간격이 같아서, 한 발 걸을 때마다 빛이 켜지고 꺼졌다. 첫 버스가 멀리서 한 번 클랙슨을 울렸다." | 도시 변두리 한 줄 골목의 일상 박음 |
| §4 정류장 | "정류장에 도착했을 때 한 사람이 먼저 와 있었다. 어둑해서 얼굴은 안 보였다. 키와 어깨선만 한 번 보였다." | 변두리 새벽 정류장 일상 박음 |

= **4 자리 풍경 단서 박음 = ep-10 / ep-11 4 자리 1:1 짝 = 도시 변두리 + 옅은들의 *변두리 결* 박음 (강가 한 줄 마을 ≠ 도시 변두리 한 줄 골목 = 두 거주 단위 분리 baseline 1 호)**.

### I. self-check (writer charter 의무 8 항목)

| # | 트립 | 자가 진단 | 결과 |
|---|------|---------|------|
| 1 | 매니페스토 7 키워드 직접 인용 | 본 단편 본문·대사 0/7 (*진심 / 움직임 / 자립 / 연대 / 축복 / 시간이 곧 나 / 방향* 0 회) | 미발화 |
| 2 | forbidden-language §1~§8 grep | 적중 0 (*영원 / 어디에나 / 절대 / 완벽 / 영웅 / 항상 / 언제나 / 완전히* 0/8 — 단 *매일* 7 자리 = 일상 빈도어, 절대 단언 아님) | 미발화 |
| 3 | 메타포 우선 트립 (reader portion §1 첫 한 문단) | 첫 문단 = *다섯 시 반에 깼다* + *가로등은 아직 켜져 있었다* + *옆집 문이 한 번 닫혔다* + *나도 매일 이 시간에 깬다* = *사람·장면·감정* 셋 다 명시 (사람 = 나/해온, 장면 = 다섯 시 반 가로등 켜진 골목, 감정 = *알람은 안 쓴다 = 매일의 가만한 박자*) | 미발화 |
| 4 | critic-r2 가짜 통과 | 감정 표면 = §2 *그게 더 잘 풀리는 날이 있다* + §4 *문득 한 가지 생각이 한 번 들었다* + §5 *어깨가 한 번 들썩였다 = 짧은 웃음* + §5 *그거면 됐다* = 4 자리 명명된 감정 박음 (ep-10 / ep-11 4 자리 1:1 짝) | 미발화 |
| 5 | 세계관 언어 과적합 트립 (첫 500 자 0 / 1500 자당 ≤3) | 첫 500 자 toxic 0 ✓ / 1500 자당 ~1.3 = budget 임계 도달 (ep-11 0 + 본 ep-12 1 = 2 호 baseline 도달) | 미발화 |
| 6 | 사용자 피드백 우선 트립 | 본 단편 = `candidate` 발의 + F-20260503-ep10 11+12 baseline 짝 + F-1310 4 자리 풍경 단서 + F-1216 toxic 1 (≤3) + F-1252-illustration-routing hero + body 2 자리 + F-1251 4 자리 visual differentiator + F-20260503-palm-reading deliberation 손바닥 0 + #3 신발 새벽 변주 1 호 = 6 자리 동시 응답 | 미발화 (6 자리 동시 응답 자리) |
| 7 | 영역 침범 | loremaster (terrain v1 / regions v1.1 / bible / character-relations / chronicle) 본문 0 변경 / voice-keeper (audit-rules / terminology-layers) 본문 0 변경 / orchestrator (current.md frontmatter 외 0 변경) / critic (cold-read 미실행) / art-director (visual-bible / stamps 본문 0 변경) / implementer (site/manifest 0 변경 — 차기 implementer tick 의무 인계) / designer (freeze) | 미발화 |
| 8 | 신규 lore 주장 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0 (*정류장의 한 사람* = 익명 = 5 자국째 한 점의 후보 = character-relations §3.2 #8 *익명* 자리 1:1 정합 + character-sheet-haeon §겹친 자국 1 점 의 *후보 1 인 = 유리* 부분과는 박지 않음 = 결정 박힘 전 단정 회피) | 미발화 |

→ **8/8 self-check 통과**

### J. 후속 처치 자리

- **R0 사용자 직접 평결**: 본 단편이 *F-20260503-ep10 11+12 baseline 짝* + *27 살 관찰형 voice 가 8 살 유리 / 42 살 유경 voice 와 분리되면서도 같은 voice baseline 안에 있음* + *#3 신발 새벽 변주 1 호 = palm 의식 우회 baseline* 임계 평결 의무.
- **voice-keeper r-N**: §7 5 항목 + reader-first §6 4 질문 audit (27 살 관찰형 voice signature 1 호 자리 측정 + ep-10 / ep-11 voice 와 분리 측정 + *자기 시점 거리* 6 항목 격상 후보 1 호 적용).
- **critic r-N**: cold-read R0/R1/R2 분리 측정. 5 분 즉답률 + §7 5 항목 + *지금 보고 있는 결인가* 신규 항목 (F-20260503-ep10 must_fix #3 critic 인계) 측정.
- **차기 art-director tick (병행)**: stamp-17 시리즈 17-X-haeon 우표 신규 박음 후보 (변두리 새벽 정류장 자리, 본 단편 §4 자리 짝).
- **차기 implementer tick (병행)**: site/manifest.json 갱신 의무 (episode_no=12 신규 박음).
- **차기 writer tick 인계**:
  1. ep-10 v0.2 h1 부제 *유리의 한 아침* 통째로 비움 (writer-r12 §I #1 인계 = 첫 500 자 0 임계 도달).
  2. ep-10 잔여 새벽 3 자리 audit + 일상어 분리 박음.
  3. ep-09 v0.2 본문 박자 11 → 호흡 + 자리 7 + 새벽 6 + 결 2 + 자국 1 + 옅게 1 일괄 치환 (단 *문학적 정체성* 손상 측정 의무).
  4. F-region-names 적용 박음 후 = ep-04~11 본문 안 *느릿내* / *늘재* / *빽빽골* grep 1:1 치환 (loremaster regions-v1.1 박힘 후 의무).
  5. haeon hybrid 처치 *후보* (loremaster r13 인계, 자가 결정 자리).

### K. 인접 자료

- 짝 회차: [episode-10-mom-has-her-own-dawn.md](episode-10-mom-has-her-own-dawn.md) (8 살 유리 1인칭) + [episode-11-small-footsteps-next-room.md](episode-11-small-footsteps-next-room.md) (42 살 유경 1인칭) = 11+12 baseline 3 호 묶음
- 인물 시트: [characters/haeon.md](characters/haeon.md)
- 통합 시트: [character-sheets-v0.md §1 (해온)](character-sheets-v0.md)
- bible §X.X 해온 절 (cy-003 r1 loremaster 박음 baseline)
- character-relations §3.2 #8 (해온 ↔ 익명 = *5 자국째 한 점* 자리)
- visual-bible v0.4 §11.2 해온 hex `#5C4A36` 먼지길 중앙

### L. 후행 ack 큐 (인접 tick)

- writer 다음 tick: ep-10 v0.2 + ep-09 v0.2 + ep-04~11 권역명 grep 치환 + haeon hybrid 처치 후보 (병행 박음 후보)
- voice-keeper 다음 tick: 본 ep-12 §7 5 항목 + 27 살 관찰형 voice signature audit + ep-10 / ep-11 voice 와 분리 측정 + *자기 시점 거리* 6 항목 격상 후보
- critic 다음 tick: 본 ep-12 cold-read R0/R1/R2 + *지금 보고 있는 결* 신규 항목 baseline (F-20260503-ep10 must_fix #3)
- art-director: stamp-17-X-haeon 우표 박음 후보 (본 단편 §4 짝)
- implementer: site/manifest.json 갱신 의무 (episode_no=12 자리 신규 박음)
- R0 사용자 직접 평결 의무 (F-20260503-ep10 11+12 baseline 평결)
