---
world_id: the-map-is-the-journey
title_ko: 여정 자체가 지도
title_en: The Map is the Journey
version: v0.5
created_at: 2026-05-02
gen: 1
cycle: cy-002
round: 2
authored_by: loremaster
supersedes: outputs/worldbuilding/the-map-is-the-journey/bible-v0.4.md
source_critique: outputs/critique/the-map-is-the-journey/bible-v0.3-first-5min.md (v0.3 6/6 강 + 두 신규 임계 통과 — v0.4·v0.5 골격 0 변경)
source_alignment: outputs/alignment/the-map-is-the-journey/bible-v0.4-score.md (v0.4 9.61 / e=0.95 단독 도달 / *방향* 1.0 격상)
source_visual_bible: outputs/art/the-map-is-the-journey/visual-bible-v0.3.md
source_terrain: outputs/worldbuilding/the-map-is-the-journey/terrain-v0.md
source_chronicle: outputs/worldbuilding/the-map-is-the-journey/chronicle-v1.md
source_forbidden_language: outputs/worldbuilding/the-map-is-the-journey/forbidden-language-v0.md
source_character_relations: outputs/worldbuilding/the-map-is-the-journey/character-relations-v0.md
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v0.md
source_objects_items: outputs/worldbuilding/the-map-is-the-journey/objects-items-v0.md   # cy-002 r2 신규
source_seed: seed.md §70
seed_phrase: "인생이란 나라는 고객을 최고로 만족시키기 위한 여정"
manifesto_keywords_primary: [움직임, 방향, 시간이 곧 나, 연대, 축복, 진심, 자립]
manifesto_keywords_strengthened_in_v05: [축복, 연대]   # 백지·가장자리 떨림 / 동행의 묻은 흙·흉내본 두 자리 ◎ 박음
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본문 7 키워드 *직접 인용 0*. *오브젝트/아이템* 7 사물 모두 bible v0.4 + chronicle-v0/v1 + regions-v0 의 그림으로 박음.
  - #2 단일 진실: v0.4 본체 + r2 신규 부속 (objects-items-v0 + chronicle-v1) 직접 흡수. 신규 사실 0 (사물 = 기존 그림의 *명명*, 사건 6/7 = 기존 메모의 *박음*), 신규 사물 0 인 동시 *명명 박음 7 자리* (백지 / 흙 / 손바닥 / 가장자리 떨림 / 흉내본 / 동행의 묻은 흙 / 침묵의 자취).
  - forbidden-language-v0 §1~§8 grep — 본 v0.5 본문 적중 0.
  - cy-002 evolution-rules §A.A1 (bible 미참조 산출물 발행 금지) 정식 룰 자가 적용 — 본 v0.5 = source_objects_items / source_chronicle (v1 격상) 명시 박음 = A.A1 정식 룰 2 호 적용 사례.
  - **8 핵심 문서 도달**: 세계 본체 (bible v0.5) + 지형 (terrain-v0) + 지역 (regions-v0) + 인물 (character-sheets-axis-v0) + 관계 (character-relations-v0) + 오브젝트 (objects-items-v0 §1~§4) + 아이템 (objects-items-v0 §5~§7) + 연대기 (chronicle-v1) = **8/8 도달**. G-WORLD-1 임계 cy-002 표적 (0.80+) 도달 자리.
---

# 여정 자체가 지도 (The Map is the Journey) — Bible v0.5

> **현재 baseline** — 본 v0.5 가 the-map-is-the-journey 활성 baseline (2026-05-02, cy-002 r2 도달). 모든 cy-002 r2+ 산출물 (writer / art-director / designer / implementer / voice-keeper / critic) 의 단일 진실 참조 자리. 외부 cold reader 진입 자리 = 본 v0.5. 이전 v0.1~v0.4 는 보존 (수퍼시드 체인 박음).

> 본 v0.5 는 v0.4 (5 지역 박음) 위에 *오브젝트/아이템 7 사물* + *연대기 v1 (사건 6/7 추가)* 박음. cy-002 r2 (loremaster) 산출 — **8 핵심 문서 도달** 의 자리. 골격 (§1~§7) 은 v0.3·v0.4 그대로 유지 + §6.3 신설 (오브젝트/아이템) + §10 신설 (연대기 v1 흡수) + §11 신설 (8 핵심 문서 도달 박음) + §9.1 *축복* / *연대* 행 강화 + §9.8 신설 (7 사건 × 5 지역 + 7 사물 × 7 키워드 정합 표).

---

## 0. v0.4 → v0.5 변경 요약 (delta)

| 자리 | v0.4 상태 | v0.5 변경 | 표적 발견 |
|------|----------|----------|-----------|
| §6.3 *오브젝트/아이템* | 미박음 (§8.3 큐 자리) | **신설** — 4 오브젝트 (백지 / 흙 / 손바닥 / 가장자리 떨림) + 3 아이템 (흉내본 / 동행의 묻은 흙 / 침묵의 자취) 명칭 + 표 + objects-items-v0 참조 박음 | bible v0.4 §1·§2·§4 + chronicle-v0 §4·§5 + regions-v0 §5 |
| §10 *연대기 v1 흡수* | 미박음 (chronicle-v0 5 사건 자리) | **신설** — 사건 6 *후회의 새벽* + 사건 7 *흉내본 시대 끝* 추가 흡수 + 5 지역·7 사물 매트릭스 | chronicle-v1 §6·§7·§8·§9 |
| §11 *8 핵심 문서 도달* | 7/8 (cy-002 r1 후 regions-v0 도달) | **신설 = 8/8 도달 박음** — bible / 지형 / 지역 / 인물 / 관계 / 오브젝트 / 아이템 / 연대기 8 자리 | r2 묶음 도착 |
| §9.1 매니페스토 매핑 | *방향* 1.0 격상 (v0.4 신규) | *축복* / *연대* 행 강화 — 두 키워드 *2 사물 ◎* 도달 | objects-items-v0 §8 매핑 |
| §해석 키 §9.8 | 미박음 | **신설** — 7 사건 × 5 지역 + 7 사물 × 7 키워드 정합 표 (chronicle-v1 §8·§9 + objects-items-v0 §8·§9 1:1 박음) | r2 두 자리 매트릭스 |
| §8 보강 우선순위 | 4 → 3 항 (지역 ✅, 인물관계도 ✅, 잔여 = 오브젝트/아이템·금지 대사) | 3 → 1 항 (오브젝트/아이템 ✅ + 연대기 v1 격상 ✅, 잔여 1 = *금지 대사 사전 v0* writer cy-003 자리) | r2 도착 |
| frontmatter | 7 source / round 4 / strengthened *방향* | 9 source (+ source_objects_items / + source_chronicle v1 격상) / round 2 (cy-002) / strengthened *축복* / *연대* | r2 신규 산출 |

> 어조 변화: v0.4 의 *지역 5 종 = 방향의 물리화* 위에 *사물 7 종 = 축복·연대·진심·자립의 사물화* + *연대기 7 사건 = 시대의 박음* 추가. 본 v0.5 = bible 골격 (세계 + 부속 7 종) 8 자리 *도달 baseline* — bible v1.0 의 직전 자리.

---

## 1. ~ 5. (v0.4 동일)

§1 한 줄 / §2 핵심 메타포 / §3 쉼의 자리 / §4 손금 새벽 / §5 발자국 — 모두 v0.4 본문 그대로. 본 v0.5 변동 0.

> v0.5 의 §6.3 *7 사물* 박음으로 *§1~§5* 의 그림이 *어떤 사물 단위 외형* 으로 박히는가의 답 추가. *받음* 의 외형 = 백지·가장자리 떨림 (§6.3) / *자기 봄* 의 외형 = 손바닥 / *자국* 의 외형 = 흙. §1~§5 본문 그대로 + §6.3 가 *외형 자리*.

---

## 6. 자연 · 문화 · 시대 (v0.4 동일 + §6.3 신설)

- §6 (자연·자연법칙·문화·시대), §6.1 (권력 두 비극), §6.2 (지역 5 종): v0.4 그대로.

### 6.3 오브젝트 / 아이템 7 사물 — *결의 사물화 카테고리* (v0.5 신설)

> 본 §은 v0.4 §8.3 큐 자리. 5 산 (terrain) 이 *외형*, 5 지역 (regions) 이 *결의 카테고리*, 7 사물 (objects-items) 이 *결의 사물 단위 외형*. 4 오브젝트 = 본 세계의 *근본 사물* (백지 / 흙 / 손바닥 / 가장자리 떨림) + 3 아이템 = *도구 · 자취* (흉내본 / 동행의 묻은 흙 / 침묵의 자취). 상세는 `objects-items-v0.md`.

#### 7 사물 골격 (objects-items-v0 §1~§7)

| 사물 | 결의 한 줄 | 챔피언 |
|------|----------|-------|
| **백지** | *받은 종이* 자체 | `축복` |
| **흙** | *자국* 의 외형 (진심·방향·시간) | `진심` |
| **손바닥** | *자기 지도* 의 시야 도구 | `자립` |
| **가장자리 떨림** | *받음* 의 지속 흔적 | `축복` (백지의 지속 변주) |
| **흉내본** | 베껴 그린 옅은 종이 (지도-스승 시대 자취) | `연대` (옅은 변주) |
| **동행의 묻은 흙** | *남의 흙 색조* 의 사후 발견 | `연대` |
| **침묵의 자취** | *지도-스승 침묵* 의 사회 단위 부재 | `방향` (사회 단위 변주) |

#### 7 사물 트립와이어 (objects-items-v0 §10 직접 흡수 — bible 부속)

- 백지 *제작 / 옮김* 묘사 → reject
- 흙이 *큰 비에 굳건히 안 지워짐* 또는 *옅은 흙 = 흙이 아님* → reject
- 손바닥이 *모두에게 평생 비침* → reject (forbidden-language §3 *어디에나* 결과 동위)
- 가장자리 떨림이 *완전히 사라짐* → reject (forbidden-language §1 *영원* 결과 동위)
- 흉내본이 *손금 새벽의 대체로 충분함* → reject
- 동행의 묻은 흙을 *자기 흙으로 흡수* 묘사 → reject (*연대 = 흡수 아님*)
- 침묵의 자취 위에 *지도-스승 부활* / *외부 권위 도래* → reject (*그 이후만* 결 위반)

---

## 7. 30 초 vertical slice (v0.4 동일)

§7 표 그대로. 본 v0.5 변동 0.

---

## 8. 보강 우선순위 (cy-002 r2 도착 표시 + 잔여 1 항)

> v0.4 의 3 항 큐 → v0.5 갱신: 2 항 ✅ 도착 (오브젝트/아이템 + 연대기 v1), 잔여 1 항.

1. ~~**인물 관계도 v0**~~ ✅ loremaster r4 cy-001 (`character-relations-v0.md`).
2. ~~**지역 v0**~~ ✅ loremaster r1 cy-002 (`regions-v0.md`).
3. ~~**오브젝트 / 아이템 v0** + **연대기 v1**~~ ✅ loremaster r2 cy-002 (`objects-items-v0.md` + `chronicle-v1.md`). **8 핵심 문서 도달.**
4. **금지 대사 사전 v0** (writer cy-003 — forbidden-language-v0 의 언어 단위 그물 위 대사 단위 그물). bible v0.6 또는 후속 cycle 자리.

### 8.1 cy-002 r2 자리 (loremaster) — **본 v0.5 가 자리 도달**

- 본 v0.5 = task-queue-r1-r2 §1.r2 = *오브젝트/아이템 + 연대기 v1 박음 → bible-v0.5 발행 (8 핵심 문서 도달, charter §1 r2)* 의 자리 도달 박음.

---

## 9. 해석 키 (작가 메모)

### 9.1 매니페스토 핵심어 매핑 (v0.5 갱신 — *축복* / *연대* 행 강화)

| 핵심어 | 본 세계의 체화 | v0.5 박힌 자리 |
|--------|---------------|--------------|
| **진심** | 흙의 진하기 + 첫 자국 진하기 + **흙 (사물 ◎)** | §2.2 + §6.2 + **§6.3** |
| **움직임** | 1 자연법칙 + 음습한 길 / 도착-아닌-여정 | §2.2 + §6 + §6.2 |
| **자립** | 손금 새벽 + **손바닥 (사물 ◎)** + 자국빛 일상 변주 (의존 시 약화) | §4 + **§6.3** + §6.2 |
| **연대** | 함께 박힘 3 변주 + **동행의 묻은 흙 (사물 ◎) + 흉내본 (옅은 변주)** | §2.3 + **§6.3** (강화 1 차) |
| **축복** | 백지 떨림 + 쉼 + **백지 (사물 ◎) + 가장자리 떨림 (사물 ◎)** | §2.1 + §3 + **§6.3** (강화 1 차 = 2 사물 ◎) |
| **시간이 곧 나** | 지도 면적 = 시간 + N 자국째 + 가장자리 떨림 *0.99 옅어짐* | §6 + §2.2 + **§6.3** |
| **방향** | 작은 화살표 + 5 지역 = 방향의 물리화 + **침묵의 자취 (사물 ◎ 사회 단위)** | §5 + §6.1 + §6.2 + **§6.3** (강화 2 차) |

> *축복* / *연대* 가 v0.5 에서 *강화* — 두 키워드 모두 *2 사물 ◎ 동시 박음* (백지·가장자리 떨림 / 동행의 묻은 흙·흉내본). 의지소·도착-아닌-여정 (regions) 위에 *7 사물 외형* 이 박혀 *추상 → 카테고리 → 사물* 3 단계 도달.

### 9.2 invariant_traps 자기 검증 (v0.5)

- Trap 1~7 v0.4 동일.
- **Trap 8 (NEW)** — *7 사물의 도구화* 위험. 사물을 *기능* 으로만 박을 위험 (예: *백지* 를 *시작 도구* 로). 안전핀 = objects-items-v0 §1~§7 *결의 한 줄 + 외형 + 자연법칙 + 위험 + 미덕* 5 자리 박음 — 사물은 *결의 외형* 이지 *기능* 아님.
- **Trap 9 (NEW)** — *7 사건의 시각 명시* 위험. 사건 5·6·7 의 *그 이후* 결을 *언제* 로 박을 위험. 안전핀 = chronicle-v1 §사건 5/6/7 의 *해 와 달 미기록* 결 + forbidden-language §1 *영원* 결과 동위.

### 9.3~§9.7 (v0.4 동일)

§9.3 *자기 자신을 한 명의 고객으로 대접* / §9.4 cold-read / §9.5 작가 코퍼스 / §9.6 연대 3 변주 메타 / §9.7 5 지역 × 5 산 매트릭스 — v0.4 그대로.

### 9.8 7 사건 × 5 지역 + 7 사물 × 7 키워드 정합 표 (v0.5 신설)

(chronicle-v1 §8 + objects-items-v0 §8 / §9 1:1 박음 — 본 §은 *부속 문서 안에 박음 + bible 부속 자리* 표시. 상세 매트릭스 두 부속 문서 §섹션 직접 참조.)

| 정합 자리 | 부속 문서 | bible 자리 |
|----------|---------|----------|
| 7 사건 × 5 지역 | chronicle-v1 §8 | §6.2 + §10 |
| 7 사물 × 5 지역 | objects-items-v0 §9 | §6.2 + §6.3 |
| 7 사물 × 7 키워드 | objects-items-v0 §8 | §9.1 |
| 7 사건 × 7 사물 매개 | chronicle-v1 §9 | §6.3 + §10 |

> 4 매트릭스 모두 *부속 문서 안 1:1 박음 + bible §섹션 호환* — *세계 본체 = 매트릭스 색인* 결의 박음.

---

## 10. 연대기 v1 흡수 (v0.5 신설)

> chronicle-v0 (5 사건) → chronicle-v1 (7 사건). v0 5 사건 본문 0 변경 + 사건 6 *후회의 새벽* + 사건 7 *흉내본 시대 끝* 추가 박음. 상세는 `chronicle-v1.md`.

#### 사건 6 / 7 골격

- **사건 6 *후회의 새벽*** (개인 단위, 200~5000 자국째) — 자기 옅은 자국이 잠깐 동시 빛나는 새벽. *큰 비* 직후가 아니어도 옴. 후회의 산 큰 자에게 자주.
- **사건 7 *흉내본 시대 끝*** (사회 단위, 사건 5 직후) — 지도-스승의 침묵 직후 *흉내본 의존* 의 *옅게 옅게 끝*. 사람들이 자기 손바닥을 자기가 펴게 된 결의 사회 단위 자취.

#### 7 사건 × 5 지역 분포 (chronicle-v1 §8 1:1 박음)

도착-아닌-여정 = 4 사건 (3·5·7 + 6 ○) 박힌 가장 진한 자리. *자국빛* = 사건 1·2·6 박힘 — 개인 단위 사건의 결.

#### 7 사건 트립와이어 (chronicle-v1 §사건 본문 직접 흡수 — bible 부속)

- 사건 1 의 *기원 신화* 박음 → reject (모든 사람의 0 자국째)
- 사건 5/7 의 *해 와 달* 명시 → reject (*그 이후* 결 위반)
- 사건 6 의 *모든 사람에게 평생 일어남* 박음 → reject (사건 2 와 같은 결)

---

## 11. 8 핵심 문서 도달 박음 (v0.5 신설)

> loremaster charter §첫 task #1 의 *8 핵심 문서* 표적. cy-001~cy-002 r2 안 도달 baseline.

| # | 문서 | 자리 | 도달 cycle |
|---|------|-----|----------|
| 1 | **세계 본체** | `bible-v0.5.md` | cy-002 r2 (본 v0.5) |
| 2 | **지형** | `terrain-v0.md` | cy-001 r2 |
| 3 | **지역** | `regions-v0.md` | cy-002 r1 |
| 4 | **인물** | `character-sheets-axis-v0.md` (writer 흡수) | cy-001 r2 |
| 5 | **관계** | `character-relations-v0.md` | cy-001 r4 |
| 6 | **오브젝트** | `objects-items-v0.md` §1~§4 (4 오브젝트) | cy-002 r2 |
| 7 | **아이템** | `objects-items-v0.md` §5~§7 (3 아이템) | cy-002 r2 |
| 8 | **연대기** | `chronicle-v1.md` | cy-002 r2 |

> 본 표 = G-WORLD-1 cy-002 표적 (0.80+) 도달 baseline. voice-keeper r1 cy-002 (룰 A3 정식 1 호) 가 본 v0.5 *e 항 0.95+ 측정* 자리 = G-WORLD-1 격상 1 차 자리. cy-003 자리 = *금지 대사 사전 v0* (writer) + *bible v1.0 발행* (loremaster).

---

> 본 v0.5 는 *bible v1.0* 으로 가는 다섯 번째 골격. 세계 본체 (v0.1 → v0.2 → v0.3 → v0.4 → v0.5) + 부속 7 종 (terrain / chronicle v1 / forbidden-language / character-relations / regions / objects-items / chronicle-v0 supersede) + 8 핵심 문서 도달 baseline 박음. 다음 라운드 = bible v1.0 (cy-003 자리, *금지 대사 사전 v0* + 8 자리 *완성 발행*).
