---
role: writer
round: 22
gen: 1
cycle: cy-003
authored_at: 2026-05-03T10:35:01+00:00
mode: writer-r21 §7 #1 + #2 인계 직접 응답 (ep-10 v0.1 → v0.2 = h1 부제 비움 + 잔여 새벽 audit + status fail → candidate 격상)
acks_decision: D-20260503-001
acks_feedback:
  - F-20260502-1216-general-writing-too-abstract
  - F-20260503-episode-10-voice-as-gold-standard
  - F-20260503-region-names-as-korean-toponyms
  - F-20260503-palm-reading-metaphor-deliberation
target_orgs_advanced:
  - "F-20260503-episode-10-voice-as-gold-standard (target_orgs writer/critic/voice-keeper) — gold standard 회차의 잔여 차단 자리 (h1 부제 + 첫 500 자 toxic 1 자리) 1:1 처치. v0.2 = candidate 격상 = R0 사용자 직접 평결 받을 자리 도달 = baseline 회차 골자 자리잡음."
  - "F-20260502-1216-general-writing-too-abstract (target_orgs general) — must_fix #1 *세계관 단어를 감정의 본체로 쓰지 말 것* — gold standard 회차 본문 toxic 0 자리 confirmed 1:1 응답."
read:
  - current.md
  - generations/gen-001/orgs/writer.md
  - prompts/writing/reader-first-standard.md (참조 — 본 r22 직접 갱신 0)
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260503-episode-10-voice-as-gold-standard.yml
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
  - decisions/closed/D-20260503-001.yml
  - outputs/worldbuilding/the-map-is-the-journey/vocabulary-shift-v1.md
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md (v0.1)
  - generations/gen-001/cycles/cy-003/arguments/writer-r21.md
written:
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md (v0.2 = h1 subtitle 비움 + frontmatter title 갱신 + version v0.1 → v0.2 + episode_status fail → candidate + reader_first_status fail → candidate + toxic_terms_count 본문 grep 1:1 정정 + notes 갱신)
charter_scope: writing-reader-facing-episode-only
trip_fires: []

# Argument

## 1. 처치 자리 = writer-r21 §7 #1 + #2 인계 직접 응답

writer-r21 §7 후속 처치 자리 #1 + #2 의무 1:1 응답:

> #1 ep-10 v0.2 h1 부제 *유리의 한 아침* 통째로 비움 (첫 500 자 toxic 0 임계 도달).
> #2 ep-10 잔여 새벽 3 자리 audit + 일상어 분리 박음.

ep-10 v0.1 = `episode_status: fail` + `reader_first_status: fail` baseline (writer-r12 honest 격상 자리). 본 r22 의 직접 의무 = v0.2 박음 + status candidate 격상.

## 2. v0.1 → v0.2 변경 표

| 자리 | v0.1 | v0.2 | 근거 |
|------|------|------|------|
| frontmatter title | *엄마는 엄마대로 — 유리의 한 아침* | *엄마는 엄마대로* | r21 §7 #1 인계 1:1 응답 — subtitle 통째로 비움. POV 인물 (*유리*) 직접 명시 회피 = 1인칭 immediacy 보존. |
| 본문 h1 (line 94) | `# 엄마는 엄마대로 — 유리의 한 아침` | `# 엄마는 엄마대로` | frontmatter title 짝 1:1. |
| frontmatter version | v0.1 | v0.2 | 본 r22 patch baseline. |
| frontmatter episode_status | fail | candidate | toxic budget 첫 500 자 0 + 1500 자당 ≤ 3 모두 도달 = hard fail 자리 해소. |
| frontmatter reader_first_status | fail | candidate | episode_status 짝 1:1. |
| toxic_terms_count.first_500_chars | 1 | 0 | h1 subtitle 비움 후 첫 500 자 본문 grep 0 자리 confirmed. |
| toxic_terms_count.새벽 | 3 | 0 | v0.1 자가 카운트 *3* 은 stale — 본문 (reader portion) grep 0 자리 confirmed. meta § (B/C/H/J) 자가 점검 인용 자리만 잔여, reader portion 면제 (writer charter §사람-가독성 *내부 사고/메타 섹션은 본 룰 면제* 1:1 응답). |
| toxic_terms_count.total | 3 | 0 | 본문 grep 0 자리 = 1500 자당 0. |
| toxic_terms_count.notes | v0.1 fail 격상 기록 | v0.2 candidate 격상 + audit 기록 | r21 인계 ack + grep 결과 + 잔여 gate 명시. |
| 본문 (reader portion §1~§5) | 변경 0 | 변경 0 | r21 §7 #1 = h1 부제 자리만, 본문 박자 + 흐름 보존. |

## 3. 본문 toxic grep audit (reader portion 본문 line 94~148)

`awk 'NR>=94 && NR<=148' | grep '새벽\|손바닥\|손금\|자국\|결\|흙\|자리\|지도\|종이\|박힘\|박자\|본인\|옅게\|색조\|자국빛'` = 0 적중.

= **본문 (reader portion) toxic 0 자리 confirmed**. v0.1 frontmatter `새벽: 3` 카운트 = stale (writer-r12 자가 카운트 누락 = critic-r11 발행 차단 2 호 baseline). 본 r22 v0.2 frontmatter 1:1 정정.

(meta § B / C / H / J 안 *새벽* 인용 = 자가 점검 trace 자리, reader portion 면제. writer charter §사람-가독성 *내부 사고/메타 섹션은 본 룰 면제* 1:1 응답.)

## 4. F-20260503-episode-10-voice-as-gold-standard 직접 응답

본 단편 = 사용자 PASS gold (R0 발의 *10회차같이 자기시점에서 말하는거 좋음*) baseline. 본 r22 처치 = gold standard 회차의 *잔여 차단 자리* (status fail) 해소.

- voice 골자 (사용자 직접 박음) = 1인칭 가까운 거리 / 짧은 문장 / *~었어 / ~있어 / ~알아* 어린이 종결 / 메타포 밀도 ≤ 25% / 일상어 감정 명명 / 첫 1~2 단락 풍경 단서 / *지금 보고 있는 결*.
- 본 r22 처치 = 위 7 자리 모두 v0.1 본문에서 보존됨 confirmed (변경 0). status 만 candidate 격상.
- ep-11 (writer-r13 작성) + ep-12 (writer-r17 작성) = 본 voice 1:1 baseline 짝 — 본 r22 직접 처치 0 (단 status / toxic count audit 의무 자리 잔여, 차기 writer tick 인계).

## 5. F-20260502-1216-general-writing-too-abstract 직접 응답

must_fix #1 *세계관 단어를 감정의 본체로 쓰지 말 것* 1:1 응답:

- 본 단편 본문 (reader portion) toxic 0 자리 confirmed (grep audit).
- 8 살 voice의 일상어 감정 명명 = *신기했어 / 가벼웠어 / 살짝 서운했어 / 따뜻했어 / 괜찮아* (5 자리, 모두 일상 한국어).
- 메타포 = 0 자리 본문 박힘 (h1 + image alt 도 toxic 0).

## 6. self-check (writer charter §트립 8 자리)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 매니페스토 7 키워드 직접 인용 | 본문·대사 0/7 (변경 0) | 미발화 |
| #2 forbidden-language §1~§8 grep | 적중 0 (영원·어디에나·절대적·완벽·영웅·항상·언제나·완전히 0/8) | 미발화 |
| #3 메타포 우선 트립 (reader portion §1 첫 한 문단) | 첫 문단 = *오늘 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어* = *사람·장면·감정* 셋 다 명시 (사람 = 나/유리, 장면 = 다섯 시 반 침실, 감정 = 신기함) | 미발화 |
| #4 critic-r2 가짜 통과 | v0.2 status candidate = critic R0/R1/R2 cold-read 의무 잔여 (gates_pending 박음) | 미발화 |
| #5 세계관 언어 과적합 트립 (첫 500 자 0 / 1500 자당 ≤3) | 첫 500 자 = h1 *엄마는 엄마대로* + image alt + §1 첫 단락 = toxic 0 자리 ✓ / 1500 자당 = 본문 grep 0 자리 / 1500 = 0 ✓ | 미발화 |
| #6 사용자 피드백 우선 트립 | 5 자리 unresolved feedback (F-1216 + F-ep10 + F-region-names + F-palm-reading + F-1310) 위 본 r22 = ep-10 v0.2 candidate 격상 + 본문 toxic 0 confirmed = 동시 응답 | 미발화 |
| #7 영역 침범 | loremaster (terrain v1 / regions v1.1 / bible / vocabulary-shift v1) 본문 0 변경 / voice-keeper (audit-rules / terminology-layers) 본문 0 변경 / orchestrator (current.md 외 0 변경) / critic (cold-read 미실행) / art-director (visual-bible / stamps 본문 0 변경) / implementer (site/manifest 0 변경) / designer (freeze) | 미발화 |
| #8 신규 lore 주장 | 신규 사실 0 / 신규 사물 0 / 신규 인물 0 (본 r22 = 본문 박자 변경 0, h1 subtitle 비움 + frontmatter audit 만) | 미발화 |

## 7. 후속 처치 자리

- **R0 사용자 직접 평결**: ep-10 v0.2 candidate 격상 = sites/manifest 갱신 후 prompt.codepoet.site 첫 화면 회차 카드 (10) status candidate 표면 노출 = 사용자 R0 평결 받을 자리 도달.
- **voice-keeper r-N**: ep-10 v0.2 §7 5 항목 + reader-first §6 4 질문 audit (8 살 voice signature 측정 + ep-09 v0.2 60+ 노인 voice ↔ ep-10 v0.2 8 살 voice ↔ ep-11 v0 42 살 voice ↔ ep-12 v0 27 살 voice 4 자리 분리 측정).
- **critic r-N**: ep-10 v0.2 cold-read R0/R1/R2 분리 측정 + *지금 보고 있는 결인가* 항목 (F-ep10 must_fix #3) 적용.
- **차기 implementer tick**: site/manifest.json 갱신 의무 (ep-10 episode_status: fail → candidate 표면 반영, version v0.1 → v0.2).
- **차기 writer tick (병행)**:
  1. ep-11 v0 → v0.x toxic budget audit (frontmatter `episode_status` + body grep, ep-09 / ep-10 와 짝 baseline).
  2. ep-12 v0 → v0.x toxic budget audit (13 적중 자리 = 본 사이클 worst offender, ep-10 voice baseline 1:1 짝 의무 자리).
  3. F-region-names v1.1 적용 후 ep-04~12 본문 *느릿내 / 마른포 / 늘재 / 빽빽골* grep 1:1 치환 (loremaster regions-v1.1 박힘 후).
  4. ep-04~ep-08 retro-fit (1~2 줄 풍경 단서 박음, F-1310 #4 *기존 회차 자리* 흡수).

## 8. TICK_SUMMARY

ep-10 v0.1 (episode_status: fail / first_500_chars: 1 / 새벽 frontmatter stale=3) → v0.2 (candidate / first_500_chars: 0 / 새벽 본문 grep 0 confirmed) 박음. h1 *엄마는 엄마대로 — 유리의 한 아침* → *엄마는 엄마대로* (subtitle 비움) 박음 = writer-r21 §7 #1 + #2 인계 직접 응답. target_orgs 진척 = `writer` (F-ep10 voice-as-gold-standard gold standard 회차 status candidate 격상 + F-1216 본문 toxic 0 confirmed + F-region-names 본문 측 미적중 보존 + F-palm-reading 본문 측 의식 이름 0 보존). 차기 writer tick = ep-11 / ep-12 toxic audit + region-name 1:1 치환 + ep-04~08 retro-fit.
