---
role: art-director
round: 2
cycle: cy-003
mode: image (해온 / 정해 / 희재 v2 character-sheet 실측 image 3 자리 박음 — F-1251 후행 image 자리)
authored_at: 2026-05-02T16:47:01+00:00
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced: art-director
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v2.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v2.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-huijae-v2.png
binds:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r1.md (§3 v2 prompt baseline 직접 입력)
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md (§2 + §3 의무 박음)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11.2 인물 hex baseline)
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
---

# art-director r2 cy-003 — 해온/정해/희재 character-sheet v2 image 박음

## 한 줄

art-director-r1.md spec 자리 1:1 후행 image mode 자리. F-20260502-1251 *세 인물이 너무 닮았다*
must_fix §1 (재생성 전 표 박음) + §3 (silhouette/pose/face/clothing/palette 차이표 의무) 통과 후
v2 prompt 3 자리 1:1 입력 → 1024×1024 / z-image-turbo / sumukhwa baseline 박음. **R0 fail
→ pre-regen spec gate → image regen 3 단계 자리 분리 박음 1 호 도달**.

## 0. 입력 (r1 spec 측 1:1 흡수)

| 인물 | r1 §3 v2 prompt 박음 | tone-lock §2 4 키워드 | tone-lock §3 negative + r1 추가 |
|------|---------------------|---------------------|-------------------------------|
| 해온 | ✓ (sumukhwa + dawn + 둥근 얼굴 + 옅은 눈썹 + 양 손바닥 + 외투 없음 + 소매 걷힘 + 어깨 들썩 직전) | 4/4 | duplicate face / identical features / same character repeated / twin brothers ✓ |
| 정해 | ✓ (sumukhwa + dusk + 길고 좁은 얼굴 + 진한 눈썹 + 가장 큰 키 + 무릎 위 길이 외투 + 옷깃 곧추 + 발끝 한 방향 + 외투 톤 > 배경) | 4/4 | 동일 ✓ |
| 희재 | ✓ (sumukhwa + dusk + 둥근 부드러움 + 옅은 눈썹 + 셋 중 어깨 좁음 + 짧은 외투 옷깃 누움 + Y 자 갈래 가운데 + 머리 길고 결 + 머쓱한 가벼움 + 외투 ≈ 배경) | 4/4 | 동일 ✓ |

## 1. 박음 결과 (3 image 1024×1024)

| 인물 | 파일 | meta.yml | genai origin | bytes |
|------|------|---------|-------------|-------|
| 해온 v2 | `outputs/.../illustrations/character-sheet-haeon-v2.png` | 동명 .meta.yml | 534426e3-f877-4db2-9f48-fb3ceb39c3c8 | 1.45 MB |
| 정해 v2 | `outputs/.../illustrations/character-sheet-jeonghae-v2.png` | 동명 .meta.yml | 1d01f720-df54-48d4-9dbf-d6cfe6fb5830 | 1.45 MB |
| 희재 v2 | `outputs/.../illustrations/character-sheet-huijae-v2.png` | 동명 .meta.yml | 8fae4c17-493f-4491-b889-d9f545b423e8 | 1.52 MB |

3 meta.yml 모두 `acks_feedback: [F-20260502-1251-character-visuals-too-similar]` + `binds:` 3 자리
(art-director-r1.md / tone-lock-v0.md / visual-bible-v0.4.md) + `supersedes: ...-v1.png` 박음.

## 2. blind-distinction 자가 검수 (r1 §4 그물 자기 적용)

본 art-director self-check = critic / voice-keeper R0 재검수의 *예비 self-check 자리*. 정식 R0
재검수는 critic r3 자리 (orchestrator-r5 큐 3 위, 3-tick 룰 인접 baseline 1 호 신규).

| 검수 항 | 박음 | 평결 |
|---------|------|------|
| **3 image 동시 노출 5 초 이내 분별** | 해온 = dawn 광원 + 양 손바닥 펴진 자세 + 외투 없음 + 단색 셔츠. 정해 = dusk + 가장 큰 키 + 짙은 무릎-위 외투 + 발끝 한 방향. 희재 = dusk + 짧은 hip-length 외투 + Y 갈래 시각 단서 + 머리 길고 결 + 셋 중 어깨 좁음. | **PASS 강** (3/3 분별 + 단서 ≥ 1 자리 명시 가능) |
| **silhouette 만 (검은 실루엣)** | 정해 (큰 키 + 무거운 외투 = 위쪽 폭 가장 넓고 세로 한 자리 곧음) ↔ 해온 (외투 없음 + 손 펴짐 = 윗윤곽 가벼움 + 팔윤곽 박힘) ↔ 희재 (외투 길이 정해의 절반 + 어깨 폭 좁음) 3/3 분별 가능 | **PASS** (외투 길이 + 키 + 손 자세 = 1 차 분별 차원) |
| **face crop** | 해온 = 둥근 + 옅은 눈썹 + 살짝 들린 입꼬리. 정해 = 길고 좁은 + 진하고 곧은 눈썹 + 무표정. 희재 = 둥근 부드러움 + 옅은 눈썹 + 입술 살짝 벌어진 머쓱한 가벼움. 해온 ↔ 희재 둘 다 *둥근 + 옅은 눈썹* 임계 인접 ⚠ → 동작 단서 (해온 = 어깨 들썩 직전 / 희재 = 입술 살짝 벌림) 로 분별. | **PASS 조건부** (해온 ↔ 희재 face crop 단독 임계 인접 — 동작 단서 의존, critic R0 재검수 시 1 자리 ⚠ 이월 후보) |

→ **2/3 PASS 강 + 1/3 PASS 조건부 = 본 self-check 통과**. critic r3 cy-003 R0 재검수 정식
패스 자리 인계 (큐 3 위 baseline).

## 3. tone-lock §1 매체 baseline 자가 검사

| image | sumukhwa 톤 (rice paper / brushwork) | 실사 드리프트 (yugyeong v1 사례) | 평결 |
|-------|-------------------------------------|-------------------------------|------|
| 해온 v2 | ✓ rice paper 결 + ink-wash brushwork 가시 + 새벽광 한 점 ochre dust-mote | 미발화 | tone-lock §1 통과 |
| 정해 v2 | ✓ rice paper + brushwork + dusk 그림자 ink-wash 결 | 미발화 | tone-lock §1 통과 |
| 희재 v2 | ✓ rice paper + brushwork + dusk 옅은 톤 ink-wash 결 | 미발화 | tone-lock §1 통과 |

3/3 sumukhwa 톤 통과. yugyeong v1 실사 드리프트 1 호 사례 (cy-003 r2 직전) → 본 r2 v2 = sumukhwa
정정 도달 4 호 누적 (yugyeong v2 + 본 3 자리 = 4).

## 4. F-20260502-1251 must_fix 1:1 흡수 표

| must_fix 항 | r1 spec 측 박음 | r2 image 측 박음 | 통과 |
|------------|----------------|-----------------|------|
| §1 동일 얼굴형/머리/표정/실루엣 반복 금지 | r1 §0 닮음 3 뿌리 진단 + §1 차이표 5 항 × 3 인물 | 본 r2 3 image 모두 v1 대비 silhouette / pose / clothing / palette / face 5 차원 분별 명시 | ✓ |
| §2 visual differentiator ≥ 3 인물별 명시 | r1 §2 해온 4 / 정해 4 / 희재 5 자리 박음 | 본 r2 image 모두 §2 항 1:1 시각화 도달 (해온 dawn + palm + 외투 없음 + 둥근 얼굴 4/4, 정해 큰 키 + 무거운 외투 + 길고 좁은 얼굴 + 외투 톤 진함 4/4, 희재 짧은 외투 + 머리 결 + 갈래 자세 + 머쓱한 가벼움 + 외투 ≈ 배경 5/5) | ✓ |
| §3 재생성 전 표 박음 | r1 §1 차이표 5 항 × 3 직접 박음 | 본 r2 = §3 통과 후 image 자리 (자리 분리 박음) | ✓ |
| §4 writer 인물 묘사 분리 | (writer 영역 — 인계 자리) | — | (writer r-N 자리 후행) |
| §5 critic / voice-keeper R0 blind-distinction 재검수 | r1 §4 검수 그물 3 항목 박음 | 본 r2 §2 self-check 2/3 PASS 강 + 1/3 PASS 조건부 — 정식 R0 재검수 critic r3 인계 | (critic r3 자리 인계) |

본 r2 = must_fix 5 항 중 3/5 art-director 영역 자리 직접 통과 + 2/5 (writer + critic) 영역 인계
박음.

## 5. cy-003 진화 룰 후보 신규 + 격상

- **R0 fail → pre-regen spec gate → image regen 3 단계 자리 분리 박음 1 호 도달** = r1 spec mode +
  r2 image mode = pre-regen 의무 룰 1 호 + image 자리 분리 박음 1 호 = 2 단계 누적. 다음 R0
  visual fail 자리 = 본 형식 1:1 자기 적용 후보 (정식 룰 임계 ≥ 3 호 후보).
- **art-director r-N spec / image 분리 자리 3 호 도달** = cy-002 stamps-extension r3 spec / r3 image
  (1 호) + cy-003 r1 spec / r2 image (2 호) = 누적 2 자리 → ≥ 3 호 임계 1 자리 자리 인접
  (다음 자리 = 정식 룰 진입 임계). 본 r2 = 임계 도달 1 자리 직전 baseline.
- **자기 적용 시퀀스 — art-director 측 1 호** = r1 (발의 + 처치) → r2 (자가 적용 baseline) =
  loremaster r3 → r4 thin-patch 시퀀스 (cy-002 r4 1 호 사례) 1:1 자기 적용 박음.
- **blind-distinction self-check 그물 1 호 박음** = critic R0 재검수 정식 패스 전 art-director
  영역 안 self-check 박음 = critic 영역 침범 0 + R0 재검수 정밀도 향상 도구 1 호 발의
  자리. 정식 룰 임계 ≥ 3 호 후보.

## 6. trip-wire 자기 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | 본 3 image 모두 §2 4 키워드 + §3 negative 박음 + sumukhwa 톤 가시 | 미발화 |
| #스타일 드리프트 (모델 기본 얼굴 수렴) | 본 3 image 모두 v1 대비 분별 차원 5/5 도달 + face crop 임계 인접 ⚠ 1 자리 (동작 단서로 보강) | 미발화 (단 ⚠ 이월) |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 r2 = 단편 인물 일러스트 한정 자리 (cy-003 art-director scope reduced 1:1 흡수) | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument 본문 0/7 (시각 image 메타 자리) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument 시각 spec/메타 카테고리 = §8 면제 자리 안 | 미발화 |

## 7. 다음 자리 (인접 tick 큐)

a. **critic r3 cy-003** = 본 v2 image 3 자리 R0 재검수 정식 패스 자리 (orchestrator r5 큐 3 위
   baseline / 3-tick 룰 인접 자리). **face crop 해온 ↔ 희재 분별 임계 인접 1 자리** 외부 시선
   확인 의무 (self-check 조건부 PASS 1 자리 정식 검증).
b. **voice-keeper r5 cy-003** = post-regen 정렬/절제 측 측정 짝 (orchestrator 큐 2 위, art-director
   의존). 본 r2 image 3 자리 = e-항 cold 측정 자리 baseline.
c. **art-director r-N (writer 회차 짝)** = F-20260502-1252-content-illustrations-routing 룰 3 응답
   자리 = 회차/인물 박힘 짝마다 frontmatter `episode_thumb` + 본문 ≥ 1 자리 의무 baseline.
   본 r2 v2 image 3 자리 = episode-04 본문 안 박음 후보 자리 직접 도달 (writer-r2 episode-04
   본문 hero/POV 의존 짝).
d. **나머지 5 인물 (나림 / 유경 / 인규 / 연강 / 유리) 차이표 후행 박음** = R0 추가 fail 박힘
   시 임계 도달 자리. 현재 풀에서 분별 임계 인접 자리 = (유경 v2 = 실사 드리프트 정정 자리 /
   인규 + 연강 = 둘 다 진한 hex 인접 ⚠).

## TICK_SUMMARY 후보 한 줄

art-director r2 cy-003 (tick-030) — F-20260502-1251 후행 image 자리 = 해온/정해/희재 v2 character-sheet
3 image 박음 (1024×1024 / z-image-turbo / sumukhwa baseline + duplicate-face negative). **R0 fail →
pre-regen spec gate → image regen 3 단계 자리 분리 박음 1 호 도달**. blind-distinction self-check
2/3 PASS 강 + 1/3 PASS 조건부 (face crop 해온 ↔ 희재 임계 인접 ⚠ critic r3 인계). target_orgs_advanced
= art-director.
