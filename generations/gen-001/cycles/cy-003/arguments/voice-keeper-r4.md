---
role: voice-keeper
round: 4
cycle: cy-003
mode: audit + rule-extension (F-1251 R0 blind-distinction baseline + audit-rules-v0 §8 신설)
authored_at: 2026-05-02T16:05:01+00:00
target_artifacts:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-haeon-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-huijae-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-narim-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yeongang-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-ingyu-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yuri-v1.png
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-yugyeong-v2.png
acks_feedback:
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced: voice-keeper
---

# voice-keeper r4 cy-003 — F-1251 R0 blind-distinction baseline + §8 신설

## 자리 박음 (한 줄)

F-1251 (*해온/정해/희재가 너무 닮았다*) `applies_to: voice-keeper` 측 직접 응답 1 호 박음
= **R0 이름 가림 5 초 분별 cold-read** v1 풀 측정 → **0.56 / 1.0 = FAIL** 확인 + **audit-rules-v0
§8 visual blind-distinction gate 신설** (writing 카테고리 §7 짝의 visual 카테고리 분별 gate
1 호 박음).

## §1 R0 routing 자가 검수

4 자리 R0 feedback target_orgs / applies_to 매핑:

| feedback id | applies_to / target_orgs | voice-keeper 측 must_fix | 본 tick 진척 |
|-------------|--------------------------|--------------------------|--------------|
| F-20260502-1216-general-writing-too-abstract | (본문 writer + critic) | 0 (audit-rules-v0 §7 흡수 도달) | 0 (보존) |
| **F-20260502-1251-character-visuals-too-similar** | **applies_to art-director, writer, critic, voice-keeper** | **#5 = critic 또는 voice-keeper R0 재검수** | **본 r4 직접 응답 1 호 박음** ✓ |
| F-20260502-1252-content-illustrations-routing | target_orgs writer, art-director, implementer | 0 (voice-keeper 측 인계 0) | 0 |
| F-20260502-1252-serial-stalled-at-3 | target_orgs writer, orchestrator | 0 | 0 |

→ 1/4 자리 voice-keeper 직접 응답 자리 = F-1251 must_fix #5 = 본 r4 박음.

## §2 R0 blind-distinction cold-read (해온 / 정해 / 희재 v1)

art-director r1 cy-003 §4 *blind-distinction 검수 그물* 3 항목 1:1 흡수 후 v1 image 풀 직접
열어 cold-read 측정 (이름·hex·메타 가린 채 voice-keeper R0 페르소나).

### §2-1 시각 단서 (cold)

| 자리 | 외형 | 자세 | 광원 | 배경 |
|------|------|------|------|------|
| **해온 v1** | 한복 결 단색 상의 + 외투 없음 | 양 손바닥 펴서 자기 손바닥 위 작은 빛 점 보기 | 베이지 | 베이지 / 종이 결 |
| **정해 v1** | 무릎 위 길이 짙은 외투 + 옷깃 곧추 세움 | 양손 주머니 + 발끝 보기 | dusk | Y 자 갈래길 정중앙 |
| **희재 v1** | 무릎 위 길이 짙은 외투 + 옷깃 살짝 누움 | 양손 주머니 + 발끝 보기 | dusk | dusk 도로변 |

### §2-2 항목 × 짝 점수 (R0 cold)

| 항목 | 해온 ↔ 정해 | 해온 ↔ 희재 | 정해 ↔ 희재 | 풀 평균 |
|------|-------------|-------------|-------------|---------|
| 1 동시 5 초 | 1.0 | 1.0 | **0.0** | **0.67** |
| 2 silhouette | 1.0 | 1.0 | **0.0** | **0.67** |
| 3 face crop | 0.5 | 0.5 | **0.0** | **0.33** |

**풀 합산** = (0.67 + 0.67 + 0.33) / 3 = **0.56 / 1.0** = **FAIL** (PASS 임계 ≥ 0.8).
**dealbreaker** (#1 5 초 분별) = 정해 ↔ 희재 0.0 → **FAIL 확정**.

### §2-3 fail 의 뿌리 (R0 일치 + voice-keeper 추가 1 자리)

art-director r1 §0 *닮음의 3 뿌리* 1:1 일치:
- 공통 호칭 과적합 → face 임계 미달
- 정해 ↔ 희재 자세 중복 → silhouette 임계 미달
- hex 차이 모델 출력 분별 임계 미달

voice-keeper 추가 1 자리 = **외투 길이 동일 (spec ↔ 실측 차이)**: art-director r1 spec 안
정해 *무릎 위* + 희재 *허리~엉덩이* 박음, v1 image 두 자리 모두 무릎 위 = 모델 prompt 분별
강도 부족 = v2 재생성 의무 자리 입증.

→ F-1251 사용자 평결 ↔ voice-keeper 측 측정 **1:1 정합**.

## §3 5 인물 위험 audit (나림 / 유경 / 인규 / 연강 / 유리)

prompt meta.yml 직접 cold-read:

| 인물 | 1 차 분별 차원 | 동일 풀 위험 |
|------|---------------|--------------|
| 나림 | 여성 + 후반 20 대 + 12 토색 hue + 빈 종이 | 여성 풀 1 자리 단독 |
| 유경 | 여성 + 후반 30 대 + 어머니 결 + 양 손바닥 비비기 | 여성 풀 1 자리 단독 |
| 인규 | 남성 + 초반 40 대 + 앉음 + 옆 사람 향한 결 | 연령 풀 단독 |
| 연강 | 남성 + 60+ + 산마루 벤치 + dawn | 연령 풀 단독 |
| 유리 | 8 세 여아 + 책상 + dawn | 연령 풀 단독 |

**5/5 1 차 분별 차원 임계 도달** = 성별 / 연령 / 자세 1 차 차원에서 이미 분별. **F-1251
위험은 *남성 후반 20대 3 인 풀* 에 국지** (해온/정해/희재) → art-director r-N spec 후행 박음
의무 자리 단계적 (R0 추가 fail 박힘 시만 발사).

## §4 audit-rules-v0 §8 신설 (visual blind-distinction gate)

writing 카테고리 §7 reader gate 짝의 **visual 카테고리 분별 gate 1 호 박음**:

- 적용 대상 = `outputs/worldbuilding/**/illustrations/character-sheet-*.png` + 인물 portrait
- §8-1 3 항목 측정표 = §2-2 점수 도구 1:1 흡수 (5 초 분별 / silhouette / face crop)
- PASS 임계 ≥ 0.8 / 1.0 + 항목 1 ≥ 0.6 (5 초 분별 dealbreaker)
- §8-2 **pre-regen baseline + post-regen 재측정 짝 의무** (분리 측정 의무 = 정렬 측 voice-keeper
  단독, critic R0 페르소나 검수와 분리)
- §8-3 첫 적용 표적 = 본 baseline-v0 + art-director r-N v2 박힘 후 재측정 짝
- §8-4 발화 형식 3 자리

→ **3 측 동시 통과 게이트의 visual 카테고리 짝 1 호 발의** (writing 카테고리 게이트 = 정렬
voice-keeper §1~§6 + 전달 critic 5 분 즉답 + 가독성 voice-keeper §7 위 + visual 카테고리 게이트
= 정렬 voice-keeper §1~§6 + 분별 voice-keeper §8 + 톤 art-director tone-lock).

## §5 박음 산출물 + 자리

| 산출물 | 박음 | 메모 |
|--------|------|------|
| `outputs/alignment/the-map-is-the-journey/character-visual-distinction-baseline-v0.md` | 신규 | pre-regen baseline 1 호 박음. v2 박힘 후 재측정 짝 의무. |
| `generations/gen-001/orgs/voice-keeper/audit-rules-v0.md` | §8 신설 | visual blind-distinction gate 1 호 박음 (4 절: 측정표 + 짝 의무 + 첫 표적 + 발화). |
| `generations/gen-001/cycles/cy-003/arguments/voice-keeper-r4.md` | 본 자리 | argument 박음. |
| `generations/gen-001/cycles/cy-003/ticks/tick-027.md` | 신규 | tick body. |
| `current.md` | frontmatter tick 26→27 + last_updated + §변경 이력 1 행 | sync. |

writer 본문 0 변경 / art-director image 0 박음 / art-director spec 0 변경 / 인물 md 0 변경
= 영역 침범 0.

## §6 트립 자가 검사

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| §정렬 (배반·설교) | 본 r4 = 측정 도구 + 룰 신설 / 매니페스토 키워드 본문 직접 인용 0 | 미발화 |
| §reader-first §3 hard fail | 본 r4 본문 시각 spec/메타 카테고리 = §8 면제 자리 | 미발화 |
| 영역 침범 (art-director spec / image 박음) | 본 r4 = R0 cold-read 측정 단독 + 룰 신설 단독 / spec 신규 박음 0 / image 신규 박음 0 / prompt 신규 박음 0 | 미발화 |
| 영역 침범 (writer 인물 묘사 변경) | must_fix #4 = writer 영역 인계 명시 / 인물 본문 0 변경 | 미발화 |
| forbidden-language §1~§8 grep | 본 r4 본문 시각 spec/메타 = §8 면제 자리 안 | 미발화 |
| critic-r2 가짜 통과 패턴 (§7-2) | 본 r4 = visual 카테고리 = §7 비대상 | 미발화 |

**트립 발화 0** + **영역 침범 0**.

## §7 cy-003 진화 룰 후보 신규

1. **R0 fail → §룰 신설 baseline 박음 자리 1 호 사례 신규** = F-1251 applies_to voice-keeper 측
   routing → audit-rules-v0 §8 신설 박음 = lore 측 *F-1252 → RULE-LORE-ILLUSTRATIONS-PARITY-v0*
   (loremaster r3 tick-026) 짝 = **R0 feedback id ↔ 룰 baseline 직접 짝 박음 자리 2 호**.
2. **pre-regen baseline + post-regen 재측정 짝 의무 1 호 박음** = 정렬 측 분리 측정 의무
   1 호 사례 발의 자리 (R0 시각 fail 처치 표준 1 호).
3. **§7 ↔ §8 짝 박음 = writing / visual 카테고리 분별 gate 짝 1 호 도달** = 3 측 동시 통과
   게이트의 카테고리 확장 1 호.
4. **F-1251 ack 도달 3/4** (art-director r1 + 본 r4 voice-keeper + must_fix #2 art-director r1
   spec 흡수 = 3 자리 / 잔여 = critic 측 R0 재검수 1 자리).
5. **R0 feedback target_orgs / applies_to routing 자가 검수 baseline 7 호 도달** (designer r-noop
   tick-021 + implementer r2 tick-022 + orchestrator checker tick-023 + tick-024 + implementer
   r3 tick-025 + loremaster r3 tick-026 + 본 tick = 7 호).
6. **트립 발화 감쇠 voice-keeper 측 4 라운드 연속 도달** (cy-003 r1 voice-keeper r2 / r2 cy-003
   r3 character-sheets 측정 / r3 episode-04 audit / 본 r4 visual baseline = 4 라운드 연속).
7. **forbidden-language §1~§8 grep 적중 0 + 매니페스토 7 키워드 직접 인용 0** 자가 의무 누적.

## §8 인계

- **art-director (scope_reduced — F-1251 후행 v2 image 박음 자리)** = 본 r4 §4 §8-2 *post-regen
  재측정 짝 의무* 자가 적용 자리. r1 §7a 박음 위 v2 image 3 자리 (해온/정해/희재) 박힘 즉시
  voice-keeper r-N+1 측 §8-1 측정 짝 박음 발사.
- **critic (다음 r3 자리)** = F-1251 must_fix #5 *critic 또는 voice-keeper 가 R0 재검수* 측 critic
  단독 측정 자리 (본 r4 가 voice-keeper 측 1 호 박음 → critic 측 1 호 박음으로 *3 측 동시*
  도달). v2 박힘 후 critic R0 cold 측정 + voice-keeper §8 측정 두 측 동시 ≥ 0.8 도달 자리 = visual
  3 측 동시 게이트 1 호 도달.
- **loremaster (r-N+1 자리 후보)** = visual-bible v0.4 §11 인물 hex 매트릭스 ↔ v2 image 박힘 후
  hex 정합 검수 자리 (본 r4 §2-3 fail 의 뿌리 hex 차이 임계 미달 측 보정 자리).
- **orchestrator (D-004 자동 적용 finalize 자리)** = 본 r4 박음 = 활성 조직 영역 안 *유지*
  의무 1:1 충족 자리 = 옵션 a (frozen-only skip) 간접 지지 baseline 6 호 도달. 다음 자리
  finalize 박음 자리.
- **사용자 (F-1251 발의자 + F-1216 발의자)** = F-1251 R0 재평결 보류 자리 (v2 박힘 후
  voice-keeper §8 + critic R0 두 측 동시 PASS 도달 시 status: open → resolved 발의 자리).

## TICK_SUMMARY (자가 한 줄)

voice-keeper r4 cy-003 (tick-027) — F-1251 applies_to voice-keeper 측 직접 응답 1 호 박음 =
**R0 이름 가림 5 초 분별 cold-read** v1 풀 측정 (해온/정해/희재) → **0.56 / 1.0 = FAIL 확정**
+ dealbreaker (5 초 분별 정해 ↔ 희재 0.0) 적중 + fail 의 뿌리 4 자리 (art-director r1 §0
3 자리 1:1 정합 + 외투 길이 동일 spec ↔ 실측 차이 추가) + 5 인물 위험 audit (5/5 1 차 분별
차원 임계 도달 = F-1251 위험 *남성 후반 20대 3 인 풀* 국지). **audit-rules-v0 §8 visual
blind-distinction gate 신설** (writing 카테고리 §7 reader gate 짝의 visual 카테고리 분별 gate
1 호 박음 — 4 절: 3 항목 측정표 + pre-regen + post-regen 재측정 짝 의무 + 첫 표적 + 발화)
+ **`character-visual-distinction-baseline-v0.md` 박음** (pre-regen baseline 1 호). target_orgs_advanced
= voice-keeper. acks_feedback = [F-20260502-1251-character-visuals-too-similar].
