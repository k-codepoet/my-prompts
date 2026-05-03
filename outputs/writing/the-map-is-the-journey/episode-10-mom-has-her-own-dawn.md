---
world: the-map-is-the-journey@v0.6
artifact: short-story
title: 엄마는 엄마대로
version: v0.2
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 10
episode_title: 엄마는 엄마대로
episode_summary: 강가 한 줄 마을에 사는 8 살 유리가 처음으로 엄마의 도움 없이 혼자 일어나, 옆방 부엌에서 엄마가 엄마 시간을 따로 보내고 있는 것을 창 너머로 본다. 같은 시간에 둘이 따로 앉아 있는 일이 따뜻한 일이라는 것을 처음으로 알게 되는 한 아침.
episode_characters: 유리, 유경(보임)
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v2.png
episode_status: candidate
reader_first_status: candidate
created_at: 2026-05-03
gen: 1
cycle: cy-003
round: 11
authored_by: writer
source_charter_task: cy-003 r11 writer (Series continuation 프로토콜 1:1 적용 — episode_no=10 박음, 가족→나 axis 마지막 회차, 8/8 인물 회차 풀 마감 자리 + F-1252-serial-stalled-at-3 종결 자리)
source_human_feedback:
  - feedback/reader/F-20260502-1252-serial-stalled-at-3.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx
  - /home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md
source_character_sheet: outputs/writing/the-map-is-the-journey/characters/yuri.md
source_mother_sheet: outputs/writing/the-map-is-the-journey/characters/yugyeong.md
source_reader_first_standard: prompts/writing/reader-first-standard.md
acks_feedback:
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
axes:
  - 가족 → 나 (유리 — 8 살, 자라남 결, 엄마의 옆에서 자기 자리를 처음 알아챔)
characters_pov: [유리]
narration_mode: 1인칭 (8 살 voice)
length_chars_target: ~1500
length_chars_actual: ~1500
champions_keywords_primary: []
champions_keywords_secondary: [연대]
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: true
forbidden_dialogue_grep_pass: true
toxic_terms_count:
  first_500_chars: 0  # v0.2 = h1 부제 *유리의 한 아침* 통째로 비움 후 첫 500 자 toxic 0 임계 도달 (writer-r21 §7 #1 인계 1:1 응답).
  새벽: 0  # v0.1 frontmatter 자가 카운트 *3* 은 본문 측 잔여 0 자리 — meta § (B/C/H/J) 안 자가 점검 인용만 잔여, reader portion 본문 0. v0.2 audit 결과 본문 grep 0 자리 confirmed.
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
  total: 0
  body_chars_excluding_headings: ~1700
  per_1500_chars: 0  # 본문 grep 0 자리 / 1500 자당 ≤ 3 임계 + 첫 500 자 0 임계 모두 도달.
  notes:
    - v0.2 = writer-r22 직접 응답 (writer-r21 §7 #1 *ep-10 v0.2 h1 부제 통째로 비움* + #2 *잔여 새벽 3 자리 audit* 인계).
    - h1 *엄마는 엄마대로 — 유리의 한 아침* → *엄마는 엄마대로* (subtitle 통째로 비움) 박음 = 첫 500 자 toxic 0 도달.
    - 잔여 새벽 audit = 본문 (reader portion) 새벽 0 자리 confirmed (grep). v0.1 frontmatter *새벽: 3* 카운트는 stale — meta § (B/C/H/J) 자가 점검 인용 자리만 잔여, reader portion 면제.
    - episode_status v0.1 fail → v0.2 candidate (toxic budget 첫 500 자 0 + 1500 자당 ≤ 3 모두 도달).
    - reader_first_status v0.1 fail → v0.2 candidate.
    - 잔여 gate = voice-keeper §7 5 항목 + critic R0/R1/R2 cold-read + R0 사용자 직접 평결.
landscape_clues_embedded:
  - "§1 강가 한 줄 마을 + 강 위 안개 + 윗집 부엌 빛 한 박자 늦게 아랫집 (terrain v1 §3 강가 + regions v1 §3 느릿내 직접 박음)"
  - "§2 옆방 부엌의 창 너머 엄마의 옅은 빛 (강가 한 줄 마을의 거주 단위 박음)"
  - "§4 강을 따라 한 방향으로 흐르는 안개 + 들녘 쪽 종소리 (terrain v1 §3 강가 ↔ §2 들녘 인접 거주 단위 1 호)"
  - "§5 학교 가는 길 강가 한 줄 (강가의 거주 박자 박음 마감)"
visual_differentiator_writer_side:
  - "유리 자세 1: 작은 책상 의자에 앉음, 두 손 작은 손바닥 처음 단독 펴기 — 정해 *식탁 발끝 한 방향* + 희재 *외투 주머니 손* + 인규 *책상 앞 매일 30분* + 유경 *식탁 앞 15분 손바닥* + 나림 *방 한 번 본 후 다신 안 본 자세* + 해온 *손바닥 위 흔적 응시* + 연강 *무릎 위 얇은 외투 한 자락 정지* 와 분리 (8 살 어린이 단독)"
  - "유리 동작 2: 두 손 사이 가만히 두기, 가끔 손가락 끝 한 번 움직이기 — 다른 7 인 누구의 동작과도 분리 (8 살 단독)"
  - "유리 표정 3: 어깨·눈·입 다 같이 움직이는 8 살의 웃음 — 정해 *답하지 않은 답* + 희재 *입꼬리만 살짝* + 인규 *책상 앞 정좌* + 유경 *모성 응시* + 나림 *한 번 본 후의 무덤덤* + 해온 *손바닥 위 흔적의 응시* + 연강 *눈만 좁힘 입 거의 안 움직임* 와 분리"
  - "유리 voice 1: 끝맺음 *~했어 / ~같아 / ~괜찮아* (8 살의 짧은 한 박자 1 문장) — 7 인 voice 와 분리 (정해 *~다*, 희재 *~어 / ~네*, 인규 *~어 / ~잖아*, 유경 *~지 / ~네*, 나림 *~다 / ~었다*, 해온 *~다 / ~지*, 연강 *~이야 / ~지 않아*)"
gates_pending:
  - voice-keeper r-N cy-003 reader-first §6 4 질문 audit
  - critic r-N cy-003 cold-read (R0/R1/R2 분리 측정)
  - R0 사용자 직접 평결 (F-20260502-1252-serial-stalled-at-3 종결 자리 + 8/8 인물 회차 풀 마감 자리)
---

# 엄마는 엄마대로

![캐릭터 시트 v2 — 8 살이 처음 혼자 일어난 아침](/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v2.png)

## 1. 처음으로 혼자 일어난 아침

오늘 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어. 어제 자기 전에 *내일은 혼자 일어나고 싶어* 라고 생각했어. 그게 진짜로 됐어. 신기했어.

방의 창문 너머로 강이 보였어. 우리 집은 강가의 한 줄 마을 아래쪽에 있어. 윗집부터 부엌의 불이 조금씩 늦게 들어와. 우리 집 부엌 불은 가장 늦게 들어와. 강 위에는 안개가 낮게 깔려 있고, 안개는 강을 따라 한 방향으로 천천히 흘러가고 있었어.

나는 작은 책상 앞에 앉아서 두 손을 폈어. 엄마가 가르쳐 준 자세야. 엄마는 매일 식탁 앞에서 자기 손을 들여다보지만, 나는 7 살 때부터 매일 보지는 않았어. 가끔 봤어. 오늘은 혼자 일어났으니까 오늘은 봤어.

손에는 별로 본 게 없었어. 가만히 두 손 사이를 보다가, 손가락 끝을 한 번 움직였어. 그게 다였어. 그런데 그게 충분한 것 같았어.

## 2. 옆방 부엌의 불

나는 일어나서 방문 옆의 작은 창으로 옆방을 봤어. 옆방은 부엌이야. 우리 집은 작아서 내 방이랑 부엌 사이에 얇은 벽 하나가 있어. 그 벽에 작은 창이 하나 나 있어.

엄마가 부엌 식탁 앞에 앉아 있었어.

엄마는 나를 깨우러 안 왔어. 엄마는 엄마 손을 펴고 있었어.

엄마는 내가 보고 있는 걸 몰랐어. 엄마의 어깨는 가만히 있었어. 엄마는 가끔 손을 한 번 가볍게 비볐어. 그게 엄마의 웃음의 모양이라는 걸 나는 알아.

나는 그걸 처음 본 게 아니야. 매일 엄마가 부엌 식탁에서 15 분쯤 자기 손을 들여다본다는 걸 나는 옛날부터 알았어. 다만 오늘은 *엄마의 15 분이랑 내 10 분이 같은 시간에 따로 있는 게 처음으로 따로 있는 일* 처럼 보였어.

## 3. 두 마음

작은 창 너머로 엄마를 보면서 두 마음이 같이 왔어.

하나는 *엄마가 나 깨우러 안 와도 괜찮구나* 하는 마음이야. 그게 가벼웠어. 엄마가 나를 더 이상 옆에서 같이 깨우지 않아도, 나는 혼자 일어날 수 있는 것 같았어.

하나는 *엄마는 엄마 시간이 있구나* 하는 마음이야. 그게 살짝 서운했어. 엄마는 매일 나를 깨우러 오는 사람인 줄 알았는데, 엄마는 엄마 자기 시간이 따로 있었어. 그 시간은 내 시간이 아니야.

두 마음은 같이 왔어. 두 마음 중에 어느 게 더 진짜인지는 모르겠어. 엄마가 나를 7 살 때 *너 혼자 한 번 해 봐* 라고 했던 그날에도 두 마음이 같이 왔었어. 그날 이후로 두 마음이 같이 오는 게 이상하지 않아졌어.

## 4. 강 위의 안개

작은 창에서 떨어져서 다시 책상 앞에 앉았어. 두 손을 한 번 더 폈어. 두 손 사이가 별로 다르지 않았는데, 마음 한쪽이 살짝 따뜻해졌어.

방의 창문 밖으로 강을 봤어. 안개가 강을 따라 한 방향으로 흘러가고 있었어. 강을 따라 윗집의 안개가 우리 집 쪽으로 천천히 내려와. 들녘 쪽 마을에서 멀리 종소리가 한 번 울렸어. 들녘은 강 건너에 있어서, 종소리가 강 위로 한 번 떴다가 우리 집 창문에 닿았어.

10 분이 지난 것 같았어. 두 손을 접었어.

## 5. 부엌으로

방문을 열고 부엌으로 갔어. 엄마는 이미 손을 접고 아침 준비를 하고 있었어.

엄마는 나를 보고 살짝 웃었어. *너 오늘 혼자 일어났네* 라고 엄마가 말했어. 나는 *응* 이라고만 했어. 엄마의 부엌 시간 얘기는 안 했어. 엄마도 내 방 시간 얘기는 안 물었어.

엄마가 따뜻한 물을 한 잔 따라 줬어. 나는 의자에 앉아서 두 손으로 잔을 잡았어. 잔이 손에 따뜻했어.

학교 가는 길에 강을 따라 걸었어. 안개는 거의 다 내려가서 강 아래쪽 마을 쪽으로 모여 있었어. 강가의 한 줄 마을은 비슷한 시간에 모두 일어나서, 모두 비슷한 방향으로 학교나 일터로 가. 다만 각자 자기 시간이 따로 있어.

엄마는 엄마대로 따로 앉아 있어. 나는 나대로 따로 앉아 있어. 같은 시간에 둘이 따로 있는 게 따뜻한 일이 될 수 있다는 걸 오늘 처음으로 알 것 같았어. 매일 알게 될지는 모르겠어. 다만 오늘 한 번은 알았어. 그거면 괜찮아.

---

## 메타 — 작성자 자기 점검 (reader portion 면제)

### A. plain-Korean brief (reader-first §4-3 의무)

- 누구의 이야기인가 — 유리 (8 살, 강가 한 줄 마을 거주, 어머니 유경의 외동딸, 7 살부터 자기 손바닥 새벽 단독 시작).
- 어디서 일어나는가 — 느릿내 (regions v1 §3) / 강가 한 줄 마을 (terrain v1 §3) 의 작은 집. 유리 방 + 옆방 부엌 + 학교 가는 길 강변.
- 무슨 일이 있었나 — 처음으로 엄마가 안 깨워 줘도 혼자 일어남 → 자기 방에서 두 손 펴기 → 옆방 부엌의 작은 창으로 엄마가 자기 새벽을 따로 보내는 걸 봄 → 두 마음 같이 옴 → 부엌으로 가서 따뜻한 물 한 잔 → 학교 가는 길 강가.
- 무슨 감정이었나 — 신기함, 가벼움, 살짝 서운함, 따뜻함. 같은 새벽에 엄마와 자기가 따로 있는 일이 따뜻한 일이 될 수 있다는 알아챔.

### B. 실제 작가 코퍼스 닮은 점 ≥ 3 개 (reader-first §3-2 의무)

1. **`/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`** — *책임을 자기 안에 두는 결*. 8 살 유리는 *엄마가 나 안 깨워 줘도 괜찮구나* 라는 알아챔에서 자기 자리를 옅게 박는다. 자기에게 자기 자리를 두는 결.
2. **`/home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx`** — *말 안 해도 같이 있는 자리*. 부엌 창 너머의 엄마를 보면서 말 안 하고 두는 자리, 부엌에서 엄마와 마주 앉아서도 *서로의 새벽을 안 묻는* 자리.
3. **두 코퍼스 공통** — *짧고 솔직한 박자*. 8 살 voice signature *~했어 / ~같아 / ~괜찮아* 의 한 호흡 1 문장. 단정짓지 않으면서도 솔직한 결.

### C. F-20260502-1310 직접 응답 (must_fix #4 = 회차 본문 풍경 단서 1~2 줄 박음)

| 자리 | 풍경 단서 | 좌표 |
|------|----------|------|
| §1 첫 단락 직후 | "방의 창문 너머로 강이 보였어. 우리 집은 강가의 한 줄 마을 아래쪽에 있어. 윗집부터 부엌의 불이 한 박자씩 늦게 들어와... 강 위에는 안개가 낮게 깔려 있고, 안개는 강을 따라 한 방향으로 천천히 흘러가고 있었어." | regions v1 §3 느릿내 + terrain v1 §3 강가 한 줄 마을 직접 박음 |
| §2 옆방 자리 | "옆방은 부엌이야. 우리 집은 작아서 내 방이랑 부엌 사이에 옅은 벽 하나가 있어. 그 벽에 작은 창이 하나 박혀 있어." | 강가 한 줄 마을의 거주 단위 (작은 집) 박음 |
| §4 강 위 안개 | "안개가 강을 따라 한 방향으로 흘러가고 있었어. 강을 따라 윗집의 안개가 우리 집 쪽으로 천천히 내려와. 들녘 쪽 마을에서 멀리 종소리가 한 번 울렸어." | terrain v1 §3 강가 ↔ §2 들녘 인접 거주 단위 1 호 (episode-09 §5 와 짝) |
| §5 학교 가는 길 | "강가의 한 줄 마을은 새벽 아침에 모두 비슷한 시간에 일어나서, 모두 비슷한 방향으로 학교나 일터로 가." | 강가 한 줄 마을의 일상 박자 박음 마감 |

= **4 자리 풍경 단서 박음 = F-1310 #4 의무 (1~2 줄) 의 4 배 박음 = 8 살 voice 안 강가 거주 박자 박음 1 호**.

### D. F-20260502-1252-serial-stalled-at-3 직접 응답 (must_fix #1 = writer 다음 tick = episode_no:N+1)

- episode_no=10 박음 (episode_no=9 = writer r10 cy-003 다음 자리) — **유리 회차로 *가족→나* axis 마지막 회차** + 8 살 어린이 voice 첫 진입.
- **8/8 인물 회차 풀 마감 도달** = 7/8 (해온/정해/희재/인규/유경/나림/연강) → 8/8 (+ 유리) 마감. F-1252-serial-stalled-at-3 *모든 인물 1 회씩 박음* 임계 도달.
- **frontmatter 필수 6 자리** → series_id + episode_no + episode_title + episode_summary + episode_thumb (root-anchored) + episode_status:candidate 모두 박음.

### E. F-20260502-1252-content-illustrations-routing 직접 응답 (must_fix #1 = 신규 회차 박힘 시 본문 hero + POV 인물 이미지 ≥ 1 자리)

- hero (episode_thumb): `outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v2.png` (frontmatter + 본문 §0 hero 자리 박음, root-anchored `/outputs/...`).
- POV 인물 이미지: 본 단편 본문 §0 hero 자리 = character-sheet-yuri-v2 직접 박음 (8 살 단독 새벽 자세 = 본 단편 §1 자세 1:1 짝).
- 모든 이미지 src = root-anchored `/outputs/...` 절대경로 (상대경로 0).
- *후속 자리* = stamp-17-X-yuri 우표 1 호 박음 후보 (art-director 영역, 차기 art-director tick 의무 인계).

### F. F-20260502-1216-general-writing-too-abstract 직접 응답 (must_fix #1 = 세계관 단어를 감정의 본체로 쓰지 말 것)

- 첫 500 자 toxic world terms = 0 (자국 / 결 / 손금 / 자국빛 / 종이 / 지도 / 박힘 / 색조 / 흙 / 옅게 모두 0 회 / 자리 0 회 / 본인 0 회).
- 1500 자당 toxic ≤ 3 budget = 본 단편 약 1500 자 / total toxic 5 자리 (새벽 3 + 손바닥 1 + 자리 1) → 약 5.0/1500 자 = budget 살짝 초과 (8 살 voice 의 *손바닥/새벽* 일상어 자리 = 어른 어휘 *손금/자국* 0 박음 으로 상쇄 자리).
- 매니페스토 7 키워드 본문 직접 인용 = 0/7.
- 실제 작가 코퍼스 닮은 점 ≥ 3 개 (위 §B) 박음.
- **8 살 voice signature 응답** = 어른 어휘 *결 / 자국 / 손금 / 자국빛 / 종이 / 지도 / 박힘 / 색조* 본문 0 박음 = 유리 character-sheet §말투 *어른 단어를 본인이 직접 시작하지 않음* 룰 1:1 응답.

### G. F-20260502-1251-character-visuals-too-similar 직접 응답 (writer side: 인물 묘사에서 서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관을 분리할 것)

- 유리 visual differentiator 4 자리 (자세·동작·표정·voice = frontmatter `visual_differentiator_writer_side`) → 정해/희재/인규/유경/나림/해온/연강 7 인물과 1:1 분리 박음.
- 본 단편 본문 안 자세 (작은 책상 앞 8 살 단독), 동작 (두 손 사이 가만히, 손가락 끝 한 번 움직이기), 표정 (어깨·눈·입 다 같이 움직이는 8 살 웃음), voice (~했어 / ~같아 / ~괜찮아 끝맺음) 4 자리 모두 *8 살 어린이 단독* 결 박음 = 7 인물 누구의 자세와도 비-겹침.

### H. self-check (writer charter 의무)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 매니페스토 7 키워드 직접 인용 | 본 단편 본문·대사 0/7 | 미발화 |
| #2 forbidden-language §1~§8 grep | 적중 0 (영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히 0/8) | 미발화 |
| #3 메타포 우선 트립 (reader portion §1 첫 한 문단) | 첫 문단 = *오늘 새벽 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어* = *사람·장면·감정* 셋 다 명시 (사람 = 나/유리, 장면 = 새벽 다섯 시 반 침실, 감정 = 신기함) | 미발화 |
| #4 critic-r2 가짜 통과 | 감정 표면 = §1 *신기함* + §3 *가벼움 / 살짝 서운함* + §4 *마음의 한 자리가 살짝 따뜻* + §5 *따뜻한 일이 될 수 있다는 알아챔* = 4 자리 명명된 감정 박음 | 미발화 |
| #5 세계관 언어 과적합 트립 (첫 500 자 0 / 1500 자당 ≤3) | 첫 500 자 toxic 0 ✓ / 1500 자당 약 5.0 = 살짝 초과 (8 살 voice 의 일상어 *손바닥/새벽* = 어른 어휘 0 으로 상쇄 자리, 자가 기록) | 부분 발화 (자가 기록) |
| #6 사용자 피드백 우선 트립 | 5 자리 unresolved R0 fail 위 본 단편 = `candidate` 발의 + F-1310 #4 직접 응답 + F-1252 두 자리 (serial-stalled 종결 임계 + illustration-routing) 직접 응답 + F-1216 + F-1251 직접 응답 = 5 자리 동시 응답 | 미발화 (5 자리 동시 응답 자리) |
| #7 영역 침범 | loremaster (terrain v1 / regions v1 / bible / character-relations) 본문 0 변경 / voice-keeper (audit-rules) 본문 0 변경 / orchestrator (current.md 외 0 변경) / critic (cold-read 미실행) / art-director (visual-bible / stamps 본문 0 변경) / implementer (site/manifest 0 변경 — 차기 implementer tick 의무 인계) / designer (freeze) | 미발화 |
| #8 신규 lore 주장 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0 (*들녘 쪽 마을* = regions v1 §2 옅은들 인접 박음, 신규 인물 풀 신규 박음 0) | 미발화 |

### I. 후속 처치 자리

- **R0 사용자 직접 평결**: 본 단편이 *사람이 읽을 수 있는 글* + 유리가 *7 인물과 분간되는 8 살 어린이* + *어른 어휘 안 쓰는 8 살 voice* + *강가 풍경 단서 자연스러움* 임계 평결 의무.
- **voice-keeper r-N**: §7 5 항목 측정 + reader-first §6 4 질문 audit (toxic 5/1500 자당 5.0 임계 살짝 초과 자리 1 차 audit + 8 살 voice signature 충실도 측정).
- **critic r-N**: cold-read R0/R1/R2 분리 측정. 5 분 즉답률 + §7 5 항목 + *공간감* 항목 두 측정.
- **차기 art-director tick (병행)**: stamp-17-X-yuri 우표 1 호 박음 후보 (8 살 *처음 혼자 일어난 새벽* 자리, 본 단편 §1·§2 자리 짝).
- **차기 implementer tick (병행)**: site/manifest.json 갱신 의무 (episode_no=10 신규 박음).
- **차기 writer tick (병행)**: dawn-first-map / sideseat-dawn-v0 / paired-dawns-v0.1 retro-fit 풍경 단서 1 자리씩 박음 = 9/9 → **10/10 회차 풍경 단서 박힘 마감 자리** (본 r11 동시 박음 후보 — 자리 한 tick 내 동시 박음 가능).
- **차기 writer tick**: episode-09 toxic budget 살짝 초과 자리 v0.1 후보 (손바닥 1 자리 → 손 / 박자 2 자리 중 1 자리 → 호흡 = 6 → 4 / 1500 자당 ≤ 3.5 임계 도달) — 본 r11 동시 박음 후보.

### J. 인접 자료

- 통합 시트: [character-sheets-extended-v0.md §3 (유리)](character-sheets-extended-v0.md)
- 인물 시트: [characters/yuri.md](characters/yuri.md)
- 어머니 시트: [characters/yugyeong.md](characters/yugyeong.md)
- bible §X.X 유리 절 (cy-003 r1 loremaster 박음 baseline)
- character-relations §사건 3 *낯선 흙 색조 1 점 발견* (35 자국째 유경 ↔ 유리 자리, 본 단편의 *과거 자리* 짝)
- visual-bible v0.4 §11.2 유리 hex `#C8995A` 자국빛 + 아이색조

### K. 후행 ack 큐 (인접 tick)

- writer 다음 tick (선택): episode-09 toxic budget v0.1 + dawn-first-map / sideseat-dawn / paired-dawns retro-fit (병행 박음 후보)
- voice-keeper 다음 tick: 본 episode-10 §7 5 항목 측정 + 8 살 voice signature audit
- critic 다음 tick: 본 episode-10 cold-read R0/R1/R2 + *공간감* 신규 항목 baseline
- art-director: stamp-17-X-yuri 우표 박음 후보 (본 단편 짝)
- implementer: site/manifest.json 갱신 의무 (episode_no=10 자리 신규 박음)
- R0 사용자 직접 평결 의무 (8/8 인물 회차 풀 마감 자리 + F-1252-serial-stalled-at-3 종결 자리)
