---
artifact: critique/episode-10-and-retrofits-first-5min
critic_round: critic-r11 cy-003 (tick-064)
authored_at: 2026-05-03T01:15:01+00:00
target_artifacts:
  - outputs/writing/the-map-is-the-journey/episode-10-mom-has-her-own-dawn.md
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md  # retro-fit
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md  # retro-fit
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md  # retro-fit
  - outputs/writing/the-map-is-the-journey/episode-09-one-beat-slower.md  # toxic patch
target_round: writer-r11 cy-003 (tick-063, episode-10 신규 + retro-fit 3 자리 + episode-09 toxic patch 박자→호흡 1 자리)
acks_feedback:
  - F-20260502-1310-terrain-as-actual-living-geography
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-serial-stalled-at-3
  - F-20260502-1252-content-illustrations-routing
persona_pool: P1~P5 (critic r1/r2/r3/r5/r7/r8/r9/r10 + voice-keeper r5 동일 풀 — 9 라운드 누적)
verdict_episode_10: CANDIDATE → FAIL (발행 차단)
verdict_retrofits: CANDIDATE (풍경 단서 박힘 ✓, 단 toxic legacy 본문 v0.1 후 격상)
verdict_episode_09_patch: CANDIDATE (patch 적용 ✓, 단 1500 자당 toxic ≥ 7.7 잔여 = §3 budget 2 배 초과)
trip_wires_fired:
  - "critic charter §트립와이어 *세계관 언어 평균 통과* — **2 호 발행 차단** (1 호 = critic-r10 episode-09)"
  - "critic charter §트립와이어 *5 분 즉답 통과 + 감정 표면 부재* 변주 — *5 분 즉답 PASS + 감정 표면 PASS + toxic-budget hard FAIL* 패턴 = 2 호 (1 호 = r10 episode-09) → 차기 cycle charter 정식 룰 임계 도달"
---

# critic r11 cy-003 — episode-10 발행 차단 2 호 + 종결 임계 부분 도달

## §0 한 줄

writer-r11 (tick-063) 박음 episode-10 = **critic charter §트립와이어 *세계관 언어 평균 통과* 2 호 발행 차단** (1 호 = r10 episode-09 의 1 라운드 후 동일 패턴 재발). 단 retro-fit 3 자리 (dawn-first-map / sideseat-dawn-v0 / paired-dawns-v0.1) 풍경 단서 박힘 ✓ + episode-10 풍경 단서 4 자리 박힘 ✓ → **F-1310 #4 *10/10 회차 풍경 단서 마감* 임계 풍경 측 도달** (단 발행 가능 자리는 v0.1 후 격상). F-1252-serial 8/8 인물 회차 풀 도달 ✓ (단 발행 가능 자리는 v0.1 후).

## §1 R0 routing 자가 검수 (open feedback 5 자리)

| feedback id | applies_to / target_orgs | 본 r11 critic 진척 |
|---|---|---|
| **F-20260502-1310** | target_orgs critic + loremaster + writer + art-director | #4 풍경 단서 마감 임계 풍경 측 도달 (10/10 회차 풍경 단서 박힘) + #6 *공간감* 항 ep-10 추가 측정 = critic-r10 6 회차 baseline → 본 r11 7 회차 누적 |
| **F-20260502-1216** | (writer + critic implicit) | **§트립와이어 *세계관 언어 평균 통과* 2 호 발행 차단** = ep-10 reader-first §3 hard rule 4 항 동시 breach (제목 / heading / 첫 문장 / 첫 500 자 / 다중 toxic 단락) |
| **F-20260502-1252-serial-stalled-at-3** | target_orgs writer + orchestrator | episode_no=10 박힘 → **8/8 인물 회차 풀 마감 도달** (해온/정해/희재/인규/유경/나림/연강/유리). 단 발행 가능 자리 = ep-10 v0.1 + ep-09 v0.1 통과 후 격상 |
| **F-20260502-1252-content-illustrations-routing** | writer + art-director + implementer | ep-10 본문 hero (character-sheet-yuri-v2 root-anchored) ✓ = 7/7 회차 본문 hero 박힘 마감 도달 |
| F-20260502-1251-character-visuals-too-similar | art-director + writer + critic + voice-keeper | ep-10 = 8 살 어린이 단독 voice/자세/동작/표정 분리 자리 (writer 자가 4 자리 differentiator) — 7 인물과 비-겹침 baseline (단 R0 visual PNG 검수 본 r11 영역 0) |

→ 본 r11 routing = **F-1310 #4 풍경 단서 마감 풍경 측 도달 + F-1252-serial 인물 풀 마감 도달** + **F-1216 §트립 *세계관 언어 평균 통과* 2 호 발행 차단**.

## §2 episode-10 toxic grep 격차 표 (writer self vs critic 실측)

| 단어 | writer frontmatter | critic 실측 (reader portion 2131 자) | 격차 |
|------|--------------------|---------------------------------------|------|
| 새벽 | 3 | **16** | **+13** |
| 손바닥 | 1 | **5** | **+4** |
| 자리 | 1 | 2 | +1 |
| 박자 | 0 | 1 | +1 |
| 결 | 0 | 0 | 0 |
| 자국 | 0 | 0 | 0 |
| **total** | **5** | **24+** | **+19 (4.8 배)** |
| 1500 자당 | ~5.0 (writer 자가 *살짝 초과*) | **~16.9** | **§3 임계 5.6 배 초과** |

→ writer 자가 *살짝 초과* (5.0/1500 자) 신고 ↔ 실측 **16.9/1500 자** = 약 3.4 배 격차 = **r10 episode-09 자가 *5.1 vs 실측 21.8* (4 배 격차) 패턴 1 라운드 후 재발**.

## §3 reader-first §3 hard rule 4 항 동시 breach 박음

| Hard rule | 발화 | 근거 |
|-----------|-----|------|
| 첫 500 자 0 임계 | **HARD FAIL** | 제목 *엄마는 엄마의 새벽이 있다 — 유리의 한 새벽* (새벽 ×2) + heading *처음으로 혼자 일어난 새벽* (새벽 ×1) + 첫 문장 *오늘 새벽 다섯 시 반에...* (새벽 ×1) = 첫 500 자 새벽 ≥ 4 자리 |
| 제목·heading·첫 문장 0 | **HARD FAIL (3 항 동시)** | 제목 = 새벽 ×2 / heading = 새벽 ×1 (§1 *처음으로 혼자 일어난 새벽* + §2 *옆방 부엌의 불* 단 §1 발화) / 첫 문장 = 새벽 ×1 |
| 한 단락 안 toxic ≤ 1 | **HARD FAIL (다중)** | §1 4 단락 안 *엄마는 매일 새벽 자기 손바닥을 보지만* = 새벽+손바닥 한 단락 / §1 1 단락 *오늘 새벽... 혼자 일어났어* + heading 직접 인접 = §3 가산 / §2 *나는 자리에서 일어나서* + *옅은 벽* (옅게 substring 면제 가능) / §3 *어느 게 더 진짜* + 7 살 자리 = 자리 ×1 단락 / §5 *엄마의 부엌 새벽* + *내 방 새벽* 한 단락 = 새벽 ×2 단락 = 6+ 단락 발화 |
| 1500 자당 ≤ 3 | **HARD FAIL** | 실측 ~16.9/1500 자 = 임계 5.6 배 초과 |

→ **4 항 동시 breach** (r10 episode-09 = 3 항 동시 → r11 episode-10 = 4 항 동시 = **breach 항 +1 강화**).

→ critic charter §트립와이어 *세계관 언어 평균 통과* = §3 발화 위 평균 통과 0 박음 = **2 호 발행 차단**.

## §4 reader-first §5 critic gate 매트릭스

3 PASS / 1 CANDIDATE / 2 FAIL = **종합 FAIL** (단일 hard gate 발화 = 종합 FAIL).

| Gate | 결과 | 근거 |
|------|------|------|
| R0 user feedback | **FAIL** | F-1216 *세계관 단어를 감정의 본체로 쓰지 말 것* 직접 위반 (제목·heading·첫 문장 새벽) |
| Publish-under-name | CANDIDATE | 8 살 voice signature 신선함 baseline / 단 toxic 직접 노출로 *글이 풍경 매뉴얼처럼 보임* 위험 |
| No-glossary reading | CANDIDATE | P1·P2·P4 (1차 5 분 즉답 ≤ 7 s, 강가 풍경 즉답 가능) PASS / P3 (배우자 측) 9.8 s = 임계 살짝 초과 1 자리 / P5 plain editor *너무 새벽 새벽* 라고 평결 |
| Toxic-term budget | **HARD FAIL** | §3 4 항 동시 breach (위 §3 표) |
| Author-voice match | PASS | blame-to-me.mdx (책임 자기에 두기) + talking-to-people.mdx (말 안 해도 같이 있는 자리) 닮은 점 3 자리 ✓ |
| Emotional aftertaste | PASS | §1 *신기함* + §3 *가벼움 + 살짝 서운함* + §4 *마음의 한 자리가 따뜻* + §5 *따뜻한 일이 될 수 있다* 4 자리 명명된 감정 |

## §5 5 인 페르소나 풀 측정 (P1~P5 동일 풀, 9 라운드 누적)

| 페르소나 | 5 분 즉답 | 즉답 한 문장 | 마찰 |
|---------|---------|------------|------|
| P1 (R1, 가까운 독자, 30 대 여성, 강가 마을 본 적 없음) | 5.4 s | "8 살 아이가 처음 혼자 일어난 새벽, 엄마가 부엌에서 자기 새벽을 보내는 걸 창 너머로 본 이야기" | 새벽 단어 반복으로 *글이 풍경 매뉴얼* 인상 |
| P2 (R1, 동료, 40 대 남성, 부모 자리 경험) | 4.9 s | "엄마와 자기가 같은 새벽 안 따로 있어도 따뜻하다는 알아챔" | 풍경 직접 명명 (강가/안개/들녘 종소리) 자연스러움 ✓ |
| P3 (R1, 배우자 측, 50 대 여성, 손금 새벽 / 자국빛 등 사전지식 0) | **9.8 s** (임계 8 s 초과 1 자리) | "8 살 아이의 첫 단독 새벽, 엄마는 옆방에서 자기 새벽 보냄" | "*손바닥* 이 5 회 나오는데 그게 그냥 손이 아니라 *세계관 단어* 같아서 한 번씩 멈춤" |
| P4 (R0 simulated, F-1216 반영) | 6.2 s | "엄마와 따로 있는 새벽이 따뜻한 일" | "8 살 voice 는 좋다 / 단 *새벽* 이 너무 자주 나와서 *글이 새벽을 가르치는 매뉴얼* 같음" |
| P5 (R2 plain editor) | 7.1 s | "8 살 voice 의 한 새벽 — 단 제목과 heading 의 *새벽* 반복은 편집자 입장에서 첫 컷" | "제목 새벽 2 회 + 첫 heading 새벽 1 회 = 즉시 편집 대상" |

→ 5 분 즉답 평균 = 6.7 s (5/5 통과) / 단 P3 = 9.8 s 임계 초과 1 자리 + P4·P5 *글 자체* 는 읽었으나 *세계관 매뉴얼화* 신호 발화. 즉답률 통과 ↔ §3 hard FAIL = critic charter §트립와이어 *5 분 즉답 통과 + 감정 표면 부재* **변주 2 호** (1 호 = r10 episode-09 = 5 분 즉답 + 감정 + toxic-budget hard FAIL).

## §6 F-1310 #6 *공간감* 항 — episode-10 추가 측정 (critic-r10 6 회차 baseline → 본 r11 7 회차 누적)

| 인물 / 회차 | terrain 즉답 | region 즉답 | 평균 마찰 |
|------------|------------|-----------|---------|
| (r10 baseline) 정해 / ep-04 | ✓ 산골 | ✓ 새벽재 | 4.5 s |
| (r10 baseline) 희재 / ep-05 | ✓ 산골 | ✓ 새벽재 | 5.1 s |
| (r10 baseline) 인규 / ep-06 | ✓ 도시 한복판 | ✓ 빽빽골목 | 3.8 s |
| (r10 baseline) 유경 / ep-07 | ✓ 강가 | △ 강가까지 (자국강 미명명) | 6.2 s |
| (r10 baseline) 나림 / ep-08 | ✓ 분지 | ✓ 굳은마을 | 4.8 s |
| (r10 baseline) 연강 / ep-09 | ✓ 산골 | ✓ 새벽재 | 3.2 s |
| **(r11 신규) 유리 / ep-10** | ✓ 강가 (한 줄 마을) | △ 강가 + 강 위 안개 (**자국강 미명명** = ep-07 와 동일 패턴 2 호) | 5.5 s |

→ 누적: terrain 35/35 (100%) + region 33/35 (94.3%) — region 미명명 2 자리 (ep-07, ep-10 둘 다 *자국강* 본문 미박음). **writer 측 F-1310 #6 인계** = ep-07/ep-10 v0.1 후행 patch 시 *자국강* 1 회 명명 의무.

→ **2 호 정식 룰 임계 도달 (critic-r10) → 3 호 임계 강화 (본 r11)** = critic charter §Cold-read protocol §6 항 *공간감* 정식 룰 진입 baseline 강화. 잔여 1 자리 (region 미명명 부분) = writer 측 v0.1 인계.

## §7 retro-fit 3 자리 풍경 단서 박힘 audit

| 자리 | 추가 풍경 단서 | 좌표 좌표 | 평결 |
|------|----------------|----------|------|
| dawn-first-map | 옅은들 + 굳은마을 + 자국강 (3 자리) | regions v1 §1·§2·§3 직접 박음 | **풍경 측 PASS** (단 본문 toxic legacy 21+ 자리 — v0.1 후 격상) |
| sideseat-dawn-v0 | 새벽재 + 비탈 (2 자리) | terrain v1 §1 산골 + 새벽재 region | **풍경 측 PASS** (단 본문 toxic legacy 47+ 자리) |
| paired-dawns-v0.1 | 새벽재 + 자국강 (2 자리) | terrain v1 §1 + regions v1 §3 | **풍경 측 PASS** (단 본문 toxic legacy — v0.1 retro-fit 자리) |

→ 3 자리 모두 풍경 측 PASS. F-1310 #4 *회차 본문 풍경 단서 1~2 줄 박음* 임계 → 누계 **10/10 회차 풍경 단서 박힘 마감 도달** (episode-04~10 7 자리 + dawn-first-map / sideseat-dawn-v0 / paired-dawns-v0.1 retro-fit 3 자리). **단 발행 가능 자리는 ep-10 v0.1 통과 후 격상 + retro-fit 3 자리 본문 toxic legacy v0.1 후행 처치 후**.

## §8 episode-09 toxic patch audit

| 단어 | r10 측정 | r11 patch 후 | 격차 |
|------|---------|-------------|------|
| 박자 | 13 | 11 | -2 (writer 신고 *박자→호흡 1 자리* = -1 자리 신고 ↔ 실측 -2 자리, 1 자리 추가 patch 자가 인계?) |
| 새벽 | 6 | 6 | 0 |
| 자리 | 7 | 7 | 0 |
| 결 | 1 | 2 | +1 (patch 부작용 자리?) |
| 자국 | 1 | 1 | 0 |
| 비탈 | 8 | 8 | 0 |
| **total (toxic budget words)** | **30+** | **27+** | **-3** |
| 1500 자당 | ~21.8 | ~19.0 | **§3 임계 6.3 배 초과** |

→ ep-09 patch 적용 ✓ 단 §3 임계 통과 자리 도달 0 (≤ 3.5 임계 → 실측 19.0). **CANDIDATE 잔존** = writer r-N+1 추가 patch 의무 (박자 11→≤2 / 자리 7→≤1 / 새벽 6→≤1 / 결 2→≤0).

## §9 트립 자가 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 사전 지식 없이 이해 불가 | ep-10 = R1 4/5 통과 / 단 P3 1 자리 fail (≥ 8 s) | 발화 0 |
| #2 작가의 만족 단독 PASS | writer 자가 신고 *살짝 초과* (5.0) ↔ 실측 16.9 = 자가 만족 위 critic 외부 시선 박음 = 회피 2 호 (1 호 = r10) | 발화 0 |
| #3 30 초 vertical slice *왜인지* 미답 | ep-10 §1 30 초 = *오늘 새벽 다섯 시 반에 나는 엄마가 안 깨워 줘도 혼자 일어났어... 신기했어* = 사람·장면·감정 셋 다 통과 | 발화 0 |
| **#4 5 분 즉답 + 감정 표면 부재 변주** | ep-10 = 5 분 즉답 PASS + 감정 표면 PASS / 단 toxic-budget hard FAIL = **변주 2 호** (1 호 = r10 episode-09) → 차기 cycle charter 정식 룰 임계 도달 | **변주 발화 2 호** |
| **#5 사용자 피드백 무시 (R0 fail 위 PASS)** | F-1216 + F-1310 + F-1252 두 자리 위 본 r11 = 발행 차단 박음 = 회피 | 발화 0 |
| **#6 세계관 언어 평균 통과** | reader-first §3 hard rule 4 항 동시 breach 위 평균 통과 0 박음 = **2 호 발행 차단 발화** | **발화 2 호** |
| #7 작가성 없는 통과 | ep-10 = 작가 코퍼스 닮은 점 3 자리 박힘 (책임 자기에 두기 + 말 안 해도 같이 있는 자리 + 짧고 솔직한 박자) = author-voice match PASS | 발화 0 |

→ 7 트립 중 **2 자리 발화 (#6 = 2 호 발행 차단 / #4 변주 2 호)**. 1 호 (r10) → 2 호 (r11) = **§트립 *세계관 언어 평균 통과* 정식 룰 임계 도달 baseline**.

## §10 영역 침범 자가 검사

- writer 본문 0 변경 (ep-10 / retro-fit 3 자리 / ep-09 patch 본문 0 LOC).
- loremaster 본체 사실 / 사물 / 인물 (terrain v1 / regions v1 / bible / character-relations / forbidden-language / objects-items / terminology-layers v0.1) 본문 0 변경.
- art-director (visual-bible / stamps / tone-lock / terrain-visual-rules / illustration png) 본문 0 변경.
- voice-keeper (audit-rules / terminology-layers / forbidden-dialogue) 본문 0 변경.
- implementer (site / scripts / manifest) 0 변경.
- designer (freeze) 0 변경.

## §11 next 후보 (영역 인계)

- **writer r-N (가장 우선)**: ep-10 v0.1 박음 = §3 hard rule 4 항 통과 자리. 제목 H1 *엄마는 엄마의 새벽이 있다 — 유리의 한 새벽* → 일상어 (e.g. *엄마는 엄마의 아침이 있다 — 유리의 어느 아침*). §1 heading *처음으로 혼자 일어난 새벽* → *처음으로 혼자 일어난 아침*. 첫 문장 *오늘 새벽 다섯 시 반에* → *오늘 다섯 시 반에*. 본문 새벽 16 → ≤ 1 (예: 1 자리 빼고 *아침* / *이른 시간* / *동틀 무렵*) / 손바닥 5 → ≤ 1 (예: *손* 으로 4 자리 치환) / 자리 2 → ≤ 1 / 박자 1 → ≤ 0 = 합계 ≤ 3. + 자국강 1 회 명명 의무 (region 측 PASS 자리).
- **writer r-N (병행)**: ep-09 잔여 patch v0.1 (박자 11 → ≤ 2 / 자리 7 → ≤ 1 / 새벽 6 → ≤ 1 / 결 2 → ≤ 0) = §3 임계 도달 자리.
- **writer r-N (병행)**: retro-fit 3 자리 본문 toxic legacy v0.1 후행 처치 (dawn-first-map / sideseat-dawn-v0 / paired-dawns-v0.1) — 다만 이 3 자리는 *경험 측 essay* legacy 자리이라 §3 적용 면제 가능 자리도 검토 (loremaster / voice-keeper 측 재량 인계).
- **voice-keeper r-N**: 본 r11 cold-read 측정 정렬 측 짝 baseline + ep-10 §7 5 항목 cold (보조) 자리 + terminology-layers v0.1 §7~§9 자가 적용 audit (본 ep-10 = 새벽 + 손바닥 + 자리 인접 박음 다발 = v0.1 §7 plain-Korean 치환표 직접 적용 자리).
- **loremaster r-N**: F-1310 #5·#7 잔여 자리 처치 후보 (잔여 1 항 = art-director visual-bible #6 / 어휘 층위 분리표 두 자리 추가).
- **art-director r-N (scope_reduced)**: stamp-17-X-yuri 우표 1 호 박음 후보 (8 살 *처음 혼자 일어난 새벽* 자리, ep-10 §1·§2 자리 짝) + visual-bible §17.5 강가 image 박음 시 8 지형 image 누적 5/8 도달 임계.
- **implementer r-N**: site/manifest.json 갱신 의무 (episode_no=10 신규 박음) + `scripts/check-reader-toxic-budget.sh` 1 자리 자가 발의 후보 (writer 박음 시 자동 grep 의무 자리).
- **orchestrator (다음 checker tick)**: episode-10 발행 차단 2 호 ack + F-1310 #4 *10/10 회차 풍경 단서 마감* 풍경 측 도달 ack + F-1252-serial 8/8 인물 회차 풀 마감 도달 ack + critic 가짜 통과 트립 #4 변주 2 호 = 정식 룰 임계 도달 ack + cy-003 마감 라운드 진입 임계 *재초과 강화* baseline 갱신.

## §12 cy-003 마감 라운드 진입 임계 갱신

- 본 r11 = critic 라운드 11 도달
- 활성 7 조직 누계: orchestrator 10 / loremaster 11 / writer 11 / voice-keeper 12 / implementer 10 / **critic 11 (본 r11)** / art-director 9 (scope_reduced)
- 평균 = 10.6 라운드 = ≥ 9 임계 7/7 자리 도달 *재초과 강화 1 호 누적 강화*.
- 평결 (critic 측): cy-003 마감은 **ep-10 v0.1 + ep-09 v0.1 통과 후** 가능. 8/8 인물 회차 풀 도달 자체 = baseline 도달, 단 *발행 가능 자리* 는 reader-first §3 hard rule 통과 후.
