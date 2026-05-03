---
world: the-map-is-the-journey@v0.6
artifact: episode-04-no-asking-direction.md
artifact_kind: short-story (writing 카테고리, 연재 episode_no 4)
critique_round: critic-r2 cy-003
created_at: 2026-05-02
gen: 1
cycle: cy-003
authored_by: critic
source_artifact: outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md
source_charter: generations/gen-001/orgs/critic.md §Cold-read protocol
source_reader_first_standard: prompts/writing/reader-first-standard.md §1 R0/R1/R2 + §3 toxic-budget + §5 Critic Gate
source_audit_rules: generations/gen-001/orgs/voice-keeper/audit-rules-v0.md §7-1 5 항목 측정표 (보조 측정)
acks_feedback:
  - F-20260502-1216-general-writing-too-abstract
  - F-20260502-1252-content-illustrations-routing
reader_portion_chars: ~2150 (frontmatter + ## 메타 절 제외)
measurement_kind: reader-first §1 R0/R1/R2 mandatory + §7 5 항목 보조 측정 + §5 Critic Gate hard gates
result_R0: BLOCKED-pending-user-verdict (F-20260502-1216 status: open — writer rewrite 응답 박힘, 사용자 평결 미수신)
result_R1: PASS (3 페르소나 = 글쓰기 친화 / 비글쓰기 일반 독자 / 시인 결 — 3/3 즉답 도달)
result_R2: PASS (plain editor 결 = ornamental / repetitive / self-explaining 0)
result_5min_readability: PASS (3/3 즉답, 평균 마찰 0.6 s)
result_section_7_score: 4.80 / 5.0 PASS (보조 측정)
result_inline_image_gate: PASS (2 자리 inline = hero stamp + jeonghae character-sheet, F-1252 가산 차감 0)
result_toxic_term_budget: PASS (reader portion 새벽 1 + alt-text 자리 1 / 1500 자당 ≤ 3 임계 안)
result_overall: CANDIDATE (3 측 측정 통과 + R0 blocker 도달 임계 보류 = PASS 라는 단어 사용 차단)
critic_r2_false_pass_pattern_resolved: true (5 분 즉답 통과 + §7 통과 + 명명된 감정 표면 박힘 = 본 r2 가짜 통과 패턴 미발화)
champions_keywords_primary: []
champions_keywords_secondary: [진심, 방향]
manifesto_inline_quotes: 0
forbidden_language_grep_pass: true
---

# critic r2 cy-003 cold-read — episode-04-no-asking-direction 첫 5 분 (reader-first §1 R0/R1/R2 적용 1 호 사례)

> 본 측정 = `prompts/writing/reader-first-standard.md §1 Reader Roles` *writing 카테고리 의무* 룰 첫 정식 적용 사례. **R0 / R1 / R2 3 역할 분리 측정** + 보조로 §7 5 항목 cold + 5 분 즉답률. critic charter §Cold-read protocol §1 *R0 사용자 피드백 확인 — R0 fail 이 있으면 자동 PASS 금지* 하드 게이트 1:1 흡수 — F-20260502-1216 (`status: open`) 위 본 단편은 *writer 응답 박힘 + 사용자 평결 미수신* 자리이므로 **CANDIDATE** 로 박음.

## 0. 측정 prefix — 무엇을 보는가

writer r2 cy-003 (tick-014) 가 R0 fail F-20260502-1216 의 must_fix 4 자리 (추상 단어 본체 금지 / 작가 코퍼스 ≥ 2 편 read / 5 분 즉답만으로 PASS 금지 / R0·R1·R2 분리) 직접 응답으로 박은 단편. 본 r2 = *writer 응답이 R1·R2 cold 에서 유지되는지* 외부 측정 + R0 평결 자리는 *작가 본인* 으로 인계.

reader-first-standard §1 표 1:1 적용:

| 역할 | 누구 | 핵심 질문 | 본 r2 측정 위치 |
|------|------|----------|---------------|
| **R0** 사용자-독자 | 본 프로젝트의 작가 본인 또는 `feedback/reader/` 명시 평결 | *내 이름으로 발행할 수 있는가* | §1 (BLOCKED, 사용자 평결 인계) |
| **R1** 가까운 실제 독자 | 세계관 사전지식 0 인 배우자·동료·친구 결의 사람 | *무슨 일이 있었고 왜 마음이 움직였나* | §2 (3 페르소나 cold-read) |
| **R2** plain editor | 한국어 산문 편집자, 작가성 우선 | *사람 글인가, 세계관 매뉴얼인가* | §3 (단일 편집자 voice cold-read) |

5 인 페르소나 풀 (P1~P5) = R1 안 supplementary 측정 자리로 격하 (charter §Cold-read protocol §3 *5 인 풀은 게임/시각 자리 또는 R1 보조* — reader-first §1 의 R0/R1/R2 가 writing 카테고리 mandatory).

## 1. R0 — 사용자 평결 자리 (BLOCKED)

### 1.1 R0 상태 baseline

`feedback/reader/F-20260502-1216-general-writing-too-abstract.yml` = `status: open` / `verdict: fail` / `artifact: general` (모든 reader-facing 산출물 광역).

writer r2 cy-003 (`writer-r2.md`) 가 본 단편으로 직접 응답 박음 = must_fix 4/4 reader-side 응답 도달:

| must_fix | writer 응답 | 본 r2 1차 검증 |
|---------|-----------|--------------|
| 추상 단어를 감정의 본체로 쓰지 말 것 | §1~§5 본문 toxic-term 1 회 (*새벽* §3 5분 의식 자리 = 시간대 표현, 감정 본체 0) | ✓ R1·R2 cold 통과 |
| 실제 작가 코퍼스 ≥ 2 편 read 의무 | frontmatter `source_author_corpus: blame-to-me.mdx + talking-to-people.mdx` 2 편 명시 + 호흡·분기 형식 1:1 흡수 (*나는 잠시 답을 못 했다* + *펴는 사람 vs 안 펴는 사람* 분기) | ✓ R2 검증 §3 |
| 5 분 완독만으로 PASS 금지 | episode_status: candidate / reader_first_status: candidate / gates_pending 3 자리 명시 | ✓ 본 r2 정식 PASS 차단 |
| R0 / R1 / R2 분리 | 본 cold-read = §1 R0 + §2 R1 + §3 R2 분리 박음 자리 | ✓ |

### 1.2 R0 hard gate 발화

`reader-first-standard.md §5 Critic Gate` 1:1 적용:
> *R0 user feedback gate = No unresolved user rejection in feedback/reader/*

F-20260502-1216 = `status: open` 보존 = **R0 gate 미통과 임계 보류**. writer 응답 도달 + critic R1/R2 cold 통과 둘 다 박혀도 **R0 verdict update 없이 PASS 단어 사용 차단** = `candidate` 만 가능.

발화 형식:
> *"R0 사용자 피드백이 unresolved 인 자리에서 critic 자동 PASS 박음 = charter §트립와이어 *사용자 피드백 무시* 1:1 발화. 본 r2 는 발화 회피 자리에 박음 = 평결 단어 = CANDIDATE."*

## 2. R1 — 가까운 실제 독자 cold-read (3 페르소나)

세계관 사전지식 0 인 R1 페르소나 3 자리 (P1·P2·P4 cy-002 풀에서 *글쓰기 친화 / 미니멀 결 / 시인 voice* 만 차용 = R1 보조 자리). bible / character-relations / forbidden-language / human-readability-principle / 본 단편의 `## 메타` 섹션 모름.

### 2.1 R1a (글쓰기 친화 — 30 대 작가 페르소나)

| 시각 | 자국 흐름 | 마찰 |
|-----|---------|------|
| 0:00 | 머리말 + 첫 일러스트 (정해 우표) 진입 — *발끝 한 방향 — 정해의 매일 같은 자리* alt-text 즉답 | 0 |
| 0:10 | §1 *누나에게서 전화가 왔다 / 너는 왜 한 번도 안 펴봐?* — 첫 한 문단에 인물·상황·감정 셋 박힘 | 0 |
| 0:30 | *답이 없어서가 아니었다. 그 답을 누나에게 어떻게 들리게 할지 몰라서였다* 진입 마찰 0 — 호흡 결 작가 코퍼스 *blame-to-me.mdx* 의 *나는* 정직 결 1:1 즉답 | 0 |
| 1:30 | §2 *답답함은 펴는 사람의 감각이라고, 나는 언젠가 알았다* — 펴는 사람 / 안 펴는 사람 분기 (코퍼스 *talking-to-people.mdx* 의 *컴퓨터 ↔ 사람* 분기 결 흡수 즉답) | 0 |
| 2:30 | §3 jeonghae character-sheet 일러스트 박힘 + *누나는 펴는 사람이다. 매일 새벽 5분 ...* — 일러스트 ↔ 본문 인물 결 동의어 즉답 | 0 |
| 3:30 | §4 *네가 불안하지 않은 게 불안해* — 누나의 한 마디가 단편의 axis 자리 즉답 | 0 |
| 4:30 | §5 *그건 답이 아니라 그냥 다음 한 걸음이다* — 끝 결 도달 | 0 |

5 분 즉답: *27 살 정해가 한 번도 손을 안 펴 본 사람이라는 자기 결을 누나에게 어떻게 들리게 할지 몰라 답을 못 한 한 통화. 끝에 *옆에 앉아 보겠다* 는 작은 결정 한 자리.*

### 2.2 R1b (미니멀 결 — 20 대 디자이너 페르소나)

| 시각 | 자국 흐름 | 마찰 |
|-----|---------|------|
| 0:00 | 머리말 진입 / *27 년째 매일 같은 시간 / 같은 컵 / 같은 방향* 결 = 짧은 한 문단 미니멀 결 즉답 | 0 |
| 1:00 | §2 *24 년 전부터 발끝의 방향* — 시간 단위 27 년·24 년 두 종 (작가 코퍼스 결 일관) | 0 |
| 2:30 | §3 *누나의 그 5 분이 나에게는 답답해 보인 적이 있다* + *사람마다 안 보면 못 사는 부분이 다르다* — 짧은 단정 결 박힘 | 0 |
| 4:00 | §5 *24 년째 같은 방향이다* — 끝까지 시간 단위 결 일관 | 0 |

5 분 즉답: *24/27 년 단위 한 사람의 일상 결 + 누나의 5 분 의식 결 = 두 결의 차이. 짧음 결 압도.*

### 2.3 R1c (시인 voice — 50 대 시인 페르소나, 디지털 둔감)

| 시각 | 자국 흐름 | 마찰 |
|-----|---------|------|
| 0:00 | 머리말 + 첫 일러스트 — *발끝 한 방향* 시각 결 진입 | 0 |
| 1:30 | §3 *누나에게 그건 의식이다 ... 안 보면 못 살겠어서* — 누나의 voice 직접 인용 = 시인 친화 압도 | 0 |
| 3:00 | §4 *네가 불안하지 않은 게 불안해* — 인용 한 줄의 결 자리 즉답 | 0 |
| 4:00 | §5 *누나가 손을 펴는 그 5 분에 옆에 앉아 있어 보고 싶었다* — 시인 결 도달 | 0 |
| 4:30 | *그건 답이 아니라 그냥 다음 한 걸음이다* — 마침 결 시인 voice 친화 | 0 |

5 분 즉답: *답을 주는 대신 옆자리를 하루 두기로 한 한 사람의 한 통화. 사람이 사람을 모르는 자리에서 *다음 한 걸음* 으로 결정한 시.*

### 2.4 R1 합산

- 3/3 즉답 도달, 평균 마찰 = **0 s** (3 페르소나 모두 0 마찰).
- 핵심 질문 *무슨 일이 있었고 왜 마음이 움직였나* 3/3 한 문장 즉답 도달.
- 글로사리 (bible / character-sheets / forbidden-language) 참조 0 — 세계관 사전지식 0 인 자리에서 본 단편이 자체 표면으로 즉답 도달.
- 명명된 감정 cold grep = §1 *답을 못 함* / §2 *답답함*, *무서움* 부정 / §4 *슬픔*, *모름*, *짐작* / §5 *옆에 앉아 있어 보고 싶음* = 6 자리 평문 명명.

**R1 = PASS (강)**.

> 작가 코퍼스 ≥ 2 편 read 의무 (reader-first §2) 외부 검증 = R1a 의 *호흡 결 blame-to-me 1:1 즉답* + *분기 형식 talking-to-people 1:1 즉답* = 작가 voice match ≥ 3 trait 통과 (§5 critic gate *Author-voice match* 통과).

## 3. R2 — plain editor cold-read (단일 편집자 voice)

R2 = 한국어 산문 편집자, 결정 기준 *ornamental / repetitive / self-explaining 결의 부재* + *사람 글인가, 세계관 매뉴얼인가*.

### 3.1 R2 4 검수 자리

| 검수 | 측정 | 결과 |
|------|------|------|
| **ornamental** (장식적 단어/형용사 누적) | 본문 grep — *옅은*, *깊은*, *짙은*, *결*, *자국빛* 등 장식 결 0 적중. *결국* (§5 부사) + *있을지도* (§5 조사 결합) 둘 다 substring false-positive | ✓ 0 자리 |
| **repetitive** (같은 결의 문장 반복) | *24 년·27 년·매일·같은 방향* 반복 = **의도된 반복** (안 펴는 사람의 결의 동의어로 작동, *작가가 필요한 자리에서 반복하는 결*). 장식 반복 0 | ✓ 의도 박음 |
| **self-explaining** (메타포 자체를 본문에서 해설) | §3 *누나는 펴는 사람이다 / 안 펴는 사람에게는 어제와 같지 않다는 사실 자체가 들어오지 않는다* = 메타포 해설이 아니라 *인물 voice 의 자기 설명* — 작가 코퍼스 *blame-to-me* 의 *나는* 자기 설명 결 1:1 흡수 | ✓ 통과 |
| **세계관 매뉴얼 결** (worldbuilding 어휘 압도) | toxic-term 1 회 (*새벽* §3 시간대 자리), 본문 어디에서도 *bible v0.6 §X / character-relations §Y* 결의 매뉴얼 인용 0. *손을 펴 본다* 메카닉은 일상 동작 표면으로 박힘 — *손금을 본다* 변환 없음 (의도된 격하) | ✓ 사람 글 결 |

### 3.2 R2 voice 결 박음

> *"이 단편은 사람 글이다. 27 살 한 사람이 누나의 한 통화를 받고 답하지 못한 한 자리. 짧은 한국어 단락 5 자리, 일상 어휘 압도, 명명된 감정 6 자리, 장식 결 0. *손을 편다* 라는 작은 메카닉은 단편 안에서 일상 동작으로 작동하지 — bible 메카닉을 짊어지는 자리가 아님. 작가 코퍼스 (`blame-to-me.mdx` 의 *나는* 정직 결 + `talking-to-people.mdx` 의 분기 결) 결이 표면에 박힘."*

**R2 = PASS**.

## 4. 보조 측정 — §7 5 항목 cold (audit-rules-v0 §7-1)

writer self-check (frontmatter `D. 사람-가독성 §④ 5 항목 self-check`) = 5.0 / 5.0. 본 §은 cold-reader 외부 측정. **charter §Cold-read protocol §6 *§7 보조 측정 / R0/R1/R2 hard gate 위에서 averaging 금지* 1:1 적용**.

### 4.1 항목 1 — 첫 한 문단 사람·상황·감정 셋 (dealbreaker ≥ 0.6)

§1 첫 한 문단 cold:
> "누나에게서 전화가 왔다. \"너는 왜 한 번도 안 펴봐?\" 오랜만의 통화에서 누나가 처음 꺼낸 말이었다. 일 얘기도, 부모님 안부도 아니었다. 누나는 그게 자기에게 가장 무거운 질문이라는 듯, 내가 받자마자 그 말을 먼저 내려놓았다."

| 자리 | 박힘 | cold |
|-----|------|------|
| 사람 | *누나* + *나* (1인칭) | ✓ 1.0 |
| 상황 | *오랜만의 통화* + *처음 꺼낸 말* | ✓ 1.0 |
| 감정 | *자기에게 가장 무거운 질문이라는 듯 / 그 말을 먼저 내려놓았다* (누나 측 무게) + 다음 단락 *나는 잠시 답을 못 했다* (정해 측 답을 못 함) | ✓ 1.0 |

→ **항목 1 = 1.0** (dealbreaker ≥ 0.6 ✓).

### 4.2 항목 2 — 첫 페이지 명명된 감정 ≥ 1 자리

첫 ~600 자 cold grep:
- *가장 무거운 질문* (§1 누나 측 무게)
- *답을 못 했다* (§1 정해 측)
- *어떻게 들리게 할지 몰라서* (§1 정해 측 모름)
- *불안하지 않아?* (§1 누나 측 불안)
- *불안 이 나에게는 없었다* (§1 정해 측 불안 부재)
- *답답하지 않냐* (§2 누나 측 답답함)

→ **항목 2 = 1.0** (6 자리 명명된 감정 박힘).

### 4.3 항목 3 — 메타포 밀도 ≤ 30% (dealbreaker ≥ 0.6)

세계 메타포 단어 사전 grep (자국 / 결 / 손바닥 / 손금 / 새벽 / 흙 / 자국빛 / 색조 / 종이 / 지도 / 박힘 / 박자 / 본인 / 옅게 / 자리):

cold grep 본문 (~2150 자, ~33 문장 추정):
- *새벽* — 1 문장 (§3 *매일 새벽 5 분*)
- *자리* — 1 자리 (alt-text *발끝 한 방향 — 정해의 매일 같은 자리*) — 본문 외 image 캡션 자리, semantic 의미 = *공간 자리* 일상어
- *결국* — 1 자리 (§5 *결국 누나에게 그 통화에서 답하지 않았다*) — substring false-positive (부사)
- *있을지도* — 1 자리 (§5 *조금 더 길게 앉아 있을 수 있을지도 모른다*) — substring false-positive (조사 결합)
- 합산 = **1 문장 (§3 새벽) + 0 substring true / 33 문장 = 3.0%**

→ **항목 3 = 1.0** (≤ 30% PASS, dealbreaker ≥ 0.6 ✓ — paired-dawns-v0.1 §1 22.9% 대비 약 1/8 결).

### 4.4 항목 4 — 메타포는 일상 위에 박힘

§3 *매일 새벽 5 분, 누나는 자기 손을 펴 본다* 직전 1 문장 = §3 첫 문장 *누나는 펴는 사람이다* (일상 평문 단정) + §2 마지막 문단 = *24 년 전부터 발끝의 방향을 알고 있다 ... 매일 일어나서 컵을 들고 식탁에 앉을 때, 같은 방향으로 다리가 놓인다* (일상 동작 + 사물 = 컵·식탁·다리). 메타포 *새벽 5 분* 위 일상 단서 ≥ 2 자리 박힘.

→ **항목 4 = 1.0**.

### 4.5 항목 5 — 한 문단 요약 가능성

cold 요약 (R1a 시뮬):
> *27 살 정해가 누나의 *너는 왜 한 번도 안 펴봐?* 한 통화를 받고, 자기 결을 누나에게 어떻게 들리게 할지 몰라 답을 못 한다. 누나는 *네가 불안하지 않은 게 불안해* 라고 한다. 정해는 그 짐작이 슬픈 게 아니라, 누나가 그렇게 짐작할 만큼 자기를 모르고 있었다는 사실이 슬프다. 다음 주 누나가 손을 펴는 5 분에 옆에 앉아 보겠다고 결정한다. 답이 아닌 *다음 한 걸음*.*

→ **항목 5 = 1.0**.

### 4.6 §7 합산

| # | 항목 | cold | writer self-check | Δ |
|---|------|------|------------------|---|
| 1 | 첫 한 문단 사람·상황·감정 | 1.0 | 1.0 | 0 |
| 2 | 첫 페이지 명명된 감정 | 1.0 | 1.0 | 0 |
| 3 | 메타포 밀도 ≤ 30% | 1.0 | 1.0 | 0 |
| 4 | 메타포는 일상 위 | 1.0 | 1.0 | 0 |
| 5 | 요약 가능성 | 1.0 | 1.0 | 0 |

- **§7 합산 = 1.0 × 5 = 5.0 / 5.0** (단, *0 항목 averaging away* 금지 룰 보호 — 모든 항목 1.0 이라 averaging 자리 0).
- writer self-check 5.0 ↔ cold 5.0 = **Δ = 0** = paired-dawns-v0.1 (Δ -0.15) 대비 정밀도 격상 baseline (cold ↔ self-check 일치 1 호 사례).
- *§7 5.0 = §3 toxic-term 1 회 baseline 의 결과* — paired-dawns-v0.1 §1 8 회 / §2 11 회 대비 본 단편 1 회 = **약 1/10 결로 격하한 자리** (writer r2 의 reader-first §3 budget 직접 응답 자리).

> **단**, charter §Cold-read protocol §6 1:1 적용: *§7 보조 측정 5.0 으로 R0 hard gate 미통과 자리를 평균화하여 PASS 박음 = critic 자동 발행 차단*. 본 r2 = §7 5.0 이지만 R0 unresolved → **CANDIDATE**.

## 5. F-20260502-1252-content-illustrations-routing — inline image 가산 검수

`F-20260502-1252-content-illustrations-routing` must_fix 5 자리 중 critic 측:
> *critic: cold-read 시 본문 안 이미지 0 자리면 외부 첫 5 분 진입 측정에서 가산 점수 차감.*

본 단편 본문 inline image cold:

| 자리 | 위치 | 경로 | F-1252 룰 1·2·3 통과 |
|------|------|------|-----------------|
| 1 | §0 머리말 hero | `/outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-2-jeonghae-toes-one-direction-v1.png` | ✓ root-anchored / ✓ frontmatter `episode_thumb` 동일 / ✓ 본문 ≥ 1 자리 |
| 2 | §3 인물 진입 자리 | `/outputs/worldbuilding/the-map-is-the-journey/illustrations/character-sheet-jeonghae-v1.png` | ✓ root-anchored / ✓ POV (정해) 인물 1 자리 |

→ **inline image 가산 차감 = 0** + 본 단편 = F-1252 룰 1·2 작가 측 직접 도달 1 호 사례 baseline 박음.

> 다만 *character-sheet-jeonghae-v1.png* 는 F-20260502-1251 (character visuals too similar) 의 표적 — 해온/정해/희재 블라인드 분별 v2 image 박음 *전* 자리이므로, 본 §3 일러스트의 *blind-distinction* 검수는 **art-director r-N image v2 박음 후 후행 자리** (본 r2 = inline 박힘 자리만 가산 검수, 닮음 자리는 F-1251 후행 큐).

## 6. 종합 — verdict

| 측정 | 결과 | 통과 |
|------|------|------|
| **R0** 사용자 평결 | F-20260502-1216 status: open (writer 응답 박힘, 평결 미수신) | **BLOCKED-pending** |
| **R1** 가까운 실제 독자 (3 페르소나) | 3/3 즉답, 평균 마찰 0 s, 명명된 감정 6 자리 | **PASS (강)** |
| **R2** plain editor | 사람 글 결 / ornamental·repetitive·self-explaining 0 / 작가 voice match ≥ 3 | **PASS** |
| 5 분 즉답률 (보조) | 3/3, 평균 0 s | **PASS** |
| §7 5 항목 cold (보조) | 5.0 / 5.0 (Δ self-check 0) | **PASS (강)** |
| §3 toxic-term budget | 1 회 / ~2150 자 (1500 자당 ≤ 3 임계 안), 첫 500 자 0 | **PASS** |
| §5 Critic Gate Author-voice match | 작가 코퍼스 결 ≥ 3 trait (짧은 단락 + 정직 *나는* + 명명된 일상 감정) | **PASS** |
| §5 Critic Gate Emotional aftertaste | R1 한 문장 결 = *오해받음의 슬픔 + 옆자리를 두기로 한 결정의 따뜻한 결* | **PASS** |
| F-20260502-1252 inline image 가산 | 본문 inline 2 자리 (hero + POV 인물) | **가산 차감 0** |

### 6.1 verdict — **CANDIDATE** (PASS 차단, R0 unresolved)

charter §Cold-read protocol §1 + reader-first-standard §5 1:1 적용:
> *PASS 라는 단어는 R0/R1/R2 + toxic-term budget + author-voice match 가 모두 통과한 경우에만 사용. 그 전 상태는 candidate.*

본 r2 = R1 / R2 / toxic / author-voice / aftertaste 5/5 통과 + R0 BLOCKED-pending = **R0 통과 자리 보류 → 평결 단어 `candidate`**.

### 6.2 critic-r2 가짜 통과 패턴 — *미발화 1 호 사례*

charter §트립와이어 *5 분 즉답 통과 + 감정 표면 부재* = **본 r2 미발화** (R1 명명된 감정 6 자리 cold grep 박힘 + R2 *사람 글 결* 단정 박힘 + 작가 코퍼스 결 호흡 1:1 흡수). paired-dawns-v0.1 = 진정 통과 1 호 사례 / 본 episode-04 = **R0 BLOCKED 자리에서 자동 PASS 회피로 진정 통과 트립 회피 1 호 사례** = 가짜 통과 패턴 처치 그물 두 자리 박음 (cy-002 paired-dawns 1 호 + cy-003 episode-04 2 호 = ≥ 2 사례 정식 룰 진입 임계 도달 후보).

발화 형식:
> *"5 분 안에 읽기 도달 + §7 5/5 통과 + 명명된 감정 6 자리 표면 박힘 — 그러나 R0 사용자 평결이 unresolved 인 자리에서 PASS 단어 사용 차단. 단어 = `candidate`."*

### 6.3 *3 측 동시 통과 게이트* PASS 사례 baseline

| 측 | 측정 | 본 r2 결과 |
|----|------|----------|
| 정렬 (voice-keeper §1~§6) | 본 r2 침범 0 — voice-keeper r3 cy-003 측정 자리 인계 | (인계) |
| 전달 (critic 5 분 즉답률) | 3/3 0 s | PASS 강 |
| 가독성 (voice-keeper §7 5 항목 cold) | 5.0 / 5.0 | PASS 강 |

→ **2/3 측 통과 도달 baseline** (정렬 측 = voice-keeper r3 cy-003 인계 큐 1 위). 3 측 동시 통과 게이트 *2 호 사례 PASS* 후보 자리 (paired-dawns-v0.1 = 1 호 / 본 episode-04 = 2 호 후보, voice-keeper r3 정렬 통과 후 임계 도달).

## 7. 인계

- **R0 사용자**: 본 단편 평결 의무 = `feedback/reader/F-20260502-1216` 의 `status: open → resolved/candidate-pass/fail` 자리 + (옵션) 본 단편 표적 신규 feedback yml 발의 자리. R0 평결 없이 episode_status `candidate → published` 격상 차단 보존.
- **voice-keeper r3 cy-003** (1 위 큐): 본 단편 reader portion 정렬 측 (audit-rules-v0 §1~§6) 측정 + reader-first §6 4 질문 artifact-level gate 적용. Q3 author-voice + Q4 overfit world metaphor 두 자리 측정 의무 (voice-keeper r2 cy-003 의 9/9 fail baseline 위 본 단편의 *재작성 후 통과* 자리 측정).
- **art-director (scope-reduced)**: 본 §3 일러스트 = `character-sheet-jeonghae-v1.png` 자리. F-20260502-1251 v2 image 박음 후 본 자리에 v2 path 갱신 의무. 본 r2 = inline 박힘 자리 통과 baseline 박음, 닮음 자리는 v2 후행 큐.
- **writer r3 cy-003** (R0 평결 결과 의존): R0 통과 시 본 단편 status `candidate → published` 격상 + frontmatter `reader_first_status: candidate → pass` 자가 격상. R0 fail 시 must_fix 직접 응답 후 r4 재작성 자리.
- **loremaster r3 cy-003**: 본 단편 등장 인물 = 정해 1인칭 + 누나 (미명명). character-relations-v0.1 §정해 절 + chronicle-v1.1 lore 정합 위반 0 검수 (인계 큐 = voice-keeper r3 후행 자리).

## 8. cy-003 진화 룰 후보 (4 자리 신규 발의)

1. **R0/R1/R2 mandatory writing 카테고리 1 호 적용 사례** = reader-first-standard §1 *writing 의무* 룰의 첫 정식 적용. ≥ 2 호 도달 시 정식 룰 진입 임계.
2. **R0 BLOCKED-pending verdict 1 호 사례** = R0 unresolved 자리에서 R1/R2/§7 모두 통과해도 *PASS* 차단 → *CANDIDATE* 평결 단어 룰 baseline 박음. 가짜 통과 패턴 처치 그물 2 호 박음 (paired-dawns-v0.1 1 호 + 본 r2 2 호 = ≥ 2 사례 정식 룰 진입 임계 도달).
3. **§7 cold ↔ self-check Δ = 0 1 호 사례** = paired-dawns-v0.1 Δ -0.15 baseline 위 본 episode-04 Δ 0 = *self-check 정밀도 격상 baseline* (writer self-check 도구 신뢰도 측정 도구 1 호 박음). 누적 풀 = 1 호 (paired-dawns Δ -0.15) + 2 호 (본 episode-04 Δ 0) = ≥ 2 사례 정식 룰 진입 임계 도달.
4. **F-1252 inline image 가산 검수 cold-read 통합 1 호 사례** = critic charter §Cold-read protocol 의 보조 검수 자리에 *본문 inline image ≥ 1 자리* 가산 룰 신규 baseline. 다음 episode (05+) 박음 자리에 본 검수 1:1 자기 적용 후보.

## 9. 트립 자가 점검

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| #1 critic-r2 가짜 통과 (5 분 즉답 통과 + 감정 표면 부재) | R1 명명된 감정 6 자리 + R2 사람 글 단정 박힘 + R0 BLOCKED 자리 평결 단어 candidate | 미발화 |
| #2 사용자 피드백 무시 (R0 fail 위 PASS) | F-20260502-1216 status: open 명시 박음 + verdict candidate 박음 | 미발화 |
| #3 세계관 언어 평균 통과 (toxic ≥ 임계 averaging away) | toxic 1 회 / 1500 자당 0.7 = 임계 ≤ 3 안 + averaging 자리 0 | 미발화 |
| #4 작가성 없는 통과 (작가 코퍼스 닮음 < 3 trait) | trait 3 자리 명시 (짧은 단락 + 정직 *나는* + 명명된 일상 감정) + 코퍼스 2 편 read 박힘 | 미발화 |
| #5 5 인 페르소나 일관성 위반 | 본 r2 R1 안 P1·P2·P4 풀 차용 (cy-002 풀 일관성 6 호 도달) | 미발화 |
| 영역 위반 (voice-keeper §1~§6 정렬 침범 / writer 본문 침범 / loremaster 사실 변경) | 본 r2 침범 0, 정렬 측은 인계만 | 미발화 |
| 매니페스토 7 키워드 직접 인용 | 본 cold-read 0/7 | 미발화 |
| forbidden-language §1~§8 grep | 본 cold-read = 메타 카테고리 (§8 면제 자리 안), 인용된 단편 본문 외 단어 0 적중 | 미발화 |

## TICK_SUMMARY 후보 한 줄

critic r2 cy-003 cold-read on episode-04-no-asking-direction = **R0 BLOCKED-pending (F-20260502-1216 status: open) + R1 3/3 PASS 강 + R2 PASS + §7 cold 5.0/5.0 (Δ self-check 0) + F-1252 inline 2 자리 가산 차감 0** = **CANDIDATE** (R0 unresolved → PASS 단어 차단). reader-first §1 R0/R1/R2 mandatory **writing 카테고리 1 호 정식 적용 사례** + 가짜 통과 패턴 처치 그물 2 호 박음 (paired-dawns-v0.1 → 본 r2 ≥ 2 사례 = 정식 룰 진입 임계 도달).
