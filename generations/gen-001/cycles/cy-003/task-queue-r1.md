# cy-003 r1 Task 큐

> D-20260502-003 (picked=`focus-writing`) §3 흐름 1:1 흡수.
> 5 활성 + 1 scope 축소 + 1 freeze + 1 scope 축소 = **5 자리 r1 task 큐 (designer freeze 제외)**.
> 모든 task 는 `world: the-map-is-the-journey@v0.5` 참조 (cy-003 안 v0.6 박힘 시 자동 갱신).
> *r1 = 영역 자기 task* — cy-003 charter §1 "글 pillar 심화 구조" 의 세 측 흐름 (세계관 → 인물 → 글) 1 차 진입 자리.

## 1. loremaster — bible v0.6 + character-relations v1 (G-WORLD-1 + G-CHAR-1 동시 진척)

- **r1 (a) bible v0.6 박음**: bible v0.5 (8 핵심 문서 도달 baseline) 위 *인물 8 자리 본문* 1 차 박음 — §X.X 인물 1 인 1 절 = 5 known (해온 / 정해 / 나림 / 유경 / 인규) + 3 신규 (연강 / 희재 / 유리) = 8 절. 각 절 = 인물 한 자리 *세 축 위치* + *주요 사건 좌표* + *forbidden-dialogue 인용 1 행* 박음 baseline.
- **r1 (b) character-relations v1 박음**: v0 (5/2/2 격상 baseline) 위 *세 축 정착* 5/3/3 격상 자리 = 인규 *업* 축 + 1 자리 신규 / 유리 *나* 축 + 1 자리 신규 / 가족 축 1 자리 신규 (8 인물 풀 안 자리 박음). character-relations-v0 §사건 번호 1 단위 보정 (loremaster r5 발의 큐) 1:1 흡수 자리.
- **트립와이어**: ① 인물 본문 박음 시 voice-signature 누락 (writer r1 영역 침범 0 자리 = 협업 인터페이스만 박음 + writer r1 짝 의무) / ② bible v0.5 8 핵심 문서 baseline 본체 후퇴 0 (모든 변경 thin-bump 또는 v0.6 신규 §X.X 추가만) / ③ forbidden-language §1~§8 grep 적중 0 의무.
- **챔피언 핵심어**: `진심` (인물 본문 = 진심의 표면 박음).
- **mode 후보**: r1 = 본체 + 부속 (loremaster cy-002 r1/r2 패턴 유지) — bible v0.6 본체 + character-relations v1 부속 묶음 1 호.

## 2. writer — character-sheets 8/8 + voice-signature 박음 (G-CHAR-1 + G-WRITING-1 동시 진척)

- **r1 (a) character-sheets 8/8 도달**: 현재 5 (해온/정해/나림/유경/인규) → +3 (연강/희재/유리) 신규 시트 박음. 각 시트 = 세 축 위치 + 매니페스토 핵심어 ≥ 1 자리 + voice-signature 1 단락 + forbidden-dialogue 인용 ≥ 3 행 baseline.
- **r1 (b) voice-signature × 인물 3 자리 신규**: 5 known 인물 (cy-002 누적) 위 3 신규 (연강 / 희재 / 유리) voice-signature 1 단락씩 박음. 각 단락 = *말투 결 1 행 + 침묵 결 1 행 + 시간 좌표 1 행* baseline.
- **2026-05-02 reader-first override**: `prompts/writing/reader-first-standard.md` 가 본 r1 task 위에 우선한다. 기존 character-sheets/characters 산출물은 PASS 가 아니라 `candidate` 로 강등하고, 다음 writer 자리는 신규 확장보다 **reader-facing 재작성** 우선.
- **r2 우선 task**: 실제 작가 코퍼스 2 편 이상 (`my-essay/content/my-own-game.mdx`, `blame-to-me.mdx`, `my-own-customer.mdx`, `answers.mdx` 등) + `feedback/reader/` 를 읽고, `character-sheets-extended-v0.md` 와 `outputs/writing/.../characters/*.md` 의 reader-facing 부분에서 toxic world terms 를 제거/축소한 v0.1 후보를 만든다.
- **연재 continuation override (2026-05-02)**: 사용자 요청으로 `prompt.codepoet.site` 의 상단 연재물은 계속 이어 써야 한다. writer 는 `site/manifest.json` 또는 frontmatter 의 `series_id: the-map-is-the-journey` + `episode_no` 최댓값을 확인하고, 신규 단편을 만들 때 항상 다음 번호를 쓴다. 현재 baseline 은 1~3 회이므로 다음 writer 신규 단편은 `episode_no: 4` 이며 경로는 `outputs/writing/the-map-is-the-journey/episode-04-<slug>.md` 형식이다. 한 writer tick 에 1 회차만 작성하고, `episode_status: candidate`, `reader_first_status: candidate` 로 둔 뒤 critic/voice-keeper 가 R0/R1/R2 gate 를 본다.
- **트립와이어**: ① `reader-first-standard.md` R0/R1/R2 gate 미통과 시 PASS 금지 / ② 첫 500 자 toxic world terms 0 / ③ 1500 자당 toxic terms ≤ 3 / ④ 매니페스토 핵심어 본문 직접 인용 0 / ⑤ forbidden-language §1~§8 grep 적중 0 / ⑥ critic-r2 가짜 통과 패턴 회피 (감정 표면 박음 의무).
- **챔피언 핵심어**: `자립` (인물 시트 = 자립의 표면 박음).
- **mode 후보**: r1 = 묶음 (인물 시트 3 자리 + voice-signature 3 자리 = 6 자리 묶음 박음) — writer cy-002 r2 묶음 패턴 유지.

## 3. voice-keeper — §7 5/5 PASS 임계 검수 + 누적 풀 e 평균 ≥ 0.95 표적

- **r1 (a) §7 5/5 PASS 임계 검수**: paired-dawns-v0.1 (writer r3 cy-002 baseline) cold 측정 4.75 형식 1:1 자기 적용 — cy-003 안 새 단편 박힘 시 §7 5/5 측정 의무 baseline.
- **r1 (b) 7 키워드 누적 e 평균 표적 ≥ 0.95**: 누적 풀 19 자리 0.932 (cy-002 baseline) → cy-003 안 신규 산출물 e-항 측정 ≥ 5 자리 누적 후 0.95 임계 도달 자리.
- **r1 (c) audit-rules-v0 §7 정식 진입**: cy-002 안 §7 도입 후 정식 룰 임계 도달 baseline 박음 = audit-rules-v1 신규 섹션 후보 박음 자리.
- **2026-05-02 reader-first override**: 개별 글마다 7 키워드 메타포화를 요구하지 않는다. writing 에서는 cycle-level 정렬만 추적하고, 개별 artifact 는 배반/설교/작가성 훼손/세계관 언어 과적합을 본다.
- **트립와이어**: ① 정렬 측정 안 가독성 측정 흡수 (§7 ↔ §1~§6 자리 분리 의무) / ② self-check vs cold 측정 정밀도 격차 baseline 보전 / ③ 세계관 단어 과적합을 매니페스토 정렬로 보상하는 패턴 차단 / ④ `feedback/reader/` R0 fail 무시 차단.
- **챔피언 핵심어**: `진심` (정렬 = 진심의 측정).
- **mode 후보**: r1 = audit (writer r1 산출물 측정 자리) — voice-keeper cy-002 r2/r3 audit 패턴 유지.

## 4. critic — cold-read protocol 갱신 박음 (critic-r3+ baseline 정식 진입)

- **r1 (a) cold-read protocol 갱신**: critic.md §Cold-read protocol (writing 카테고리, tick-066 charter-update mode 1 호 박음) 위 *§7 5 항목 측정 의무 정식 박음* 임계 진입 — cy-002 안 1 호 사례 (paired-dawns-v0.1-first-5min, tick-069) → cy-003 안 2 호 사례 박힘 시 정식 룰 임계 도달.
- **r1 (b) writer r1 산출물 cold-read**: character-sheets 8/8 + voice-signature 3 자리 신규 = cold-read 표적 자리. 5 분 즉답률 + §7 5 항목 두 측정 의무 동시 박음.
- **2026-05-02 reader-first override**: 기존 r1 cold-read PASS 는 재검토 대상. 다음 critic 자리는 `prompts/writing/reader-first-standard.md` 의 R0/R1/R2 gate 로 `character-sheets-extended-v0.md` 및 characters 페이지를 다시 판정한다. 평균 점수 PASS 금지.
- **트립와이어**: ① critic-r2 가짜 통과 패턴 (5 분 즉답 통과 + 감정 표면 부재) 회피 / ② `feedback/reader/` R0 fail 우선 / ③ toxic-term budget 위반 평균 통과 금지 / ④ 실제 작가 코퍼스와 닮은 점 3 개 미만이면 FAIL.
- **챔피언 핵심어**: `방향` (외부 시선이 방향을 검증).
- **mode 후보**: r1 = cold-read (critic.md §Cold-read protocol 1:1 적용) — critic cy-002 r5 패턴 유지.

## 5. art-director (scope 축소) — 우표 §17.1 ~ §17.6 6 장 실측 (단편 인물/장면 재정의)

- **r1**: visual-bible v0.4 §17 8 우표 풀 baseline 위 §17.1 ~ §17.6 6 장 실측 image — *우표 = 단편 인물/장면* 으로 재정의 (cy-003 charter §조직 구성 변경 §scope 축소 1:1 흡수). 게임 묶음 → 단편 묶음 으로 cycle 안 의미 격하.
- **트립와이어**: ① 게임 시각 자리 (visual-bible §13 walk-trace-spec / §M3/M4/M5 / §16 prototype 검수) 신규 작업 0 의무 / ② 단편 일러스트 1 장 박음 시 writer r-N 짝 의무 (단편 본체 박힘 자리 짝).
- **챔피언 핵심어**: `축복` / `연대` (우표 = 한 결의 시각 시연).
- **mode 후보**: r1 = image (실측 image 6 장) — art-director cy-002 r3-image / r4 thin-bump 패턴 유지.

## 6. designer — **freeze (r-N 진입 0)**

- **신규 산출물 0** = cy-003 charter §4 게임 자리 freeze 1:1 흡수.
- **트립와이어**: 게임 메카닉 / fail-modes / concept 신규 박음 시 트립 발화 = "이건 cy-003 charter §조직 freeze 자리 위반."
- **unfreeze 조건**: 사용자 직접 발의 + Type C 결정 (D-20260502-003 형식 1:1).

## 7. implementer (scope 축소) — publishing surface 책임만

- **r1**: publishing surface 보강 자리만. cy-002 baseline (`prompt.codepoet.site` + `scripts/generate-site-manifest.sh` + `scripts/notify-new-writing.sh` + `~/k-codepoet/my-devops/services/codepoet-linux-1/prompt-site/`) 보존·보강. 게임 영역 (prototype / walk-trace-spec / manual-run-checklist / engine-choice) 신규 작업 0.
- **트립와이어**: 게임 영역 신규 작업 발화 = "이건 cy-003 charter §implementer scope 축소 위반."
- **챔피언 핵심어**: `움직임` (publishing surface = 산출물의 외부 도달).
- **mode 후보**: r1 = thin-bump 또는 finalize-only (orchestrator finalize 짝).

## 8. orchestrator — 조율 + drift 회복 + 마감 라운드 review.md (cy-003 마감 자리)

- **r1 (= 본 task-queue-r1.md 박음 자리)**: cy-002 review.md baseline 박음 (cy-003 tick-002 자리 = orchestrator gap 처치 1 호) + cy-003 task-queue-r1.md 박음 (본 자리).
- **r-N (cy-003 안)**: drift 회복 + finalize-only orphan-ack (cy-002 r3 묶음 잔여 자리 = tick-074 / tick-075 / voice-keeper-r6 / stamp-17-1-haeon-palm-line-dawn-audit / outputs/timeline.md / site/manifest.json 자리 흡수 후보).
- **r-N (cy-003 마감 자리)**: review.md baseline 박음 (cy-002 review.md 형식 1:1) — cy-003 cycle close 자리 = orchestrator *cycle-close-review* mode 2 호 사례 박음 도달 자리.

---

## 진행 모니터

- 5 활성 조직 r1 동시 발화 가능 (loremaster + writer + voice-keeper + critic + art-director scope 축소).
- r1 ack ticks N 건 도달 → r2 묶음 진입 임계 (cy-002 패턴 유지).
- 마감 라운드 5/5 종결 (활성 조직 5 자리 = cy-002 7/7 → cy-003 5/5 임계 격하 자리).
- review.md baseline 박음 → cy-003 close.

## cy-002 → cy-003 진입 자리 정렬

| 자리 | 상태 |
|------|------|
| D-20260502-003 closed | ✓ (tick-001 박음) |
| cy-003 charter | ✓ (tick-001 박음) |
| designer / implementer / art-director frontmatter | ✓ (tick-001 박음) |
| cy-002 review.md | ✓ (tick-002 박음) |
| **cy-003 task-queue-r1.md** | **✓ (본 tick-003 박음)** |

→ 5/5 표적 박음 = cy-003 r1 진입 자리 정렬 도달.

## 신규 결정 예측 (cy-003 r1 진입 인접)

- **Type B (loremaster r1 인접)**: 인물 8 자리 본문 박음 순서 — 5 known 우선 (writer 단편 누적 자리 짝) vs 3 신규 우선 (character-relations v1 신규 자리 짝). orchestrator 추천 = 5 known 우선.
- **Type B (writer r1 r2 인접)**: 단편 +5 의 시점/축 분포 — 1인칭 5 + 3인칭 0 (cy-002 패턴) vs 1인칭 3 + 3인칭 2 (시점 다양화). orchestrator 추천 = 시점 다양화.

> 본 결정 자리는 r1 진입 직전 자리 = 본 큐 박음 후 인접 tick 자리. lane 안 자율 진행 가능 (Type B = type_c_pending 게이트 대상 아님).
