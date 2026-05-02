# cy-003 Charter

> 발의: D-20260502-003 (Type C, picked=`focus-writing`)
> 직전 사이클: cy-002 (마감 라운드 진입 임계 도달, r2 9/9 종결 + r3 진행 중, paired-dawns-v0.1 박음 = human-readability 첫 적용)
> parent_goal: G-WORLD-1 + G-CHAR-1 (신규) + G-WRITING-1 (신규) — 글 pillar 심화 3 자리 동시 활성

## 목적 (G-* 진척 표적)

| G-* | baseline (cy-002 종결) | cy-003 표적 | 측정 측 |
|-----|-----|-----|---------|
| **G-WORLD-1** | 0.80+ (bible v0.5 8 핵심 문서 도달) | **1.0** — bible v0.6+ (인물 8 자리 본문 + 사건 8 자리 본문 + 자기 트립 그물 완성) | loremaster |
| **G-CHAR-1** (신규) | 0.30 (character-relations v0 + sheets 5/8) | **0.7** — character-sheets 8/8 도달 + voice-signature × 8 인물 + 인물 일러스트 ≥ 4 장 | loremaster + writer + art-director |
| **G-WRITING-1** (신규) | 0.50 (단편 5 편) | **0.7** — 단편 +5 박음 (총 10 편) + 다양한 축/길이/시점 + voice-keeper §7 5/5 PASS 모두 | writer + voice-keeper §7 |
| G-PRODUCT-1 | 0.65 (vertical slice + 단편 + 우표 spec) | **동결 (보존만)** — 게임 prototype 보존 0 작업, 우표 §17 6 장 → *단편 일러스트* 로 재정의 | (frozen) |
| G-LOOP-1 | 0.30 (가중치 박음 + 첫 측정) | 0.5 (cy-003 측정 + 두 cycle 안정 시동) | orchestrator |
| G-AUTONOMY-1 | 0.85 | 0.85+ 유지 (≤ 10 결정/gen) | (system) |
| G-CONVERGE-1 | 0.00 | 미진입 (gen-002 후 자리) | — |

## 조직 구성 변경

cy-002 패턴 *변경* — 7 조직 → **5 활성 + 2 freeze + 1 scope 축소**:

### 활성 조직 (5)
- **orchestrator** — cycle 운영 + drift 회복 + cy-003 마감 라운드 review.md 박음
- **loremaster** — bible v0.6+ + 인물 본문 + 사건 본문 + 자기 트립 그물 = G-WORLD-1 + G-CHAR-1 동시 진척
- **writer** — 단편 +5 + voice-signature × 인물 + character-sheets 보강 = G-CHAR-1 + G-WRITING-1 동시 진척 (human-readability §7 5/5 PASS 의무)
- **voice-keeper** — §1~§6 정렬 + §7 human-readability gate 측정 깊이 진척 + 7 키워드 누적 e 평균 ≥ 0.95 표적
- **critic** — cold-read protocol 갱신 (§7 5 항목 측정 의무 정식 박음 = critic-r3+ baseline) + 5 분 즉답 + 5 항목 두 측 동시 측정

### scope 축소 조직 (1)
- **art-director** — *단편 일러스트 한정* 로 재정의:
  - 우표 §17.7 + §17.8 baseline 위 §17.1 ~ §17.6 전체 6 장 실측 (게임 묶음 → 단편 인물/장면 묶음 으로 재정의)
  - 신규 단편 박힘 시 인물/장면 일러스트 1 장 박음 의무 (writer r-N 짝)
  - visual-bible v0.4 본문 §11 (인물 hex) + §17 (우표) 두 자리만 활성 — §13 walk-trace-spec / §M3/M4/M5 등 게임 자리는 동결
  - 1 차 책임자 = 글 pillar 시각 보조 (게임 시각 책임 0)

### freeze 조직 (2)
- **designer** — **freeze**. 게임 메카닉 / fail-modes / concept 자리 동결. 기존 산출물 (concept v0.1, mechanics-v0+, fail-modes-v0+, concept-diagrams-v0) 보존 0 작업.
- **implementer** — **publishing surface 책임만 유지**. 게임 prototype / walk-trace-spec / manual-run-checklist / engine-choice 등 게임 영역 동결. 기존 산출물 보존 0 작업.
  - publishing surface 책임 = `prompt.codepoet.site` + `scripts/generate-site-manifest.sh` + `scripts/notify-new-writing.sh` + `~/k-codepoet/my-devops/services/codepoet-linux-1/prompt-site/` 유지·보강 자리.
  - 게임 신규 작업 시 트립 발화 = "이건 cy-003 charter §조직 freeze 자리 위반."

## 사이클 길이 예측

**~30-40 tick** (cy-002 ~50 tick 의 0.7 배). 활성 조직 5 + scope 축소 1 = 6 자리. designer / implementer 게임 영역 freeze 로 분량 절감.

## 신규 결정 예측

- **Type B (cy-003 r1 진입 시점 인접)**: 인물 8 자리 본문 박음 순서 (loremaster r1 cy-003) — 5 known 우선 (해온/정해/나림/유경/인규) vs 3 신규 우선 (연강/희재/유리) → orchestrator 추천 = 5 known 우선 (writer 단편 누적 자리 짝).
- **Type B (cy-003 r2 인접)**: 단편 +5 의 시점/축 분포 — 1인칭 5 + 3인칭 0 (cy-002 패턴 유지) vs 1인칭 3 + 3인칭 2 (시점 다양화) → orchestrator 추천 = 시점 다양화 (G-WRITING-1 *다양한 축/길이/시점* 표적 직접 흡수).
- **Type C 후보 (cy-003 종결 인접)**: G-CONVERGE-1 진입 임계 측정 자리 (gen-002 진입 발의 자리).

## §1. 글 pillar 심화 구조 (3 측 흐름)

```
세계관 (loremaster)
  ├─ bible v0.6+ ← bible v0.5 (8 핵심 문서) 위 인물·사건 본문 깊이
  ├─ regions / terrain / chronicle (보존, 신규 추가 자리)
  ├─ objects-items (보존, 1~2 자리 추가)
  ├─ forbidden-language (보존)
  └─ character-relations v1 ← v0 위 *세 축 정착* 5/2/2 → 5/3/3 격상 자리
        ↓ (input to)
인물 (loremaster + writer 공동)
  ├─ character-sheets 8/8 (현재 5/8) ← writer r1+r2+r3 박음 큐
  ├─ voice-signature × 8 (인물별 말투 + forbidden-dialogue × 인물)
  ├─ 인물 일러스트 ≥ 4 장 (art-director r-N image, 우표 패턴)
  └─ 인물 본문 (bible §X.X 인물 1 인 1 절 = 8 절 도달 자리)
        ↓ (input to)
글 (writer, 본 시스템 1 차 산출)
  ├─ 단편 +5 (총 10 편) — 1인칭 + 3인칭 분포 + 다양한 축 + 다양한 길이
  ├─ 모놀로그 (인물별 1 인칭 1 페이지)
  ├─ 대화 (forbidden-dialogue × 인물 짝)
  └─ 일러스트 (art-director r-N 짝, 글 단편 시각 보조)
        ↓ (audit)
정렬 (voice-keeper §1~§6) + 전달 (critic 5 분) + 가독성 (voice-keeper §7 5/5)
        ↓ (publish)
prompt.codepoet.site (reader portion 한정 + slack webhook reader-only)
```

## §2. 진화 룰 후보 정식 박음 (cy-002 → cy-003 진입 시)

cy-002 안 누적 진화 룰 후보 중 cy-003 진입 임계 도달 자리:
- **B5 정식**: publishing surface 자동 노출 의무 (frontmatter title 또는 첫 H1 박음 의무) — 3 호 사례 누적
- **B6 정식**: manifest stale 검출 룰 — orchestrator finalize-only 진입 시 generated_at vs last_updated 비교
- **B7 정식**: human-readability §7 gate (5 항목 측정표) — writing 카테고리 한정
- **B8 정식**: publishing reader/debug 분리 (메타 마커 이전/이후) — 외부 도달 채널 의무
- **A10 정식**: 사용자 직접 발의 = 진화 룰 v1 §A 정식 입력 자리 (D-20260502-003 자체가 1 호 사례)
- **A11 정식**: publishing surface 의 reader/debug 분리는 외부 도달 채널 의무

cy-003 안 사례 누적 후 정식 룰 진입 자리:
- **B9 후보**: critic-r2 가짜 통과 패턴 = critic cold-read protocol 에 §7 5 항목 측정 의무 (critic-r3+ 정식 박음 임계 = 3 호 사례)
- **A9 후보**: implementer 외부 의존도 추가 시 사람 응답 의무 (publishing surface 1 호 사례 + 다음 사례 누적 자리)

## §3. cy-003 r1 task 큐 (4 자리 활성 + 1 scope 축소)

상세는 `task-queue-r1.md` (본 cycle 의 동위 문서, cy-003 r1 진입 시 박음).

요지:
1. **loremaster r1**: bible v0.6 (인물 8 자리 본문 1 차 박음) + character-relations v1 (세 축 정착 5/3/3 격상) — G-WORLD-1 + G-CHAR-1 동시 진척
2. **writer r1**: character-sheets 보강 (5/8 → 8/8) + voice-signature 박음 (인물 3 자리 신규) — G-CHAR-1 + G-WRITING-1 동시 진척
3. **voice-keeper r1**: §7 5/5 PASS 임계 검수 (paired-dawns v0.1 + 신규 단편) + 7 키워드 누적 e 평균 ≥ 0.95 표적
4. **critic r1**: cold-read protocol 갱신 박음 (§7 5 항목 측정 의무 정식 진입) — critic-r3 cy-002 baseline 위 r1 cy-003 격상
5. **art-director r1 (scope 축소)**: 우표 §17.1 ~ §17.6 6 장 실측 — *단편 인물 일러스트* 로 재정의 (게임 묶음 동결)

## §4. 게임 자리 freeze 명시

**보존 (지움 0)**: 다음 자리는 그대로 유지. 자율 루프 read-only.
- `outputs/code/g-the-map-walker/` 전체 (prototype + walk-trace-spec + manual-run + engine-choice + vertical-slice-charter)
- `outputs/design/g-the-map-walker/` 전체 (concept-v0.1 + mechanics-v0+ + fail-modes-v0+ + concept-diagrams-v0)
- 시각 자리: visual-bible v0.4 §13 walk-trace-spec / §M3/M4/M5 / §16 prototype 검수 자리

**동결 (신규 작업 0)**: 다음 자리는 cy-003 안 신규 박음 0:
- designer 신규 산출물 0 (charter freeze)
- implementer 신규 코드/spec 0 (publishing surface 책임만 유지)
- art-director 게임 시각 0 (단편 일러스트 한정)
- prototype `npm run build` cy-003 안 0 (자율 루프 호출 0)

**publishing surface 자리 (게임 노출)**:
- 랜딩 페이지의 게임 카드는 *유지* (사용자가 보고 싶을 때 진입 가능 자리 = read-only 보존)
- manifest 에서 prototype 노출 유지 (외부 사람 진입 자리 보전)
- 단 `code-docs` 카테고리는 이미 랜딩에서 숨김 (tick-065 직전 박음)

## §5. 사용자 통신 register

본 cycle 부터 자율 루프의 사용자 응답 / 슬랙 알림 / 보고는 **평범한 한국어** 표면.
시스템 내부 산출물 (tick / 차터 / decision yaml / audit / arguments) 은 기존 용어 농도 유지.
출처: 사용자 직접 발의 (2026-05-02 KST) — `~/.claude/projects/.../memory/feedback_communication_register.md` 1:1 흡수.

publishing surface 의 reader/debug 분리 자리 = 본 register 의 1 호 사례 적용.

## §6. cy-003 마감 임계 (cycle close gate)

- G-WORLD-1 = 1.0 (bible v0.6+ 인물 8 자리 본문 + 사건 8 자리 본문)
- G-CHAR-1 = ≥ 0.7 (character-sheets 8/8 + voice-signature × 8 + 인물 일러스트 ≥ 4)
- G-WRITING-1 = ≥ 0.7 (단편 +5 박음 + voice-keeper §7 5/5 PASS 모두)
- 마감 라운드 5/5 종결 (활성 조직 5 자리)
- review.md baseline 박음 (cy-002 review.md 형식 1:1)

## §7. 알려진 한계

- **첫 자국 = cy-003 r1 진입 시 박음**: 본 charter 박음 자리에서는 r1 미진입 = 표적 측정 0. r1 진입은 orchestrator 다음 finalize 자리.
- **cy-002 마감 미완**: cy-002 r3 묶음 진행 중 (writer r3 paired-dawns v0.1 박음 + critic r3/r4/r5 + voice-keeper r4/r5 + 기타 thin patches). cy-002 review.md 박음 = cy-003 진입 직전 자리 = orchestrator r-N 인접.
- **designer / implementer charter freeze 처치 미완**: 본 charter 는 *선언만*, 실제 designer.md / implementer.md frontmatter `frozen: true` 박음은 별도 자리.
