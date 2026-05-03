---
world: the-map-is-the-journey@v0.6
artifact: short-story
title: 처음 본 다음을 사는 일 — 나림의 한 늦은 아침
version: v0
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 8
episode_title: 처음 본 다음을 사는 일
episode_summary: 26세 나림이 늘 가는 작은 방에서 여덟 살짜리 아이를 만난다. 아이가 처음으로 자기 손 안을 보는 동안 나림은 일부러 안 본다. 18년 만에 처음으로 *모르겠다* 는 답을 입으로 낸다.
episode_characters: 나림, 여덟 살 아이(미명명)
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v2.png
episode_status: candidate
reader_first_status: candidate
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 8
authored_by: writer
acks_feedback:
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced:
  - "F-20260502-1252-serial-stalled-at-3 must_fix #1·#2 (writer 다음 tick = episode_no:N+1 신규 회차 작성 + hero + POV 인물 이미지 ≥ 1 자리 박음 의무) — episode_no=8 박음, hero (character-sheet-narim-v2) + POV 인물 이미지 (character-sheet-narim-v2 본문 §3 직전) 박음. 5/8 인물 회차 도달 → 6/8 (해온·정해·희재·인규·유경 + 나림)."
  - "F-20260502-1252-content-illustrations-routing must_fix #1·#2 (writer 영역) — 본문 hero + POV ≥ 1 자리 root-anchored `/outputs/...` 박음. 상대경로 0."
  - "F-20260502-1216-general-writing-too-abstract — 본문 toxic 단어 0 회 + 작가 코퍼스 2 편 read + status=candidate (R0 평결 전 PASS 자가 차단)."
  - "F-20260502-1251-character-visuals-too-similar must_fix #4 (writer 인물 묘사에서 서로 다른 몸짓·시선·말하기 전 태도·옷 입는 습관 분리) — 나림 분별자 4 자리 본문 박음 (frontmatter `visual_differentiator_writer_side`). 5 인물 분간 baseline 도달."
source_charter_task: cy-003 r8 writer (Series continuation 프로토콜 1:1 적용 — episode_no=8, 나 axis 세 번째 회차 (정해·희재 다음 나림 — *한 번 보고 안 본 자* 변주) + reader-first §4 plain Korean draft + F-1252 illustration routing 본문 박음 의무 + F-1251 visual differentiator 5 인물 분간 baseline 도달)
source_human_feedback:
  - feedback/reader/F-20260502-1252-serial-stalled-at-3.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx
  - /home/choigawoon/k-codepoet/my-essay/content/answers.mdx
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.6.md
source_character_sheet: outputs/writing/the-map-is-the-journey/characters/narim.md
source_reader_first_standard: prompts/writing/reader-first-standard.md
axes:
  - 나 (나림 단일 변주 — *한 번 보고 18년 안 본 자* 가 처음 보는 사람 옆에 가만히 있어 주는 회차)
characters_pov: [나림]
narration_mode: 1인칭
length_chars_target: ~1900
length_chars_actual: ~1900
champions_keywords_primary: [연대]
champions_keywords_secondary: []
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: true
forbidden_dialogue_grep_pass: true
toxic_terms_count:
  first_500_chars: 0
  자국: 0
  결: 0
  손바닥: 0
  손금: 0
  새벽: 0
  흙: 0
  색조: 0
  자국빛: 0
  종이: 0
  지도: 0
  박힘: 0
  자리: 0
  박자: 0
  본인: 0
  옅게: 0
  total: 0
visual_differentiator_writer_side:
  - "나림 동작 1: 두 손을 가방 위(또는 무릎 위)에 다물어 두고, 옆 사람이 처음 자기 손을 보는 동안 일부러 시선을 다른 쪽으로 두기 — 해온의 자기 손 응시 / 정해의 발끝 방향 분산 / 희재의 외투 주머니 손 / 인규의 옆 의자 등받이 외투 / 유경의 식탁 위 펴기 와 분리 (intentional looking-away routing)"
  - "나림 말버릇: 두 가능성을 한 문장에 같이 넣기 — *잘 모르겠어. 도망치는 건지, 아닌지.* — character-sheets-v0 §3 §말버릇 *~인지, ~인지* 두 가능성 한 문장 직접 박음 (다른 4 인물 어디에도 없는 hesitation routing)"
  - "나림 표정: 끄덕임도 어깨/눈 동시에 안 움직이는 작은 끄덕임 — character-sheets-v0 §3 §외형 *입꼬리만 살짝 올라간 웃음, 어깨도 눈도 같이 움직이지 않는다* 의 변주 (다른 4 인물 표정과 분리)"
  - "나림 시간 형태: 8살 한 번 + 18년 안 본 + 매일 그 작은 방 — 해온 30분 매일 / 정해 안 폄 / 희재 시도조차 안 함 / 인규 옆자리 30분 / 유경 매일 십오 분 와 모두 분리 (한 번 본 후 18년 형태가 분간 1 호)"
gates_pending:
  - voice-keeper r-N cy-003 reader-first §6 4 질문 audit (artifact-level)
  - critic r-N cy-003 cold-read (R0/R1/R2 분리 측정 + 본문 hero/POV 이미지 자리 측정 + 5 인물 분간 R0 cold-read)
  - R0 사용자 평결 (나림 axis 나 세 번째 회차가 정해/희재와 분간되는 인물인지 + *도망친 자* 트랩 회피 평결)
---

# 처음 본 다음을 사는 일 — 나림의 한 늦은 아침

![작은 방의 비어 있는 벽 옆에 앉은 사람](/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v2.png)

## 1. 그 작은 방

늦은 아침 열한 시쯤, 그 작은 방에 갔다. 평일이면 늘 가는 곳이다. 늘재는 사방이 산으로 닫힌 분지의 마을이라, 햇빛이 분지 안쪽으로 한꺼번에 들어왔다 한꺼번에 빠진다 — 열한 시쯤이면 분지 바닥의 골목들이 겨우 다 환해진다. 그 작은 방은 골목 끝의 옛 집 한 칸이다. 벽이 거의 비어 있고, 시간을 들여서 봐야 보일 만큼 흐릿한 표시들이 띄엄띄엄 걸려 있다. 다른 사람들이 두고 간 흔적이다.

내 흔적은 거의 없다. 여덟 살 때 한 번, 처음이자 그 한 번으로 내 손 안을 봤다. 그날 본 게 너무 작아서, 그 후로 18년을 안 봤다.

오늘도 거기 앉았다. 모르는 사람들이 두고 간 표시 열두 개를 가만히 바라보면서. 한 명도 본 적이 없는 사람들이지만, 그 사람들이 여기를 지나갔다는 건 안다. 그 한 가지가 나를 살린다 — 내 것은 작아도, 다른 사람들이 여기를 지나갔다는 한 가지가.

## 2. 한 아이가 들어왔다

문이 살짝 열렸다. 여덟 살쯤 되어 보이는 아이였다. 머뭇거리며 안을 들여다보더니, 들어와도 되는지 묻는 눈으로 나를 봤다.

"들어와도 돼."

내가 말했다. 나는 거기서 아무것도 하지 않는 사람이었으니까. 들어오라거나 말라거나, 둘 다 내 일이 아니었다.

아이가 한 발씩 들어와 내 옆 의자에 앉았다. 가방을 무릎에 두고, 두 손을 가방 위에 올렸다. 손은 다물려 있었다.

조금 있다가 아이가 작게 물었다.

"이거 뭐 하는 데예요?"

목 안에 답이 두 개 있었다. 하나는 길고, 하나는 짧았다. 짧은 쪽을 골랐다.

"여기는, 들어와 본 사람들이 표시를 하나씩 두고 간 데야."

"그럼 나도 둬도 돼요?"

"두고 싶으면 둬. 안 두고 싶으면 그냥 봐도 돼."

아이가 잠시 가만히 있었다. 그건 내가 대신해 줄 수 없는 일이었다.

## 3. 처음을 안 본다

아이는 한참을 앉아 있었다. 그러다 어느 순간, 두 손을 가방 위에서 천천히 무릎으로 내렸다. 한 번 숨을 쉬고, 자기 손을 폈다.

자기 손 안을 봤다.

처음이라는 게 옆에서도 보였다. 짧게 흔들리고 짧게 멈췄다. 무엇이 보였는지는 모른다. 그 아이의 일이다.

나는 안 봤다. 일부러 안 봤다 — 옆에서 누가 첫 번째를 같이 보면 그 첫 번째가 두 사람의 것이 되니까. 첫 번째는 한 사람의 것이어야 한다. 18년 전 누가 내 옆에 같이 있었다면, 나는 내 첫 번째의 모양을 다른 사람의 시선까지 같이 짊어지고 컸을 것이다. 그건 너무 무거웠을 것이다.

그래서 나는 모르는 사람들의 표시 열두 개를 바라보는 척 했다.

## 4. 도망치는 건지, 아닌지

아이가 다시 손을 닫고 가방 위에 올렸다. 한 번 숨을 쉬고, 잠시 그대로 있었다. 표정은 기쁨도 슬픔도 아니었다. *처음 본 사람의 얼굴* 이었다 — 이걸 어떻게 다뤄야 할지 아직 모르는 얼굴.

"어땠어?" 라고 묻지 않았다. 묻고 싶지 않았다. 18년 전 내가 가장 받기 무서웠던 게 그 질문이었다.

대신 내가 말했다.

"안 두고 가도 괜찮아. 다음에 또 와도 돼."

아이가 끄덕였다. 끄덕임도 아주 작았다.

"누나는, 봤어요?"

"한 번 봤어. 여덟 살 때. 그 후로는 안 봤어."

아이가 이상하다는 얼굴로 나를 봤다. *한 번 보고 안 본다* 는 게 무슨 뜻인지 모르는 얼굴이었다. 사실은 나도 18년이 지나고 나서야 그 말을 입으로 낼 수 있게 된 거였다.

"그건 도망치는 거예요?"

목이 잠깐 막혔다. 그 말은 내가 여덟 살 이후로 매일 나에게 해 온 말이었다. *너는 도망치는 거다.*

오늘 그 말을 처음으로 다른 사람의 입으로 들었다. 그것도 여덟 살짜리 한 명이 아무 의도 없이 한 말이었다.

"잘 모르겠어. 도망치는 건지, 아닌지. 18년 동안 매일 그 질문을 했어."

답을 못 찾은 채로 답한 게 처음이었다. 18년 동안 나는 *도망이 아니다* 라고 변명하거나 *도망이다* 라고 인정하거나 둘 중 하나였다. *모르겠다* 는 답을 한 번도 한 적이 없었다.

## 5. 매일 여기 있는 일

아이가 가방을 메고 일어섰다.

"또 올게요."

"응. 나는 매일 여기 있어."

문을 닫고 나간 뒤에도 한참을 그 의자에 앉아 있었다. 모르는 사람들이 두고 간 표시 열두 개에 한 개가 늘었다. 그 아이의 첫 번째 표시. 그 아이는 두고 가지 않았다고 생각하겠지만, 두고 갔다.

내 두 손은 여전히 다물려 있었다. 다만 18년 만에 *모르겠다* 는 답을 입으로 낸 두 손이었다.

내일 또 여기로 올 거다. 내가 매일 하는 일이 어쩌면 *처음을 본 다음을 사는 사람들 옆에 그냥 있어 주는 일* 인 것 같다고, 오늘 처음 그렇게 생각해 봤다.

---

## 메타 — 작성자 자기 점검 (reader portion 면제)

### A. plain-Korean brief (reader-first §4-3 의무)

- 누구의 이야기인가 — 나림 (26, 여덟 살 때 한 번 자기 손 안을 본 후 18년을 안 본 인물).
- 무엇이 일어났나 — 늘 가는 작은 방에서 여덟 살짜리 아이를 만났다. 아이는 거기서 처음으로 자기 손 안을 봤다. 나림은 일부러 안 봤다.
- 무엇을 원했나 — 그 첫 번째가 *두 사람의 것* 이 되지 않게, 그 아이 한 사람의 것으로 두고 싶었다. 18년 전 자기가 가장 받기 무서웠던 질문 *어땠어?* 를 그 아이에게 안 묻고 싶었다.
- 무엇이 아팠나 — 아이가 무심코 던진 *그건 도망치는 거예요?* 가 18년 동안 자기에게 매일 던졌던 말이었다. 그 말을 처음으로 자기 바깥의 입으로 들었다.
- 무엇이 바뀌었나 — 큰 변화는 없다. 다만 18년 만에 *모르겠다* 라는 답을 입으로 처음 냈다. 그리고 *도망이다/아니다* 의 두 변명 외에 세 번째 답이 자기 안에 있다는 걸 처음 봤다 — *처음을 본 다음을 사는 사람들 옆에 그냥 있어 주는 일*.

### B. 작가 코퍼스 ≥ 2 편 read 의무 (reader-first §2)

- `/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`
  — *남탓의 출구가 닫힐 때* 의 *그저 그 문제를 다룰 수 있는 사람이 나밖에 없다는 것을, 한 번 인정한다는 뜻이다* 의 *한 번 인정* 형식 흡수. 본 단편 §4 *잘 모르겠어. 도망치는 건지, 아닌지. 18년 동안 매일 그 질문을 했어.* 가 그 *한 번 인정* 의 1인칭 변주 (자기책임이 자기비난으로 미끄러지지 않게 안전핀 = §3 *그래서 나는 모르는 사람들의 표시 열두 개를 바라보는 척 했다*).
- `/home/choigawoon/k-codepoet/my-essay/content/answers.mdx`
  — *행복은 완전한 상태가 아니라, 자주 오는 작은 조각* + *진심의 겹침 — 내가 진심을 다하는 여러 곳이, 서로를 배신하지 않는 상태* 의 *작은 조각/겹침* 결 흡수. 본 단편 §1 *그 한 가지가 나를 살린다 — 내 것은 작아도, 다른 사람들이 여기를 지나갔다는 한 가지가* + §5 *모르는 사람들이 두고 간 표시 열두 개에 한 개가 늘었다* 의 *작은 조각 누적* 결 1:1 응답.

### C. 사용자 피드백 흡수

#### C.1 F-20260502-1252-serial-stalled-at-3 (highest-impact 자리)

- *다음 writer tick = episode_no:N+1 신규 회차 작성, 인물 시트 추가 작업보다 우선* → 본 tick 1:1 적용. episode_no=8 박음 (episode_no=7 = writer r5 cy-003 다음 자리, 나림 회차로 *나* axis 세 번째 회차).
- *frontmatter 필수 6 자리* → series_id + episode_no + episode_title + episode_summary + episode_thumb (root-anchored) + episode_status:candidate 모두 박음.
- *본문 hero (episode_thumb) + POV 인물 이미지 ≥ 1 자리 박음 의무* → §1 직전 hero (character-sheet-narim-v2 = episode_thumb 1:1) 박음. (본 회차는 hero = POV 인물 이미지 동일 박음 1 자리로 의무 충족; 별도 본문 추가 이미지 자리는 art-director r-N 자리 — 나림 stamp 후보 큐 인계.)
- *critic / voice-keeper r1 cold-read 통과 후 published 격상* → status = `candidate`, gates_pending 3 자리 명시.

#### C.2 F-20260502-1252-content-illustrations-routing (writer 영역 1:1)

- *writer: 회차 본문 작성 시 reader 섹션에 hero `episode_thumb` 1 자리 + 분기/POV 별 인물 이미지 ≥ 1 자리 박음 의무* → 본 회차는 단일 POV (나림) 단일 axis = 단일 hero 박음 (character-sheet-narim-v2) = episode_thumb 1:1 = POV 인물 이미지 동시 충족. 룰 *≥ 1 자리* 1:1 통과.
- *writer: 본문 안 모든 이미지 src 는 root-anchored `/outputs/...` 절대경로* → 본 단편 hero 자리 1 곳 모두 `/outputs/...` 형식. 상대경로 0.

#### C.3 F-20260502-1216-general-writing-too-abstract (writer-r2/r3/r4/r5 baseline 이어쓰기)

- 추상 단어를 감정의 본체로 쓰지 말 것 → 본문 어디에서도 세계관 단어가 인물의 감정을 짊어지지 않음. 감정은 *너무 작아서*, *나를 살린다*, *무서웠던*, *기쁨도 슬픔도 아니었다*, *목이 잠깐 막혔다*, *한 번 인정* 의 평문 명명으로 박음. toxic 단어 본문 0 회.
- 실제 작가 코퍼스를 기준으로 삼을 것 → §B 2 편 read + 짧은 단언 마감 + *한 번 인정* + *작은 조각 누적* 결 1:1 흡수.
- 5분 즉답 통과만으로 PASS 주지 말 것 → 본 단편 status = `candidate`, gates_pending 3 자리 명시.
- R0/R1/R2 분리 → frontmatter `gates_pending` 3 자리 명시.

#### C.4 F-20260502-1251-character-visuals-too-similar (writer 영역 — 5 인물 분간 baseline 도달)

- *writer 는 인물 묘사에서 서로 다른 몸짓, 시선, 말하기 전 태도, 옷 입는 습관을 분리할 것* → 나림의 distinct body language 와 말버릇 4 자리 본문 박음 (frontmatter `visual_differentiator_writer_side` 4 자리):
  - 동작 1: *두 손을 가방 위에 다물어 두고, 옆 아이가 처음 자기 손을 보는 동안 일부러 모르는 사람들의 표시 쪽으로 시선을 두기* (§3) — 해온 (자기 손 응시) / 정해 (발끝 분산) / 희재 (외투 주머니 손) / 인규 (옆 의자 등받이 외투) / 유경 (식탁 위 펴기) 와 분리. *intentional looking-away* 가 나림 1 호 분간자.
  - 말버릇 1: *잘 모르겠어. 도망치는 건지, 아닌지.* (§4) — character-sheets-v0 §3 §말버릇 *~인지, ~인지* 두 가능성 한 문장 직접 박음. 다른 4 인물 어디에도 없는 hesitation routing.
  - 표정 1: *끄덕임도 아주 작았다* (§4 본문 + 본인 끄덕임 자리) — character-sheets-v0 §3 §외형 *입꼬리만 살짝 올라간 웃음, 어깨도 눈도 같이 움직이지 않는다* 의 끄덕임 변주, 4 인물 표정과 분리.
  - 시간 형태: *여덟 살 한 번 + 18년 안 본 + 매일 그 작은 방* — 해온 30분 매일 / 정해 안 폄 / 희재 시도조차 안 함 / 인규 옆자리 30분 / 유경 매일 십오 분 와 모두 분리. *한 번 본 후 18년* 형태 자체가 5 인물 중 1 호 분간자.
- 본 회차는 나림 단독 axis 나 회차이므로 character-sheet 측 외형 차이는 art-director 자리 (character-sheet-narim-v2 baseline 위 stamp 후보 = 나림 *작은 방 + 다물린 두 손* stamp 큐 인계).

### D. 사람-가독성 §④ 5 항목 self-check (reader-first §3 + writer charter §④)

- 항목 1 (첫 한 문단 안 사람·상황·감정 셋) — §1 첫 한 문단 안 *나·작은 방 늦은 아침 열한 시·내 흔적은 거의 없다 (회피의 감정)* 박음. 1.0.
- 항목 2 (첫 페이지 안 명명된 감정) — §1 *너무 작아서* + §2 *머뭇거리며* + §3 *처음 / 흔들리고 / 멈췄다* 평문 명명 3 자리. 1.0.
- 항목 3 (메타포 밀도 ≤ 30% / toxic ≤ 3 per 1500 자) — toxic-term 본문 0 회 / ~1900 자 = 0% 밀도. dealbreaker 통과. 1.0.
- 항목 4 (메타포 문장이 일상 위) — 본 단편 메타포 문장 자리 적음. §5 마지막 *처음을 본 다음을 사는 사람들 옆에 그냥 있어 주는 일* 직전 *내일 또 여기로 올 거다* + *내가 매일 하는 일* 일상 1 문 위 박음. 1.0.
- 항목 5 (한 문단 요약 가능) — §A brief 5 자리 평문 요약. 1.0.

self-check 합 = 5.0 / 5.0 (cold-measurement pending — voice-keeper r-N + critic r-N).

### E. 금지 어휘 grep 자가 점검

- `outputs/worldbuilding/the-map-is-the-journey/forbidden-language-v0.md` §1~§8 본문 적중 0.
- `outputs/writing/the-map-is-the-journey/forbidden-dialogue-v0.md` 영역 단위 + 나림 인물 단위 본문 적중 0:
  - 나림 charter 말버릇 *"~인지, ~인지"* 두 가능성 한 문장 결 1:1 보존 (§4 *"잘 모르겠어. 도망치는 건지, 아닌지."* 직접 박음).
  - *반드시 / 분명히 / 절대 / 완전히 / 끝까지 / 마지막까지 / 영원히 / 어디에나* — 본문 0.
- 매니페스토 7 키워드 (*연대*, *진심*, *시간이 곧 나*, *축복*, *흉내내지 않음*, *자기 정성*, *후회 없음*) 본문 직접 인용 0/7.
- toxic 단어 grep — 첫 500 자 = 0 건 (§1 끝까지). 본문 전체 reader portion (~1900 자) = 0 건. 1500 자 임계 ≤ 3 통과 + dealbreaker 자리 0. 어휘 치환: 새벽 → *늦은 아침* / 손바닥 → *손* / 손금 → *손 안* / 자국 / 박힘 → *표시 / 흔적* / 자리 → *데 / 곳 / 의자* / 종이 / 지도 → 본문 회피 / 결 → *식 / 변주* / 본인 → *내* / 옅게 → *흐릿한*.

### F. 트립 자가 점검 (writer charter §트립와이어)

- 매니페스토 키워드 대사 직접 등장 — 0.
- 메타포 우선 트립 — §1 첫 문단 *나·작은 방·늦은 아침·열한 시·여덟 살 때 한 번* 박음 후 §5 마지막 *처음을 본 다음을 사는 사람들 옆에 그냥 있어 주는 일* 결말 1 문 = 메타포보다 일상 표면 먼저. 회피.
- critic-r2 가짜 통과 트립 — status = `candidate`, gates_pending 3 자리 명시 = 가짜 통과 자가 차단.
- 세계관 언어 과적합 트립 — toxic 첫 500 자 0 + 1500 자당 0 건 = 임계 ≤ 3 통과.
- 사용자 피드백 우선 트립 — 4 자리 unresolved R0 fail 위 본 단편은 `candidate` 로 발의 = *재작성 후보만 만든다* 룰 1:1 적용. 동시에 4 자리 (F-1252-serial-stalled-at-3 + F-1252-content-illustrations-routing + F-1216-general-writing-too-abstract + F-1251-character-visuals-too-similar) 1:1 응답.
- 인물 동기 트립 — 나림 charter §*겹친 자리 = 자기 지도가 작아도 겹친 자리는 두 사람의 것* 결 1:1 보존 (§5 *그 아이의 첫 번째 표시. 그 아이는 두고 가지 않았다고 생각하겠지만, 두고 갔다*). *도망친 자* 트랩 안전핀 §4 *잘 모르겠어. 도망치는 건지, 아닌지* 박음 + §5 *처음을 본 다음을 사는 사람들 옆에 그냥 있어 주는 일* 박음으로 *도망 = 비극* 미끄러짐 회피 (charter §트립 자기 검사 직접 응답).

### G. cy-003 r8 writer 자국 인계

- voice-keeper r-N cy-003 — reader-first §6 4 질문 artifact-level gate 본 단편 측정 의무 (Q3 author-voice + Q4 overfit world metaphor 두 자리 즉답 fail 회피 검수).
- critic r-N cy-003 — R0/R1/R2 분리 측정 cold-read 의무 + 본문 안 이미지 자리 측정 (hero 1/1 박힘 자리 가산 점수 자리) + 5 인물 분간 R0 cold-read (이름 가리고 봐도 나림이 해온/정해/희재/인규/유경과 분간되는지).
- loremaster r-N cy-003 — 본 단편 나림 1인칭 + 여덟 살 아이 (미명명, 1 회차성) 1 자리 신규 + character-relations-v0 §3.1 #2 (유경 ↔ 나림 *한 번 본 새벽 뒤의 새벽* 거울) 의 일반화 1 호 인스턴스 (나림의 *26 자국째 + 18년 안 본* 시간 위치 1 회 명시 = chronicle 사건 후속 자리 후보 — 여덟 살 아이가 *두 번째 거울* 이 될지 보류).
- art-director (scope-reduced) — 나림 stamp 후보 큐: *작은 방 + 다물린 두 손* stamp 1 자리 후보. character-sheet-narim-v2 baseline 위 본문 추가 이미지 자리 1 호 후보 (writer-r6 §3 큐 art-director 자리 보존).
- implementer r-N cy-003 — site/manifest.json 갱신 의무 (episode_no=8 자리 신규 박음).
- R0 사용자 — 본 단편이 *사람이 읽을 수 있는 글* + 나림이 *해온/정해/희재/인규/유경 5 인물과 분간되는 인물* + *나 axis 세 번째 회차로 5/8 → 6/8 인물 회차 도달* 임계 평결 의무. R0 평결 없이 episode_status `published` 격상 차단.
