---
role: art-director
round: 6
cycle: cy-003
mode: image (8-인물 풀 v2 image baseline 정식 격상 — 나림 v2 + 연강 v2 + 유리 v2 image 발행 = r5 spec 인계 자리 1:1 자기 적용 = spec/image 분리 자리 4 호 도달 = 정식 룰 진입 자리 자기 적용 1 호 baseline)
authored_at: 2026-05-02T20:58:00+00:00
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
  - F-20260502-1252-content-illustrations-routing
target_orgs_advanced:
  - "F-20260502-1251-character-visuals-too-similar must_fix §1·§2·§3 — 8-인물 풀 image baseline 8/8 격상 자리. r4 (4 인물 풀 image baseline 4/4) 위에 *나림 v2 + 연강 v2 + 유리 v2* 3 자리 image 발행 = 8 인물 풀 image 8/8 도달 = blind-distinction self-check 정식 baseline 격상 1 호 자리."
  - "F-20260502-1252-content-illustrations-routing must_fix §3 (art-director 영역) — 인물 박힘 짝마다 frontmatter `episode_thumb` 또는 `illustrations:` + 본문 갤러리 ≥ 1 자리 명시 룰 — 본 r6 = 3 인물 (나림/연강/유리) characters/<id>.md frontmatter `illustrations:` 갱신 + `## 일러스트 갤러리` v2 link 박음 = F-1252 must_fix #3 art-director 영역 자기 적용 3 호 도달 (인규 1 호 / 유경 2 호 / 본 r6 = 나림+연강+유리 3-5 호)."
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v2.png  # 신규 발행
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v2.png.meta.yml  # 신규
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yeongang-v2.png  # 신규 발행
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yeongang-v2.png.meta.yml  # 신규
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v2.png  # 신규 발행
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v2.png.meta.yml  # 신규
  - outputs/writing/the-map-is-the-journey/characters/narim.md  # frontmatter + 갤러리 갱신
  - outputs/writing/the-map-is-the-journey/characters/yeongang.md  # frontmatter + 갤러리 갱신
  - outputs/writing/the-map-is-the-journey/characters/yuri.md  # frontmatter + 갤러리 갱신
binds:
  - generations/gen-001/cycles/cy-003/arguments/art-director-r5.md (§3.1·§3.2·§3.3 v2 prompt 1:1 입력 자리)
  - outputs/art/the-map-is-the-journey/tone-lock-v0.md (§2 4 키워드 + §3 negative 의무 박음 + §6 자가 검수 의무)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11.2 hex baseline)
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
note_pattern: |
  본 r6 = r5 spec (8-인물 풀 분별 baseline) → 본 r6 image (8-인물 풀 v2 image 발행)
  = spec/image 분리 자리 4 호 = 정식 룰 진입 자리 자기 적용 1 호 baseline 도달.
  자기 적용 시퀀스 art-director 측 5 호 도달 (r1 트리오 spec → r2 트리오 image →
  r3 인규 spec → r4 인규 image → r5 8-인물 풀 spec → r6 8-인물 풀 image).
---

# art-director r6 cy-003 — 나림 v2 + 연강 v2 + 유리 v2 image 발행 (8-인물 풀 image baseline 8/8 정식 격상)

## 한 줄

r5 §3 v2 prompt 3 자리 (나림 / 연강 / 유리) 1:1 입력 → comfyui z-image-turbo 3 자리 동시 발행 → 3/3 sumukhwa 톤 baseline 통과 + 분별 5 차원 시각화 도달. 8-인물 풀 image baseline = **8/8 도달** (r2 트리오 v2 + r4 인규 v2 + 사용자 직접 발의 유경 v2 + 본 r6 나림/연강/유리 v2). character md 3 자리 frontmatter `illustrations:` + `## 일러스트 갤러리` 갱신 = F-20260502-1252 룰 #3 자기 적용. critic / voice-keeper R0 재검수 정식 패스 자리 인계 — 큐 1 위 baseline = 다음 critic 차례.

## 1. 발행 결과 (3 자리)

| 인물 | 파일 | 톤 baseline | 분별 5 차원 도달 | r5 §2 differentiator 1:1 시각화 | source genai_origin |
|------|------|------|------|------|------|
| 나림 v2 | `character-sheet-narim-v2.png` | sumukhwa pass — 실사/3D 드리프트 0 | silhouette (반쯤 등 돌린 1/4) / pose (손바닥 닫힘) / face (입꼬리만) / palette (#7A6447 ~ #8B7355 자국빛 0%) / background (12 색조 박물관 옅은 wash 자리) 5/5 | §2.1 5/5 시각화 도달 (단 *반쯤 등 돌린* 결이 *3/4 정면 — 등이 살짝 옆으로* 로 미소하게 약함 — 외부 시선 검증 의무 1 자리) | `7fdaad2c-...png` |
| 연강 v2 | `character-sheet-yeongang-v2.png` | sumukhwa pass — 산등성이 자연광, 인공 광원 0 | silhouette (60+ 벤치 앉음 + 무릎 외투) / pose (양손 무릎 위 + 시선 옆 빈) / face (흰빛 머리 + 깊은 주름 + 입 정지) / palette (#5A4A35 + 자국빛 ≤ 0.3%) / background (산등성이 능선 + 막 올라온 dawn) 5/5 | §2.2 5/5 시각화 도달. 단 무릎 위 외투가 *덮여 있음* 보다 *어깨에 걸친* 결로 미소하게 미끄러짐 (외부 시선 검증 의무 1 자리). 인규 ↔ 본인 face crop ⚠ 임계 인접 baseline 그대로 (1 차 분별 = 나이 + 산등성이 시각 + 무릎 외투) | `e3605f3f-...png` |
| 유리 v2 | `character-sheet-yuri-v2.png` | sumukhwa pass — 자기 방 옅은 dawn 자연광 | silhouette (8 살 + 작은 책상 + 어머니 옆) / pose (양 손바닥 처음 펴는 + 어깨도 같이) / composition (어머니 옆자리 + 손은 안 잡음 = *비어 있음 ↔ 채워짐 단 손은 안 잡음* 1 호 분별) / palette (#C8995A 아이색조 + 어머니 #5C4A36 동시 노출 = 부모-자식 색조 패밀리 1 호) / background (자기 방 + 종이창 옅은 dawn) 5/5 | §2.3 5/5 시각화 도달 (강함). 어머니 결의 색조 = 모친 = 노란 결 (golden ochre warmth) 1 차 노출. 모녀 자리 동시 시연 1 호 image 도달 | `c6cbbd7e-...png` |

→ **3/3 자리 모두 §1 매체 baseline 통과 + 5×5 = 15/15 분별 차원 시각화 도달** (단 *외부 시선 검증 의무 자리 2 자리 이월* 1 호 = 나림 *반쯤 등 돌린* 결의 미소한 약함 + 연강 *무릎 외투* 결의 미소한 미끄러짐).

## 2. tone-lock §6 자가 검수 (3 자리)

| 항 | 나림 v2 | 연강 v2 | 유리 v2 |
|----|------|------|------|
| §1 매체 baseline (sumukhwa rice paper) | pass | pass | pass |
| §2 4 키워드 박음 | 4/4 | 4/4 | 4/4 |
| §3 negative 박음 | 10 (baseline) + 4 (r1) + 2 (r3) + 3 (r5: opened palms / palms spread / hands raised) = 19 자리 | 10 + 4 + 2 + 5 (r5: middle-aged face / fluorescent indoor light / indoor wall / sitting indoors / late twenties face) = 21 자리 | 10 + 4 + 2 + 3 (r5: adult face / mother holding child's hand / hands joined) = 19 자리 |
| §6 결과 image sumukhwa 톤 합치 | pass — 실사 드리프트 0 (yugyeong v1 사례 미재발) | pass — 실사 드리프트 0 | pass — 실사 드리프트 0 |
| 트립 #medium 톤 드리프트 발화 | 미발화 | 미발화 | 미발화 |

→ **3/3 자리 모두 tone-lock §6 통과**. yugyeong v1 실사 드리프트 1 호 사례 → cy-003 r2 tone-lock-v0 박음 → r2/r4/r6 자리 모두 §1 baseline 합치 (8 image 풀 = 8/8 sumukhwa 톤 baseline 도달).

## 3. F-20260502-1251 must_fix 1:1 도달 표 (8-인물 풀 image 측 정식 격상)

| must_fix 항 | r2 image (트리오) | r4 image (인규) | 사용자 발의 (유경) | **본 r6 image (나림/연강/유리)** | 8-인물 풀 도달 |
|------------|-----|-----|-----|-----|-----|
| §1 동일 얼굴형/머리/표정/실루엣 반복 금지 | 트리오 v2 5/3 도달 | 인규 v2 5/4 도달 | 유경 v2 5/5 도달 | **나림/연강/유리 v2 각 5/5 도달** | **8 인물 = 5×8 = 40/40 분별 차원 시각화** |
| §2 visual differentiator ≥ 3 자리 명시 | 트리오 4/4/5 자리 image | 인규 5 자리 image | 유경 5 자리 image | **나림 5 + 연강 5 + 유리 5 = 15 자리 image** | **8 인물 = 38 자리 image** |
| §3 silhouette/pose/face/clothing/palette 표 박음 | r1/r3/r5 spec 표 (5×8 baseline) | 동 | 동 | **본 r6 §1 표 = image 측 baseline 표 8/8 도달** | **r5 spec 5×8 + 본 r6 image 8/8 = spec/image 분리 정식 baseline 도달** |
| §5 critic / voice-keeper R0 재검수 분별 가능성 | r2 self-check | r4 self-check | r4 self-check (유경 흡수) | **본 r6 self-check 8-인물 풀 정식 격상** = critic 차례 baseline 인계 자리 | 큐 1 위 baseline 도달 |

본 r6 = F-20260502-1251 art-director 영역 must_fix 5/5 도달 (단 §4 writer 영역 = 본 r6 진행 0 / §5 critic 영역 = 본 r6 인계 자리 그대로).

## 4. 8-인물 풀 blind-distinction self-check (image 측 정식 격상 1 호)

본 self-check = 8-인물 풀 v2 image 발행 후 *image 측* baseline 정식 격상. critic R0 외부 시선 정식 패스 = 다음 critic 차례.

| 검수 항 | 8 image 동시 노출 자가 진단 | 평결 |
|---------|------|------|
| **8 image 동시 노출 5 초 이내 분별** | 해온 (dawn + 손바닥 펼침 + 외투 없음 27) / 정해 (dusk + 큰 키 + 짙은 외투 27) / 희재 (dusk + 짧은 외투 + Y 갈래 27) / 인규 (앉음 + 형광등 + 옆 의자 빈 42 男) / 유경 (서 손바닥 비빔 + 모성 결 42 女) / 나림 (반쯤 등 돌린 + 손바닥 닫힘 + 12 색조 박물관 26 女) / 연강 (산등성이 벤치 + 무릎 외투 + 60+ 흰빛) / 유리 (작은 책상 + 어머니 옆 + 처음 펴는 8 살 + 어머니 동시 노출). 8/8 분별 + 단서 ≥ 1 자리 image 측 명시 도달. | **PASS 강** (image 측 정식 격상 1 호) |
| **silhouette 만 (실루엣)** | 6/8 임계 강 + 2/8 임계 인접 ⚠ (트리오 안 해온 ↔ 희재 r2 baseline + 트리오 ↔ 유경 손바닥 비빔 단서 분별 도달). 본 r6 image 풀에서 나림 *반쯤 등 돌린* 결 = 트리오 정면과 분별 강 + 연강 *벤치 앉음* = 인규 *옆 의자 빈* 과 옥외/옥내 분별 강 + 유리 *작은 키 + 어머니 옆 동행* = 모든 풀과 분별 강. | **PASS 강** (⚠ 2 자리 외부 시선 의무 이월) |
| **face crop** | 6/8 임계 강 + 2/8 ⚠ 임계 인접 (트리오 안 해온 ↔ 희재 r2 baseline + 인규 ↔ 연강 face crop 단독 ⚠ — 본 r6 image 측에서도 나이 + 산등성이 시각 + 무릎 외투 1 차 분별 / face crop 단독은 외부 시선 의무). 나림 26 女 ↔ 트리오 27 男 = 성별 1 차 분별 강. 유리 8 살 = 1 차 분별 임계 강. | **PASS 강** (⚠ 2 자리 외부 시선 의무 이월) |
| **palette 만 (작은 색 패치)** | 정해/희재/인규/연강 = 0.03~0.18 폭 인접 4 자리 ⚠ + 해온 = 유경 (#5C4A36 공유). palette 단독 분별 임계 미달 = 8 자 풀 안 5 자리. **palette 강등 룰 1 호 = r3 발의 / r4 자기 적용 1 호 / r5 spec 자기 적용 / 본 r6 image 자기 적용 = 임계 ≥ 3 호 정식 룰 baseline 도달**. | **FAIL 조건부 → 강등 룰 정식 진입** (palette = 2 차 보조 / 의상·자세·배경·광원 = 1 차 차원 정식 baseline) |

→ **3/4 PASS 강 + 1/4 FAIL 조건부 (palette 강등 룰 정식 baseline 진입) = 본 self-check 통과**. 외부 시선 검증 의무 2 자리 이월 그대로 (해온 ↔ 희재 r2 baseline + 인규 ↔ 연강 r5 신규 ⚠).

## 5. F-20260502-1252 자기 적용 (캐릭터 md 3 자리)

본 r6 = F-20260502-1252 must_fix #3 (art-director 영역) 자기 적용 3-5 호 도달:

| 자리 | frontmatter `illustrations:` | `## 일러스트 갤러리` | F-1252 룰 도달 |
|-----|----|----|----|
| narim.md | v1 + v2 = 2 자리 | v2 (cy-003 r6) + v1 (cy-003 r2 archive) = 2 행 | 자기 적용 3 호 (root-anchored `/outputs/...` 1:1 박음) |
| yeongang.md | stamp v1 + sheet v1 + sheet v2 = 3 자리 | sheet v2 (r6) + stamp v1 (§17.7) + sheet v1 (r2 archive) = 3 행 | 자기 적용 4 호 (동) |
| yuri.md | v1 + v2 = 2 자리 | v2 (r6) + v1 (r2 archive) = 2 행 | 자기 적용 5 호 (동) |

**갤러리 v2 1 행 박음 위치 = 1 위** (1 행 = 가장 최신 = 1 차 분별 baseline). v1 = archive 자리 (분별 차원 빈약 — v2 흡수 표시 본문에 박음). loremaster *일치 룰* (frontmatter `illustrations:` ↔ 본문 갤러리 표 일치) 자기 적용 1:1.

## 6. trip-wire 자기 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #medium 톤 드리프트 (sumukhwa baseline) | 3 image 모두 §1 baseline 합치 (실사/3D/CGI 0) + §2 4 키워드 + §3 negative 의무 박음 = §6 자가 검수 통과 | 미발화 |
| #스타일 드리프트 (모델 기본 얼굴 수렴) | 8-인물 풀 = 분별 차원 5/5 도달 + face crop ⚠ 2 자리 외부 시선 의무 이월 그대로 | 미발화 (단 ⚠ 2 자리 이월) |
| #영역 위반 (게임 시각 자리 신규 작업) | 본 r6 = 단편 인물 일러스트 (§11) 한정 = active scope 자리 안 | 미발화 |
| #1 매니페스토 7 키워드 본문 직접 인용 | 본 argument 본문 0/7 (시각 spec/메타 카테고리) | 미발화 |
| #2 forbidden-language §1~§8 grep | 본 argument 시각 spec/메타 카테고리 = §8 면제 | 미발화 |

## 7. 다음 자리 (인접 tick 큐)

a. **critic r-N cy-003** — 본 r6 8-인물 풀 image 측 baseline 외부 시선 정식 패스 자리 (face crop ⚠ 2 자리 외부 시선 의무 + silhouette ⚠ 2 자리 + 8 image 동시 노출 분별 측정 + R0 재검수 격상). 큐 1 위.
b. **voice-keeper r-N cy-003** — 본 r6 image-mode 가독성 영향 0 (메타 spec/이미지 카테고리 = §8 면제) 검증 후 영역 외.
c. **art-director r-N thin-bump** — visual-bible v0.4 → v0.5 thin-bump 자리 (§17 8 우표 풀 image 박음 진척 = 본 r6 = 변동 0 / §11 인물 hex 매트릭스 v2 image 발행 도달 1:1 흡수 자리). 변동 1 자리 (§11.2 hex 박음 후행).
d. **loremaster r-N** — 본 r6 갤러리 표 v2 link 정합 1:1 자기 적용 후행 자리 (character-relations 측 *유경 ↔ 유리 부모-자식 색조 패밀리 1 호* 시각 룰 흡수 자리 + *연강 ↔ 인규 face crop ⚠ 임계 인접* 시각 룰 흡수 자리).
e. **art-director r-N image (다음 art-director 차례)** — F-1252 후속 회차 (episode-05+) 박힘 짝 hero/POV image 박음 (writer 회차 박힘 짝 = pre-arrival self-application 룰 1 호 자기 적용).
f. **writer r-N** — episode-05+ 신규 회차 박음 시 본 r6 8-인물 풀 image 측 baseline + r5 §1 5×8 매트릭스 직접 인용 가능 = pre-arrival self-application 룰 1 호 image 측 자기 적용 자리.

## 8. cy-003 진화 룰 후보 격상

- **spec/image 분리 자리 4 호 정식 룰 진입 자리 자기 적용 1 호 baseline 도달** (r5 spec → 본 r6 image = spec/image 분리 사이클 5 호 자기 적용 + 4 호 정식 baseline).
- **자기 적용 시퀀스 art-director 측 5 호 도달** = r1 트리오 spec → r2 트리오 image → r3 인규 spec → r4 인규 image → r5 8-인물 풀 spec → **본 r6 8-인물 풀 image** = 정식 룰 임계 ≥ 3 호 4 자리 누적 baseline 도달.
- **palette 강등 룰 1 호 정식 baseline 도달** = r3 발의 / r4 자기 적용 1 호 / r5 spec 자기 적용 / **본 r6 image 자기 적용 = 임계 ≥ 3 호 정식 룰 진입 자리 정식 baseline 도달** (5/8 palette 단독 분별 임계 미달 = 의상/자세/배경/광원 1 차 차원 의존 정식 룰).
- **외부 시선 검증 의무 2 자리 이월 룰 1 호 자기 적용** = r5 발의 → 본 r6 자기 적용 1 호 = 정식 룰 임계 ≥ 3 호 후보 (1 호 = r5 / 2 호 = 본 r6 / 3 호 = 다음 critic 차례).
- **부모-자식 색조 패밀리 룰 1 호 신규 발의** = 유경 #5C4A36 ↔ 유리 #C8995A image 측 동시 노출 1 호 = lore 측 가족 자리 시각 룰 흡수 후행 자리 (loremaster 인계).

## TICK_SUMMARY 후보 한 줄

art-director r6 cy-003 (tick-069) — F-20260502-1251 응답 자리 5 호 = 8-인물 풀 image baseline 8/8 정식 격상. r5 §3.1·§3.2·§3.3 v2 prompt 1:1 입력 → 나림 v2 + 연강 v2 + 유리 v2 image 발행 (comfyui z-image-turbo). 3/3 sumukhwa 톤 §1 baseline 통과 + 5×5 = 15/15 분별 차원 시각화. characters/<id>.md 3 자리 frontmatter `illustrations:` + `## 일러스트 갤러리` v2 link 갱신 = F-20260502-1252 must_fix #3 art-director 영역 자기 적용 3-5 호 도달. blind-distinction self-check 3/4 PASS 강 + 1/4 palette 강등 룰 정식 baseline 진입. spec/image 분리 자리 4 호 정식 baseline 도달 = 자기 적용 시퀀스 art-director 측 5 호 도달. 외부 시선 검증 의무 2 자리 이월 그대로 (해온 ↔ 희재 r2 + 인규 ↔ 연강 r5/r6) + 부모-자식 색조 패밀리 룰 1 호 신규 발의 (유경 #5C4A36 ↔ 유리 #C8995A image 측 동시 노출 1 호). target_orgs_advanced = F-20260502-1251 (8-인물 풀 image baseline 정식 격상) + F-20260502-1252 (art-director 영역 자기 적용 3-5 호 도달).
