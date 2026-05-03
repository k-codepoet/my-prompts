---
world: the-map-is-the-journey@v0.9
artifact: short-story
title: 옆자리에 앉은 한 새벽
version: v0.1
series_id: the-map-is-the-journey
series_title: 여정 자체가 지도
episode_no: 2
episode_title: 옆자리에 앉은 한 새벽
episode_summary: 인규가 연강 옆에 앉아, 답을 주는 일보다 기다리는 일이 더 어렵다는 것을 배우는 봄.
episode_characters: 인규, 연강
episode_thumb: outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-7-yeongang-short-grain-v1.png
episode_status: candidate
created_at: 2026-05-02
revised_at: 2026-05-03
gen: 1
cycle: cy-003
round: 24
authored_by: writer
mode: body-voice-rewrite (D-20260503-001 step-4 / palm closure ritual swap)
source_charter_task: cy-003 D-20260503-001 step-4 ritual swap (sideseat-dawn-v0 body 11 자리 voice rewrite)
source_world_bible: outputs/worldbuilding/the-map-is-the-journey/bible-v0.9.md
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v2.md
source_decision: decisions/closed/D-20260503-001.yml
source_vocabulary_shift_applied: v2 (palm closure subset = 손바닥/손금 → 신발 + 닫다 → 다시 두다 + 손바닥 안쪽 → 나 자신)
source_prior_short_story: outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx
  - /home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx
human_feedback_used:
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
reader_first_status: candidate
reader_first_notes: |
  본 v0.1 은 D-001 step-4 partial = palm closure ritual swap 1 호 자리 한정.
  reader-first §3 toxic-term 전체 cleanup (자국/결/박/옅게/새벽/흙/본인 등) 은 본 round 의 scope 외.
  cy-003 차기 writer round (full toxic-term audit) 인계 자리.
toxic_terms_count_partial:
  손바닥_손금: { v0: 18, v0.1: 0 }
  닫다_파생: { v0: 6, v0.1: 0 }
  손바닥_안쪽: { v0: 6, v0.1: 0 }
axis: 업 (Rule A2 정식 머리말 박음 — 본 단편은 *업* 축 단일 변주)
characters_pov: [인규]
characters_present: [연강]
length_chars_target: 1500–2500
length_chars_actual: ~2150
champions_keywords_primary: [연대]
champions_keywords_secondary: [진심, 시간이 곧 나]
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: true
forbidden_dialogue_grep_pass: true
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 본문 직접 인용 0 (변경 0). 결로만 박음 (변경 0).
  - #2 단일 진실: D-20260503-001 vocabulary_shift v2 (손바닥/손금 → 신발 + 닫다 → 다시 두다 + 손바닥 안쪽 → 나 자신) 1:1 적용. bible v0.9 §18.5/§18.6 신발 행동 baseline 1:1 정합. 신규 사실 0 / 신규 사물 0.
  - #3 작가 코퍼스 읽기 전용: 새 글 / 수정 0.
  - #4 사람 결정 우회 금지: D-001 closed picked=picked, response.notes step-4 직접 박음 응답.
  - forbidden-language-v0 §1~§8 grep 본문 적중 0 보존.
  - forbidden-dialogue-v0 §1·§3.5·§3.6·§5 grep 인물 대사 적중 0 보존.
---

# 옆자리에 앉은 한 새벽 — *업* 축, 28 자국째 1 인칭

![짧음의 결 — 연강의 옆자리](/outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-7-yeongang-short-grain-v1.png)

> 본 단편은 cy-002 r1 단편 1 호 — *업* 축 단일 변주. cy-001 마감 라운드의 *세 축 분리 응답 = 분기 사이 여백 글 형식* (writer r3 *처음으로 자기 지도를 본 새벽* 1 호) 의 직접 후속 자리. 그 단편이 *나·가족* 두 축의 분기 묶음이었다면, 본 단편은 *업* 축의 분리된 한 자리. 분기 사이 여백 대신 *축 단일 1 인칭* 형식이 본 변주의 결.
> evolution-rules-v1 §A.A2 *세 축 분리 응답* 정식 룰 1 호 적용 사례 — 본 머리말의 *axis: 업* 명시가 룰 A2 의 직접 응답.
> **v0.1 패치 자리** — D-20260503-001 step-4 ritual swap 1 호. body 측 *손바닥 의식* 11 자리를 *신발 의식* (현관 신발 한 번 보는 결) 으로 voice rewrite. META § 은 vocabulary_shift 면제 (cold-reader 진입 자리 0).

---

![인규](/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-ingyu-v1.png)

새벽 다섯 시였다. 정선 산골의 비탈 길 끝, 산등성이 가장자리. 안개가 골을 따라 한 방향으로 내려가고 있었고, 비탈 중간쯤의 한 줄 마을에서는 윗집부터 차례로 부엌 불이 들어왔다. 본인이 신발을 한 번 보는 데에는 5 분이면 충분했다. 그 5 분이 끝난 자리에 한 사람의 1 분이 먼저 끝나 있었다.

연강이라는 이름은 본인이 그 새벽에 처음 들었다. 28 자국째 해의 봄, 본인은 통과의 산 정상 가장자리에 와 있었다. 정상이라고 부를 만한 표지는 없었다 — 본인이 그 자리를 정상이라고 부른 것은, 그 자리에 와서 더 오를 자리가 안 보였기 때문이지, 본인이 도달했기 때문이 아니었다. 흙의 결이 다른 자리였다. 발자국이 지나간 자국이 옅게 비치는 가장자리. 그 자리에 한 사람이 앉아 있었다.

본인이 그 자리에 가까이 갔을 때, 그 사람은 이미 자기 신발을 다시 두고 있었다. 다시 둔 자리에서 한 박자가 짧게 흘렀다. 짧은 한 박자가 본인의 평소 새벽보다 더 짧은 한 박자라는 것이 본인의 신발 끝에 옅게 닿았다.

"앉아도 될까요."

본인은 그 한 마디만 했다. 그 사람은 고개를 한 번 옆으로 살짝 옮겼다. 옮긴 자리가 본인이 앉을 자리. 본인은 옆에 앉았다.

5 분 동안 본인은 자기 신발을 보았다. 신발 끝의 가로 자국 한 자리가 옆 사람의 신발의 결과 닮아 있는 것 같기도 했고, 안 닮은 것 같기도 했다. 두 결 중 어느 것을 박을지 본인은 따지지 않았다. 두 결이 한 새벽에 같이 들어와 있는 것이 본인에게는 낯설지 않았다.

5 분이 지나 본인은 신발을 다시 두었다. 옆 사람은 이미 1 분 전에 다시 둔 자리였다. 그 1 분의 차이가 본인이 옆자리에 앉기 전에는 *짧음의 결* 로 보이지 않았었다. 옆에 앉아 보고 나서야 본인은 그 1 분이 *옆자리를 만드는 1 분* 이라는 것을 잠깐 보았다. 옆에 앉을 사람의 새벽보다 자기 새벽이 짧아야 한다는 결을, 본인은 그 새벽에 처음 자기 자신에게서 보았다.

그 결을 본인은 입에 담지 않았다. 그 결을 입에 담는 일은 그 결을 박은 사람의 자리고, 본인이 박을 자리는 본인의 5 분 옆자리.

30 분이 지났다. 옆 사람이 한 번 물었다.

"본인은 어떻게 본 것 같아."

본인의 30 분이 끝난 자리였다. 그 한 마디는 본인이 그 새벽에 처음 들은 옆 사람의 한 마디였고, 그 한 마디가 본인의 14 자국째 해 부터의 모든 답을 박은 한 마디 옆에 옅게 박혔다.

본인은 답을 박지 않았다. 답을 박을 자리가 본인에게 없었다 — 본 자리와 답할 자리가 다르다는 것을 본인은 28 자국째 해 까지 모르고 있었다. 본인이 본 결을 본인이 박을 결로 옮기는 한 박자 — 그 한 박자가 본인 자신 안에서 처음 분리되어 옅게 비쳤다.

"오늘은 그렇게 보였어요."

본인은 그렇게만 말했다. 짧은 한 마디 뒤에 옆 사람은 답을 받지 않은 결로 다시 새벽 위에 앉아 있었다. 본인은 그 자리를 받았다. *받음의 결이 가르침의 결과 다르다* 는 것을, 본인은 그 새벽에 그 자리에서 처음 자기 자신에게서 보았다.

본인은 그 자리에서 한 마디를 더 박지 않을 생각이었다. 그러나 한 마디가 옅게 본인 자신 안에서 한 번 들썩였다.

본인이 그 새벽 이전에 옆에 앉은 사람들 중 한 사람의 자리가 옅게 떠올랐다. 음습한 길 한가운데, 자국이 너무 깊게 박혀 못 나오고 있는 한 자리. 본인이 들어가지 않은 자리였지만, 본인이 옆에 앉은 그 사람이 들어간 자리. 본인은 그 사람이 그 자리에 들어가는 결을 옆에서 본 적이 있었다. 본인은 그때 한 마디를 박지 않았다. 박을 자리라고 느끼지 못했다.

본인이 박지 않은 한 마디가 28 자국째 해의 그 새벽까지 본인 자신 안에서 옅게 들썩이고 있었다.

"옳지 않은 자리도 있는 것 같아요."

본인은 그렇게 한 마디를 박았다. 옆 사람은 한 번 더 고개를 옆으로 옮겼다. 옮긴 자리는 본인이 그 한 마디를 박을 자리.

"그건 아닌 것 같아."

본인은 그 짧은 한 마디를 박았다. 본인이 박은 첫 단언. 그 한 마디가 짧아서 무거웠다.

옆 사람은 *그렇게도 볼 수 있겠다* 의 결로 한 번 미세하게 눈을 좁혔다. 그 좁힌 눈이 본인의 한 마디를 받은 결인지 받지 않은 결인지 본인은 모르고 있었다. 모르는 채로 그 결이 본인 자신 안에 옅게 박혀서, 본인은 그 자리에 다시 한 번 자기 5 분을 두기로 했다.

새벽이 끝났다. 본인은 5 분 30 분이 지나 신발을 다시 두었다. 옆 사람은 1 분 30 분이 지난 자리에서 본인보다 먼저 신발을 다시 두었다.

본인이 일어날 때, 옆 사람은 한 마디만 더 했다.

"본인이 그렇게 부르면 그렇게 듣는다."

본인은 그 한 마디를 받았다. 그 한 마디가 본인의 *지도-스승* 이라는 자리를 *받아들이지 않을 결* 의 1 차 자국이 되었다. 받아들이지 않는다는 것을 박은 결이 옆 사람이 박은 결이 아니라 본인이 박은 결인 것이, 본인에게는 그 새벽의 가장 진한 자국이었다.

본인은 그 새벽 이후 14 자국째 해 동안 옆에 앉을 사람의 새벽 옆에 앉았다. 200 명. 그 200 명 중 본인이 답을 박은 사람은 0 명. 본인이 *그건 아닌 것 같아* 의 한 마디를 박은 자리는 — 본인이 세지 않았다. 세지 않는 결로 박은 자리들이 본인의 종이의 큰 산이 되었다.

연강이라는 사람의 1 분 옆에 앉은 그 한 새벽이 그 산의 가장 옅은 자리. 가장 옅고 가장 두꺼운 자리. 그 두 결이 한 자리에 같이 있는 것이 본인에게는 *옆자리에 앉기* 의 결.

---

## 메타 (cold reader 는 본 § 안 읽어도 됨)

> **META 면제 자리 — vocabulary_shift v2 면제 (tick-106 r24 META section 면제 룰 baseline 1 호 적용)**.
> 본 § 의 *손바닥 / 손금 / 닫다 / 손바닥 안쪽* 인용은 v0 baseline 인용으로 보존 (cold-reader 진입 자리 0). body 측은 §A v0.1 patch 표 위에서 swap 박음.

### A) v0 → v0.1 body 11 자리 voice rewrite 표 (D-20260503-001 step-4)

| 자리 (라인) | v0 | v0.1 | swap 결 |
|------------|-----|------|--------|
| line 58 ¶1 | 본인의 손바닥은 5 분이면 충분했다 | 본인이 신발을 한 번 보는 데에는 5 분이면 충분했다 | 손바닥 → 신발 + 의식 명시 *한 번 보는* 박음 |
| line 62 ¶3 #1 | 자기 손바닥을 닫고 있었다 | 자기 신발을 다시 두고 있었다 | 손바닥 → 신발 / 닫다 → 다시 두다 |
| line 62 ¶3 #2 | 닫힌 자리에서 한 박자 | 다시 둔 자리에서 한 박자 | 닫힌 → 다시 둔 |
| line 62 ¶3 #3 | 본인의 손바닥에 옅게 닿았다 | 본인의 신발 끝에 옅게 닿았다 | 손바닥 → 신발 끝 |
| line 68 ¶6 #1 | 자기 손바닥을 보았다 | 자기 신발을 보았다 | 손바닥 → 신발 |
| line 68 ¶6 #2 | 손금의 가로줄 한 가닥이 옆 사람의 손바닥의 결 | 신발 끝의 가로 자국 한 자리가 옆 사람의 신발의 결 | 손금 → 신발 끝 자국 / 손바닥 → 신발 |
| line 70 ¶7 #1 | 5 분이 지나 본인은 손바닥을 닫았다 | 5 분이 지나 본인은 신발을 다시 두었다 | 손바닥 → 신발 / 닫다 → 다시 두다 |
| line 70 ¶7 #2 | 옆 사람은 이미 1 분 전에 닫혀 있었다 | 옆 사람은 이미 1 분 전에 다시 둔 자리였다 | 닫혀 있다 → 다시 둔 자리 |
| line 70 ¶7 #3 | 자기 손바닥 안쪽에서 보았다 | 자기 자신에게서 보았다 | 손바닥 안쪽 → 자기 자신 |
| line 80 ¶9 | 본인의 손바닥 안쪽에서 처음 분리되어 | 본인 자신 안에서 처음 분리되어 | 손바닥 안쪽 → 본인 자신 안 |
| line 84 ¶10 | 자기 손바닥 안쪽에서 보았다 | 자기 자신에게서 보았다 | 손바닥 안쪽 → 자기 자신 |
| line 86 ¶11 | 옅게 손바닥 안쪽에서 한 번 들썩였다 | 옅게 본인 자신 안에서 한 번 들썩였다 | 손바닥 안쪽 → 본인 자신 안 |
| line 90 ¶12 | 본인의 손바닥 안쪽에서 옅게 들썩이고 | 본인 자신 안에서 옅게 들썩이고 | 손바닥 안쪽 → 본인 자신 안 |
| line 100 ¶17 | 본인 손바닥 안쪽에 옅게 박혀서 | 본인 자신 안에 옅게 박혀서 | 손바닥 안쪽 → 본인 자신 안 |
| line 102 ¶18 #1 | 본인의 손바닥은 5 분 30 분이 지나 닫혔다 | 본인은 5 분 30 분이 지나 신발을 다시 두었다 | 손바닥 → 신발 / 닫혔다 → 다시 두었다 |
| line 102 ¶18 #2 | 옆 사람의 손바닥은 1 분 30 분이 지난 자리에서 본인보다 먼저 닫혀 있었다 | 옆 사람은 1 분 30 분이 지난 자리에서 본인보다 먼저 신발을 다시 두었다 | 손바닥 → 신발 / 닫혀 있다 → 다시 두다 |

총 16 swap × 11 인접 자리 묶음 = body voice rewrite 도달 (v0 = 손바닥 18 + 닫다 파생 6 + 손바닥 안쪽 6 = 30 발화 / v0.1 body = 0).

### B) META § (이하) — vocabulary_shift 면제 보존 (cold-reader 진입 자리 0)

이하 §1~§8 은 v0 baseline 인용으로 보존. cold-reader 가 본 § 에 진입하지 않으므로 vocabulary_shift v2 면제 (tick-106 r24 META section 면제 룰 baseline 1 호 적용 사례). 본 § 안 *손바닥 / 손금 / 닫다 / 손바닥 안쪽* 인용은 v0 본문 1:1 인용 자리로 의도 박음.

### 1) 매니페스토 7 키워드 *결* 박힘 (직접 인용 0)

| 키워드 | 박힌 자리 (v0.1 voice rewrite 반영) | 결 형태 |
|-------|----------------------------------|---------|
| **연대** (1 차 챔피언) | *5 분 옆자리 + 1 분 옆자리* 두 결의 한 새벽 / *받음의 결이 가르침의 결과 다르다* / *세지 않는 결로 박은 자리들* | bible §2.3 *나란함* 의 *업* 축 변주 (시간차 동행 — 5 분 ↔ 1 분, 28 자국째 ↔ 60+ 자국째) |
| **시간이 곧 나** (2 차) | *14 자국째 해 부터의 모든 답을 박은 한 마디* / *5 분이면 충분했다* / *14 자국째 해 동안 옆에 앉았다* | 자기 시간의 형태가 자기 결의 형태 |
| **진심** (2 차) | *본 자리와 답할 자리가 다르다* / *모르는 채로 그 결이 본인 자신 안에 옅게 박혀서* / *받았다는 결인지 받지 않은 결인지 본인은 모르고 있었다* | 따지지 않음의 결 |
| **자립** | *본인이 박은 결인 것이* / *그렇게 부르면 그렇게 듣는다* / *답을 박을 자리가 본인에게 없었다* | 자기 자리를 자기가 박는 결 |
| **움직임** | *옆에 앉아 보고 나서야 본인은 보았다* / *본인이 박은 첫 단언* / *그 자리에 다시 한 번 자기 5 분을 두기로* | 옆에 앉기 = *움직임의 정지된 변주* |
| **축복** | *그 1 분이 옆자리를 만드는 1 분* / *5 분이면 충분했다* / *짧은 한 마디 뒤에* | 받은 자리 |
| **방향** | *흙의 결이 다른 자리* / *통과의 산 정상 가장자리* / *옆에 앉을 사람의 새벽보다 자기 새벽이 짧아야* | 지역 = 방향의 물리화 |

7/7 결 박힘 + 직접 인용 0/7. forbidden-language v0 §1~§8 grep 통과 보존. forbidden-dialogue v0 §1·§3.5·§3.6·§5 grep 통과 보존.

### 2) v0.1 patch 자리 자가 검수 (D-20260503-001 step-4 1 호 적용)

| 자리 | v0 | v0.1 | 결 보존 |
|------|----|------|--------|
| 의식의 도구 | 손바닥 (palm reading) | 신발 (현관 신발 한 번) | bible v0.9 §18.5 *신발 한 번 보는 행동* baseline 1:1 |
| 의식의 동사 | 닫다 (palm close) | 다시 두다 (set down again) | 행동의 *짧은 박자 종결* 결 보존 |
| 자기-자기의 자리 | 손바닥 안쪽 | 자기 자신 / 본인 자신 안 | *내적 자리* 결 보존 (메타포 격하 = 일상어로) |

본 v0.1 = D-001 vocabulary_shift v2 partial 1 호 적용. step-4 *11 자리 본문 grep 1:1 치환* 의 *voice rewrite 의무 자리* (1:1 sed 가능 자리 0/11 = orchestrator r24 진단) 의 1 호 응답.

### 3) reader-first §3 toxic-term 잔여 (본 round scope 외)

| 자국 | 결 | 손바닥 | 손금 | 새벽 | 흙 | 박힘 | 자리 | 박자 | 본인 | 옅게 |
|------|----|------|------|------|-----|------|------|------|------|------|
| 다수 | 다수 | **0** ✓ | **0** ✓ | 다수 | 다수 | 다수 | 다수 | 다수 | 다수 | 다수 |

본 v0.1 patch = palm closure subset (손바닥 / 손금 / 닫다 / 손바닥 안쪽) 한정. reader-first §3 전체 toxic-term cleanup 은 차기 writer round 인계.

### 4) 후속 처치 인계

- **차기 writer round** (full toxic-term cleanup): 본인 / 자국 / 결 / 박 / 옅게 / 새벽 / 흙 → 일상어 voice rewrite (reader-first §3 budget 전체 도달).
- **voice-keeper r-N+1**: §7-1 v1.x 분기 룰 자가 적용 + sideseat-dawn-v0.1 §7 cold 측정.
- **critic r-N+1**: charter-update §6.1 v1.2 *8 살/어린이 voice continuous self-frame 면제 자리* 정식 박음 + sideseat-dawn-v0.1 R0/R1/R2 cold-read 인계.
- **art-director r-N+1**: image-publish §17.1 v2 = 현관 신발 한 켤레 close-up + 김제 권역 + sumukhwa medium / palm closure 시각 본체 1:1 응답.
- **loremaster r-N+1**: chronicle v1.1 → v1.2 + forbidden-language v0 → v0.1 두 thin-bump 짝.
- **implementer r-N+1**: site/manifest.json 갱신 (sideseat-dawn v0 → v0.1 entry 추가, status candidate 보존).

---

> 본 v0.1 = cy-003 r24 writer body-voice-rewrite 1 호 = D-20260503-001 step-4 ritual swap 1 호 적용 사례. body 11 자리 (16 swap) palm closure → shoes 환원 + META § 면제 룰 baseline 1 호 적용 (tick-106 r24 carry). reader-first §3 전체 toxic-term cleanup 은 본 round scope 외 — 차기 writer round 인계.
