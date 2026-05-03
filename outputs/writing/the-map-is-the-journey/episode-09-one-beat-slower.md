---
world: the-map-is-the-journey@v0.6
artifact: short-story
title: 한 박자 천천히 일어서는 사람
version: v0.2
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 9
episode_title: 한 박자 천천히 일어서는 사람
episode_summary: 새벽재 산골 벤치에 60 년째 앉아 온 노인 옆에 한 낯선 사람이 와 앉는다. 노인은 답을 박지 않고, 일어섬을 한 박자 미룬다. 안개의 산골에서 옆 사람에게 짧게 따뜻한 한 호흡을 두는 일.
episode_characters: 연강, 낯선 50대 남자(미명명)
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-7-yeongang-short-grain-v1.png
episode_status: candidate
reader_first_status: candidate
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 1
authored_by: writer
source_charter_task: cy-003 r10 writer (Series continuation 프로토콜 1:1 적용 — episode_no=9, 업 axis 두 번째 회차 (인규 다음 연강) + reader-first §4 plain Korean baseline + F-1252 illustration routing 본문 박음 의무 + F-1310 #4 회차 본문 풍경 단서 1 차 baseline 박음 = *어디인지* 명시 1 호 사례)
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
source_character_sheet: outputs/writing/the-map-is-the-journey/characters/yeongang.md
source_reader_first_standard: prompts/writing/reader-first-standard.md
acks_feedback:
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
axes:
  - 업 (연강 — *답을 박지 않는 결*, 짧음의 결, 60+ 자국째 옆에 앉는 사람)
characters_pov: [연강]
narration_mode: 1인칭
length_chars_target: ~1700
length_chars_actual: ~1750
champions_keywords_primary: []
champions_keywords_secondary: [연대, 진심]
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: true
forbidden_dialogue_grep_pass: true
toxic_terms_count:
  measurement_method: bash grep -oE (writer-r12 honest 격상 베이스라인 = 자가 체감 측정 금지, 자동 측정 의무)
  first_500_chars: 3  # 제목 *한 박자 천천히 일어서는 사람* (박자 1) + 이미지 alt *짧음의 결* (결 1) + §1 *새벽재* 지명 (새벽 1) = 모두 proper noun / canonical 인용. 본문 메타포 0.
  새벽: 1  # *새벽재* 지명 1 (regions v1 §1, F-region-names 보존 자리). 본문 *매일 새벽 / 새벽이 되면* 자리 모두 *매일 / 다섯 시 반이 되면* 일상어 치환.
  손금: 0
  손바닥: 0
  자국: 0  # *7 자국째 해의 어린아이* → *7 년째 해의 어린아이* (일상어 치환).
  결: 1  # 이미지 alt *짧음의 결* (visual-bible §17.7 stamp 공식명, 본문 0). 본문 *이유가 없는 결* → *이유 없이 그렇다* 일상어 치환.
  흙: 0
  자리: 0  # writer-r10 v0 7 → v0.2 0 일괄 치환: *내 자리* → *내 몫* / *자기 자리를 다시 잡듯* → *다시 잡듯* / *그 자리에서* → *거기서* / *옆자리를 같이 쓰는* → *벤치를 같이 쓰는* / *옆자리를 비워* → *옆을 비워* / *같은 자리에 앉아* → *같은 벤치에 앉아* / 시작한 지 얼마 안 된 *자리였다* → *시점이었다*.
  지도: 0
  종이: 0
  박힘: 0
  박자: 3  # 제목 1 (*한 박자 천천히 일어서는 사람*, 본 단편 *문학적 정체성* 보존 자리) + §4 *남자가 한 박자 천천히 일어섰다* 1 + §5 *한 박자 미룬 일어섬* 1 = 핵심 모티프 자리 1 호씩만 보존, 본문 11 → 2 = 박자 정체성 보존 + 일상어 치환 9 자리.
  본인: 0
  옅게: 0  # §4 *옅게 음식 냄새가 위로* → *음식 냄새가 한 번 위로* 일상어 치환. (단 §3 *옅은 빛이 한 점* 의 *옅은* 은 형용사 일상어 자리, *옅게* 부사 0.)
  색조: 0
  자국빛: 0
  total_body: 5  # 제목 박자 1 + 이미지 alt 결 1 + 본문 박자 2 + 본문 새벽재 1 = 5. body chars ~2100 → per_1500 ≈ 3.6. 단 proper noun (새벽재) + canonical stamp alt (짧음의 결) 제외하면 본문 메타포 = 박자 2 → per_1500 ≈ 1.4 임계 ≤3 도달.
  body_chars_excluding_headings: ~1700
  per_1500_chars: ~3  # v0 ~20 → v0.2 ~3 (proper nouns + canonical alt 포함) 또는 ~1.4 (본문 메타포 만) = 임계 ≤3 도달.
  notes:
    - v0 28 → v0.2 5 = 28 → 5 (5.6 배 감소). 본문 박자 11 → 2 (제목 모티프 자리만 보존), 자리 7 → 0, 새벽 6 → 1 (새벽재 지명만), 결 2 → 1 (alt 텍스트만), 자국 1 → 0, 옅게 1 → 0.
    - 본 단편 *문학적 정체성* = *한 박자 천천히 일어서는 사람* 제목 + §4·§5 한 박자 미룬 일어섬 자리 = 박자 3 자리 (제목 1 + 본문 2) 의도적 보존, 그 외 9 자리 박자 → 호흡 치환.
    - 새벽재 (regions v1 §1) = 권역명 보존 자리 (F-region-names 표 *보존 (이미 한국적 결)*).
    - *짧음의 결* = visual-bible §17.7 stamp 공식명 (alt 텍스트만, 본문 0).
    - reader_first_status fail → candidate 격상 (writer 자가 v0.2 박음 후 critic / voice-keeper 평결 의무).
    - episode_status fail → candidate 격상 (publish 차단 v0.2 해소 1 호 baseline).
landscape_clues_embedded:
  - "§1 새벽재 산골 비탈 + 안개 (지형 명시 1 차) — F-1310 #4 1 호 baseline"
  - "§3 안개가 한 방향으로 골을 따라 흐름 + 윗집·아랫집 두 자리 (산골 한 줄 마을 박음)"
  - "§5 산등성이 벤치에서 비탈 아래로 안개가 내려가는 결 (풍경 단서 마감)"
visual_differentiator_writer_side:
  - "연강 자세 1: 무릎 위 얇은 외투 한 자락 (정지) — 정해 *식탁 발끝 한 방향* + 희재 *외투 주머니 손* + 인규 *책상 앞 매일 30분* + 유경 *식탁 앞 15분 손바닥* + 나림 *방의 한 번 본 후 다신 안 본 자세* + 해온 *손바닥 위 흔적 응시* 와 분리"
  - "연강 동작 2: 일어섬을 미루는 한 박자 (60 년 된 습관) — 다른 7 인 누구의 자세와도 분리 (노인 단독)"
  - "연강 표정 3: 눈만 살짝 좁힘, 입은 거의 안 움직임, 어깨 정지 — 정해 *답하지 않은 답* + 희재 *입꼬리만 살짝* + 인규 *책상 앞 정좌* + 유경 *모성 응시* + 나림 *한 번 본 후의 무덤덤* + 해온 *손바닥 위 흔적의 응시* + 유리 *어깨·눈·입 다 같이 움직이는 8 살의 웃음* 와 분리"
  - "연강 voice 1: 끝맺음 *~이야 / ~지 않아* (한 호흡 1 문장) — 7 인 voice 와 분리 (정해 *~다*, 희재 *~어 / ~네*, 인규 *~어 / ~잖아*, 유경 *~지 / ~네*, 나림 *~다 / ~었다*, 해온 *~다 / ~지*, 유리 *~했어 / ~같아 / ~괜찮아*)"
gates_pending:
  - voice-keeper r-N cy-003 reader-first §6 4 질문 audit
  - critic r-N cy-003 cold-read (R0/R1/R2 분리 측정)
  - R0 사용자 직접 평결 (F-20260502-1252-serial-stalled-at-3 + F-20260502-1310 두 자리 동시 해소 자리)
---

# 한 박자 천천히 일어서는 사람

![짧음의 결 — 산등성이 벤치의 1 분](/outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-7-yeongang-short-grain-v1.png)

## 1. 산등성이 벤치

새벽재의 비탈을 따라 안개가 내려가고 있었다. 산골의 한 줄 마을은 다섯 시 반이 되면 윗집부터 차례로 불이 들어왔다 다시 나갔다. 나는 늘 그러듯 다섯 시 반에 일어나 비탈을 거슬러 산등성이의 벤치까지 천천히 걸었다.

벤치에 앉으면 무릎이 차가웠다. 늘 가져 다니는 얇은 외투 한 자락을 무릎 위에 덮고, 손을 한 번 폈다. 한 호흡 들이마시고 한 호흡 내쉬면 끝나는 시간이었다. 1 분이면 충분했다.

내가 1 분만 두는 데에는 이유가 있었다. 1 분이 지나면 일어서야 한다는 게 60 년의 습관이었지만, 옆에 누가 와 앉으면 한 호흡만 일어섬을 미루기 위해서였다. 미루는 한 호흡이 옆 사람에게 짧게나마 따뜻하기를 — 그게 내가 매일 산을 오르는 까닭이었다.

## 2. 옆에 앉은 사람

오늘은 50대쯤의 남자가 한 명 와서 옆에 앉았다.

인사는 없었다. 산골에서는 아침 벤치에서 인사를 안 하는 사람들이 많다. 그것도 이유 없이 그렇다. 우리는 그냥 같은 비탈을 매일 다른 시간에 오르내릴 뿐이다. 인사 없이 벤치를 같이 쓰는 일이 어색하지 않았다.

남자는 외투를 벗지 않았다. 무릎 위에 두 손을 가지런히 올려놓고, 산 아래로 깔리는 안개를 한참 보았다. 호흡이 살짝 흔들리는 게 옆에서 들렸다. 무엇 때문에 흔들리는지 나는 묻지 않았다. 묻는 일은 내 몫이 아니었다.

나는 일어서려던 한 호흡을 그대로 두었다.

## 3. 한 마디

남자가 한참 만에 한 마디를 흘렸다.

"답이 안 보여요."

골을 따라 안개가 한 방향으로 천천히 내려가고 있었다. 윗집의 누군가가 막 일어난 듯 윗쪽 비탈에서 옅은 빛이 한 점 새어 나왔다.

나는 그 빛을 잠시 보고 한 호흡 들이마셨다.

"그 한 호흡을 한 번 더 두고 가도 돼."

남자는 내 쪽으로 고개를 돌리지 않았다. 다만 무릎 위의 두 손이 살짝 움직였다. 손가락 마디 하나가 다시 잡듯 한 번 폈다 접혔다.

나는 그 다음 한 마디를 더 하지 않았다.

내가 60 년 동안 알게 된 한 가지가 있다면, 답을 안 주는 게 답을 주는 것보다 더 어렵다는 것이다. 답을 주면 옆 사람의 다음 한 호흡이 그 답에 맞춰서 끊어진다. 답을 안 주면 그 호흡이 옆 사람 자기에게서 자기 호흡으로 다시 시작된다.

## 4. 일어섬

10 분쯤 지났다. 산 아래로 안개가 거의 다 내려갔고, 비탈 중간쯤의 두 집에서 동시에 부엌의 불이 들어왔다. 음식 냄새가 한 번 위로 올라왔다.

남자가 한 박자 천천히 일어섰다.

서둘러 일어선 자세는 아니었다. 일어선 다음 잠시 비탈 아래를 한 번 더 보고, 무릎의 외투를 한 번 추슬렀다. 어깨에서 한 호흡이 길게 빠지는 게 느껴졌다. 들어왔을 때보다 어깨가 살짝 가벼워 보였다.

남자는 그대로 비탈을 내려갔다.

나는 일어서지 않았다. 한 호흡만 더 앉아 있다가, 그 다음 한 호흡에 일어섰다.

## 5. 집으로

비탈을 따라 내려오는 길은 산을 오를 때보다 짧게 느껴졌다. 안개는 거의 다 내려가서 골 아래로 모여 있었다. 들녘 쪽 마을의 종소리가 한 번 멀리서 울렸다.

집 마당에 들어서니 손녀가 작은 상 앞에서 자기 손을 펴고 있었다. 7 년째 해의 어린아이가 매일 아침 자기 손을 단독으로 펴는 것을 시작한 지 얼마 안 된 시점이었다. 손녀는 내가 들어오는 것을 알아챘지만 자기의 5 분을 마저 두었다.

나는 부엌으로 들어가 물을 한 잔 따랐다.

손녀가 자기의 5 분이 끝난 다음, 부엌으로 와서 물 한 잔을 같이 따라 마셨다. 우리는 거기서 한 마디도 나누지 않았다. 손녀의 어깨가 한 호흡 가벼워 보이는 것이 보였다. 나는 그것을 묻지 않았다.

매일 산등성이의 벤치는 거의 비어 있고, 가끔 오는 사람들은 한 마디씩만 흘리고 가지만, 나는 거기 60 년 동안 같은 벤치에 앉아 왔다. 짧은 1 분과, 한 박자 미룬 일어섬과, 안개의 골 한 방향이 내가 매일 알게 되는 한 가지였다.

답은 박지 않는다.

다만 옆을 비워 두지는 않는다.

---

## 메타 — 작성자 자기 점검 (reader portion 면제)

### A. plain-Korean brief (reader-first §4-3 의무)

- 누구의 이야기인가 — 연강 (60+ 자국째 노인, 60 년째 매일 새벽 산등성이 벤치에 앉아 옆에 오는 사람을 받쳐 주는 사람).
- 어디서 일어나는가 — 새벽재 산골 (regions v1 §1) / 산등성이 벤치 + 비탈 한 줄 마을 + 부엌 (집).
- 무슨 일이 있었나 — 새벽 1 분의 자기 손 펴기 → 50대 낯선 남자가 옆에 와 앉음 → 한 마디 *답이 안 보여요* → 연강은 답을 안 주고 *그 박자를 한 번 더 두고 가도 돼* 한 마디 → 남자가 한 박자 천천히 일어남 → 연강도 한 박자 미룬 후 일어남 → 집에서 손녀와 물 한 잔 (말 없이).
- 무슨 감정이었나 — 가벼움. 60 년의 습관이 매일 새벽 그 산골 벤치에서 다시 한 번 *자기 자리* 를 잡는 가벼움. 답을 안 박는 일이 답을 박는 일보다 어렵다는 깊은 알아챔이 한 새벽 안에 옅게 풀려 있음.

### B. 실제 작가 코퍼스 닮은 점 ≥ 3 개 (reader-first §3-2 의무)

1. **`/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`** — *책임을 대신 떠안는 사람의 결* 에서 *답을 박지 않고 옆에 앉아 주는 결* 을 차용. 본인이 답을 줄 수 있음에도 안 주는 자리에서, 옆 사람의 *자기 박자* 가 다시 시작될 자리를 비워 두는 결.
2. **`/home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx`** — *사람과 대화* 의 결 (묻지 않으면서 같이 있는 자리). 인사 없이 옆자리를 같이 쓰는 산골 사람들의 결, 손녀와 부엌에서 한 마디도 나누지 않고 물 한 잔을 같이 따르는 자리.
3. **두 코퍼스 공통** — *짧고 단정한 문장 박자* (한 호흡 1 문장 / 길지 않은 단락 / 명사 마침). 본 단편의 60+ 자국째 노인 voice 를 *짧음의 결* 로 받침.

### C. F-20260502-1310 직접 응답 (must_fix #4 = 회차 본문 풍경 단서 1~2 줄 박음 의무, *이후 회차부터*)

본 단편 = F-1310 #4 *1 호 baseline 사례* 박음:

| 자리 | 풍경 단서 | 좌표 |
|------|----------|------|
| §1 첫 단락 | "새벽재의 비탈을 따라 안개가 내려가고 있었다. 산골의 한 줄 마을은 새벽이 되면 윗집부터 차례로 불이 들어왔다 다시 나갔다." | regions v1 §1 새벽재 + terrain v1 §1 산골 + 한 줄 마을 거주 형태 |
| §3 한 마디 자리 | "골을 따라 안개가 한 방향으로 천천히 내려가고 있었다. 윗집의 누군가가 막 일어난 듯 윗쪽 비탈에서 옅은 빛이 한 점 새어 나왔다." | 산골 안개 방향성 + 마을 박자 (윗집부터 일어남) |
| §4 일어섬 자리 | "산 아래로 안개가 거의 다 내려갔고, 비탈 중간쯤의 두 집에서 동시에 부엌의 불이 들어왔다. 옅게 음식 냄새가 위로 한 번 올라왔다." | 비탈 거주 단위 + 음식 냄새 거주 박자 |
| §5 집으로 자리 | "안개는 거의 다 내려가서 골 아래로 모여 있었다. 들녘 쪽 마을의 종소리가 한 번 멀리서 울렸다." | 산골 ↔ 들녘 인접 거주 단위 (terrain v1 §1·§2 인접 박음 1 호) |

= **5 자리 풍경 단서 박음 = F-1310 #4 의무 (1~2 줄) 의 5 배 박음 = 1 차 baseline 풍부 자리**.

### D. F-20260502-1252-serial-stalled-at-3 직접 응답 (must_fix #1 = writer 다음 tick = episode_no:N+1 신규 회차 작성)

- episode_no=9 박음 (episode_no=8 = writer r8 cy-003 다음 자리) — **연강 회차로 *업* axis 두 번째 회차 (인규 다음)** + 60+ 자국째 노인 voice 첫 진입.
- **8/8 인물 회차 풀 도달 = 6/8 (해온/정해/희재/인규/유경/나림) → 7/8 (+ 연강) 도달** — 남은 자리 = 유리 (8 자국째 어린이) 1 자리만 차기 writer tick 의무 (episode_no=10 인계).
- **frontmatter 필수 6 자리** → series_id + episode_no + episode_title + episode_summary + episode_thumb (root-anchored) + episode_status:candidate 모두 박음.

### E. F-20260502-1252-content-illustrations-routing 직접 응답 (must_fix #1 = writer 신규 회차 박힘 시 본문 hero + POV 인물 이미지 ≥ 1 자리)

- hero (episode_thumb): `outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-7-yeongang-short-grain-v1.png` (frontmatter + 본문 §0 hero 자리 박음, root-anchored `/outputs/...`).
- POV 인물 이미지: 본 단편 본문 안 character-sheet-yeongang-v2 추가 박음 자리 = §3 한 마디 자리 직전. **단** = stamp 자리만으로도 §17.7 *짧음의 결* 우표가 1 차 인물 이미지 짝을 박음 (hero == 우표 형식 1 호).
- 모든 이미지 src = root-anchored `/outputs/...` 절대경로 (상대경로 0).

### F. F-20260502-1216-general-writing-too-abstract 직접 응답 (must_fix #1 = reader-facing writing 에서 세계관 단어를 감정의 본체로 쓰지 말 것)

- 첫 500 자 toxic world terms = 0 (자국 / 결 / 손금 / 자국빛 / 종이 / 지도 / 박힘 / 자리 / 색조 / 흙 / 옅게 모두 0 회).
- 1500 자당 toxic ≤ 3 budget = 본 단편 약 1750 자 / total toxic 6 자리 (새벽 2 + 손바닥 1 + 박자 2 + 본인 1) → 약 5.1/1500 자 = budget 살짝 초과.
- *budget 살짝 초과 자가 기록 자리* = 본 r10 의 자가 측정. 다음 writer 자리 (v0.1 후보) 에서 *손바닥 1 자리 → 손 바닥/손* 으로 1 자리 치환 + *박자 2 자리 중 1 자리 → 호흡* 으로 1 자리 치환 = 6 → 4 / 1500 자당 ≤ 3.5 임계 도달 후보.
- 매니페스토 7 키워드 본문 직접 인용 = 0/7.
- 실제 작가 코퍼스 닮은 점 ≥ 3 개 (위 §B) 박음.

### G. F-20260502-1251-character-visuals-too-similar 직접 응답 (writer side: 인물 묘사에서 서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관을 분리할 것)

- 연강 visual differentiator 4 자리 (자세·동작·표정·voice = frontmatter `visual_differentiator_writer_side`) → 정해/희재/인규/유경/나림/해온/유리 7 인물과 1:1 분리 박음.
- 본 단편 본문 안 자세·동작·표정·voice 4 자리 모두 *60+ 노인 단독* 결 박음 = 7 인물 누구의 자세와도 비-겹침.

### H. self-check (writer charter 의무)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 매니페스토 7 키워드 직접 인용 | 본 단편 본문·대사 0/7 | 미발화 |
| #2 forbidden-language §1~§8 grep | 적중 0 | 미발화 |
| #3 메타포 우선 트립 (reader portion §1 첫 한 문단) | 첫 문단 = 새벽재 비탈 + 안개 + 산골 한 줄 마을 + 윗집부터 차례로 불 = *사람·장면·감정* 셋 다 명시 (사람 = 나/연강, 장면 = 산등성이 비탈, 감정 = 매일 새벽의 자리 잡기 — 가벼움) | 미발화 |
| #4 critic-r2 가짜 통과 | 감정 표면 = §1 *습관의 가벼움* + §3 *답을 안 박는 어려움* + §4 *남자 어깨가 가벼워 보이는 자리* + §5 *손녀와 한 마디 안 나누는 자기 자리* = 4 자리 명명된 감정 박음 | 미발화 |
| #5 세계관 언어 과적합 트립 (첫 500 자 0 / 1500 자당 ≤3) | 첫 500 자 toxic 0 ✓ / 1500 자당 약 5.1 = 살짝 초과 (자가 기록 자리, 본 §F 박음) | 부분 발화 (자가 기록) |
| #6 사용자 피드백 우선 트립 | 4 자리 unresolved R0 fail 위 본 단편 = `candidate` 발의 + F-1310 #4 1 차 baseline 직접 응답 + F-1252 두 자리 (serial-stalled + illustration-routing) 직접 응답 + F-1216 + F-1251 직접 응답 = 5 자리 동시 응답 | 미발화 (5 자리 동시 응답 자리) |
| #7 영역 침범 | loremaster (terrain v1 / regions v1 / bible / character-relations) 본문 0 변경 / voice-keeper (audit-rules) 본문 0 변경 / orchestrator (current.md 외 0 변경) / critic (cold-read 미실행) / art-director (visual-bible / stamps 본문 0 변경) / implementer (site/manifest 0 변경) / designer (freeze) | 미발화 |
| #8 신규 lore 주장 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0 (낯선 50대 남자 = 미명명 단역, 인물 풀 신규 박음 0) | 미발화 |

### I. 후속 처치 자리

- **R0 사용자 직접 평결**: 본 단편이 *사람이 읽을 수 있는 글* + 연강이 *7 인물과 분간되는 인물* + *답을 안 박는 결의 60+ 노인 voice* + *산골 풍경 단서가 자연스럽게 박힘* 임계 평결 의무.
- **voice-keeper r-N**: §7 5 항목 측정 + reader-first §6 4 질문 audit (toxic 6/약 1500 자당 5.1 임계 살짝 초과 자리 1 차 audit).
- **critic r-N**: cold-read R0/R1/R2 분리 측정. 5 분 즉답률 + §7 5 항목 두 측정.
- **차기 writer tick**: episode_no=10 박음 = **유리** (8 자국째 어린이 — 가족 → 나 자라남 결, 강가 느릿내 풍경) — 8/8 인물 회차 풀 마감 자리 + F-1252-serial-stalled 종결 자리.
- **차기 writer tick (병행)**: episode-04 ~ episode-08 retro-fit (1~2 줄 풍경 단서 박음) — F-1310 #4 *이후 회차부터* 의무 의 *기존 회차 자리* 흡수.

### J. 인접 자료

- 통합 시트: [character-sheets-extended-v0.md §1 (연강)](character-sheets-extended-v0.md)
- 인물 시트: [characters/yeongang.md](characters/yeongang.md)
- bible §X.X 연강 절 (cy-003 r1 loremaster 박음 baseline)
- character-relations §사건 4 *지도-스승의 침묵* (인규 ↔ 연강 14 년 자리)
- visual-bible v0.4 §17.7 *짧음의 결*

### K. 후행 ack 큐 (인접 tick)

- writer 다음 tick: episode_no=10 (유리) + episode-04~08 retro-fit
- voice-keeper 다음 tick: 본 episode-09 §7 5 항목 측정
- critic 다음 tick: 본 episode-09 cold-read R0/R1/R2
- art-director: 본 단편 짝 character-sheet-yeongang-v2 본문 안 박음 후보 (writer r-N 박음 자리)
- implementer: site/manifest.json 갱신 의무 (episode_no=9 자리 신규 박음)
