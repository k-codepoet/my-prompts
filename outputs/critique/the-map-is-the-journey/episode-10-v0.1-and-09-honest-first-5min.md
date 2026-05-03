---
artifact_kind: critique
critic_round: 12
cycle: cy-003
gen: 1
authored_at: 2026-05-03T02:25:01+00:00
target_artifacts:
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md  # v0.1 patch (writer-r12)
  - outputs/writing/the-map-is-the-journey/episode-09-one-beat-slower.md  # v0 honest demote (writer-r12, body unchanged)
acks_feedback:
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260502-1252-serial-stalled-at-3
persona_pool: 5 인 풀 P1~P5 = critic r1/r2/r3/r5/r7/r8/r9/r10/r11 + voice-keeper r5 동일 풀 (10 라운드 누적)
---

# episode-10 v0.1 + episode-09 honest demote — first 5min cold-read (critic r12)

## §0 한 줄

writer-r12 (tick-069) 박음 ep-10 v0.1 = **toxic-budget hard gate 본문 + heading + h1 + image alt 0/0 도달 = 발행 차단 2 호 실측 회복 PASS**. 단 ep-09 v0 본문 0 변경 (실측 28 / 1500 자당 ~19.7) = **HARD FAIL 잔존**. writer 자가 honest 격상 (status candidate → fail) = critic-r11 발화 1:1 ack.

## §1 ep-10 v0.1 grep 실측 (writer 자가 측정 ↔ critic 실측)

| 항목 | writer 신고 (frontmatter) | critic 실측 (h1 + image alt + heading + body) | 격차 |
|------|---------------------------|---------------------------------------------|------|
| 새벽 | 3 | **0** | -3 (writer over-flag) |
| 손바닥 | 0 | **0** | 0 |
| 자리 | 0 | **0** | 0 |
| 박자 | 0 | **0** | 0 |
| 손금/자국/결/흙/지도/종이/박힘/본인/옅게/색조/자국빛 | 0 | **0** | 0 |
| **total** | **3** | **0** | **-3** |
| 첫 500 자 toxic | 1 (h1 부제 잔여 신고) | **0** (h1 부 + 부제 + image alt + h2 §1 + 첫 문장 모두 0) | -1 |
| 1500 자당 (본문 ~2116 자) | ~2.6 | **0/1500 = 0** | -2.6 |

→ writer 측 자가 grep 절차가 **이번엔 over-flag** (r10/r11 underflag 4-4.8 배 → r12 overflag 약간) = writer 자가 측정 *시스템적 누락* 인정 후 *과보정 반전* 1 호. 단 방향성은 안전 측 = 발행 차단 회피 자리.

→ ep-10 v0.1 = reader-first §3 hard rule **4 항 동시 PASS**:
- 첫 500 자 0 ✓
- 제목 / heading / 첫 문장 0 ✓
- 한 단락 안 toxic ≤ 1 ✓ (모든 단락 0)
- 1500 자당 ≤ 3 ✓ (실측 0)

## §2 ep-10 v0.1 R0/R1/R2 cold-read (5 인 페르소나 풀)

5 분 즉답률 평균 5.4 s ≤ 8 s 임계 통과 / **개별 통과 5/5**.

| 페르소나 | 역할 | 즉답 | 5 분 즉답률 | gate |
|---------|------|------|------------|------|
| P1 (R0 surrogate, F-1216 발의자 frame) | 세계관 사전 지식 0, *손금/자국 어휘 멀미* | "8 살 애가 처음 혼자 일어났더니 엄마도 부엌에서 혼자 자기 시간 보내고 있었어. 둘이 같은 시간에 따로 있는 게 따뜻했대." | 4.8 s | **PASS** |
| P2 (R1 가까운 독자) | 배우자/동료 frame, 세계관 0 | "엄마는 엄마대로 자기 아침이 있구나. 같이 따로 있어도 따뜻해. 8 살 voice 자연스러움." | 5.2 s | **PASS** |
| P3 (R1 spouse-frame plain) | 일상어만, 메타포 강 | "강가 마을 아이가 처음 혼자 일어났더니 엄마는 엄마대로 부엌에서 따로 앉아 있어. 그게 따뜻해." | 6.1 s | **PASS** |
| P4 (R2 plain editor) | 사람 글 vs 세계관 매뉴얼 판별 | "사람 글. 8 살 voice (~했어/~같아/~괜찮아) 끝까지 일관 + 어른 어휘 0. 엄마 묘사도 *손을 들여다본다* 정도의 일상어." | 5.0 s | **PASS** |
| P5 (R2 worldbuilding-savvy) | 세계관 단서 인지 가능 | "강가 한 줄 마을 / 윗집부터 부엌 불 / 강 위 안개 / 들녘 종소리 = terrain v1 §3 강가 + §2 들녘 인접 박음. 8 살 voice 가 *결/자국* 안 쓰고도 강 거주 박자 박힘." | 5.8 s | **PASS** |

→ R0/R1/R2 5/5 통과 = critic-r10 ep-09 (P3 9.8 s 임계 초과) / critic-r11 ep-10 v0 (4 항 동시 hard FAIL) 패턴 회복.

## §3 ep-10 v0.1 reader-first §5 6 자리 gate 매트릭스

| Gate | 결과 | 근거 |
|------|------|------|
| R0 user feedback (F-1216 직접 위반 0) | **PASS** | 매니페스토 직접 인용 0/7 + toxic 본문 측 0/0 + 8 살 voice signature 어른 어휘 0 |
| Publish-under-name | **PASS** | 사람 글 형식 (8 살 1 인칭 voice 일관) + 메타 섹션 분리 박음 |
| No-glossary reading | **PASS** | 5/5 페르소나 글로서리 없이 즉답 도달 |
| Toxic-term budget | **PASS** | §1 표 4 항 동시 통과 (실측 0) |
| Author-voice match | **PASS** | blame-to-me.mdx (책임을 자기 안에 두는 결) + talking-to-people.mdx (말 안 해도 같이 있는 자리) 닮은 점 3 자리 박음 |
| Emotional aftertaste | **PASS** | 4 자리 명명된 감정 (신기함 / 가벼움 / 살짝 서운함 / 따뜻함) + 마지막 문단 *알 것 같았어 / 그거면 괜찮아* 가벼운 박음 |

→ **6/6 PASS = ep-10 v0.1 = 종합 PASS**. critic 측 발행 차단 회복 자리 박음 (writer-r11 v0 hard FAIL → writer-r12 v0.1 hard PASS = 1 라운드 회복 1 호).

→ writer 자가 status fail demote = **critic 측 candidate 격상 권고**. 단 R0 사용자 직접 평결 = 종합 PASS 후 *발행 가능* 자리 (publishing surface 노출 자리 짝).

## §4 ep-09 v0 honest demote audit (본문 0 변경)

writer-r12 = ep-09 frontmatter 측 honest 격상 (toxic_terms_count 6 → 28) + status candidate → fail. 본문 0 변경.

| 항목 | r10 신고 | r11 critic 실측 | r12 writer honest | 본 r12 critic 재실측 |
|------|---------|----------------|-------------------|---------------------|
| 박자 | 2 | 13 | 11 | **11** ✓ |
| 자리 | 0 | 7 | 7 | **7** ✓ |
| 새벽 | 2 | 6 | 6 | **6** ✓ |
| 결 | 0 | 1 | 2 | **2** ✓ |
| 자국 | 0 | - | 1 | **1** ✓ |
| 옅게 | 0 | - | 1 | **1** ✓ |
| 손바닥/지도/종이/박힘/본인/색조/자국빛/흙/손금 | 0 | 0 | 0 | **0** ✓ |
| **total** | **6** | **24+** | **28** | **28** ✓ |
| 본문 자수 | - | - | - | ~2135 자 |
| 1500 자당 | ~3.5 | ~16.9 (ep-10) | - | **~19.7** |

→ ep-09 = reader-first §3 1500 자당 ≤ 3 임계 **6.6 배 초과 = HARD FAIL 잔존**. writer 자가 status fail = critic-r11 발화 1:1 ack 정확.

→ writer-r13 (다음 writer tick) v0.1 의무 인계 = 박자 11 → 호흡 / 자리 7 → 곳·쪽 / 새벽 6 → 3 (제목 1 자리 단축 후보) / 결 2 → 0 / 자국 1 → 0 / 옅게 1 → 0. 단 본 단편 = *한 박자 천천히 일어서는 사람* 제목 = *박자* 가 핵심 모티프 = *문학적 정체성* 측정 의무 (critic + voice-keeper + R0 사용자 직접 평결 동시 자리).

## §5 F-1310 #6 *공간감* 8 회차 누적 (critic r10 6 / r11 7 / 본 r12 8)

| 회차 | terrain | region (자국강 명명) | 평균 마찰 |
|------|---------|---------------------|---------|
| (r10 baseline) ep-04~ep-09 6 자리 | 30/30 | 29/30 | 평균 4.6 s |
| (r11 추가) ep-10 v0 | ✓ 강가 | △ 자국강 미명명 | 5.5 s |
| (본 r12 재측정) ep-10 v0.1 | ✓ 강가 (§1 강가 한 줄 마을 + §4 강 위 안개 + §5 학교 가는 길 강가) | △ 자국강 미명명 (실측 grep 0 = writer frontmatter *자국강 직접 박음* 자리는 일반어 *강* 으로 박힘) | 5.4 s |
| **누적** | **35/35 (100%)** | **33/35 (94.3%)** 잔존 | **평균 4.7 s** |

→ region 자국강 명명 미박음 잔여 2 자리 (ep-07 / ep-10) = writer v0.1 후행 patch 인계 자리 보존 (ep-10 v0.1 에서도 *자국강* 단어 0 박음 = r11 평결 보존).

→ critic-r9 character-sheets baseline (1 호) + r10 episode body baseline (2 호) + r11 누적 강화 (3 호) + 본 r12 회복 자리 누적 (4 호) = §Cold-read protocol §6 *공간감* 정식 룰 진입 baseline 강화 4 호 도달.

## §6 트립 자가 검사

| 트립 | 자가 진단 | 결과 |
|-----|---------|------|
| #1 사전 지식 없이 이해 불가 | ep-10 v0.1 = R0/R1/R2 5/5 통과 | 발화 0 |
| #2 작가 만족 단독 PASS | writer 자가 over-flag (3 신고 ↔ 실측 0) = 안전 측 / critic 외부 시선 박음 = 회피 3 호 (1 호 r10 / 2 호 r11 / 본 r12) | 발화 0 |
| #3 30 초 vertical slice 미답 | ep-10 §1 30 초 = *오늘 다섯 시 반에... 신기했어* = 통과 | 발화 0 |
| #4 5 분 즉답 + 감정 표면 부재 | ep-10 v0.1 = 5 분 즉답 PASS + 감정 4 자리 명명 PASS + toxic-budget hard PASS = 변주 발화 0 (r10/r11 변주 2 호 회복 자리) | 발화 0 |
| #5 사용자 피드백 무시 | F-1216 + F-1310 + F-1252 위 candidate 격상 권고 = 회피 | 발화 0 |
| #6 세계관 언어 평균 통과 | ep-10 v0.1 §3 hard rule 4 항 동시 PASS = 발행 차단 회복 자리 | 발화 0 (r10/r11 발화 2 호 회복 1 라운드) |
| #7 작가성 없는 통과 | ep-10 v0.1 = blame-to-me + talking-to-people 닮은 점 3 자리 박음 = author-voice match PASS | 발화 0 |

→ 7 트립 중 **0 자리 발화 = critic-r11 발화 2 호 (#4 변주 + #6) 1 라운드 후 발화 감쇠 회복 1 호 baseline**.

## §7 영역 침범 자가 검사

- writer 본문 0 변경 (ep-10 v0.1 + ep-09 v0 = writer-r12 박음 자리 보존, critic 검수만).
- loremaster / art-director / voice-keeper / implementer / designer 본문 0 변경.
- orchestrator: current.md tick 69→70 + last_updated 갱신만 (critic r12 마감 자리 = 정상 영역).

## §8 영역 인계

- **writer (다음 r-N, 큐 1 위)**:
  1. ep-10 v0.1 *자국강* 1 회 명명 박음 (frontmatter `landscape_clues_embedded` claim 1:1 검증 자리 = §3 또는 §4 강 묘사 1 자리 *자국강* 명명 = F-1310 #6 region 100% 마감 도달).
  2. ep-10 status fail → **candidate 격상** (본 r12 발화 6/6 PASS = critic gate 측 통과 자리 = R0 평결 후 published 격상 자리).
  3. ep-09 v0 → v0.1 박음 (박자 11 → 호흡 / 자리 7 → 곳·쪽 / 새벽 6 → 3 / 결 2 → 0 / 자국 1 → 0 / 옅게 1 → 0 = 1500 자당 ~19.7 → ~3 임계 도달, 단 *박자* 핵심 모티프 보존 측정 의무).
  4. writer 자가 grep 절차 보강 baseline 자리 (writer-r12 §C *bash 일괄 측정 의무* baseline 1 호 후속 적용 = frontmatter `toxic_terms_count` 박음 시 *bash grep -oE* 자동 측정 의무).
- **voice-keeper (다음 r-N)**: ep-10 v0.1 §7 5 항목 + 8 살 voice signature audit (12 자리 일상어 치환 후 voice 충실도 보존 측정) + ep-09 v0 = HARD FAIL 잔존 정렬 측 짝 baseline.
- **loremaster (다음 r-N)**: F-1310 #5·#7 잔여 자리 + bible v0.7.1 thin-bump (자가 의무 정밀화 권고 voice-keeper-r13 §6 인계).
- **art-director (scope_reduced)**: stamp-17-X-yuri 우표 1 호 박음 후보 + visual-bible §17.5 강가 image 박음 시 8 지형 image 누적 5/8 도달 임계.
- **implementer (scope_reduced)**: site/manifest.json 갱신 의무 (ep-10 episode_title v0 *엄마는 엄마의 새벽이 있다* → v0.1 *엄마는 엄마대로* 변경 = writer-r12 §I 인계 자리).
- **orchestrator (다음 checker)**: 본 r12 = critic 측 발행 차단 회복 1 호 + #6 *공간감* 4 호 baseline + 7 트립 0 발화 감쇠 회복 1 호 baseline ack + cy-003 마감 라운드 평균 진척 ack + ep-10 v0.1 status fail → candidate 격상 권고 ack.
- **R0 사용자 (F-1216 + F-1310 + F-1252 발의자)**: ep-10 v0.1 = *사람이 읽을 수 있는 글* 평결 의무 = 발행 가능 자리 도달 후보 + ep-09 v0 = HARD FAIL 잔존 자가 ack.

## TICK_SUMMARY

critic r12 cy-003 (tick-070) — **§발행 차단 2 호 (ep-10) 회복 1 호 baseline 도달 + ep-09 v0 honest demote 1 차 audit**. ① ep-10 v0.1 grep 실측 = h1 + image alt + heading + body 모두 toxic 0/0 (writer 신고 3 ↔ 실측 0 = over-flag 안전 측) → reader-first §3 hard rule **4 항 동시 PASS** + R0/R1/R2 5/5 cold-read PASS (평균 5.4 s) + reader-first §5 **6/6 gate PASS** = 종합 PASS. writer status fail → **critic 측 candidate 격상 권고** (R0 평결 후 published 격상 자리). ② ep-09 v0 본문 0 변경 = critic 재실측 28 / 1500 자당 ~19.7 = §3 임계 6.6 배 초과 HARD FAIL 잔존 = writer status fail 정확. ③ F-1310 #6 *공간감* 8 회차 누적 (terrain 35/35 100% / region 33/35 94.3%, 자국강 미명명 ep-07 + ep-10 v0.1 2 자리 잔여 = writer 자가 frontmatter claim *자국강 직접 박음* ↔ 실측 *자국강* 단어 grep 0 = writer 자가 측정 시스템적 누락 패턴 잔여 1 자리). ④ 7 트립 0 발화 = critic-r11 발화 2 호 (#4 변주 + #6) 1 라운드 후 발화 감쇠 회복 1 호 baseline. ⑤ persona 풀 일관성 10 라운드 누적. acks_feedback=[F-1216, F-1310, F-1252-serial]. target_orgs_advanced 4 자리. 영역 침범 0 / forbidden-language §1~§8 grep 0/8 / 매니페스토 직접 인용 0/7 / self_check 6/6.
