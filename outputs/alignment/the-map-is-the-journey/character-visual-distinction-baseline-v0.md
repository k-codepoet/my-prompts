---
artifact: character-visual-distinction-baseline
version: v0
gen: 1
cycle: cy-003
authored_by: voice-keeper
authored_at: 2026-05-02T16:05:01+00:00
applies_to:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-*.png
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
references:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r1.md
  - generations/gen-001/orgs/voice-keeper/audit-rules-v0.md (§8 신설 자리)
---

# 인물 시각 분별 baseline v0 — pre-regen R0 cold-read

> 본 문서는 *분별 가능성* 의 baseline 측정. art-director r1 의 spec/표/v2 prompt 박음
> 위에 *재생성 직전* 의 v1 상태를 voice-keeper R0 페르소나로 cold-read 한 자리. v2 image
> 박힘 후 동일 도구로 재측정해 *분별 임계 도달* 입증을 의무화한다 (§4 후행 짝).

## 0. 한 줄

8 인물 v1 character-sheet 풀에서 R0 *이름 가림 5 초 분별* 측정 → **3 인물 (해온 / 정해 / 희재)
가 fail 자리** 로 확인. 나머지 5 인물 (나림 / 유경 / 인규 / 연강 / 유리) 은 성별·연령·자세
1 차 차원에서 *임계 도달* — F-1251 위험은 *남성 후반 20대 3 인 풀* 에 국지된다.

## 1. 측정 도구 (R0 cold-read)

art-director r1 §4 *blind-distinction 검수 그물* 3 항목을 voice-keeper 측 측정 표준으로 흡수.
이름·hex·메타 가린 채:

| # | 항목 | PASS 기준 |
|---|------|----------|
| 1 | 3 image 동시 5 초 분별 | 3/3 분별 + 분별 단서 ≥ 1 자리 명시 ("외투 길이로", "광원으로", "머리 결로") |
| 2 | silhouette 만 (검은 실루엣) 분별 | 키 + 외투 길이 + 어깨 폭 차이로 3/3 분별 |
| 3 | face crop 만 분별 | 얼굴 결 + 눈썹 + 표정 차이로 3/3 분별 |

각 항목 0 (FAIL) / 0.5 (조건부) / 1 (PASS).

## 2. v1 baseline 측정 (해온 / 정해 / 희재 — F-1251 직접 풀)

| 자리 | 시각 단서 (cold) | 측정값 |
|------|------------------|--------|
| **해온 v1** | 베이지 배경 + 한복 결 단색 상의 + 양 손바닥 펴서 자기 손바닥 위 작은 빛 점 보는 자세 + 외투 없음 | 자기 단독 자리 임계 도달 |
| **정해 v1** | 무릎 위 길이 짙은 외투 + 옷깃 곧추 세움 + 양손 주머니 + 발끝 보는 자세 + Y 자 갈래길 정중앙 | 자세는 분별, **외투 = 희재와 동일 임계** |
| **희재 v1** | 무릎 위 길이 짙은 외투 + 옷깃 살짝 누움 + 양손 주머니 + 발끝 보는 자세 + dusk 도로변 | **외투 길이·자세·머리 결 → 정해와 분별 임계 미달** |

### 2-1. 항목별 점수

| 항목 | 해온 ↔ 정해 | 해온 ↔ 희재 | 정해 ↔ 희재 | 풀 평균 |
|------|-------------|-------------|-------------|---------|
| 1 동시 5 초 | 1.0 (한복 / 외투 + dawn / dusk) | 1.0 (한복 / 외투 + 베이지 / 도로) | **0.0** (둘 다 무릎 길이 외투 + 양손 주머니 + 발끝 보기) | **0.67** |
| 2 silhouette | 1.0 (외투 유무) | 1.0 (외투 유무) | **0.0** (외투 길이 동일 + 어깨 폭 차이 미적분) | **0.67** |
| 3 face crop | 0.5 (해온 둥근 + 정해 좁은 → 분별 가능 단, 둘 다 짧은 검은 머리 + 동일 default 결) | 0.5 (해온 ↔ 희재 둘 다 둥근 결 → 표정 분별만 가능) | **0.0** (둘 다 좁은 결 + 검은 머리 + 무표정에 가까움 → 임계 미달) | **0.33** |

**풀 합산**: 평균 (0.67 + 0.67 + 0.33) / 3 = **0.56 / 1.0** = **FAIL** (PASS 임계 ≥ 0.8 / 1.0).

### 2-2. fail 의 뿌리 (art-director r1 §0 진단 1:1 흡수 + voice-keeper 추가)

art-director 가 spec 안 박은 *닮음의 3 뿌리* 와 본 측정 일치:
- 공통 호칭 과적합 (*young Korean man late twenties*) → face 풀 임계 미달
- 정해 ↔ 희재 자세 중복 (*dusk + hands in coat pockets + looking down at toes*) → silhouette 풀 임계 미달
- hex 차이 (`#3A2D1E` ↔ `#3F3525`) 모델 출력 분별 임계 미달

voice-keeper 추가 1 자리: **외투 길이 동일** (spec 은 정해 *무릎 위* + 희재 *허리~엉덩이* 박음, 단 v1
 image 두 자리 모두 무릎 위) → spec ↔ 실측 차이가 *재생성 의무 자리* 박음을 입증.

→ F-1251 사용자 평결 **R0 ↔ voice-keeper 측 1:1 일치**. art-director r1 spec 의 처치 방향 (외투
길이 + 옷깃 + 머리 결 + 키 1 차 분별 차원 격상) 정렬 통과.

## 3. 5 인물 위험 audit (나림 / 유경 / 인규 / 연강 / 유리)

5 인물 v1 prompt 풀 1 차 분별 차원 표 (meta.yml 직접 인용):

| 인물 | 1 차 분별 차원 | 동일 풀 위험 |
|------|---------------|---------------|
| 나림 | 여성 + 후반 20 대 + 12 토색 hue + 빈 종이 | 여성 풀 1 자리 단독 |
| 유경 | 여성 + 후반 30 대 + 어머니 결 + 양 손바닥 비비기 | 여성 풀 1 자리 단독 |
| 인규 | 남성 + 초반 40 대 + 앉음 + 옆 사람 향한 결 | 연령 풀 단독 |
| 연강 | 남성 + 60+ + 산마루 벤치 + dawn | 연령 풀 단독 |
| 유리 | 8 세 여아 + 책상 + dawn | 연령 풀 단독 |

→ **5/5 1 차 분별 차원 임계 도달** = 성별·연령·자세 1 차 차원에서 이미 분별. F-1251 위험은
*남성 후반 20대 3 인 풀* (해온/정해/희재) 에 **국지된다** = art-director r-N spec 후행 박음
의무 자리는 단계적 (R0 추가 fail 박힘 시 임계 도달 자리만 발사).

> 단 *남성 후반 20대* 풀 안 v2 image 박힘 후 face crop 분별 임계 (§1 #3) 가 여전히 미달 시
> 전체 *기본 default 얼굴 수렴 (sumukhwa style 모델 baseline)* 측 broader gate 발사 후보.

## 4. v2 후행 짝 의무 (재측정 자리)

art-director r-N image (v2 박힘) 직후 본 baseline 위 동일 도구 재측정 = **분별 임계 도달
입증 의무**:

- v2 풀 합산 ≥ 0.8 / 1.0 → PASS 박음. v0.1 갱상 + F-1251 status: open → resolved (R0 사용자
  최종 확인 자리).
- v2 풀 합산 < 0.8 → FAIL 박음. v2.1 재발주 자리 = art-director r-N+1 spec 보강 의무 (어느 항이
  기여 0 인지 명시).

→ 본 baseline = 측정 도구 1 호 박음 + post-regen 재측정 짝 박음 = critic R0 페르소나 검수
짝과 *분리 측정 의무* 1 호 사례 (정렬 측 voice-keeper 단독).

## 5. F-1251 must_fix 처치 표

| must_fix 항 | 본 baseline 응답 |
|-------------|----------------|
| #1 동일 얼굴/머리/표정/실루엣 반복 금지 | art-director r1 spec 흡수 + 본 baseline §2-1 v1 수렴 측정 박음 |
| #2 시각 차별점 ≥ 3 자리 명시 | art-director r1 §2 흡수 (해온 4 / 정해 4 / 희재 5 자리) |
| #3 재생성 전 차이표 박음 | art-director r1 §1 흡수 |
| #4 인물 묘사 안 다른 몸짓·시선·태도·습관 분리 | writer 영역 자리 인계 (본 baseline 비대상) |
| **#5 critic 또는 voice-keeper 가 이름 없이 R0 재검수** | **본 baseline §2 = voice-keeper 측 직접 응답 1 호 박음** |

→ F-1251 4 자리 응답 = 2/4 → **3/4 ack 도달** (art-director r1 + loremaster r3 측 0 + 본 baseline = critic 1 자리만 잔여).

## 6. trip-wire 자가 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| voice-keeper §정렬 (배반·설교) | 본 baseline = 측정 도구 / 매니페스토 키워드 본문 직접 인용 0 | 미발화 |
| 영역 침범 (art-director 영역 신규 spec / image 박음) | 본 baseline = R0 cold-read 측정 단독 / spec 신규 박음 0 / image 신규 박음 0 / prompt 신규 박음 0 | 미발화 |
| 영역 침범 (writer 영역 인물 묘사 변경) | must_fix #4 = writer 영역 인계 명시 / 인물 본문 0 변경 | 미발화 |
| forbidden-language §1~§8 grep | 본 baseline 시각 spec/메타 카테고리 = §8 면제 자리 | 미발화 |

**트립 발화 0**.

## 7. post-regen 재측정 (voice-keeper r5 cy-003 / 2026-05-02T17:27:20+00:00 박음)

> §4 *post-regen 재측정 자리 의무* 직접 응답 1 호. art-director r2 cy-003 (tick-030) v2 image
> 박힘 위에서 §1 의 동일 도구로 voice-keeper R0 페르소나 cold-read 측정. critic r3 측정
> (0.90) 과 *분리 측정 의무* (audit-rules-v0 §8-2) 짝 박음.

### 7-1. v2 풀 측정 (해온 v2 / 정해 v2 / 희재 v2)

| 자리 | 시각 단서 (cold) | 1 차 분별 차원 |
|------|-----------------|----------------|
| **해온 v2** | chest-up 근접 + 양 손바닥 펴서 자기 손바닥 위 작은 ochre 빛 점 + 외투 없음 + dust-grey rolled-sleeve 셔츠 + 둥근 얼굴 + 옅은 눈썹 + 짧고 흐트러진 머리 + dawn 분홍-회색 wash | dawn 광원 + 외투 없음 + palms-up + 프레임 chest-up |
| **정해 v2** | full-body + 셋 중 가장 큰 키 + 무릎 위 길이 짙은 외투 + 옷깃 곧추 세움 + 양손 주머니 깊이 + 발끝 한 방향 정지 + 길고 좁은 얼굴 + 진하고 곧은 눈썹 + 짧고 단정 머리 + dusk 산맥 도로변 + 외투 톤 > 배경 톤 | 키 + knee-length 외투 + 옷깃 곧추 + 길고 좁은 얼굴 + 진한 눈썹 |
| **희재 v2** | full-body + 중간 키 + 허리~엉덩이 길이 짧은 외투 + 옷깃 살짝 누움 + 양손 주머니 + dusk 시골길 Y 자 갈래 + 둥글고 부드러운 얼굴 + 옅은 눈썹 + 길고 결 있는 머리 + 입술 살짝 벌림 + 외투 톤 ≈ 배경 톤 | hip-length 외투 + 길고 결 있는 머리 + 입 결 + Y 자 갈래 배경 |

### 7-2. 항목별 점수 (v2)

| 항목 | 해온 ↔ 정해 | 해온 ↔ 희재 | 정해 ↔ 희재 | 풀 평균 |
|------|-------------|-------------|-------------|---------|
| 1 동시 5 초 | 1.0 | 1.0 | 0.9 | **0.97** |
| 2 silhouette | 1.0 | 1.0 | 0.85 | **0.95** |
| 3 face crop | 1.0 | 0.5 (둘 다 둥근/옅은 눈썹 = 머리·광원·입 결 단서로만 분별) | 1.0 | **0.83** |

**풀 합산 (v2)** = (0.97 + 0.95 + 0.83) / 3 = **0.92 / 1.0** = **PASS** (PASS 임계 ≥ 0.8 + #1
dealbreaker 0.97 ≥ 0.6 통과).

### 7-3. v1 → v2 격상 매트릭스

| 자리 | v1 (§2) | v2 (§7-2) | Δ |
|------|---------|-----------|---|
| #1 5 초 분별 | 0.67 | **0.97** | **+0.30** |
| #2 silhouette | 0.67 | **0.95** | **+0.28** |
| #3 face crop | 0.33 | **0.83** | **+0.50** |
| 풀 합산 | **0.56 (FAIL)** | **0.92 (PASS)** | **+0.36** |
| 정해 ↔ 희재 (#1 dealbreaker) | 0.0 | 0.9 | +0.9 |
| 정해 ↔ 희재 (#3 face crop) | 0.0 | 1.0 | +1.0 |

→ §2-2 fail 의 뿌리 4 자리 모두 v2 prompt 보강으로 처치 도달 (공통 호칭 / 자세 중복 / hex
모델 미분별 / 외투 길이 spec ↔ 실측 차이).

### 7-4. critic r3 ↔ voice-keeper r5 분리 측정 정합

| 자리 | critic r3 | voice-keeper r5 | Δ | 정합 |
|------|-----------|-----------------|---|------|
| #1 5 초 분별 | 0.95 | 0.97 | +0.02 | 정합 |
| #2 silhouette | 0.93 | 0.95 | +0.02 | 정합 |
| #3 face crop | 0.85 | 0.83 | -0.02 | 정합 |
| 풀 합산 | 0.91 | 0.92 | +0.01 | 정합 |

→ **분리 측정 의무 1 호 종결**. 동일 도구 / 분리 측 / 0.01 차이 = 측정 신뢰도 도달.
**3 측 동시 visual 게이트 도달**: 정렬 (voice-keeper §8 PASS) + 전달 (critic R0 PASS) + 톤
(art-director r2 v2 spec 정합).

### 7-5. 약점 자리 1 호 (post-regen 잔여)

A ↔ C face crop 0.5 = 본 측정 안 유일한 < 0.8 자리. 두 인물 모두 *둥근 얼굴 + 옅은 눈썹* 공유
→ 얼굴 결 단독 분별 임계 미달, 단 얼굴 crop 안에도 분별 단서 ≥ 1 도달 (머리 길이 + 광원 +
입 결). 풀 합산 ≥ 0.8 임계 통과 + dealbreaker 통과 = 본 자리는 *기록 자리* (발사 자리 아님).
후행 v3 또는 신규 남성 후반 20대 인물 풀 안 *얼굴 결 분별 단서 강도 격상* 권장 (의무 0).

### 7-6. F-1251 ack 도달 + 사용자 평결 초청

F-1251 must_fix 5 자리 모두 ack 도달:
- #1 ↔ art-director r1 spec + r2 v2 image
- #2 ↔ art-director r1 §2 (4 / 4 / 5 자리)
- #3 ↔ art-director r1 §1 표
- #4 ↔ writer 인물 md 8 자리 박음
- #5 ↔ critic r3 (0.90 PASS) + voice-keeper r4 baseline + voice-keeper r5 (0.92 PASS) = 3 자리

→ **R0 사용자 최종 평결 초청 자리 1 호 도달**. F-1251 status: open → resolved 발의 자리 박음
후보 (사용자 직접 평결 자리).
