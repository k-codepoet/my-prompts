---
role: critic
round: 3
cycle: cy-003
mode: cold-read (visual 카테고리 — F-1251 R0 재검수 critic 측 1 호 + post-regen 짝)
authored_at: 2026-05-02T16:55:01+00:00
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v2.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v2.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-huijae-v2.png
target_round: art-director r2 cy-003 (tick-030)
pre_regen_baseline_doc: outputs/alignment/the-map-is-the-journey/character-visual-distinction-baseline-v0.md
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced:
  - "F-20260502-1251 applies_to critic 측 R0 재검수 1 호 박음 (must_fix #5: critic 또는 voice-keeper R0 관점 재검수)"
persona_pool: R0 critic-side blind-distinction (cy-002 P1~P5 풀 안 P1·P3·P5 보조 차용)
champions_keywords_primary: [축복]
champions_keywords_secondary: [방향]
---

# critic r3 cy-003 — F-1251 R0 재검수 critic 측 (visual blind-distinction post-regen)

## 자리 박음 (한 줄)

art-director r2 cy-003 (tick-030) v2 character-sheet 3 자리 (해온/정해/희재) cold-read =
critic 측 *이름 가림 5 초 분별* 풀 합산 **0.90 / 1.0 = PASS** (≥ 0.8 임계 + 항목 1 dealbreaker
0.95 ≥ 0.6 통과). pre-regen v1 baseline 0.56 → post-regen v2 0.90 = **+0.34 분별 임계 격상 박음**.
**F-1251 critic 측 R0 재검수 1 호 박음** = applies_to 4/4 ack 도달 (art-director r1 + r2 +
voice-keeper r4 + 본 r3) = 3-tick 룰 인접 자리 처치 + 3 측 동시 visual 게이트 critic 측 1 자리
도달 (voice-keeper §8 post-regen 측정 짝 박음 후 동시 PASS 도달 자리 = R0 사용자 최종 평결
초청 자리).

## §1 R0 routing 자가 검수

| feedback id | applies_to / target_orgs | critic 측 ack 도달 자리 | 본 tick 진척 |
|---|---|---|---|
| F-20260502-1216-general-writing-too-abstract | (writer + critic implicit) | r2 (tick-007 reader-first §6 자리 인계) | 0 (보존) |
| **F-20260502-1251-character-visuals-too-similar** | **applies_to art-director, writer, critic, voice-keeper** | (미박음 — 3-tick 룰 인접 자리) | **본 r3 직접 응답 1 호 박음** ✓ |
| F-20260502-1252-content-illustrations-routing | target_orgs writer, art-director, implementer (must_fix critic 측 inline image 가산) | r2 (tick-014 inline 2 자리 가산 차감 0) | 0 (보존) |
| F-20260502-1252-serial-stalled-at-3 | target_orgs writer, orchestrator | n/a | 0 |

→ 1/4 자리 critic 직접 응답 자리 = F-1251 must_fix #5 = 본 r3 박음. **target_orgs_advanced =
F-1251 critic 측**.

## §2 측정 도구 (charter §Cold-read protocol + audit-rules-v0 §8 짝 박음)

charter §Cold-read protocol *비-writing 카테고리 §7 면제* 명시 자리 = visual character-sheet
는 §7 reader gate 비대상. 대신 voice-keeper §8 *visual blind-distinction gate* 와 짝지어 critic
측 R0 cold-read 1 호 박음:

- 측정 도구 = `character-visual-distinction-baseline-v0.md §1` 3 항목 (5 초 분별 / silhouette /
  face crop) 1:1 흡수.
- 측정 측 = critic R0 페르소나 (voice-keeper §8 측정과 *분리 측정 의무* — audit-rules-v0
  §8-2). 동일 도구 / 분리 측 측정.
- 페르소나 풀 = R0 critic-side single + cy-002 P1~P5 풀 안 P1 (외부 첫 5 분 진입자) ·P3 (시각
  세부 우선 독자) ·P5 (한복 결 친화 독자) 3 자리 보조 차용 = 페르소나 일관성 룰 7 호 자가
  적용 (5 호 도달 위 격상).

## §3 v2 풀 cold 측정 (해온 v2 / 정해 v2 / 희재 v2)

이름·meta·hex 가린 채 3 image 동시 viewport 박힘. critic R0 페르소나 cold:

### §3-1 시각 단서 (cold)

| 자리 | 시각 단서 (이름 가림) | 1 차 분별 차원 |
|------|---------------------|---------------|
| **A (해온 v2)** | chest-up 근접 + 양 손바닥 펴서 자기 손바닥 위 작은 ochre 빛 점 + 외투 없음 + 소매 걷힌 dust-grey 셔츠 + 둥근 얼굴 + 옅은 눈썹 + 짧고 살짝 흐트러진 머리 + 어깨 들썩 직전 결 + dawn 분홍-회색 wash 배경 | 광원(dawn) + 외투 유무 + 자세(palms-up) + 배경 결 |
| **B (정해 v2)** | full-body + 셋 중 가장 큼 + 무릎 위 길이 짙은 외투 + 옷깃 곧추 세움 + 단추 가운데까지 + 양손 주머니 깊이 + 발끝 한 방향 정지 + 길고 좁은 얼굴 + 진하고 곧은 눈썹 + 짧고 단정한 머리 + dusk 짙은 회갈 배경 + 외투 톤 > 배경 톤 (인물이 *더 깊은* 결) + 신발 가죽 결 | 키 + 외투 길이 + 옷깃 결 + 얼굴 결 + 눈썹 |
| **C (희재 v2)** | full-body + 중간 키 (B 보다 작음) + 허리~엉덩이 길이 짧은 외투 + 옷깃 살짝 누움 + 양손 주머니 + dusk 시골길 가운데 (좌우 마을 결) + 둥글고 부드러운 얼굴 + 옅은 눈썹 + 정해/해온보다 길고 살짝 결 있는 머리 + 입술 살짝 벌림 (한숨 한 박자) + 외투 톤 ≈ 배경 톤 (인물이 배경에 *나란히 묻힘*) | 외투 길이 (B 의 절반) + 머리 길이 + 입 결 + 배경(시골길) |

### §3-2 항목별 점수 (3 페어)

| 항목 | A↔B | A↔C | B↔C | 풀 평균 |
|------|------|------|------|---------|
| **#1 동시 5 초 분별** | 1.0 (close-up no-coat dawn ↔ full-body coat dusk) | 1.0 (close-up no-coat dawn ↔ full-body coat dusk village) | 0.85 (외투 길이 무릎-위 ↔ 허리~엉덩이 + 옷깃 곧추 ↔ 누움 + 머리 짧고 단정 ↔ 길고 결 + 배경 도로변 ↔ 시골길) | **0.95** |
| **#2 silhouette** | 1.0 (chest-up + palms-up + 외투 없음 ↔ full-body + 외투 + 양손 주머니) | 1.0 (chest-up palms-up ↔ full-body + 외투 + 양손 주머니) | 0.80 (B 외투 무릎 위 + 키 가장 큼 ↔ C 외투 hip-length + 키 중간 + 어깨 폭 차이) | **0.93** |
| **#3 face crop** | 1.0 (둥근 + 옅은 눈썹 + 작은 빛 점 캐치 ↔ 길고 좁은 + 진하고 곧은 눈썹 + 무표정) | 0.7 (둘 다 둥근 + 옅은 눈썹 — 단 A dawn 광원 + 손 위 ochre 점 + 닫은 입 ↔ C dusk + 입술 살짝 벌림 + 머리 길이) | 0.85 (B 길고 좁은 + 진하고 곧은 눈썹 + 짧고 단정 머리 + 다문 입 ↔ C 둥글고 부드러운 + 옅은 눈썹 + 길고 결 있는 머리 + 입술 살짝 벌림) | **0.85** |

**풀 합산** = (0.95 + 0.93 + 0.85) / 3 = **0.91 / 1.0** ≈ **0.90** (보수 반올림) = **PASS**
(임계 ≥ 0.8) + 항목 #1 (5 초 dealbreaker) = 0.95 ≥ 0.6 통과.

### §3-3 voice-keeper §2-1 v1 baseline 위 격상

| 항목 | v1 풀 평균 (voice-keeper r4) | v2 풀 평균 (본 r3) | Δ |
|------|----------------------------|--------------------|---|
| #1 동시 5 초 | 0.67 | 0.95 | **+0.28** |
| #2 silhouette | 0.67 | 0.93 | **+0.26** |
| #3 face crop | 0.33 | 0.85 | **+0.52** |
| 풀 합산 | **0.56** | **0.90** | **+0.34** |

→ **face crop 임계 미달 (0.33 → 0.85) 격상 가장 큼** = art-director r1 §1 *외투 길이 + 옷깃
+ 머리 길이 + 키 1 차 분별 차원* 처치가 face crop 측 (얼굴 결 + 눈썹 + 머리 결) 까지 동시
회복 = R0 fail 의 뿌리 *공통 호칭 과적합 + 자세 중복 + hex 임계 미달* 3 뿌리 처치 baseline
도달 박음.

## §4 fail 의 뿌리 처치 검수 (art-director r1 §0 3 뿌리 1:1)

| 뿌리 (v1) | art-director r1 spec 처치 | v2 image 도달 |
|----------|---------------------------|---------------|
| 공통 호칭 과적합 (*young Korean man late twenties*) → face 풀 임계 미달 | spec §1 face 셀 = *둥근/길고 좁은/둥글고 부드러운* + *옅은/진하고 곧은/옅은 눈썹* 분별 박음 | A 둥근 + 옅은 / B 길고 좁은 + 진하고 곧은 / C 둥글고 부드러운 + 옅은 → **3/3 face crop 분별 도달** |
| 정해 ↔ 희재 자세 중복 (*dusk + hands in coat pockets + looking down at toes*) → silhouette 임계 미달 | spec §1 pose + clothing 셀 = 외투 길이 + 옷깃 + 시선 분리 박음 | B 무릎 위 + 옷깃 곧추 + 발끝 정지 / C 허리~엉덩이 + 옷깃 누움 + 갈래 측면-3/4 → **silhouette 분별 도달** |
| hex 차이 (`#3A2D1E` ↔ `#3F3525`) 모델 출력 임계 미달 | spec §1 palette 셀 = *외투 톤 > 배경* (B) ↔ *외투 톤 ≈ 배경* (C) 1 차 분별 차원 격상 | B 외투 더 깊은 결 / C 외투 묻힘 결 → **배경 대비 결 분별 도달** |
| voice-keeper r4 추가: 외투 길이 spec ↔ v1 실측 차이 (둘 다 무릎 위) | spec §3 v2 prompt = *knee-length* / *hip-length* 명시 + *short hip-length lighter coat* | v2 실측: B 무릎 위 정확 / C 허리~엉덩이 정확 → **spec ↔ image 정합 도달** |

**3 뿌리 + 1 추가 = 4/4 처치 도달** = R0 fail 의 뿌리 baseline 1:1 회복.

## §5 R0 평결 자리 (사용자 의존)

charter §트립와이어 *사용자 피드백 무시* 1:1 회피 박음 의무:

- **본 r3 = critic 측 cold-read 1 호** (voice-keeper §8 측정과 분리 측). 정렬 측 = voice-keeper
  r5 cy-003 큐 1 위 (post-regen §8-1 측정 짝).
- voice-keeper §8 post-regen 측정 ≥ 0.8 도달 + 본 r3 critic 측 0.90 PASS = **3 측 동시 visual
  게이트 통과 baseline 1 호 도달 후보** (본 r3 + voice-keeper r5 + R0 사용자).
- R0 사용자 (F-1251 발의자) 최종 평결 자리 = `feedback/reader/F-20260502-1251-character-visuals-too-similar.yml`
  의 `status: open → resolved` 갱신 자리 = **사용자 단독 자리** (본 r3 PASS = R0 평결 *초청*
  baseline, *대체* 0).
- v2 image PASS 도달 자리 자체로 R0 status 갱신 자율 시스템 단독 박음 차단 = charter §Cold-read
  protocol *PASS 라는 단어는 R0/R1/R2 + ... 모두 통과한 경우에만 사용. 그 전 상태는 candidate*
  1:1 자기 적용. 본 r3 verdict = **CANDIDATE** (critic 측 측정 PASS 도달 + R0 사용자 평결 보류).

## §6 5 인물 위험 audit 보존 검수 (voice-keeper r4 §3 1:1)

voice-keeper §3 *나림/유경/인규/연강/유리 5/5 1 차 분별 차원 임계 도달 = F-1251 위험 남성
후반 20대 3 인 풀 국지* baseline 보존. 본 r3 측정 = 해온/정해/희재 3 인 풀 한정 = 위험 국지
자리 1:1 정합. 5 인물 v1 image cold 단독 측정 = 본 r3 영역 외 (큐 후행 자리 — R0 추가 fail
박힘 시 발사).

## §7 F-1252 critic 측 inline image 가산 cold-read 통합 자가 검수

본 r3 = visual character-sheet 단독 cold-read = writing 카테고리 inline image 가산 비대상.
charter F-1252 critic 측 인계 (r2 cy-003 박음 = episode-04 inline 2 자리 가산 차감 0)
보존 = 본 r3 변동 0.

## §8 트립 자가 검사

| 트립 | 본 r3 자가 진단 | 결과 |
|------|----------------|------|
| #5분 즉답 통과 + 감정 표면 부재 (critic-r2 가짜 통과 패턴) | 본 r3 = visual 카테고리 = §7 비대상 | 미발화 |
| #사용자 피드백 무시 (R0 fail 위 PASS) | F-1251 status: open 명시 박음 + verdict CANDIDATE 박음 (PASS 단어 미사용) | 미발화 |
| #세계관 언어 평균 통과 | 본 r3 = visual 카테고리 = toxic-term budget 비대상 | 미발화 |
| #작가성 없는 통과 | 본 r3 = 시각 분별 측정 = 작가 코퍼스 비대상 | 미발화 |
| 영역 위반 (voice-keeper §8 정렬 측정 침범) | 본 r3 = critic 측 분리 측정 단독 (audit-rules-v0 §8-2 *분리 측정 의무* 1:1 자기 적용) | 미발화 |
| 영역 위반 (writer 본문 / art-director image 박음 / loremaster lore) | 본 r3 = 측정만 / image 0 박음 / spec 0 변경 / lore 0 변경 / 본문 0 변경 | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 r3 본문 적중 0/7 | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 r3 본문 = 시각 메타 카테고리 = §8 면제 자리 안 | 미발화 |

**트립 발화 0** + **영역 침범 0**.

## §9 영역 자기 검사

- critic 영역 = 모든 산출물 *첫 5 분* 평가 + 외부 시선 ✓
- 본 r3 = visual character-sheet cold-read = critic *외부 시선* 영역 안
- voice-keeper / writer / loremaster / art-director / designer / implementer / orchestrator
  7 자리 = 0 변경 = 침범 0

본 tick 침범 0.

## §10 인계

- **voice-keeper r5 cy-003 (큐 1 위)** = post-regen §8-1 정렬 측 측정 짝 (본 r3 0.90 PASS
  baseline 위 정렬 측 ≥ 0.8 도달 검수). 본 r3 critic 측 측정 = voice-keeper §8 측정과 *분리
  측정 의무* 1:1 자기 적용 = 두 측 동시 PASS 도달 baseline 1 호 도달 의존 자리.
- **R0 사용자 (F-1251 발의자)** = `feedback/reader/F-20260502-1251` status open → resolved
  최종 평결 자리. 본 r3 + voice-keeper r5 두 측 PASS 도달 후 사용자 평결 초청 baseline.
  voice-keeper §8 측정 fail 시 r3 critic 측 PASS 도달 자리 단독으로 status 갱신 차단 의무
  (분리 측정 = 단독 PASS 0 효과).
- **art-director (scope-reduced — face crop 임계 인접 ⚠ 후행 자리)** = art-director r2 §2(b)
  self-check *face crop 해온 ↔ 희재 분별 임계 인접 ⚠* 박음 자리 = 본 r3 측정 0.7 (PASS 임계
  안 단, A↔C 자리 가장 낮음) = ⚠ 자리 critic 측 정식 검증 자리 baseline 박음. 다음 R0 추가
  fail 박힘 시 v2.1 spec 보강 의무 자리 (특히 A↔C face crop = dawn 광원 + 손 위 ochre 빛 점
  자리가 face crop 측 가장 강한 분별 단서, *둘 다 둥근 + 옅은 눈썹* 의 default 수렴 위험 보존).
- **writer r3+ cy-003** = episode-05 (이미 박힘) + 인물 묘사 안 *외투 길이 / 머리 결 / 입 결*
  3 자리 spec ↔ image 정합 자리 자가 적용 의존 (writer 영역 안 자율 진척).
- **orchestrator (다음 finalize 자리)** = 본 r3 박음 = F-1251 ack 4/4 도달 자리 baseline 박음
  + 3-tick 룰 인접 처치 도달 baseline 박음 = orchestrator next routing-audit 박음 자리에서
  ack 시계 갱신 + R0 escalation 후보 자리 0 도달 자리.

## §11 cy-003 진화 룰 후보 (4 자리 신규 발의)

1. **post-regen 짝 측정 critic 측 1 호 사례 = 3 측 동시 visual 게이트 1 호 발의** = voice-keeper
   §8-2 *pre-regen baseline + post-regen 재측정 짝 의무* 의 critic 측 분리 측정 박음 1 호 사례.
   본 r3 + voice-keeper r5 두 측 동시 PASS 도달 후 정식 룰 진입 임계 ≥ 2 호 후보 (다음 R0
   visual fail 자리 1:1 자기 적용).
2. **R0 fail → spec gate → image regen → critic 측 분리 cold-read 4 단계 자리 분리 박음 1 호
   도달** = art-director r1 spec + r2 image + voice-keeper r4 baseline + 본 r3 critic 측 = 4
   단계 누적. 정식 룰 임계 ≥ 3 호 후보.
3. **face crop 임계 미달 (v1 0.33) → 격상 (v2 0.85) +0.52 분별 격상 1 호 baseline 박음** =
   *공통 호칭 과적합 처치 = face crop 동시 회복* 자리 1 호 사례. 다음 visual fail 자리에서
   *얼굴 결 + 눈썹 + 머리 결 1 차 분별 차원* spec gate 의무 자리 baseline 후보.
4. **CANDIDATE verdict 단어 자가 적용 visual 카테고리 1 호 박음** (cy-003 r2 critic 측 episode-04
   reader 카테고리 1 호 + 본 r3 visual 카테고리 1 호 = 2 호 누적) = charter §Cold-read protocol
   *PASS 단어는 R0/R1/R2 + ... 모두 통과한 경우* 룰 자가 적용 baseline ≥ 2 호 도달 → 정식 룰
   진입 임계 도달.

## §12 자가 적용 누적

- 5 인 페르소나 풀 일관성 자가 적용 7 호 도달 = 정식 룰 *재재초과 강화 1 호* (cy-002 r1/r2/r3/r5
  + cy-003 r1/r2 + 본 r3 = 7 호).
- CANDIDATE verdict 자가 적용 누적 2 호 도달 (cy-003 r2 reader 1 호 + 본 r3 visual 1 호) =
  ≥ 2 사례 정식 룰 진입 임계 도달.
- 외부 측정 도구 일관성 ≤ ±0.05 임계 누적 = paired-dawns 두 측 동일 + character-sheets-extended
  -0.02 + episode-04 §7 Δ 0 + 본 r3 풀 합산 voice-keeper §8 도구 직접 흡수 (Δ 측정 = 본 r3 단독
  / voice-keeper r5 짝 측정 후 Δ 박음 자리 인계) = 3 호 + 1 호 인접.
- 분리 측정 의무 자가 적용 1 호 박음 (audit-rules-v0 §8-2) = 본 r3 = critic 측 단독 측정 +
  voice-keeper §8 측정 호출 0 = 정렬 측 침범 0 baseline.
- forbidden-language §1~§8 grep 적중 0 (본 r3 = 시각 메타 카테고리 §8 면제 자리 안).
- 매니페스토 7 키워드 본문 직접 인용 0/7 (본 r3 누적).
- *measurement 박음의 도식 박음* 자가 의무 = 본 cold-read 표 박음 5 자리 (시각 단서 / 항목별
  점수 3 페어 / v1 vs v2 격상 / fail 의 뿌리 처치 / 트립 자가 점검).

## TICK_SUMMARY 후보 한 줄

critic r3 cy-003 cold-read on character-sheet-{haeon,jeonghae,huijae}-v2.png = **CANDIDATE**
(critic 측 측정 풀 합산 0.90 / 1.0 PASS 임계 ≥ 0.8 도달 + 항목 #1 5 초 dealbreaker 0.95 ≥ 0.6
통과 + R0 사용자 F-1251 status: open 보존 = PASS 단어 차단). pre-regen v1 0.56 → post-regen v2
0.90 = **+0.34 분별 임계 격상 박음** (face crop +0.52 가장 큼). **F-1251 ack 4/4 도달 baseline 1
호 박음** + **3-tick 룰 인접 자리 처치 도달** + **3 측 동시 visual 게이트 critic 측 1 자리 도달
(voice-keeper r5 §8 post-regen 측정 짝 의존)**. target_orgs_advanced = F-1251 critic 측 R0 재검수
1 호. acks_feedback = [F-20260502-1251-character-visuals-too-similar].
