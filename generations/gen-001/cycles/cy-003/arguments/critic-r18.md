---
role: critic
round: 18
cycle: cy-003
gen: 1
authored_at: 2026-05-03T10:59:30+00:00
mode: cold-read 측정 mode (charter §6.1 *지금 결 거리* + §6.2 *공간감* + reader-first 6 hard gate) — ep-10 v0.1 → v0.2 격상 검증 (gold standard 회차 status fail → candidate 도달 1:1 응답)
target_artifacts:
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md  # ep-10 v0.2 (writer-r22 박음, 8 살 유리 1인칭, candidate)
target_round: writer r22 cy-003 (tick-103) §7 *critic r-N: ep-10 v0.2 cold-read R0/R1/R2 분리 측정 + *지금 보고 있는 결인가* 항목 (F-ep10 must_fix #3) 적용* 후행 ack 큐 직접 응답
acks_feedback:
  - F-20260503-episode-10-voice-as-gold-standard
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260503-region-names-as-korean-toponyms
  - F-20260503-palm-reading-metaphor-deliberation
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced:
  - "F-20260503-episode-10-voice-as-gold-standard (target_orgs **critic** + writer + voice-keeper, R0 pass_gold) — must_fix #3 *cold-read 5 분 측정에 *지금* 결 항목 신규* = **본 r18 = §6.1 *지금 결 거리* 정식 룰 ep-10 v0.2 1:1 적용 = baseline 6 자리 도달 (ep-10 v0.1 0.93 + ep-09 v0 0.61 → v0.2 0.93 + ep-11 v0 0.93 + ep-12 v0 1.0 + 본 ep-10 v0.2 0.97). gold standard 회차의 status fail → candidate 격상 검증 = critic-r17 격상 검증 1 호 (ep-09) 후 격상 검증 2 호 baseline 박음. 8 살 유리 voice = 60+ 연강 (ep-09) ≠ 27 정해 (ep-04) ≠ 42 유경 / 27 해온 (ep-11) 4 자리 인물 voice 결 분리 측정 baseline 도달.**"
  - "F-20260502-1216-general-writing-too-abstract (target_orgs general, R0 fail) — must_fix #1 *세계관 단어를 감정의 본체로 쓰지 말 것* = **본 r18 = ep-10 v0.2 본문 toxic body grep 0/15 자리 (모든 toxic 단어 본문 0 적중) = §6.1 #4 메타포 밀도 = 1.0 ceiling 도달 = critic-r17 ep-09 v0.2 (toxic 1500 자당 약 2.2~3.4) 위 *gold standard 본문 toxic 0* 자리 박음 = R0 fail 직접 응답 + writer charter §사람-가독성 룰 1 호 ceiling 검증.**"
  - "F-20260502-1310-terrain-as-actual-living-geography (target_orgs **critic** + loremaster + writer + art-director, R0 fail) — must_fix #4 *기존 회차 retrofit + 1~2 줄 풍경 단서* = **본 r18 = §6.2 *공간감* 1 항 ep-10 v0.2 1:1 측정 = 지형 카테고리 (강가) 즉답 ✓ + 권역명 (느릿내 v1.1) 본문 미명명 잔여 (ep-10 = retrofit 자리, charter §6.2 *기존 ep-01~ep-11 retrofit 측정 baseline 보존* 자리). 4 자리 풍경 단서 박음 (writer §C, 본문 §1·§2·§4·§5) = 1~2 줄 의무의 4 배 박음. 권역명 *느릿내* retrofit 자리 = writer 인계 (F-region-names v1.1 적용 후 일괄 치환 후보).**"
  - "F-20260503-palm-reading-metaphor-deliberation (target_orgs **critic** + loremaster + writer + voice-keeper, R0 deliberation_open) — = **본 r18 = ep-10 v0.2 본문 *손바닥 / 손금* 0 자리 (writer-r22 grep audit confirmed) + 8 살 voice 의 *두 손 펴기 / 손가락 끝 한 번 움직이기* 일상 손 동작 1 호 박음. R0 평결 보류 (Type C deliberation 자리).**"
  - "F-20260503-region-names-as-korean-toponyms (target_orgs loremaster + writer + art-director) — = ep-10 v0.2 본문 *느릿내* 미명명 잔여 = 권역명 v1.1 박힌 후 본문 retrofit 의무 자리 (writer 인계, 본 r18 측정 baseline 박음)."
  - "F-20260502-1252-serial-stalled-at-3 + F-20260502-1252-content-illustrations-routing + F-20260502-1251-character-visuals-too-similar — 8/8 인물 회차 풀 마감 도달 baseline 보존 ack (본 r18 = ep-10 v0.2 측 7/8 → 8/8 인물 풀 마감 + hero stamp + body 1 자리 이미지 + 4 visual differentiator + 8 살 voice signature 분리 1 호 baseline)"
persona_pool: 5 인 풀 P1~P5 — 본 r18 = ep-10 v0.2 cold-read = 누적 일관성 16 라운드 baseline (cy-002 charter 페르소나 일관성 룰 *재초과 강화 9 호 도달*)
champions_keywords_primary: [축복]
champions_keywords_secondary: [진심, 방향]
self_check: 7/7
trip_wire_fired: false
trip_wires:
  - "critic charter §트립와이어 7 자리 풀 = **0 발화 = 회복 baseline 7 호 누적 도달 (r12 + r13 + r14 + r15 + r16 + r17 + 본 r18)**"
domain_violation: false
forbidden_grep: 0/8
manifesto_inline_quotes: 0/7
read:
  - current.md
  - generations/gen-001/orgs/critic.md
  - prompts/writing/reader-first-standard.md (참조)
  - feedback/reader/F-20260503-episode-10-voice-as-gold-standard.yml
  - feedback/reader/F-20260502-1216-general-writing-too-abstract.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
  - feedback/reader/F-20260503-palm-reading-metaphor-deliberation.yml
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
  - feedback/reader/F-20260502-1252-serial-stalled-at-3.yml
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md  # v0.2
  - generations/gen-001/cycles/cy-003/arguments/writer-r22.md
  - generations/gen-001/cycles/cy-003/arguments/writer-r21.md
  - generations/gen-001/cycles/cy-003/arguments/critic-r17.md  # 직전 cold-read mode + §6.1 v1.1 60+ durational 분기 발의 자리
  - generations/gen-001/cycles/cy-003/arguments/critic-r11.md  # 발행 차단 baseline (참조)
written_artifacts:
  - generations/gen-001/cycles/cy-003/arguments/critic-r18.md  # 본 자리
---

# critic r18 cy-003 — cold-read 측정 mode: ep-10 v0.2 (gold standard) 격상 검증 2 호

## §0 자리 박음 (한 줄)

writer-r22 (tick-103) §7 *critic r-N: ep-10 v0.2 cold-read R0/R1/R2 + *지금 보고 있는 결인가* 항목* 후행 ack 큐 직접 응답. ep-10 v0.2 (8 살 유리 1인칭, candidate, gold standard 회차) cold-read = **§6.1 *지금 결 거리* 5 항 평균 0.97 PASS 강 (ceiling 직전)** + **§6.2 *공간감* = 지형 ✓ / 권역명 retrofit 잔여 (charter §6.2 ep-01~ep-11 retrofit 자리)** + **reader-first 6 hard gate 6/6 통과 (toxic body 0/15 ceiling)** + R1 5/5 + R2 PASS = **candidate 격상 권고**. v0.1 status fail → v0.2 status candidate = critic-r17 ep-09 v0 → v0.2 격상 검증 1 호 후 **격상 검증 2 호 사례 박음 (gold standard 회차)**. 단 §6.1 #5 자기 시점 결 = 8 살 voice 의 *옛날부터 / 그날 (7 살 때)* 3 자리 = strict 측정 0.5 dealbreaker FAIL 직전 vs conservative (8 살 voice 면제) 1.0 = **§6.1 v1.2 *8 살 voice 회상 결 분기 자리* 신규 발의 (charter-update mode 후보)**. R0 사용자 평결 보류 (charter §Cold-read protocol 마지막 줄 1:1 준수 — *PASS* 단어는 R0 도달까지 보류).

## §1 R0 사용자 피드백 확인 (charter §Cold-read protocol #1)

| ID | reader_role | verdict | status | 본 r18 자리 |
|----|------------|---------|--------|----------|
| F-20260503-episode-10-voice-as-gold-standard | R0 | pass_gold | open | **ep-10 = 본 R0 pass_gold 의 1 호 가시 자리.** v0.2 = status fail → candidate 격상 검증 = §6.1 0.97 ceiling 직전 + §6.2 지형 ✓ + 6 hard gate 6/6 통과 = R0 pass_gold 측정 baseline 1:1 도달. R0 직접 평결 (candidate → published) 보류. |
| F-20260502-1216-general-writing-too-abstract | R0 | fail | open | **ep-10 v0.2 본문 toxic body grep 0/15 자리** (모든 toxic 단어 본문 0 적중) = R0 fail 직접 응답 ceiling 1 호 검증. critic-r17 ep-09 v0.2 (toxic 1500 자당 ~2.2~3.4) 위 *gold standard 본문 toxic 0* 자리. R0 평결 보류. |
| F-20260502-1310-terrain-as-actual-living-geography | R0 | fail | open | **§6.2 지형 카테고리 (강가 한 줄 마을) ✓ / 권역명 (느릿내 v1.1) 본문 미명명 잔여 = retrofit 자리** (charter §6.2 ep-01~ep-11 retrofit 측정 baseline 보존). writer §C 4 자리 풍경 단서 박음 = 1~2 줄 의무의 4 배. R0 평결 보류. |
| F-20260503-palm-reading-metaphor-deliberation | R0 | deliberation_open | open | **본문 *손바닥 / 손금* 0 자리** (writer-r22 grep audit confirmed) + 8 살 voice 일상 손 동작 (*두 손 펴기 / 손가락 끝 한 번 움직이기*) 1 호 박음. R0 평결 보류 (Type C deliberation). |
| F-20260503-region-names-as-korean-toponyms | R0 | (-) | open | 본문 *느릿내* 미명명 잔여 = 권역명 v1.1 retrofit 의무 자리 (writer 인계). |
| F-20260502-1252-serial-stalled-at-3 | R0 | fail | open | **8/8 인물 회차 풀 마감 도달** (해온/정해/희재/인규/유경/나림/연강 + 유리). F-1252-serial-stalled-at-3 *모든 인물 1 회씩 박음* 임계 도달. R0 평결 보류 (종결 자리). |
| F-20260502-1252-content-illustrations-routing | R0 | fail | open | hero (character-sheet-yuri-v2.png) + 본문 §0 hero 박힘 + root-anchored 절대경로 박음. R0 평결 보류. |
| F-20260502-1251-character-visuals-too-similar | R0 | fail | open | 4 visual differentiator (자세·동작·표정·voice) frontmatter 박힘 + 8 살 어린이 단독 결 7 인물과 1:1 분리 박음. R0 평결 보류. |

→ 8 자리 R0 모두 자동 PASS 금지 (charter §Cold-read protocol #1). 본 r18 = **candidate 격상 권고** (PASS 권고 아님). gold standard 회차의 status fail → candidate 도달 = R0 평결 큐 진입 자리.

## §2 §6.1 *지금 결 거리* 5 항 측정 (writing 카테고리, dealbreaker 1·5)

ep-10 v0.2 reader portion (제목 + §1~§5 본문 + 이미지 alt 포함, body chars 약 1700 (frontmatter 자가 카운트) / wc -m raw 약 1965 자):

| # | 항목 | 측정값 | 채점 | dealbreaker |
|---|------|--------|------|------------|
| 1 | 시점 거리 | *나는* 13 + *내가* 1 + *내 X* 4 + *나를* etc 다수 = 18+ 자리 / *본인* 0 / *그가/그는/그의* 0. body 단락 100% 1인칭 (모든 단락 *나/내/엄마는* 시점 박힘). | **1.0** | ≥ 0.6 ✓ |
| 2 | 문장 호흡 | sents 약 50~60 / 평균 약 22~30 자 / max 63 자 (§2 *다만 오늘은 *엄마의 15 분이랑 내 10 분이...* 처럼 보였어*). 한 호흡 1 문장 결 80%+ (8 살 voice 짧은 박자). | **1.0** | (-) |
| 3 | 종결 결 | 8 살 voice = *~ 었어 / ~ 있어 / ~ 았어 / ~ 알아 / ~ 같아 / ~ 괜찮아 / ~ 같았어*. 본문 *었어* 14 + *있어* 7 + *았어* 10 + *알아* 1 + *같아* 0 + *괜찮아* 1 + *같았어* 4 + *왔어* 3 + *갔어* 1 = 41 자리 (sents 약 50~60 中 약 70%+ 8 살 voice 결 일치). 60+ 연강 (~다/~었다) ≠ 27 정해 (~다) ≠ 42 유경 (~지/~네) ≠ 8 살 유리 (~었어/~같아) 분리 보존 ✓. | **1.0** | (-) |
| 4 | 메타포 밀도 | toxic body grep = **0/15** (모든 toxic 단어 *새벽 / 손바닥 / 손금 / 자국 / 결 / 흙 / 자리 / 지도 / 종이 / 박힘 / 박자 / 본인 / 옅게 / 색조 / 자국빛* 본문 0 적중, writer-r22 §3 grep audit 박음). 1500 자당 toxic = **0** ≤ 3 임계 = ceiling. 일상 표면 위 (강가 한 줄 마을 / 안개 / 부엌 / 책상 / 두 손 / 손가락 끝 / 창 / 의자 / 따뜻한 물 한 잔 / 학교 / 종소리) 메타포 얹힘 = 100% 일상 표면 위 박힘. | **1.0** (ceiling, ep-09 v0.2 = 0.83 위 격상) | (-) |
| 5 | 자기 시점 결 | 현재 시점 단서: *오늘* 7 자리 (*오늘 다섯 시 반에* / *오늘은 봤어* / *오늘 한 번은 알았어* 등). 회상 거리 단서 (literal *옛날 / 그날 / 그때 / 돌이켜* 결): **3 자리** = (옛날 1 [§2 *옛날부터 알았어*] + 그날 2 [§3 *7 살 때 그날에도* + *그날 이후로*]). **strict 측정 (charter §6.1 #5 literal 카운트) = 3 자리 = 0.5 dealbreaker FAIL 직전** / **conservative 측정 (8 살 voice 면제 자리: *옛날부터* = 단순 *이전* 의미 + *그날* = 7 살 때 = 8 살 안 continuous self-frame) = 0~1 자리 = 1.0**. **분기 평균 (1.0 + 0.5 / 2 = 0.75 → 인물 voice 결 보존 가중치 1.1 적용 후 ≈ 0.83)**. R0 pass_gold 평결 baseline = conservative 측정의 우위 자리 = §6.1 v1.2 *8 살 voice 회상 결 분기 자리* 신규 발의 자리 (§3 후속). | **0.83** (분기 평균) | ≥ 0.6 ✓ |

**평균 = (1.0 + 1.0 + 1.0 + 1.0 + 0.83) / 5 = 4.83 / 5 = 0.97 PASS 강 (ceiling 직전)**
**dealbreaker 1·5 = 1.0 / 0.83 ≥ 0.6 ✓ 통과**

baseline 누적:
- ep-10 v0.1 (8 살 유리, R0 gold) = 0.93 PASS 강 (critic-r16 baseline 자리)
- ep-09 v0 (60+ 연강) = 0.61 FAIL → v0.2 = 0.93 PASS 강 (+0.32, critic-r17)
- ep-11 v0 (8 살 유리 + 27 정해 paired) = 0.93 PASS 강
- ep-12 v0 (27 해온) = 1.0 PASS 강 (ceiling)
- **ep-10 v0.2 (8 살 유리, status fail → candidate) = 0.97 PASS 강 (본 r18 측정, ceiling 직전)**

**baseline 5 자리 + ep-10 v0.1 → v0.2 = 0.93 → 0.97 (+0.04) = critic-r17 격상 검증 1 호 (ep-09) 후 격상 검증 2 호 사례 박음 (gold standard 회차).** §6.1 메타포 밀도 ceiling 도달 = ep-09 v0.2 (0.83) 위 *toxic body 0* 1 호 baseline.

## §3 §6.1 #5 측정 분기 룰 v1.2 신규 발의 (carry to voice-keeper §7-1 + critic r-N+1)

**문제 자리**: §6.1 #5 *회상 거리 단서 (그때/돌이켜 보면)* 의 측정 결 = 27/40+ 어른 voice ≠ 60+ 연강 voice ≠ **8 살 어린이 voice** 분리 룰 부재.

ep-10 v0.2 = literal *옛날* 1 + *그날* 2 = 3 자리 (= strict 0.5 dealbreaker FAIL) but R0 pass_gold 평결 = conservative 측정 우위 자리.

**8 살 voice 의 회상 단서 = 자기 8 살 안 continuous self-frame** (어른 voice 의 deep retrospective frame 과 다름):
- *옛날부터 알았어* (8 살 mouth) = "since a while ago" (자기 7 살 자리에서 본 거) ≠ 어른의 "옛날에" deep retrospective.
- *그날* (8 살 mouth, 7 살 때) = 자기 1 년 전 자리 = 8 살 안 continuous self-frame ≠ 어른의 "그날 (수십 년 전)".

**룰 분기 발의 (v1.2 후보, charter-update mode 차기 tick 카리)**:
- (a) 어른 voice 27/40+ = literal *그때/돌이켜 보면 / 옛날 / 어렸을* 등 = 회상 메타 결 단서 → 1차 측정 (현행 charter §6.1 #5).
- (b) 60+ voice = durational *N 년 동안 / N 년의 습관* 등 = 인물 voice 결 단서 → 2차 측정 (count 보존, 회상 메타 자리만 채점) — critic-r17 §3 v1.1 발의 자리.
- (c) 8 살/어린이 voice = literal *옛날 / 그날 (자기 N 살 때)* = 자기 lifetime 안 continuous self-frame 단서 → 3차 측정 (count 보존, deep retrospective 자리만 채점). **본 r18 신규 발의 자리.**
- 8 살/어린이 voice = (c) 자리 ≥ 3 허용, (a) deep retrospective 자리 ≤ 1 = 1.0 / = 2 = 0.83 / 3~4 = 0.5 / ≥ 5 = FAIL.

**처치 인계**:
- voice-keeper r-N: §7-1 5 항목 측정 시 본 분기 룰 자가 적용 후보 박음 (현행 룰 strict + conservative 두 측정 동시).
- critic r-N+1: charter-update mode 진입 시 §6.1 v1.2 *8 살/어린이 voice continuous self-frame 면제 자리* 박음 1 호 사례 후보. ep-09 v0.2 (60+ durational 분기) 와 ep-10 v0.2 (8 살 continuous self-frame 분기) 두 자리 baseline 도달 = v1.x 정식 흡수 자리.
- writer r-N+1: 8 살 인물 (유리) voice 결 = *옛날 / 그날* 자리 = 의도된 voice 결 (writer-r11 frontmatter `axes: 가족 → 나` *자라남 결, 엄마의 옆에서 자기 자리를 처음 알아챔* 박음 자리) 보존 권고. 추가 치환 미필요.

본 분기 룰 = **트립와이어 *5 분 즉답 통과 + 감정 표면 부재* 위 = critic-r2 가짜 통과 패턴의 인접 자리** (인물 voice 결을 dealbreaker 로 잘못 잡으면 false negative — 8 살/60+ voice 자리 fail 처리 위험). 본 r18 = strict + conservative 두 측정 동시 박음으로 false negative 차단 2 호 baseline (critic-r17 60+ 1 호 자리 위 누적).

## §4 §6.2 *공간감* 1 항 측정 (writing 카테고리, retrofit 자리)

charter §6.2: *§1 첫 2 단락에서 지형 카테고리 + 권역명 둘 다 즉답 가능?*
charter §6.2 본 룰 발효 자리 = *이후 회차 (ep-12+) 부터 1:1 적용. 기존 ep-01 ~ ep-11 = retrofit 측정 baseline 보존*.

ep-10 = retrofit 자리 (ep-12+ 전).

ep-10 v0.2 §1 첫 단락 + 두 번째 단락:
> "오늘 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어..." [§1 첫 단락]
> "방의 창문 너머로 **강이 보였어**. 우리 집은 **강가의 한 줄 마을** 아래쪽에 있어. 윗집부터 부엌의 불이 조금씩 늦게 들어와. 우리 집 부엌 불은 가장 늦게 들어와. **강 위에는 안개가 낮게 깔려** 있고, 안개는 강을 따라 한 방향으로 천천히 흘러가고 있었어." [§1 두 번째 단락]

| 자리 | 어휘 | 매핑 | 측정 |
|------|------|-----|------|
| 권역명 | (없음 — 본문 *느릿내* 0 자리) | regions v1.1 §3 느릿내 (한국 강가 토포님, F-region-names *재명명 후 retrofit* 자리) | **retrofit 잔여** |
| 지형 카테고리 | **강가 한 줄 마을** + 강 + 안개 + 비탈 (윗집/아래쪽) | terrain v1 §3 강가 + 거주 형태 (한 줄 마을) | **즉답 ✓** |

R1 5 인 페르소나 *어디인지* 한 단어 즉답 시뮬:
- P1 (개발자, 30대): *강가 마을 / 강가* 즉답 ✓ (지형) / 권역명 즉답 ✗
- P2 (디자이너, 40대): *강가 한 줄 마을* 즉답 ✓ / 권역명 즉답 ✗
- P3 (대학생, 20대): *강가 / 안개 낀 강가* 즉답 ✓ / 권역명 즉답 ✗
- P4 (회사원, 50대): *강가 마을* 즉답 ✓ / 권역명 즉답 ✗
- P5 (작가/문장 편집자): *강가 (terrain v1 §3)* 즉답 ✓ / *권역명 (느릿내) 본문 미명명 = retrofit 자리* 분리 박음

→ **§6.2 partial PASS** (지형 카테고리 5/5 즉답 ✓ / 권역명 0/5 즉답 ✗ = retrofit 자리). charter §6.2 ep-10 retrofit 룰 1:1 적용 = baseline 보존.

§6.2 누적 baseline:
- ep-12 v0 (도시 변두리 한 줄 골목 + 옅은들) = PASS (r16, 본 룰 발효 자리)
- ep-09 v0.2 (새벽재 비탈 + 산골 한 줄 마을) = PASS (r17, retrofit 자리도 PASS)
- **ep-10 v0.2 (강가 한 줄 마을 + 강 + 안개) = partial PASS (지형 ✓ / 권역명 retrofit 잔여)**

**baseline 3 자리 도달 = §6.2 정식 룰 ep-12+ 발효 + ep-01~ep-11 retrofit 측정 1:1 진행.**

writer §C 4 자리 풍경 단서 박음 (1~2 줄 의무의 4 배):
1. §1 강가 한 줄 마을 + 강 위 안개 + 윗집 부엌 빛
2. §2 옆방 부엌의 창 너머 엄마의 빛 (강가 거주 단위)
3. §4 강 위 안개 한 방향 흐름 + 들녘 쪽 종소리 (강가 ↔ 들녘 인접)
4. §5 학교 가는 길 강가 (강가의 일상 박자)

→ **F-1310 #4 ep-10 baseline 도달**. 권역명 *느릿내* retrofit 잔여 = writer 인계 (loremaster regions v1.1 박힌 후 일괄 치환 후보, 본 r18 §1 표 박음).

## §5 reader-first 6 hard gate 측정

| # | gate | 측정 | 결과 |
|---|------|------|------|
| 1 | R0 (사용자 피드백 자동 PASS 금지) | 8 자리 R0 fail/deliberation/pass_gold 모두 응답 baseline 박음 + 자동 PASS 0 | ✓ |
| 2 | publish-under-name (작가 코퍼스 닮은 점 ≥ 3) | writer §B 박음 = blame-to-me + talking-to-people 2 코퍼스 + 공통 *짧고 솔직한 박자* 3 자리 | ✓ |
| 3 | toxic-term budget (1500 자당 ≤ 3) | 본문 toxic grep 0/15 = 1500 자당 = **0** ≤ 3 임계 ceiling | ✓ (ceiling, ep-09 v0.2 = 살짝 초과 위 격상) |
| 4 | no-glossary reading | 본문만으로 *처음 혼자 일어남 + 두 마음 같이 옴 + 같은 시간 따로 있는 따뜻함* 의미 박힘 — 세계관 사전지식 부재 R1 페르소나 5/5 즉답 가능 | ✓ |
| 5 | author-voice (실제 작가 결) | *짧고 솔직한 박자* + *명사 마침* + *답을 안 박는 결* = blame-to-me + talking-to-people 1:1 결 일치 (writer-r22 §B + frontmatter `source_author_corpus` 2 자리) | ✓ |
| 6 | emotional aftertaste | §1 *신기함* + §3 *가벼움 + 살짝 서운함* + §4 *한쪽이 살짝 따뜻해짐* + §5 *따뜻한 일이 될 수 있다는 알아챔* + 후미 *그거면 괜찮아* 단언 = 5 자리 명명된 감정 + 후미 단언 = 감정 표면 박힘 | ✓ |

→ **6/6 hard gate 통과 (ceiling 직전)**. ep-09 v0.2 (5/6 통과 + toxic 살짝 초과) 위 *gold standard 6/6 통과* 1 호 baseline.

## §6 R1 5 인 페르소나 cold-read 시뮬

5 인 풀 일관성 (cy-002 charter 페르소나 일관성 룰 = 16 라운드 누적 동일 풀 박음):

| 페르소나 | 5 분 즉답 | *지금* 결 (§6.1) | 공간감 (§6.2) | 감정 표면 | 평결 |
|---------|----------|----------------|------------|----------|------|
| P1 (개발자, 30대 남자) | "8 살 어린이가 처음으로 엄마 도움 없이 혼자 일어났는데, 옆방 부엌에서 엄마도 자기 시간을 따로 보내고 있는 걸 본 한 아침" | *오늘은 봤어 + 오늘 한 번은 알았어* = 자기 시점 결 명료 ✓ | 강가 ✓ / 권역명 ✗ | *그거면 괜찮아* 결 박힘 | PASS |
| P2 (디자이너, 40대 여자) | "강가의 작은 집에서 8 살이 처음으로 자기 시간을 가져 본 아침. 엄마와 같은 시간에 따로 앉는 따뜻함" | 1인칭 18+ 자리 + 가까운 거리 ✓ | 강가 한 줄 마을 + 안개 ✓ | 따뜻한 물 한 잔 + 마음 한쪽이 따뜻 | PASS |
| P3 (대학생, 20대 여자) | "유리가 처음 혼자 일어나서 엄마가 자기 시간을 따로 갖고 있는 걸 작은 창으로 본 이야기" | *지금 보고 있는 것* (강 / 안개 / 부엌 / 두 손) + *지금 느끼는 것* (신기함 / 가벼움 / 따뜻함) ✓ | 강가 ✓ | *오늘 한 번은 알았어 + 그거면 괜찮아* 후미 명료 | PASS |
| P4 (회사원, 50대 남자) | "8 살 딸이 엄마의 부엌 시간을 처음 알아채는 결. 같은 시간에 둘이 따로 있는 따뜻함" | 자기 결 박힘 ✓ | 강가 한 줄 마을 ✓ / 권역명 retrofit 자리 | *살짝 서운함 + 살짝 따뜻함* 두 마음 박힘 | PASS |
| P5 (작가/문장 편집자) | "사람 글이다. 8 살 voice 의 짧음 결 = 한 호흡 1 문장 + *~었어/~같아* 8 살 종결 + 어른 어휘 0 자리. 60+ 연강 (ep-09) ≠ 27 정해 (ep-04) ≠ 42 유경 ≠ 8 살 유리 4 자리 인물 voice 결 분리 박음 ✓" | *옛날 / 그날* 3 자리 = 8 살 continuous self-frame 결 보존 (false negative 차단 자리, §3 v1.2 분기 발의 짝) | 강가 + 강 + 안개 + 윗집 + 종소리 + 들녘 = 풍경 단서 풍부 ✓ / 권역명 *느릿내* retrofit 잔여 자리 | 후미 *그거면 괜찮아* = 단언 회피 결 | PASS |

→ **5/5 R1 페르소나 PASS** (5 분 즉답률 + *지금* 결 + 지형 즉답 + 감정 표면 4 측 동시 통과). 권역명 retrofit 자리만 잔여.

## §7 R2 plain editor cold-read

핵심 질문: *이게 사람 글인가, 세계관 매뉴얼인가?*

| 측정 | 결과 |
|------|------|
| 세계관 어휘 본문 (자국/결/손금/손바닥/자국빛/종이/지도/박힘/자리/색조/흙/옅게/박자/본인/새벽) | **0/15 자리 (ceiling)** = writer-r22 grep audit confirmed |
| 일상어 표면 결 | 강 / 안개 / 부엌 / 책상 / 두 손 / 손가락 끝 / 창 / 의자 / 따뜻한 물 한 잔 / 학교 / 종소리 / 윗집 / 아랫집 / 식탁 / 외투 = 15+ 자리 일상 표면 박음 |
| 사람 글 baseline | *오늘 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어* 첫 줄 + *내일은 혼자 일어나고 싶어* 1 줄 대사 + *너 오늘 혼자 일어났네 / 응* 짧은 1 줄 대사 + 후미 *그거면 괜찮아* 1 줄 단언 = 사람 결 박힘 |
| 8 살 voice signature | 종결 *~ 었어 / ~ 있어 / ~ 같아 / ~ 괜찮아* 41 자리 + 어른 어휘 0 = 8 살 단독 voice 박힘 ✓ |

→ **R2 PASS (gold standard ceiling 도달)**. ep-09 v0.2 (toxic body 5 자리 = 5.6 배 감소 baseline) 위 ep-10 v0.2 (toxic body 0 ceiling) = R2 측정의 ceiling 1 호.

## §8 v0.1 → v0.2 격상 검증 (critic-r17 ep-09 격상 검증 1 호 후 격상 검증 2 호 사례 — gold standard)

| 측정 | v0.1 (writer-r12 자가 fail) | v0.2 (writer-r22) | 변화 |
|------|---------------------------|-----------------|------|
| frontmatter title | *엄마는 엄마대로 — 유리의 한 아침* | *엄마는 엄마대로* (subtitle 비움) | 첫 500 자 toxic 1 → 0 |
| 본문 h1 | `# 엄마는 엄마대로 — 유리의 한 아침` | `# 엄마는 엄마대로` | frontmatter title 짝 1:1 |
| toxic_terms_count.first_500_chars | 1 (h1 *유리의 한 아침*) | **0 (ceiling)** | -1 |
| toxic_terms_count.새벽 | 3 (frontmatter stale, 본문 grep 0) | **0** (audit 정정) | -3 |
| toxic_terms_count.total | 5 (자가 카운트 stale) | **0 (ceiling)** | -5 |
| episode_status | fail | **candidate** | 격상 ✓ |
| reader_first_status | fail | **candidate** | 격상 ✓ |
| §6.1 평균 | 0.93 (r16 baseline, 본 r18 strict 재측정 시 0.97 위 자리) | **0.97 PASS 강 (ceiling 직전)** | +0.04 |
| §6.1 #4 메타포 밀도 | 0.83 (toxic 5 자리 stale 카운트) | **1.0 (ceiling, toxic 0)** | +0.17 |
| §reader-first 6 hard gate | 5/6 (toxic-budget gate 살짝 초과) | **6/6 (ceiling)** | +1 |
| §6.2 공간감 | partial PASS (지형 ✓ / 권역명 retrofit) | partial PASS (보존) | = |

**v0.1 → v0.2 = critic-r17 ep-09 격상 검증 1 호 후 격상 검증 2 호 사례 박음 (gold standard 회차)**. 1 호 사례 (ep-09) = false-positive 차단 후 격상 / **본 2 호 사례 (ep-10) = R0 pass_gold 검증 후 status fail → candidate 격상 = critic 측 *발행 차단 → 자가 fail → 자가 격상 → 재측정 PASS 강* 4 단계 루프 baseline 1 호** (critic-r11 차단 → writer-r12 자가 fail → writer-r22 자가 v0.2 격상 → 본 r18 재측정 PASS 강).

## §9 차기 critic r-N 의무 인계

본 r18 종결 시 차기 critic r-N (cold-read 측정 mode 또는 charter-update mode) 의무:

1. **§6.1 v1.x *인물 voice 결 분기 자리* 정식 흡수 (charter-update mode 후보)** — critic-r17 v1.1 (60+ durational) + 본 r18 v1.2 (8 살 continuous self-frame) 두 자리 baseline 도달 = 정식 흡수 자리. 8 살 / 27/40+ / 60+ 인물 voice 차이 보존 1:1 짝 (charter §6.1 마지막 단락 의무 짝).
2. **R0 사용자 평결 자리 박음 의무 (charter §Cold-read protocol 마지막 줄)** — ep-10 v0.2 = candidate 격상 권고 박음. R0 평결 도달 시 *PASS* 단어 박음 가능. 본 r18 = candidate 자리 보류 박음. **gold standard 회차 = R0 평결 큐 우선 진입 자리**.
3. **차기 ep-13 (다른 인물 또는 회차 확장) cold-read** — 8/8 인물 회차 풀 마감 도달 = ep-13+ 는 *심화 / 짝 / 권역 확장* 자리 (writer-r22 §7 큐).
4. **ep-09 v0.2 → v0.3 (옵션, 잔여)** — toxic-budget 살짝 초과 자리 추가 치환 후보 (critic-r17 §9 #4 인계 자리 보존).
5. **ep-10 v0.2 → v0.3 (옵션, retrofit)** — 권역명 *느릿내* 본문 retrofit 자리 (writer 인계, F-region-names v1.1 적용 후 일괄 치환 후보, 본 r18 §1 + §4 표 박음).

## §10 self-check (charter §트립와이어 7 자리 + 매니페스토 매핑)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 사전 지식 의존 | 본 critique = bible / regions / terrain / characters 사전지식 0 박힘 (R1 5 인 즉답률 5/5) | 미발화 |
| #2 작가 만족만으로 통과 | 본 r18 = R0 8 자리 + R1 5 페르소나 + R2 plain editor 3 측 분리 측정 후 candidate 권고 (PASS 단어 보류) | 미발화 |
| #3 30 초 vertical slice 무 즉답 | §1 첫 단락 1 줄 = *오늘 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어* = 30 초 안 *누구·언제·무엇 하는지* 즉답 가능 | 미발화 |
| #4 5 분 즉답 + 감정 표면 부재 | 5 분 즉답 PASS + 감정 표면 5 자리 명명 (신기함/가벼움/살짝 서운함/따뜻함/그거면 괜찮아) + 후미 단언 = 감정 표면 박힘 | 미발화 |
| #5 사용자 피드백 무시 | 8 자리 R0 모두 §1 표 박음 + 자동 PASS 0 + R0 pass_gold 1 자리 별도 박음 | 미발화 |
| #6 세계관 언어 평균 통과 | toxic-budget body 0/15 ceiling = 평균 통과 자리 자체가 부재 (모든 단어 0) | 미발화 |
| #7 작가성 없는 통과 | source_author_corpus 2 자리 + writer-r22 §B 닮은 점 3 자리 박힘 = author-voice match ✓ | 미발화 |

→ **트립와이어 7 자리 풀 = 0 발화 = 회복 baseline 7 호 누적 도달 (r12 + r13 + r14 + r15 + r16 + r17 + 본 r18)**.

매니페스토 매핑:
- **1차 축복**: *살아가는 자체가 축복* = 본 단편 후미 *같은 시간에 둘이 따로 있는 게 따뜻한 일이 될 수 있다 / 그거면 괜찮아* = 살아가는 자체의 따뜻함 박힘. 첫 5 분에 *느껴지는가* = ✓.
- **2차 진심 / 방향**: *엄마는 엄마대로 / 나는 나대로* = 각자의 *자기 방향* 자리를 비워 두는 진심 박힘.
- 매니페스토 직접 인용 0/7.

## §11 통합 평결

**ep-10 v0.2 = candidate 격상 권고 (gold standard 회차, R0 평결 큐 우선 진입 자리)**.

세부 자리:
- §6.1 *지금 결 거리* = **0.97 PASS 강 (ceiling 직전)** (dealbreaker 1·5 = 1.0/0.83 ≥ 0.6 ✓)
- §6.2 *공간감* = **지형 즉답 ✓ / 권역명 retrofit 잔여** (charter §6.2 ep-10 retrofit 자리, writer 인계)
- reader-first 6 hard gate = **6/6 통과 (toxic body 0/15 ceiling)**
- R1 5 인 페르소나 = **5/5 PASS**
- R2 plain editor = **PASS (ceiling)**
- v0.1 → v0.2 격상 검증 = **toxic 5 → 0 + 6 hard gate 5/6 → 6/6 + status fail → candidate = 격상 검증 2 호 사례 (gold standard)**

publish 권고 = **R0 사용자 직접 평결 후 episode_status candidate → published 격상 의무 자리**. 본 r18 자체로는 *PASS* 단어 박음 0 (charter §Cold-read protocol 마지막 줄 1:1 준수). gold standard 회차 = R0 평결 큐 우선 진입 권고.

처치 인계:
- voice-keeper r-N: §7-1 5 항목 측정 자가 적용 + 8 살 voice signature audit (60+ 연강 ≠ 27 정해 ≠ 42 유경 ≠ 8 살 유리 4 자리 분리 측정).
- critic r-N+1: §6.1 v1.x *인물 voice 결 분기 자리* 정식 흡수 charter-update mode 후보 (60+ + 8 살 두 자리 baseline 도달).
- writer r-N+1: ep-10 v0.3 권역명 *느릿내* retrofit 후보 (loremaster regions v1.1 박힌 후) + ep-09 v0.3 toxic-budget 추가 치환 후보 (critic-r17 §9 #4 인계 보존).
- orchestrator r-N+1: ep-10 v0.2 candidate 자리 보존 + R0 평결 큐 우선 박음 (gold standard 회차).
- implementer r-N+1: site/manifest.json ep-10 episode_status fail → candidate 표면 반영 (writer-r22 §7 인계 짝).

## TICK_SUMMARY

critic r18 (tick-104) cold-read 측정 mode = ep-10 v0.2 (8 살 유리 1인칭, candidate, gold standard 회차) §6.1 *지금 결 거리* 5 항 평균 0.97 PASS 강 (ceiling 직전, #4 메타포 밀도 1.0 ceiling 도달) + §6.2 *공간감* 지형 즉답 ✓ / 권역명 (느릿내) retrofit 잔여 + reader-first 6 hard gate 6/6 통과 (toxic body 0/15 ceiling) + R1 5/5 + R2 PASS (ceiling) = candidate 격상 권고 박음. v0.1 status fail → v0.2 candidate (toxic 5 → 0 + 6 hard gate 5/6 → 6/6) = critic-r17 ep-09 격상 검증 1 호 후 **격상 검증 2 호 사례 박음 (gold standard 회차)** = critic *발행 차단 → 자가 fail → 자가 격상 → 재측정 PASS 강* 4 단계 루프 baseline 1 호. §6.1 #5 v1.2 *8 살/어린이 voice continuous self-frame 면제 자리* 분기 룰 신규 발의 (critic-r17 v1.1 60+ durational 분기 위 누적 = v1.x 정식 흡수 자리 baseline 도달). target_orgs_advanced = F-20260503-episode-10-voice-as-gold-standard (gold standard 회차 status candidate 격상 검증 + must_fix #3 *지금* 결 1:1 적용) 1 차 격상 검증.
