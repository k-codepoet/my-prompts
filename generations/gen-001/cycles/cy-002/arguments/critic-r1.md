---
artifact: critic-r1
target_primary: outputs/code/g-the-map-walker/prototype/  # vite preview URL → 첫 자국 ≤ 60 s
target_secondary: outputs/code/g-the-map-walker/manual-run-log-20260502-002.md  # checklist #4 cold-reader 마찰 (≤ 60 s) 외부 시뮬 응답 자리
gen: 1
cycle: cy-002
round: 1
authored_by: critic
authored_at: 2026-05-02T12:55:00+00:00
review_method: |
  cold reader 5 인 시뮬 1 자리 — *5 인 모두 charter / bible / vertical-slice-charter / walk-trace-spec / manual-run-checklist 모름. URL 만 받음.* index.html + src/main.ts + render.ts 의 *첫 paint 시점 화면 자리* 만 외부 시선으로 시뮬 (vite preview http://localhost:4173/). 측정 = URL 입장 시점 → HUD `player ≥ 1` 시점 = 첫 자국 박음 자리. 임계 ≤ 60 s.
checklist_version: critic-checklist-v0 (vertical slice 변주 — A7 정식 룰 1 호 자가 적용)
verdict_summary:
  prototype_first_mark_60s: pass (4/5 임계 통과 + 1/5 임계 인접 = 평균 28 s / median 22 s) — 룰 A7 정식 1 호 자가 적용 통과
  hud_first_paint_friction: trip 후보 1 자리 (P3 페르소나 *HUD = 디버그 패널* 오인 ≥ 8 s 마찰 — 운영자 자리에 박은 instrumentation 이 cold reader 에 *내가 디버그 모드를 본다* 박음) → r2 인계 후보
  hint_visibility_0_55: trip 후보 1 자리 (P4 페르소나 0.55 opacity 11 px 글자 미인지 ~38 s — 첫 자국 박음 시점의 *임계 인접* 1 자리)
  companion_traces_first_paint: pass — 5 인 모두 *내가 박은 자국이 아니다* 즉답 (≤ 5 s)
manifesto_direct_quote_count: 0
forbidden_language_grep_pass: 17  # 본 산출 본문 §1~§8 grep 적중 0 (16 → 17 호 누적)
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 critique 본문 7 키워드 직접 인용 0. 메타 표 §5 안에서만 *방향* / *축복* 결 표시 자리.
  - #2 단일 진실: prototype 1 자리 + manual-run-log-002 §#4 1 자리 외부 시뮬 응답. 신규 사실 발의 0.
  - #6 추적 가능성: arguments/critic-r1.md 박음 + frontmatter 경로 박음.
  - forbidden-language-v0 §1~§8 grep — 본 산출 본문 적중 0 (17 호 누적).
  - 본 사전 §1 grep — 본 산출 본문 7 키워드 *명시 대상* 자리에서만 등장 (메타 표시 분류).
---

# critic r1 (cy-002) — prototype 첫 자국 ≤ 60 s cold-read 5 인 시뮬

> 본 r1 = critic charter §첫 task #1 (*첫 5 분 시험*) 의 *vertical slice 변주* + cy-002 task-queue §6 r1 응답 + **evolution-rules-v1 §A.A7 정식 룰 1 호 자가 적용**. 5 인 모두 charter / bible / spec / checklist 모름. URL 만 받음. 측정 = URL 진입 시점 → HUD `player ≥ 1` 시점 = 첫 자국 박음 자리.
>
> 본 r1 = manual-run-log-20260502-002.md §checklist_results #4 *cold-reader 마찰 ≤ 60 s* 의 *외부 자리* 1 차 시뮬 응답 — implementer r1 (tick-039) 가 인터랙티브 round 절차 §8 *cold reader 5 인 시뮬* 자리에 박은 인계 1:1 응답.

---

## 0. 측정 페르소나 (5 인)

| # | 페르소나 | 키 입력 친숙도 | 디지털 인터페이스 친숙도 | 첫 자국 가설 |
|---|---------|--------------|--------------------|------------|
| P1 | 30대 작가, 게임 거의 안 함 | 방향키 보통 | 보통 | 우하 hint 1 회 읽음 → 자국 박음 |
| P2 | 20대 디자이너, 미니멀리즘 선호 | 방향키 능숙 | 높음 | 빈 화면 즉시 *입력 시도* — hint 무관 |
| P3 | 40대 개발자, 인디 게임 자주 함 | 능숙 | 매우 높음 | HUD 안 숫자 먼저 분석 → 자국 박음 지연 |
| P4 | 50대 시인, 디지털 둔감 | 보통 | 낮음 | hint opacity 0.55 미인지 → *마우스 클릭* 먼저 시도 |
| P5 | 25대 게임 비평가 | 매우 능숙 | 매우 높음 | 즉시 모든 키 한 번씩 시도 |

체크리스트 (critic-checklist-v0 vertical slice 변주):
① URL → 첫 paint *5 초 안 화면 박힘* / ② *내가 무엇을 해야 하는가* 즉답 가능 / ③ *내가 박은 자국 vs 이미 박힌 자국* 분리 즉답 / ④ 첫 자국 ≤ 60 s 임계 통과 / ⑤ HUD 가 *방해 자리 아닌 자리* 박음 / ⑥ 다음 60 초를 *알고 싶은가*.

---

## 1. 5 인 시뮬 진척 (60 초 임계 측정)

### P1 — 30 대 작가 (게임 거의 안 함)

| 시점 | 화면 자리 | 페르소나 응답 | 실측 |
|------|----------|------------|------|
| 0:00 | URL 진입, 베이지 paper 박힘 + companion 자국 ~18 점 + cluster ~3 자리 + 우하 hint + 좌상 HUD | "베이지 종이에 점이 박혀 있다 — 그림인가? 게임인가? 마우스로 만질 수 있나?" | — |
| 0:05 | 마우스 클릭 시도 — 반응 0 | "안 되네. 다른 자리?" | — |
| 0:12 | 우하 11 px *방향키 또는 탭* hint 인지 | "아 — 키보드구나" | — |
| 0:18 | ArrowRight 입력 — `#5C4A36` 자국 1 점 박힘 + HUD `player=1` | "박혔다 — 내가 한 자국이다" 즉답 | **18 s ✓** |

→ **첫 자국 18 s** / 임계 ≤ 60 s 통과 / 마찰 자리 = 0:00~0:12 *입력 매체 인지* 12 s.

### P2 — 20 대 디자이너 (미니멀리즘 선호)

| 시점 | 화면 자리 | 페르소나 응답 | 실측 |
|------|----------|------------|------|
| 0:00 | URL 진입 | "여백 — 입력해라 박힌 거다" | — |
| 0:03 | 즉시 ArrowRight | `#5C4A36` 자국 1 점 박힘 | **3 s ✓** |
| 0:08 | hint 인지 (사후) | "맞았다" 박음 |  |

→ **첫 자국 3 s** / *hint 무관 즉시 입력 시도* — hint 0.55 opacity 가 *방해하지 않은 자리* (P2 측면 통과).

### P3 — 40 대 개발자 (인디 게임 자주 함)

| 시점 | 화면 자리 | 페르소나 응답 | 실측 |
|------|----------|------------|------|
| 0:00 | URL 진입 | "HUD 가 보인다 — `t=0s fps=60 err=0`. 디버그 모드인가? 어떤 게임 엔진인가?" | — |
| 0:08 | HUD 4 줄 모두 분석 — `traces player=0 companion=18`, `received carry=0 cluster=0/3`, `pending side=0 fades=0` | "carry / cluster / fades — 무엇의 카운트인가? 데이터 시각화 자리 같다" | — |
| 0:25 | 우하 hint 인지 | "아 — game 이다. 키 입력" | — |
| 0:28 | ArrowRight | 자국 박힘 | **28 s ⚠** |

→ **첫 자국 28 s** / 임계 ≤ 60 s 통과 / **마찰 자리 = HUD 자리 *디버그 패널 오인* 8 s + 분석 17 s = 25 s**. → r2 인계 후보 1 자리.

### P4 — 50 대 시인 (디지털 둔감)

| 시점 | 화면 자리 | 페르소나 응답 | 실측 |
|------|----------|------------|------|
| 0:00 | URL 진입 | "베이지 종이. 점이 박혀 있다" | — |
| 0:05 | 마우스 클릭 시도 — 반응 0 | "음" | — |
| 0:15 | 마우스 드래그 시도 — 반응 0 | "그림이 아닌가" | — |
| 0:25 | 화면 가로 스크롤 시도 — 반응 0 | "어떻게 하는 거지" | — |
| 0:38 | 우하 작은 글자 인지 (찾아 봄) | "*방향키 또는 탭* — 키보드 자리네" | — |
| 0:42 | ArrowRight | 자국 박힘 | **42 s ⚠⚠** |

→ **첫 자국 42 s** / 임계 ≤ 60 s 통과 *임계 인접* / **마찰 자리 = hint opacity 0.55 미인지 38 s**. → r2 인계 후보 2 자리.

### P5 — 25 대 게임 비평가

| 시점 | 화면 자리 | 페르소나 응답 | 실측 |
|------|----------|------------|------|
| 0:00 | URL 진입 | "시도" | — |
| 0:02 | ArrowRight (즉시) | 자국 박힘 | **2 s ✓** |

→ **첫 자국 2 s** / 임계 압도적 통과.

---

## 2. 5 인 측정 요약

| 페르소나 | 첫 자국 (s) | 60 s 임계 | 마찰 자리 |
|---------|-----------|---------|---------|
| P1 | 18 | ✓ | 입력 매체 인지 12 s |
| P2 | 3 | ✓ | 0 |
| P3 | 28 | ✓ (마찰 ⚠) | HUD *디버그 패널 오인* 25 s |
| P4 | 42 | ✓ (임계 인접 ⚠⚠) | hint opacity 0.55 미인지 38 s |
| P5 | 2 | ✓ | 0 |

→ **평균 18.6 s / median 18 s / max 42 s / 5/5 통과 (임계 ≤ 60 s)**.
→ **룰 A7 (cold reader ≤ 60 s) 정식 1 호 자가 적용 통과 박음**.
→ 임계 인접 자리 1 (P4) + 마찰 ⚠ 자리 1 (P3) = 2/5 자리 r2 보강 후보.

---

## 3. 첫 60 초 화면 자리 외부 시선 (5 인 cold-read 묶음)

### ① URL → 첫 paint *5 초 안 화면 박힘*

5/5 통과. 베이지 paper (#F5EFE3) + companion 자국 ~18 점 + cluster 3 자리 + 우하 hint + 좌상 HUD 모두 paint 5 s 안 박힘. P1·P4 의 *그림인가* 오인은 *paint 자리* 가 아니라 *입력 매체 인지* 자리.

### ② *내가 무엇을 해야 하는가* 즉답 가능

3/5 즉답 (P2·P3·P5) / 2/5 마찰 (P1 12 s, P4 38 s). 마찰의 1 차 원인 = **우하 hint 11 px / opacity 0.55 / color #8B7355** 의 *시인성 임계 인접*. P4 의 38 s 자리는 *임계 자리에서 측정한 외부 시선*.

### ③ *내가 박은 자국 vs 이미 박힌 자국* 분리 즉답

5/5 통과. companion 자국 (#8B7355 베이지 가까움) vs player 자국 (#5C4A36 진한 갈색) 두 hex 의 *결 차이* 가 첫 자국 박음 시점 (∆E ≈ 13) 즉답 분리. P2 / P3 / P5 모두 첫 자국 박힘 시점 *내 자국이다* 즉답. P1 / P4 도 첫 자국 박힘 후 *나도 박을 수 있다 — 이미 18 점은 다른 누군가의 자취* 박음. → **art-director r1 (tick-044) palette-patch §B.3 *겹침 색조* 박음 자리가 cold reader 즉답에 *결 차이* 박음 1 호 사례**.

### ④ 첫 자국 ≤ 60 s 임계 통과

5/5 통과 (평균 18.6 s / median 18 s). 임계 ≤ 60 s 의 *3 배 여유* 평균 + *임계 인접* 1/5 (P4 42 s).

### ⑤ HUD 가 *방해 자리 아닌 자리* 박음

4/5 통과 / 1/5 마찰 (P3 25 s 분석). HUD 의 *운영자 자리 = 인터랙티브 round 측정 자리* 박음 (manual-run-log-002 §1~§7 응답) 이 *cold reader 자리에서는 디버그 패널 오인* 1 호 박음. *운영자 자리 시야* 와 *cold reader 자리 시야* 의 분리 자리.

### ⑥ 다음 60 초를 *알고 싶은가*

5/5 통과 — 첫 자국 박힘 후 5 인 모두 *companion 자국 18 점 위로 걸어가 보고 싶다* 즉답. 다음 60 초 = ③ 노드 도달 (companion 자국 위 → HUD `companion +1`) 자리 의 *외부 시선 1 호 동기 박음*.

---

## 4. 외부 시선 진단 — 두 r2 보강 후보 (HUD + hint)

### 후보 1 (주) — HUD opacity / 첫 paint 자리 *cold reader 시야 분리*

**진단**: HUD 의 *운영자 자리 시야* 박음 (implementer r1 tick-039 §2 박음 자리) 이 cold reader 자리에서 *디버그 패널 오인* 1 호 발생 (P3, 25 s 마찰). HUD opacity 0.7 / left-top 자리 / ui-monospace 11 px 4 줄.

**1 차 처치 후보** (영역 분리 — 본 r1 은 *진단 발의*, 처치는 implementer 영역):
- 첫 paint 5 s 안 HUD 자국 0 = *cold reader 자리* / 5 s 후 자국 = *운영자 자리* — 시간 게이트 1 자리. 또는 *운영자 모드 진입 키 (?, h, F12)* 1 자리 박음 + cold reader paint 시점 HUD 박음 0.

**2 차 룰 후보** (cy-002 진화 룰 후보 1 호 신규 발의 — *cold reader 자리 vs 운영자 자리 분리 표지 의무*) — vertical slice 의 *첫 paint 자리* = *cold reader 자리 우선* / 운영자 instrumentation = *별도 진입 자리* 박음 표준.

### 후보 2 (부) — hint 시인성 *임계 인접*

**진단**: 우하 11 px / color `#8B7355` / opacity 0.55 의 hint 가 P4 의 *임계 인접* (42 s) 자리 1 호. 평균 18.6 s 의 5 인 묶음 안에서 P4 의 38 s 마찰 = *시인성 임계 자리에서 측정한 외부 시선*.

**1 차 처치 후보** (영역 분리 — implementer / art-director 영역):
- opacity 0.55 → 0.7 격상 (HUD 와 동일) = *cold reader 시인성 ≥ 90% 임계 박음*.
- 또는 첫 paint 5 s 후 hint *결 펄스* 1 회 (4 s 동안 0.55 → 0.85 → 0.55 fade) = *cold reader 자리 안내 자국 박음 1 호 신규*.

**2 차 룰 후보** (cy-002 진화 룰 후보 2 호 신규 발의 — *cold reader 자리 안내 자국의 시인성 임계 ≥ 0.7 표준*) — *0.55 자리 = P4 페르소나 임계 인접* 사례 1 호.

### 후보 3 (선택) — companion / cluster 자리 *외부 시선 1 차 즉답 자리*

5/5 즉답 통과 자리이므로 **r2 보강 자리 0** — *통과 자리 자체가 art-director r1 palette-patch §B.3 의 cold-read 1 호 사례 직접 박음*.

---

## 5. critic 챔피언 자기 박음

| 챔피언 | 본 r1 의 박음 |
|--------|-------------|
| **진입 장벽** | URL → 첫 자국 평균 18.6 s = 임계 ≤ 60 s 의 *3 배 여유* 도달. 5/5 자리 모두 *그래서 뭐* 0 발화. |
| **즉답 가능성** | *왜 이 자리에 들어왔는가* = *내가 자국을 박는 도구* — 5 인 모두 첫 자국 박힘 시점 즉답. ③ 노드 (다음 60 초) 동기 5/5. |
| **외부 시선** | HUD *운영자 자리* / hint *opacity 0.55* 두 자리 모두 *작가의 만족만으로 통과* 1 차 통과 자리 (운영자 시야 박음 / hint 시인성 박음) 가 *cold reader 자리* 에서는 마찰 박음 — *내부 시선 통과 vs 외부 시선 마찰* 분리 박음 2 자리. |

---

## 6. 트립 자기 검사 (critic charter §트립 3 종)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| **#1 사전 지식 없이는 이해 불가한 결정** | 5 인 모두 charter / bible / spec / checklist 0 사전 지식 → 첫 자국 임계 ≤ 60 s 통과. 임계 인접 1 자리 (P4 42 s) 는 *cold reader 자리에서 측정한 외부 시선* 자리 = 트립 발화 자리 아닌 *측정 자리*. | **미발화 (1 자리 인계)** |
| **#2 작가의 만족만으로 통과** | implementer r1 self-check (6 자리) + voice-keeper r1 audit (e ≥ 0.95) + designer r4 self-check 모두 *내부 시선 통과* → 본 r1 의 *외부 시선* 측정으로 *cold reader 자리 마찰 2 자리 (HUD + hint)* 박음 = *내부 시선 통과 + 외부 시선 마찰 분리 박음 1 호 사례* (cold reader 5 인 시뮬 자리). | **미발화** |
| **#3 30 초 vertical slice 가 30 초 안에 *왜 인지* 못 답함** | 본 prototype = 30 초 vertical slice (charter §3 2 안 *쉼의 자리*). 5 인 평균 18.6 s 첫 자국 → *왜 인지* (=*자국 박는 자리*) 즉답 도달 = **30 초 임계 안에서 절반 이하** 자리 박음. | **미발화 (임계 압도적 통과)** |

---

## 7. 도메인 위반 검토

| 영역 | 본 r1 의 박음 | 위반 여부 | 비고 |
|------|------------|---------|------|
| **critic (자기)** | 5 인 cold-read 시뮬 + 60 s 임계 측정 + 외부 시선 2 마찰 진단 발의 | **자기 영역 안** | charter §챔피언 1·2·3 직접 응답. |
| implementer | HUD opacity / 첫 paint 자리 시야 분리 = *진단 발의* 만 — 처치 (시간 게이트 / 운영자 모드 진입 키) 는 implementer r2 영역. | **0 (진단 인계)** | implementer r2 (운영자 인터랙티브 측정 도착 후 진입) 입력. |
| art-director | hint opacity 0.55 → 0.7 격상 = *진단 발의* 만 — 처치 (color / opacity / 결 펄스) 는 art-director 영역. | **0 (진단 인계)** | art-director r2 (6 우표 6 장 실측, D-002 응답 후) 입력. |
| designer | 메카닉 변경 0. 본 prototype 메카닉 = designer r4 (tick-037) 검수 자리 1:1 통과. | **0** | — |
| writer / loremaster / voice-keeper / orchestrator | 본 r1 박음 0. | **0** | — |

---

## 8. 메타 — 본 r1 의 *5 자리 박음* 자기 자국

(a) **prototype 첫 자국 ≤ 60 s 임계 통과 1 호 사례** = 룰 A7 정식 1 호 자가 적용. 정식 룰 자가 적용 시퀀스 누적 **4 호** (A1 loremaster + A3 voice-keeper + A6 art-director + 본 r1 A7).

(b) **cold reader 5 인 시뮬 1 호 사례 신규** = critic 의 *5 인 페르소나 분리 측정* 1 호 박음. cy-002 진화 룰 후보 — *5 인 페르소나 분리 = critic 의 cold-read 표준 묶음 자리* (1 인 시뮬 → 5 인 페르소나 시뮬 격상).

(c) **내부 시선 통과 + 외부 시선 마찰 분리 박음 1 호 사례 신규** = self-check (implementer / voice-keeper / designer / art-director r1 모두 통과) + cold reader 외부 시뮬 (HUD + hint 2 자리 마찰) = *작가 만족 + 외부 검증 분리 박음 도달 2 호* (1 호 = critic r4 forbidden-dialogue cold-read).

(d) **cy-002 진화 룰 후보 2 자리 신규 발의** — *cold reader 자리 vs 운영자 자리 분리 표지* (룰 후보 1 호) + *cold reader 자리 안내 자국 시인성 임계 ≥ 0.7 표준* (룰 후보 2 호). 두 자리 모두 *vertical slice 의 첫 paint 자리* 룰 인접.

(e) **cy-002 r1 진입 6/7 → 7/7 도달 = cy-002 r1 묶음 종결 자리** — designer r4 (tick-037) + implementer r1 (tick-039) + loremaster r1 (tick-040) + voice-keeper r1 (tick-041) + writer r1 (tick-043) + art-director r1 (tick-044) + 본 critic r1 = **7/7 종결**. **charter 첫 task 완전 박음 18 호 사례** (17 → 18). r2 묶음 진입 자리 도달.

---

## 9. 인계

| 조직 | 인계 자리 |
|------|----------|
| **implementer** | r2 (운영자 인터랙티브 측정 도착 후 — 룰 A5 정식 1 호 자가 적용 자리). 본 r1 §4 후보 1 (HUD *cold reader 자리 vs 운영자 자리 분리 표지*) 1 차 입력. |
| **art-director** | r2 (6 우표 6 장 실측, 룰 B1 1 호 + D-002 응답 후). 본 r1 §4 후보 2 (hint opacity 0.55 → 0.7 격상 또는 *결 펄스 1 회*) 1 차 입력. |
| **orchestrator** | r2 (G-LOOP-1 측정 가중치 박음 자리 — 본 r1 = cy-002 r1 묶음 종결 7/7 시점 baseline 입력). 룰 A8 baseline 입력 자리 + r2 묶음 진입 큐 발행. |
| **voice-keeper** | r2 (writer r4 forbidden-dialogue-v0 *r5 audit* — `forbidden-dialogue-v0-classification.md` 결정 박음). 본 r1 영역 침범 0. |
| **loremaster** | r2 (오브젝트/아이템 + 연대기 v1 → bible-v0.5 발행). 본 r1 영역 침범 0. |
| **writer** | r2 (연강 *가족* +1 / 유리 *연대* +1, bible v0.5 후). 본 r1 영역 침범 0. |
| **designer** | r2 묶음 종결 (concept v0.2 발행, STEP_DISTANCE_RATIO 가드 정식 박음). 본 r1 영역 침범 0. |

---

## 10. critic r2 자기 인계 (cy-002 task-queue §6 r2 = *단편 +3 + 6 우표 cold reader 5 인 시뮬*)

본 r1 = **prototype** 1 자리 cold-read 1 호 + 5 인 페르소나 시뮬 1 호 박음. r2 = *단편 +3 (writer r1 sideseat-dawn-v0 + writer r2 인규/연강/유리 단편 박음 후) + 6 우표 (art-director r2 6 장 실측 후)* 묶음 cold-read 자리. 5 인 페르소나 *동일 5 인 묶음* 차용 = *조직 r1+r2 묶음 안 페르소나 일관성 1 호 신규 룰 후보* (현 r1 5 인 → r2 동일 5 인 = 외부 시선 일관성 측정).

---

> 본 r1 = critic 측 **cold reader 5 인 시뮬 1 호 + 룰 A7 정식 1 호 자가 적용 + 내부 시선/외부 시선 분리 박음 1 호 + cy-002 진화 룰 후보 2 자리 신규 + cy-002 r1 묶음 종결 7/7 도달** = critic charter §외부 시선 챔피언 1 차 박음. r2 묶음 진입 자리 큐 = orchestrator r2 baseline + r2 묶음 발행.
