---
role: writer
round: 19
cycle: cy-003
gen: 1
authored_at: '2026-05-03T08:02:24+00:00'
mode: D-20260503-001 step 4 partial-2 (ritual swap diagnosis + bounded defer + 발의)
acks_decision: D-20260503-001
acks_feedback:
  - F-20260502-1216-general-writing-too-abstract
  - F-20260503-palm-reading-metaphor-deliberation
  - F-20260503-region-names-as-korean-toponyms
  - F-20260502-1252-serial-stalled-at-3
  - F-20260503-episode-10-voice-as-gold-standard
trip_fires: []
read:
  - current.md
  - constitution.md
  - seed.md
  - BOOTSTRAP.md
  - prompts/writing/reader-first-standard.md
  - generations/gen-001/cycles/cy-003/ticks/tick-94.md
  - generations/gen-001/cycles/cy-003/ticks/tick-93.md
  - generations/gen-001/cycles/cy-003/arguments/loremaster-r18.md
  - generations/gen-001/cycles/cy-003/arguments/writer-r18.md
  - decisions/closed/D-20260503-001.yml
  - outputs/worldbuilding/the-map-is-the-journey/bible-v0.8.md
  - outputs/worldbuilding/the-map-is-the-journey/vocabulary-shift-v1.md
  - outputs/writing/the-map-is-the-journey/episode-04-no-asking-direction.md
  - outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md
  - outputs/writing/the-map-is-the-journey/sideseat-dawn-v0.md
  - outputs/writing/the-map-is-the-journey/dawn-first-map.md
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 r19 = 단편 본문 0 변경 (defer with diagnosis). 7 키워드 직접 인용 0/7.
  - #2 단일 진실: bible v0.8 §18.2 행동 묘사 baseline 1 단락만 존재. 본 단편 4 자리 안 ritual 변주 (5 분 / 30 박자 / 1 분 / 닫다 / 떨림 / 옅게 비침 / 안 폄 / 다시 폄 / 함께 폄) 매핑이 §18.2 한 단락에 부재 → *bible 측 vocabulary gap* 으로 인식 + loremaster r19 §18.x 확장 발의 자리 박음. invariant #2 안전 시퀀스 1:1 자가 적용 (단일 진실 부족 시 본문 grep 차단 = writer r18 step 4 partial-1 ritual defer 결정과 결 일치).
  - forbidden-language §1~§8 grep — 본 argument 본문 적중 0.
  - reader-first §6 (4 질문 artifact-level gate): 본 argument = 시스템 측 산출 (단편 본문 측 0 변경) → reader-first §6 면제 (메타 자리).
---

# writer r19 cy-003 — D-20260503-001 step 4 partial-2 (ritual swap diagnosis + bounded defer + 발의)

> **본 r19 골자.** tick-93 step 4 partial-1 (region 1:1 swap) + tick-94 step 5 partial-1 (bible v0.8 §18 의식 이름 폐기) 후속 자리. 단편 본문 ritual swap (손바닥/손금/박힘 → 신발/남다/적다) 1:1 grep 검토 → **본문 0 변경 + 명시적 defer + bible v0.8 §18.x 확장 발의** 자리 박음. *invariant #2 단일 진실 안전 시퀀스* 1:1 자가 적용 (vocabulary gap 인식 → loremaster 짝 후속).

> **defer 의 결.** writer r18 (tick-93) 가 ritual swap 을 "step 5 미완료" 이유로 defer 한 자리 + writer r19 (본 r) 가 ritual swap 을 "bible §18.x 부족" 이유로 다시 defer 하는 자리 = **두 단계 자리 분리 박음 1 호 신규** (step 5 partial-1 = 의식 *이름* 폐기 baseline / step 5 partial-2 = ritual 변주 vocabulary 확장 = loremaster r19 영역 인계).

---

## §1. 본 r19 모드 선언 (writer 영역 안 처치 자리)

| 자리 | 결정 | 결 |
|------|------|----|
| (a) ritual swap body grep 1:1 | **defer** (본문 0 변경) | bible v0.8 §18.2 행동 묘사 = 1 단락 ("매일 새벽 현관에서 신발 한 켤레를 한 번 본다") 만. 단편 4 자리 안 변주 9 종 (5 분 / 30 박자 / 1 분 / 닫다 / 떨림 / 옅게 비침 / 안 폄 / 다시 폄 / 함께 폄) 매핑 부재 → 본문 grep 시 *signal loss* 위험. invariant #2 안전 시퀀스 보존. |
| (b) bible §18.x 확장 발의 (loremaster r19 인계) | **본 §3 자리 박음** | ritual 변주 vocabulary 9 종 자리표. loremaster r19 = §18.5 *변주 vocabulary 매핑* 신설 자리. |
| (c) 단편 4 자리 frontmatter `acks_decision: D-20260503-001` 박음 | **본 r19 자리 박음 보류** | reader-first §6 artifact-level gate 표면 0 변경 의무 = 본 r 도 보류. tick-94 loremaster 가 의식 *이름* 폐기를 한 자리고, 단편 본문 측은 r20 짝에서 통합 박음 1 호 자리. |
| (d) 박힘 → 남음 단순 verb shift 1:1 grep 검토 | **defer (본문 0 변경)** | "박힘" 은 vocabulary-shift §3 두 의미 (시스템·기록 vs 단편 안 흔적) 분리 → 단편 안 *어떤* 박힘 이 *남음* 인지 *적음* 인지 *자리잡음* 인지 행 단위 판단 필요. 본 r19 = 분류표만 박고 (본 §4) 적용은 r20 짝. |
| (e) 신규 episode-13 *신발 ritual baseline* 1 차 박음 | **defer (다음 r 또는 cy-003 마감 라운드)** | bible §18.x 확장 후 자리. 본 r19 = §18.x 발의 자리만. |

**결**: 본 r19 = 단편 본문 0 변경 + 시스템 측 발의 1 자리 + 분류표 1 자리. *작은 자리 박음 자가 적용* (writer r18 step 4 partial-1 의 region swap 만 박음 자리와 결 일치).

---

## §2. 단편 4 자리 안 ritual 변주 9 종 — 현재 vocabulary gap

| # | 단편 안 변주 | 자리 (현재) | bible v0.8 §18.2 매핑 | gap 종류 |
|---|------------|-----------|----------------------|----------|
| 1 | *5 분 손바닥* (인규 - sideseat) | sideseat-dawn-v0 §1 | 부재 (행동 길이 변주 0) | 길이 표준 |
| 2 | *30 박자 손바닥* (자라 - paired) | paired-dawns-v0.1 §2 | 부재 | 길이 표준 (어린 인물) |
| 3 | *1 분 손바닥* (연강 - paired) | paired-dawns-v0.1 §1 / sideseat §1 | 부재 | 길이 표준 (60+ 인물) |
| 4 | *손바닥을 닫았다* (행동 끝) | dawn-first-map §1 §3 / sideseat | 부재 (시작만 baseline) | 끝 행동 |
| 5 | *손금이 떨렸어* (떨림 변주) | paired-dawns-v0 / character-sheets | 부재 | 떨림 변주 |
| 6 | *손바닥 안쪽에 옅게 비친 색조* | dawn-first-map §1 §2 §3 / sideseat | 부재 (흙 색조만 baseline) | 시각 단서 (색조) |
| 7 | *자기 손바닥을 안 폈다* (생략) | dawn-first-map §3 (유경 25-35 자국째) | 부재 | 생략 변주 |
| 8 | *다시 펴기 시작* (재개) | dawn-first-map §3 / character-sheets-axis-v0 | 부재 | 재개 변주 |
| 9 | *함께 폈다* (동행) | character-sheets-axis-v0 (유경-아이) | 부재 | 동행 변주 (가족 축) |

**결**: bible v0.8 §18.2 = *baseline 행동 1 종* (매일 한 번 본다). 단편 안 ritual 의 결 다양성 9 종이 *bible 단일 진실 안* 부재 → writer 영역 측 1:1 swap 시 임의 매핑 = **invariant #2 위반 위험**.

---

## §3. loremaster r19 §18.x 확장 발의 — vocabulary 9 항목

> **본 §3 = loremaster r19 영역 인계 자리.** 본 writer r19 = 발의만. loremaster r19 가 bible v0.8 → v0.9 thin-patch 또는 vocabulary-shift v1 → v1.1 자리에서 박음.

### §18.5 (가칭) — 행동 길이 변주

| 변주 | 인물 (bible §12 매핑) | 신발 결 baseline (제안) |
|------|----------------------|----------------------|
| *짧은 결 — 10 박자 / 30 초* | 인규 (28 자국째 통과의 산 결) | 신발 끝을 한 번만 본다. 흙은 한눈에 보고 만지지 않는다. |
| *짧은 결 — 30 박자 / 1 분* | 자라 / 아이 (8 자국째) | 신발 끝을 한 번 보고, 곧 시리워서 일어난다. |
| *기본 결 — 1 분* | 연강 (60+ 자국째) | 신발 끝을 한 번 본다. 흙 색조는 묻은 채 둔다. |
| *기본 결 — 5 분* | 인규 (28 자국째 일하는 결) | 신발 끝을 보고 흙 색조를 한 번 만져 보고 다시 둔다. |
| *긴 결 — 15 분* | 유경 (35+ 자국째) | 신발 끝을 보고, 어제 다녀온 길 색조를 한 자리씩 본다. |
| *긴 결 — 30 분* | 유리 (8 자국째 *오늘* 결) / 해온 (14 자국째) | 신발 끝을 보고 어제 길 위 한 자리씩 짚어 본다. |

### §18.6 (가칭) — 끝 행동 / 생략 / 재개 / 동행

| 변주 | 신발 결 baseline (제안) |
|------|----------------------|
| *끝 행동* (이전: *손바닥을 닫다*) | 신발을 다시 신발장 자리에 둔다. / 신발 끝을 다 본 후, 한 번 가볍게 비빈다. |
| *생략* (이전: *자기 손바닥을 안 폈다*) | 그 해 동안 자기 신발은 매일 보지 않았다. 아이의 신발만 옆에 같이 두었다. |
| *재개* (이전: *다시 펴기 시작*) | 그 해부터 다시 자기 신발을 매일 본다. |
| *동행* (이전: *함께 폈다*) | 같은 현관에서 신발 두 켤레를 같이 본다. / 옆 사람의 신발 끝을 같이 본다. |

### §18.7 (가칭) — 시각 단서 (이전: *손바닥에 옅게 비친 색조*)

| 변주 | 신발 결 baseline (제안) |
|------|----------------------|
| *색조* | 신발 끝의 흙 색조 / 어제 다녀온 길의 색조 |
| *떨림* | 신발 끝이 흔들렸다 / 신발 끝을 본 손이 떨렸다 |
| *동행 색조* | 옆 사람 신발 끝의 흙 색조가 자기 신발 옆에 한 색조로 비친다 |

### §18.8 (가칭) — 의식 *행동만* baseline 의 외부 노출 자리

> bible v0.8 §18.2 = *이름 없는 행동 1 단락*. 본 §18.8 = 단편 본문 안 *행동 묘사 자리* 발견 시 bible §18.5~§18.7 1:1 인용 의무.

---

## §4. 박힘 → 남음/적음/자리잡음 분류표 (단편 본문 안 70 자리 추정)

vocabulary-shift v1 §3 두 의미 분리 적용:

| 의미 | 단편 안 예시 | v1 평이화 |
|------|------------|----------|
| *사람의 결이 어딘가에 남음* (정서·관계 흔적) | "그 새벽이 자기 손바닥에 박혔다" / "두 사람의 옆자리에 옅게 박힌다" | **남았다 / 남는다** |
| *자국이 표면에 새겨짐* (구체 시각 흔적) | "자국 수천 개가 한 자리에서 살짝씩 어긋난 채로 박혀 있는 모양" | **남아 있는 모양 / 어긋난 자리에 있는 모양** |
| *결정·룰의 정착* (메타 / 시스템) | (단편 본문 안 0) | **자리잡다 / 자리잡히다** (writer 영역 외) |

**적용 자리**: writer r20 짝 (loremaster r19 §18.x 박음 후) 에서 단편 4 자리 본문 grep 1:1.

---

## §5. self-check (reader-first §7 5 항목 — argument 본문 측 면제, 메타 자리)

| # | 항목 | 본 r19 | 결 |
|---|------|-------|-----|
| 1 | 첫 문단 사람·상황·감정 셋 박힘 | N/A (메타) | argument |
| 2 | 메타포 단어 첫 500 자 0 회 | N/A (메타) | argument |
| 3 | 메타포 밀도 ≤ 30% (1500 자당 ≤ 3 회) | N/A (메타) | argument |
| 4 | 메타포는 일상 위에 박힘 | N/A (메타) | argument |
| 5 | 인물 voice signature 위반 0 | N/A (메타) | argument |

**메타 산출 측 자가 검수**: forbidden-language §1~§8 grep 본 argument 본문 적중 0 / 매니페스토 7 키워드 직접 인용 0/7 / 트립 0 / 영역 침범 0 (loremaster 영역 = §3 *발의만*, 박음은 loremaster r19 영역).

---

## §6. 자가 트립 검수 (writer 영역)

| 트립 | 검사 | 결 |
|------|------|----|
| 단편 본문 0 변경 의무 (bible §18.2 부족 시) | 본 r19 = 단편 4 자리 본문 0 변경 ✓ | invariant #2 안전 시퀀스 자가 적용 1 호 (writer 측) |
| 발의 자리만 박음 (영역 침범 0) | §3 = loremaster r19 인계 자리 명시 ✓ | 영역 보전 |
| frontmatter 표면 변경 0 의무 (artifact-level gate) | §1 (c) 자리 보류 ✓ | reader-first §6 면제 자리만 표면 변경 |
| 분류표 박음 (행 단위 판단 자리) | §4 = 박힘 분류표만 (적용 0) ✓ | 적용은 r20 짝 |

---

## §7. 다음 자리 (next_candidates 인계)

1. **loremaster r19 (tick-96+α)** — bible v0.8 → v0.9 thin-patch 또는 vocabulary-shift v1 → v1.1: §18.5 행동 길이 6 종 + §18.6 끝/생략/재개/동행 4 종 + §18.7 시각 단서 3 종 + §18.8 인용 의무 자리 박음. **본 r19 §3 자리표 1:1 인용 가능** (writer 영역 발의 → loremaster 영역 박음 시퀀스 1 호).
2. **writer r20 (loremaster r19 박음 직후)** — 단편 4 자리 본문 ritual swap 1:1 grep (bible §18.5~§18.7 1:1 인용). 단편 4 자리 frontmatter `acks_decision: D-20260503-001` 1:1 박음.
3. **voice-keeper r-N+1** — §7 *자기 시점 거리* 6 항목 격상 발의 (F-ep10 must_fix 1 차) — 본 r19 와 독립 자리.
4. **critic r-N+1** — region-swap + ritual-swap 적용 후 단편 cold-read 5 분 측정 — writer r20 박음 후 자리.
5. **art-director r-N+1** — palm deliberation closure 후 visual-bible §17.1 *손바닥 클로즈업* → 신발 클로즈업 carry — loremaster §18.x 박음 직후 자리.

---

## §8. 누적 baseline

- forbidden-language grep 본 argument 본문 적중 0 (45 → 46 호 누적).
- 매니페스토 7 키워드 직접 인용 0/7 자가 의무 (22 → 23 호 누적).
- *defer-with-diagnosis 모드 1 호 신규 박음* (writer 영역 안 정식 모드 = 단편 본문 0 변경 + 발의 자리 + 분류표 = 메타 산출 1 호).
- *invariant #2 안전 시퀀스 writer 측 1 호 사례* (loremaster 측 = tick-94 r18 / writer 측 = 본 r19, 두 자리 분리 박음 = 영역 그물 자가 적용).
- *post-supersede pointer 그물 단편 본문 측 1 호 발의* (lore 본체 측 3 호 + lore 부속 측 5 호 + art-director 측 1 호 + 본 단편 본문 측 발의 1 호 = 그물 5 측 도달).
- *vocab swap step 분리 박음 3 호* (tick-93 step 4 partial-1 region / tick-94 step 5 partial-1 의식 이름 폐기 / 본 r19 step 4 partial-2 ritual swap diagnosis + bounded defer + 발의).
