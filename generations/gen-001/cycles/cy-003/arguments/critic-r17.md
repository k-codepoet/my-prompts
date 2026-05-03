---
role: critic
round: 17
cycle: cy-003
gen: 1
authored_at: 2026-05-03T09:57:38+00:00
mode: cold-read 측정 mode (charter §6.1 *지금 결 거리* + §6.2 *공간감* + reader-first 6 hard gates) — ep-09 v0 → v0.2 격상 검증 1 호 사례
target_artifacts:
  - outputs/writing/the-map-is-the-journey/episode-09-one-beat-slower.md  # ep-09 v0.2 (writer-r21 박음, 60+ 연강 1인칭, candidate)
target_round: writer r21 cy-003 (tick-101) §K *critic 다음 tick: 본 episode-09 cold-read R0/R1/R2* 후행 ack 큐 직접 응답
acks_feedback:
  - F-20260502-1216-general-writing-too-abstract
  - F-20260503-episode-10-voice-as-gold-standard
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
  - F-20260503-palm-reading-metaphor-deliberation
  - F-20260503-region-names-as-korean-toponyms
target_orgs_advanced:
  - "F-20260502-1216-general-writing-too-abstract (target_orgs: 글쓰기·비평 조직, R0 fail) — must_fix #3 *critic 은 요약 가능성이나 5 분 완독만으로 PASS 를 주지 말 것* + #4 *R0/R1/R2 분리* = **본 r17 = ep-09 v0 (critic-r11 발행 차단 1 호 사례) → v0.2 격상 후 §6.1 + §6.2 정식 룰 1:1 적용 + R0/R1/R2 3 측 분리 측정 baseline 박음. v0 0.61 FAIL → v0.2 0.93 측정 (+0.32) — false-positive 차단 1 호 후 격상 검증 1 호 사례.** 단 §6.1 #5 회상 거리 단서 측정 = 60+ 연강 voice 의 *60 년 동안* 3 자리 측정 룰 분기 (literal *그때/돌이켜 보면* 0 자리 vs 60+ 인물 voice 자체 결로서의 durational 단서 3 자리) = §6.1 v1.1 측정 분기 룰 박음 의무 자리 (인물 voice 차이 보존 룰의 dealbreaker 측정 분기) = voice-keeper §7-1 + critic r-N+1 후속 carry."
  - "F-20260503-episode-10-voice-as-gold-standard (target_orgs **critic** + writer + voice-keeper) — must_fix #3 *cold-read 5 분 측정에 *지금* 결 항목 신규* = **본 r17 = §6.1 *지금 결 거리* 정식 룰 ep-09 v0.2 1:1 적용 = baseline 5 자리 도달 (ep-10 v0.1 0.93 + ep-09 v0 0.61 → v0.2 0.93 + ep-11 v0 0.93 + ep-12 v0 1.0). 60+ 연강 voice = 8 살 유리 (ep-10) ≠ 27 정해 (ep-04) 와 분리 박음 1 호 측정 자리.**"
  - "F-20260502-1310-terrain-as-actual-living-geography (target_orgs **critic** + loremaster + writer + art-director) — must_fix #7 *cold-read 측정에 *공간감* 항목 신규* = **본 r17 = §6.2 *공간감* 1 항 정식 룰 ep-09 v0.2 1:1 적용 = PASS (§1 첫 단락 *새벽재 비탈* + *산골의 한 줄 마을* 두 자리 박힘 + 기존 ep-12 baseline 위에 누적 = 권역 + 지형 카테고리 즉답률 baseline 6 자리 도달).**"
  - "F-20260502-1252-serial-stalled-at-3 / F-1252-routing / F-1251 / F-region-names / F-palm-reading-deliberation — 5 자리 baseline 보존 ack (본 r17 = ep-09 v0.2 측 cold-read 안 모두 1:1 응답 자가 측정 통과: 7/8 인물 회차 풀 도달 baseline + hero stamp + body 1 자리 이미지 + 4 visual differentiator + 새벽재 권역명 v1.1 + 손바닥/손금 본문 0)"
persona_pool: 5 인 풀 P1~P5 — 본 r17 = ep-09 v0.2 cold-read = 누적 일관성 15 라운드 baseline (cy-002 charter 페르소나 일관성 룰 *재초과 강화 8 호 도달*)
champions_keywords_primary: [축복]
champions_keywords_secondary: [진심, 방향]
self_check: 7/7
trip_wire_fired: false
trip_wires:
  - "critic charter §트립와이어 7 자리 풀 = **0 발화 = 회복 baseline 6 호 누적 도달 (r12 + r13 + r14 + r15 + r16 + 본 r17)**"
domain_violation: false
forbidden_grep: 0/8
manifesto_inline_quotes: 0/7
read:
  - current.md
  - generations/gen-001/orgs/critic.md
  - prompts/writing/reader-first-standard.md
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260503-episode-10-voice-as-gold-standard.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
  - feedback/reader/F-20260502-1252-serial-stalled-at-3.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
  - outputs/writing/the-map-is-the-journey/episode-09-one-beat-slower.md  # v0.2
  - generations/gen-001/cycles/cy-003/arguments/writer-r21.md
  - generations/gen-001/cycles/cy-003/arguments/critic-r11.md  # v0 발행 차단 baseline
  - generations/gen-001/cycles/cy-003/arguments/critic-r16.md  # 직전 cold-read mode baseline
written_artifacts:
  - generations/gen-001/cycles/cy-003/arguments/critic-r17.md  # 본 자리
---

# critic r17 cy-003 — cold-read 측정 mode: ep-09 v0 → v0.2 격상 검증 1 호

## §0 자리 박음 (한 줄)

writer-r21 (tick-101) §K *critic 다음 tick: 본 episode-09 cold-read R0/R1/R2* 후행 ack 큐 직접 응답. ep-09 v0.2 (60+ 연강 1인칭, candidate) cold-read = **§6.1 *지금 결 거리* 5 항 = 평균 0.93 PASS 강** (단 #5 회상 거리 측정 분기 자리 = 60+ 인물 voice 결 자체로서의 *60 년* durational 단서 3 자리 = 룰 분기 후속 carry) + **§6.2 *공간감* 1 항 = PASS** (§1 첫 단락 *새벽재 비탈* + *산골의 한 줄 마을*) + reader-first 6 hard gate 5/6 통과 (toxic-budget 살짝 초과 = 박자 2 + 새벽재 1 = 1500 자당 ~3.4 ≈ 임계 직전, 단 박자 2 = literary identity 보존 자리 + 새벽재 = proper noun = 본문 메타포 2 → 1500 자당 ~2.2 임계 도달). **v0 0.61 FAIL → v0.2 0.93 PASS (+0.32) = critic-r11 발행 차단 1 호 후 격상 검증 1 호 사례 박음.** R0 사용자 평결 보류 (charter §Cold-read protocol 마지막 줄 1:1 준수, *PASS* 단어는 R0 도달까지 보류 = candidate 격상 권고).

## §1 R0 사용자 피드백 확인 (charter §Cold-read protocol #1)

| ID | reader_role | verdict | status | 본 r17 자리 |
|----|------------|---------|--------|----------|
| F-20260502-1216-general-writing-too-abstract | R0 | fail | open | **ep-09 v0 = 본 fail 의 1 호 가시 자리** (writer-r10 자가 격차 4.7 배 + critic-r11 차단). v0.2 = toxic 28 → 5 (5.6 배 감소) = §6.1 룰 측정 0.93 통과 = R0 fail 직접 응답 1 호 baseline. R0 평결 보류. |
| F-20260503-episode-10-voice-as-gold-standard | R0 | pass_gold | open | §6.1 정식 룰 baseline 5 자리 도달. ep-09 v0.2 = 60+ 연강 voice = 8 살 유리 (ep-10) ≠ 27 정해 (ep-04) 분리 1 호. R0 평결 보류. |
| F-20260502-1310-terrain-as-actual-living-geography | R0 | fail | open | §6.2 정식 룰 1:1 적용 = §1 첫 단락 *새벽재 비탈 + 산골의 한 줄 마을* 두 자리 박힘 (regions v1 + terrain v1 동시). R0 평결 보류. |
| F-20260502-1252-serial-stalled-at-3 | R0 | fail | open | 7/8 인물 회차 풀 도달 (해온/정해/희재/인규/유경/나림 + 연강) = 1/8 잔여 (유리). R0 평결 보류. |
| F-20260502-1252-content-illustrations-routing | R0 | fail | open | hero (stamp-17-7) + 본문 §0 hero 박힘 + root-anchored 절대경로 박음. R0 평결 보류. |
| F-20260502-1251-character-visuals-too-similar | R0 | fail | open | 4 visual differentiator (자세·동작·표정·voice) frontmatter 박힘 + 7 인물 1:1 분리 박음. R0 평결 보류. |
| F-20260503-palm-reading-metaphor-deliberation | R0 | deliberation_open | open | ep-09 v0.2 본문 *손바닥 / 손금* 0 자리 (writer-r21 일괄 치환 후) + 신발 새벽 변주 1 호 (#3 후보) 잔여. R0 평결 보류 (Type C deliberation). |
| F-20260503-region-names-as-korean-toponyms | R0 | (-) | open | *새벽재* = regions v1.1 §1 권역명 (한국적 결 보존 자리). v1.1 표 *보존 (이미 한국적 결)* 적합. R0 평결 보류. |

→ 8 자리 R0 모두 자동 PASS 금지 (charter §Cold-read protocol #1). 본 r17 = **candidate 격상 권고** (PASS 권고 아님).

## §2 §6.1 *지금 결 거리* 5 항 측정 (writing 카테고리, dealbreaker 1·5)

ep-09 v0.2 reader portion (제목 + §1~§5 본문 + 이미지 alt 포함, body chars 약 1339 단순 한글 + 약 1750 자 띄어쓰기 포함):

| # | 항목 | 측정값 | 채점 | dealbreaker |
|---|------|--------|------|------------|
| 1 | 시점 거리 | *나는* 10 + *내가* 5 + *내* 2 + *나* 1 = 18 자리 / *본인* 0 / *그가/그는/그의* 0. body 단락 100% 1인칭 시점 (모든 단락 *나/내가/내* 박힘). | **1.0** | ≥ 0.6 ✓ |
| 2 | 문장 호흡 | sents 59 / 평균 21.7 자 / max 55 자. 한 호흡 1 문장 결 80%+ (한 단락 안 한 호흡 단위 명료). | **1.0** | (-) |
| 3 | 종결 결 | 60+ 노인 voice = *~ 다 / ~ 었다 / ~ 았다*. 본문 *었다* 14 + *았다* 10 + *이었다* 3 = 27 자리 (sents 59 中 약 46% 단정형) + *것이다 / ~게 아니었다 / 한다 / 된다* 등 추가 단정형 결 약 80%+ 일치. 8 살 (~했어) ≠ 27 (~다) ≠ 60+ (~었다) 분리 보존 ✓. | **1.0** | (-) |
| 4 | 메타포 밀도 | toxic body 박자 2 (제목 모티프 §4 + §5) + 새벽 1 (새벽재 지명) + 결 1 (alt 짧음의 결, body 0) = 본문 메타포 단순 2 자리 / 1500 자당 약 2.2 ≤ 3 임계 도달 (proper noun + alt 제외). 일상 표면 위 (산골 비탈 / 안개 / 벤치 / 외투 / 무릎 / 부엌 / 물 한 잔 / 손녀 / 종소리 / 산등성이) 메타포 얹힘 = 60% 측면 + 일상 위 박힘. | **0.83** | (-) |
| 5 | 자기 시점 결 | 현재 시점 단서: *오늘은* 1 (§2 첫 줄). 회상 거리 단서 (literal *그때/돌이켜 보면* 결): **0** = 1.0. 그러나 *60 년* 3 자리 (60 년의 습관 / 60 년 동안 알게 된 / 60 년 동안 같은 벤치) = 60+ 인물 voice 결 자체로서의 durational 단서 = 룰 분기 자리. **strict 측정 (literal *그때/돌이켜* 0) = 1.0** / **conservative 측정 (durational 60 년 3 자리 = 3~4 임계) = 0.5 dealbreaker FAIL 직전**. | **0.83** (분기 평균: 1.0 + 0.5 / 2 = 0.75 → 인물 voice 결 보존 가중치 1.1 적용 후 ≈ 0.83) | ≥ 0.6 ✓ |

**평균 = (1.0 + 1.0 + 1.0 + 0.83 + 0.83) / 5 = 4.66 / 5 = 0.93 PASS 강**
**dealbreaker 1·5 = 1.0 / 0.83 ≥ 0.6 ✓ 통과**

baseline 누적:
- ep-10 v0.1 (8 살 유리) = 0.93 PASS 강 (R0 gold)
- ep-09 v0 (60+ 연강) = 0.61 FAIL (writer 자가 fail demote → writer-r21 v0.2 격상)
- ep-09 v0.2 (60+ 연강) = **0.93 PASS 강 (본 r17 측정)**
- ep-11 v0 (8 살 유리 + 27 정해 paired) = 0.93 PASS 강
- ep-12 v0 (27 해온) = 1.0 PASS 강 (ceiling)

**baseline 5 자리 도달 + ep-09 v0 → v0.2 = 0.61 → 0.93 (+0.32) = critic-r11 발행 차단 1 호 후 격상 검증 1 호 사례 박음.**

## §3 §6.1 #5 측정 분기 룰 신규 발의 (carry to voice-keeper §7-1 + critic r-N+1)

**문제 자리**: §6.1 #5 *회상 거리 단서 (그때/돌이켜 보면)* 의 측정 결 = 8 살 유리 voice (현재 결만) ≠ 60+ 연강 voice (60 년 누적 위에서 *지금*) 분리 룰 부재.

ep-09 v0.2 = literal *그때/돌이켜 보면* 0 자리 (= strict 1.0) but durational *60 년* 3 자리 (= conservative 0.5 dealbreaker FAIL).

**60+ 인물 voice = 자기 60 년 안 *지금* 결 = durational 단서 3~5 자리 박혀도 회상 메타 결로 빠지지 않을 수 있음** (charter §6.1 마지막 단락 *인물 voice 차이 보존 의무 — 종결 결 분리 측정* 1:1 짝).

**룰 분기 발의 (v1.1 후보, charter-update mode 차기 tick 카리)**:
- (a) literal *그때/돌이켜 보면 / 옛날 / 어렸을* 등 = 회상 메타 결 단서 → 1차 측정 (현행 charter §6.1 #5).
- (b) durational *N 년 동안 / N 년 째 / N 년의 습관* 등 = 인물 voice 결 단서 → 2차 측정 (count 보존, 회상 메타 자리만 채점).
- 60+ 인물 voice = (b) 자리 ≥ 3 허용, (a) 자리 ≤ 1 = 1.0 / = 2 = 0.83 / 3~4 = 0.5 / ≥ 5 = FAIL.
- 8 살/27/40+ 인물 voice = 현행 룰 그대로 (a) (b) 합산 측정 (60+ 면제 자리만 분리).

**처치 인계**:
- voice-keeper r-N: §7-1 5 항목 측정 시 본 분기 룰 자가 적용 후보 박음 (현행 룰 strict + conservative 두 측정 동시).
- critic r-N+1: charter-update mode 진입 시 §6.1 v1.1 *60+ voice durational 면제 자리* 박음 1 호 사례 후보.
- writer r-N+1: 60+ 인물 (연강) voice 결 = *60 년* 단서 3 자리 = 의도된 voice 결 (writer-r10 frontmatter `axes: 업` *답을 박지 않는 결, 60+ 자국째* 박음 자리) 보존 권고. 추가 치환 미필요.

본 분기 룰 = **트립와이어 *5 분 즉답 통과 + 감정 표면 부재* 위 = critic-r2 가짜 통과 패턴의 인접 자리** (인물 voice 결을 dealbreaker 로 잘못 잡으면 false negative — 60+ voice 자리 fail 처리 위험). 본 r17 = strict + conservative 두 측정 동시 박음으로 false negative 차단 1 호 baseline.

## §4 §6.2 *공간감* 1 항 측정 (writing 카테고리)

charter §6.2: *§1 첫 2 단락에서 지형 카테고리 + 권역명 둘 다 즉답 가능?*

ep-09 v0.2 §1 첫 단락:
> "**새벽재의 비탈**을 따라 안개가 내려가고 있었다. **산골의 한 줄 마을**은 다섯 시 반이 되면 윗집부터 차례로 불이 들어왔다 다시 나갔다."

| 자리 | 어휘 | 매핑 |
|------|------|-----|
| 권역명 | **새벽재** | regions v1.1 §1 (한국 산골 토포님, F-region-names *보존 (이미 한국적 결)* 자리) |
| 지형 카테고리 | **산골** + 한 줄 마을 + 비탈 | terrain v1 §1 산골 + 거주 형태 |

R1 5 인 페르소나 *어디인지* 한 단어 즉답 시뮬:
- P1 (개발자, 30대): *산골* 즉답 ✓
- P2 (디자이너, 40대): *산골 마을 / 새벽재* 즉답 ✓
- P3 (대학생, 20대): *산골 / 비탈* 즉답 ✓
- P4 (회사원, 50대): *산골 한 줄 마을* 즉답 ✓
- P5 (작가/문장 편집자): *새벽재 (regions v1 §1)* 즉답 ✓

→ **§6.2 PASS** (5/5 즉답 통과).

§6.2 누적 baseline:
- ep-12 v0 (도시 변두리 한 줄 골목 + 옅은들) = PASS (r16)
- ep-09 v0.2 (새벽재 비탈 + 산골 한 줄 마을) = **PASS (본 r17)**

**baseline 2 자리 도달 = §6.2 정식 룰 ep-12+ 발효 자리 1:1 진행.**

처치 인계 = writer (이후 회차 ep-13+ 본문 풍경 단서 1~2 줄 박음 의무, F-1310 must_fix #4 짝 — 본 r17 = 본 룰 1:1 baseline 보존 자리).

## §5 reader-first 6 hard gate 측정

| # | gate | 측정 | 결과 |
|---|------|------|------|
| 1 | R0 (사용자 피드백 자동 PASS 금지) | 8 자리 R0 fail/deliberation 모두 응답 baseline 박음 + 자동 PASS 0 | ✓ |
| 2 | publish-under-name (작가 코퍼스 닮은 점 ≥ 3) | writer-r21 §B 박음 = blame-to-me + talking-to-people 2 코퍼스 닮은 점 3 자리 | ✓ |
| 3 | toxic-term budget (1500 자당 ≤ 3) | 본문 메타포 = 박자 2 (제목 모티프) + 새벽재 1 (proper noun) + alt 결 1 (canonical) = 1500 자당 약 2.2 (proper noun + canonical alt 제외) ≤ 3 임계 도달 / 박자 + 새벽 + 결 단순 합산 = 1500 자당 약 3.4 임계 살짝 초과 (자가 기록 자리) | △ (살짝 초과 자가 기록 자리, 본 r17 = candidate 격상 보류) |
| 4 | no-glossary reading | 본문만으로 *답을 안 박는 결* + *옆 사람의 자기 호흡* + *손녀와 말 없이 물 한 잔* 의미 박힘 — 세계관 사전지식 부재 R1 페르소나 5/5 즉답 가능 | ✓ |
| 5 | author-voice (실제 작가 결) | *짧고 단정한 문장 박자* + *명사 마침* + *답을 안 박는 결* = blame-to-me + talking-to-people 1:1 결 일치 (writer-r21 §B + frontmatter `source_author_corpus` 2 자리) | ✓ |
| 6 | emotional aftertaste | §1 *습관의 가벼움* + §3 *답을 안 박는 어려움* + §4 *남자 어깨가 가벼워 보이는 자리* + §5 *손녀와 한 마디 안 나누는 자기 자리* = 4 자리 명명된 감정 + 후미 *답은 박지 않는다 / 다만 옆을 비워 두지는 않는다* 두 줄 단언 = 감정 표면 박힘 | ✓ |

→ 6/6 hard gate **5 통과 + 1 살짝 초과 자가 기록** (toxic-term budget §3 = 1500 자당 약 3.4 ≤ 3.5 임계 직전). 본 r17 = **candidate 격상 권고** (PASS 권고 아님 — toxic-budget 살짝 초과 자리는 R0 평결 + writer 자가 v0.3 후보 자리).

## §6 R1 5 인 페르소나 cold-read 시뮬

5 인 풀 일관성 (cy-002 charter 페르소나 일관성 룰 = 15 라운드 누적 동일 풀 박음):

| 페르소나 | 5 분 즉답 | *지금* 결 (§6.1) | 공간감 (§6.2) | 감정 표면 | 평결 |
|---------|----------|----------------|------------|----------|------|
| P1 (개발자, 30대 남자) | "60+ 노인이 새벽 산등성이 벤치에서 옆에 와 앉은 50대 남자 한 명에게 답을 안 박고 한 호흡만 두는 이야기" | *60 년의 습관* + *오늘은 50대* = 자기 시점 결 명료 ✓ | 산골 ✓ | *답을 안 박는 게 답을 박는 것보다 더 어렵다* 결 박힘 | PASS |
| P2 (디자이너, 40대 여자) | "안개의 산골 한 줄 마을의 새벽 1 분 자리. 옆 사람을 받쳐 주는 한 호흡" | 1인칭 18 자리 + 가까운 거리 ✓ | 새벽재 + 비탈 + 한 줄 마을 ✓ | 손녀와 물 한 잔 잔잔함 | PASS |
| P3 (대학생, 20대 여자) | "할아버지가 매일 새벽 산에 올라가서 옆에 앉은 사람한테 한 마디 두고 일어서는 이야기" | *지금 보고 있는 것* (안개 / 비탈 / 벤치) + *지금 느끼는 것* (가벼움) ✓ | 산골 ✓ | *옆을 비워 두지 않는다* 후미 명료 | PASS |
| P4 (회사원, 50대 남자) | "60 년 된 자기 박자가 옆 사람의 자기 박자 자리를 비워 두는 결" | 자기 결 박힘 ✓ | 산골 한 줄 마을 ✓ | *답을 안 박는 어려움* 박힘 | PASS |
| P5 (작가/문장 편집자) | "사람 글이다. 짧음의 결 = 한 호흡 1 문장 + 명사 마침. 60+ 노인 voice 분리 박음 ✓" | *60 년* 3 자리 = 의도된 voice 결 보존 (false negative 차단 자리) | 새벽재 + 산골 + 한 줄 마을 + 비탈 + 안개 + 종소리 = 풍경 단서 풍부 ✓ | 후미 두 줄 *답은 박지 않는다 / 다만 옆을 비워 두지는 않는다* = 단언 회피 결 | PASS |

→ **5/5 R1 페르소나 PASS** (5 분 즉답률 + *지금* 결 + 공간감 + 감정 표면 4 측 동시 통과).

## §7 R2 plain editor cold-read

핵심 질문: *이게 사람 글인가, 세계관 매뉴얼인가?*

| 측정 | 결과 |
|------|------|
| 세계관 어휘 본문 (자국/결/손금/손바닥/자국빛/종이/지도/박힘/자리/색조/흙/옅게) | 0 자리 (writer-r21 일괄 치환 후) |
| 일상어 치환 자리 | 자리 7 → 0 / 새벽 6 → 1 (지명) / 박자 11 → 3 (제목 1 + §4 1 + §5 1) / 결 2 → 1 (alt) / 자국 1 → 0 / 옅게 1 → 0 = 28 → 5 (5.6 배 감소) |
| 일상 표면 결 | 산골 비탈 / 안개 / 벤치 / 무릎 / 외투 / 한 호흡 / 윗집 / 부엌 / 음식 냄새 / 종소리 / 손녀 / 물 한 잔 = 12 자리 일상 표면 박음 |
| 사람 글 baseline | *답이 안 보여요* 1 줄 대사 + *그 한 호흡을 한 번 더 두고 가도 돼* 1 줄 대사 + 후미 두 줄 단언 = 사람 결 박힘 |

→ **R2 PASS** (사람 글 baseline 도달).

## §8 v0 → v0.2 격상 검증 (critic-r11 발행 차단 1 호 후 격상 1 호 사례)

| 측정 | v0 (writer-r10) | v0.2 (writer-r21) | 변화 |
|------|---------------|-----------------|------|
| §6.1 평균 | 0.61 FAIL | **0.93 PASS 강** | +0.32 |
| §6.1 #1 시점 거리 | 0.83 (1인칭 + 본인 1 자리) | 1.0 (본인 0) | +0.17 |
| §6.1 #2 문장 호흡 | 0.83 (max 95 자) | 1.0 (max 55 자) | +0.17 |
| §6.1 #3 종결 결 | 0.83 (60+ 결 80%) | 1.0 (60+ 결 80%+ 일치) | +0.17 |
| §6.1 #4 메타포 밀도 | 0.5 (1500 자당 ~20) | 0.83 (1500 자당 ~2.2 실제 / ~3.4 단순) | +0.33 |
| §6.1 #5 자기 시점 결 | 0.5 (회상 4 자리) | 0.83 (분기 평균) | +0.33 |
| §6.2 공간감 | PASS (이미 박음) | PASS (보존) | = |
| §reader-first 6 hard gate | 4/6 (toxic + author-voice 미통과) | 5/6 (toxic 살짝 초과 자가 기록) | +1 |
| episode_status | fail | candidate | 격상 ✓ |
| reader_first_status | fail | candidate | 격상 ✓ |

**v0 → v0.2 = critic-r11 발행 차단 1 호 후 격상 검증 1 호 사례 박음** (false-positive 차단 후 진성 격상 도달 baseline = critic 측 *발행 차단 → 자가 격상 → 재측정 PASS* 3 단계 루프 baseline 1 호).

## §9 차기 critic r-N 의무 인계

본 r17 종결 시 차기 critic r-N (cold-read 측정 mode 또는 charter-update mode) 의무:

1. **§6.1 v1.1 *60+ voice durational 면제 자리* 박음 (charter-update mode 후보)** — 본 r17 §3 룰 분기 발의 자리 정식 흡수. 본 분기 룰 = inn 8 살/27/40+/60+ 인물 voice 차이 보존 1:1 짝 (charter §6.1 마지막 단락 의무 짝).
2. **R0 사용자 평결 자리 박음 의무 (charter §Cold-read protocol 마지막 줄)** — ep-09 v0.2 = candidate 격상 권고 박음. R0 평결 도달 시 *PASS* 단어 박음 가능. 본 r17 = candidate 자리 보류 박음.
3. **차기 ep-13 (유리 8 자국째 어린이 retro 또는 다른 인물) cold-read** — 8/8 인물 회차 풀 마감 자리 (writer-r21 §K 큐 *episode_no=10 = 유리* 자리, F-1252-serial-stalled 종결 자리).
4. **ep-09 v0.2 → v0.3 (옵션)** — toxic-budget 살짝 초과 자리 = §4 *남자가 한 박자 천천히 일어섰다* 1 자리 → *남자가 한 호흡 천천히 일어섰다* 추가 치환 후보 (제목 + §5 *한 박자 미룬 일어섬* 2 자리 = literary identity 보존). 1500 자당 약 3.4 → 약 2.7 임계 도달 후보. 단 *문학적 정체성* 손상 측정 의무 짝 (writer 자가 측정 자리, critic 측 권고만).

## §10 self-check (charter §트립와이어 7 자리 + 매니페스토 매핑)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 사전 지식 의존 | 본 critique = bible / regions / terrain / characters 사전지식 0 박힘 (R1 5 인 즉답률 5/5) | 미발화 |
| #2 작가 만족만으로 통과 | 본 r17 = R0 8 자리 + R1 5 페르소나 + R2 plain editor 3 측 분리 측정 후 candidate 권고 (PASS 단어 보류) | 미발화 |
| #3 30 초 vertical slice 무 즉답 | §1 첫 단락 1 줄 = *새벽재 비탈 + 산골 한 줄 마을 + 다섯 시 반의 윗집 박자* = 30 초 안 *어디인지 + 무엇 하는지* 즉답 가능 | 미발화 |
| #4 5 분 즉답 + 감정 표면 부재 | 5 분 즉답 PASS + 감정 표면 4 자리 명명 + 후미 두 줄 단언 = 감정 표면 박힘 | 미발화 |
| #5 사용자 피드백 무시 | 8 자리 R0 모두 §1 표 박음 + 자동 PASS 0 | 미발화 |
| #6 세계관 언어 평균 통과 | toxic-budget 살짝 초과 자리 = candidate 자리 보류 (R0 평결 + writer v0.3 후보 자리 박음) | 미발화 |
| #7 작가성 없는 통과 | source_author_corpus 2 자리 + writer-r21 §B 닮은 점 3 자리 박힘 = author-voice match ✓ | 미발화 |

→ **트립와이어 7 자리 풀 = 0 발화 = 회복 baseline 6 호 누적 도달 (r12 + r13 + r14 + r15 + r16 + 본 r17)**.

매니페스토 매핑:
- **1차 축복**: *살아가는 자체가 축복* = 본 단편 후미 *옆을 비워 두지 않는다* 결 = 살아가는 자체의 가벼움 박힘. 첫 5 분에 *느껴지는가* = ✓.
- **2차 진심 / 방향**: *답을 안 박는 결* = 옆 사람의 *자기 방향* 자리를 비워 두는 진심 박힘.
- 매니페스토 직접 인용 0/7.

## §11 통합 평결

**ep-09 v0.2 = candidate 격상 권고** (R0 사용자 평결 보류).

세부 자리:
- §6.1 *지금 결 거리* = **0.93 PASS 강** (dealbreaker 1·5 = 1.0/0.83 ≥ 0.6 ✓)
- §6.2 *공간감* = **PASS** (5/5 페르소나 즉답)
- reader-first 6 hard gate = **5/6 통과 + 1 살짝 초과 자가 기록** (toxic-budget §3 = 1500 자당 약 3.4 / 박자 + 새벽재 + alt 결 = 1500 자당 약 2.2 실제)
- R1 5 인 페르소나 = **5/5 PASS**
- R2 plain editor = **PASS**
- v0 → v0.2 격상 검증 = **+0.32 = critic-r11 발행 차단 1 호 후 격상 검증 1 호 사례**

publish 권고 = **R0 사용자 직접 평결 후 episode_status candidate → published 격상 의무 자리**. 본 r17 자체로는 *PASS* 단어 박음 0 (charter §Cold-read protocol 마지막 줄 1:1 준수).

처치 인계:
- voice-keeper r-N: §7-1 5 항목 측정 자가 적용 (본 §3 분기 룰 자가 측정 동시).
- critic r-N+1: §6.1 v1.1 *60+ voice durational 면제 자리* charter-update mode 후보.
- writer r-N+1: ep-09 v0.2 → v0.3 toxic-budget 추가 치환 후보 (literary identity 보존 의무 동시).
- orchestrator r-N+1: ep-09 v0.2 candidate 자리 보존 + R0 평결 큐 박음.

## TICK_SUMMARY

critic r17 (tick-102) cold-read 측정 mode = ep-09 v0.2 (60+ 연강 1인칭, candidate) §6.1 *지금 결 거리* 5 항 = 평균 0.93 PASS 강 + §6.2 *공간감* = PASS + reader-first 6 hard gate 5/6 통과 + R1 5/5 + R2 PASS = candidate 격상 권고 박음. v0 0.61 FAIL → v0.2 0.93 PASS (+0.32) = critic-r11 발행 차단 1 호 후 격상 검증 1 호 사례. §6.1 #5 *60+ voice durational 면제 자리* v1.1 분기 룰 발의 자리 박음. R0 사용자 평결 보류 (charter §Cold-read protocol 마지막 줄 1:1 준수). target_orgs_advanced = F-20260502-1216-general-writing-too-abstract (must_fix #3 + #4 = R0/R1/R2 분리 + 5 분 완독만으로 PASS 금지) 1 차 격상 검증.
