---
world_id: the-map-is-the-journey
doc_kind: terrain
version: v1.1
created_at: '2026-05-03T09:15:01+00:00'
gen: 1
cycle: cy-003
round: 20
authored_by: loremaster
mode: thin-bump (v1 §1~§10 + §12~§13 본문 0 변경 + §11 8 인물 거주지 표 = regions-v2 한국 행정 지명 1:1 carry + §14 신규 = 8 지형 × 6 권역(regions-v2) 매트릭스)
supersedes: outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md
source_v1: outputs/worldbuilding/the-map-is-the-journey/terrain-v1.md
source_regions: outputs/worldbuilding/the-map-is-the-journey/regions-v2.md
source_decision: decisions/closed/D-20260503-001.yml
source_feedback:
  - feedback/reader/F-20260503-region-names-as-korean-toponyms.yml
  - feedback/reader/F-20260502-1310-terrain-as-actual-living-geography.yml
acks_decision: D-20260503-001
acks_feedback:
  - F-20260503-region-names-as-korean-toponyms
  - F-20260502-1310-terrain-as-actual-living-geography
relates_to:
  - terrain v1 §1~§10 + §12~§13 (1:1 보존 — 본 v1.1 안 재인용 0)
  - regions v2 §1~§6 (6 권역 = 정선 / 김제 / 단양 / 통영 / 무주 / 성남 변두리 — 본 v1.1 §11 + §14 1:1 인용)
  - vocabulary-shift v1 §5 (6 권역 한국 지명 매핑표 — 본 v1.1 §11 carry 자리)
  - bible v0.7 §6 (권역명 부속 — 본 v1.1 carry 후 bible v0.10 carry 후보 자리 인계)
  - character-coordinates-audit v0 (인물 거주지 — 본 v1.1 §11 v2 carry 후 audit v0.1 carry 후보 자리 인계)
manifesto_keywords_grounded: [방향, 움직임, 시간이 곧 나, 자립]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 본 v1.1 본문 7 키워드 *직접 인용 0/7*. 6 권역 = 실제 한국 행정 지명 1:1 인용 (regions-v2). *방향 / 움직임 / 시간이 곧 나 / 자립* 은 §11 인물별 결의 한 줄 안에 체화 (호명 0).
  - #2 단일 진실: terrain v1 §1~§10 + §12~§13 본문 0 변경 보존. 본 v1.1 = §11 표만 region 이름 1:1 carry (한국 토착 어미 → 실제 한국 행정 지명) + §14 신규 = 6 권역 × 8 지형 매트릭스 (regions-v2 §7 부속 표 1:1 인용 자리). 신규 사실 0 / 신규 사물 0 / 신규 인물 0 / 신규 권역 0 / 신규 지형 0.
  - vocabulary-shift v1 §1~§4 grep — 본 v1.1 본문 안 *손금 / 손바닥 / 자국 박힘 / 자국강 / 박다 (시스템 의미)* 적중 0.
  - forbidden-language §1~§8 grep — 본 v1.1 본문 적중 0.
---

# 지형 v1.1 — 8 종 (5 산 = 보조 축) + 권역명 v2 carry

> **§0 baseline.** D-20260503-001 picked / regions v1.1 → v2 (한국 토착 어미 → 실제 한국 행정 지명) 1 차 격하 carry. 본 v1.1 = terrain v1 §11 (8 인물 거주지 후보 표) 의 권역 이름만 v2 (정선 / 김제 / 단양 / 통영 / 무주 / 성남 변두리) 1:1 치환 + §14 신규 = 6 권역 × 8 지형 매트릭스. 본문 골자 (8 종 지형 외형 / 5 산 보조 축 / 트립와이어 / 작가 메모) 0 변경.

> **활성 baseline 이동 = v1 → v1.1.** 신규 산출물 (회차 / 인물 시트 / bible carry) 은 본 v1.1 의 §11 v2 권역 이름만 1:1 인용. v1 §11 = stale (한국 토착 어미 baseline) 자리 보존 — debugging / trace 자리.

> **읽기 순서.** 본 v1.1 만 읽어도 가능하지 않음 — 8 종 지형 외형 / 5 산 보조 축 / 트립와이어 / 작가 메모는 v1 §1~§10 + §12~§13 1:1 보존 자리 = v1 파일 직접 읽음 의무. 본 v1.1 = §11 + §14 두 자리 carry / 신규 박음.

---

## §0 ~ §10 + §12 ~ §13 (v1 1:1 보존)

본 자리 = `terrain-v1.md` 안 §0 ~ §10 + §12 ~ §13 1:1 보존. 본 v1.1 안 재인용 0 — v1 파일 직접 읽음 의무.

| § | 자리 | v1 위치 |
|---|------|--------|
| §1 ~ §8 | 8 종 지형 외형 (산골 / 들녘 / 강가 / 포구 / 구릉 / 분지 / 도시 변두리 / 도시 한복판) | terrain-v1.md §1 ~ §8 |
| §9 | 8 지형 한 줄 비교 표 | terrain-v1.md §9 |
| §10 | 5 산 = 보조 축 (terrain v0 격하 박음) | terrain-v1.md §10 |
| §12 | 트립와이어 (지형 단위 발화 조건) | terrain-v1.md §12 |
| §13 | 작가 / 시스템 메모 | terrain-v1.md §13 |

---

## 11. 8 인물 거주지 (writer 측 character-sheet 패치 인계 자리, regions-v2 carry)

> v1 §11 의 한국 토착 어미 권역명 (새벽재 / 옅은들 / 느릿내 / 마른포 / 늘재 / 빽빽골) 을 regions-v2 의 실제 한국 행정 지명 (정선 / 김제 / 단양 / 통영 / 무주 / 성남 변두리) 으로 1:1 carry. 표의 다른 결 (terrain 후보 / 결의 한 줄) 0 변경.
>
> writer 측 character-sheet 8 자리 (`outputs/writing/the-map-is-the-journey/characters/*.md`) frontmatter `region: <지명>` 값 = 본 §11 의 v2 권역명 1:1 박음 의무. F-20260503-region-names must_fix 3 항 응답 인계.

| 인물 | terrain 후보 (v1 §1~§8) | region 후보 (regions-v2) | 결의 한 줄 |
|------|--------------------|----------------------|---------|
| **해온** | 도시 변두리 또는 구릉 | 김제 (음습한 길 결) → 무주 (의지소 결) | 매일 30 분 = *변두리에서 한복판으로 가는 새벽 박자* |
| **정해** | 산골 또는 분지 | 정선 (침대 박차 결) | 0 자국 박음 = *비탈 위에 한 발도 안 디딘 자리* |
| **나림** | 분지 | 무주 (의지소 결) | 6 년 멈춤 = *둘러싸인 평지 안 정착 결* |
| **유경** | 강가 또는 산골 | 단양 (자국빛 결) | 가족 + 함께 걸은 자리 = *강 따라 한 줄 마을 결* |
| **인규** | 도시 한복판 | 성남 변두리 (도착-아닌-여정 결) | 옆자리 200 = *익명 결의 옆자리 자리* |
| **연강** | 산골 또는 구릉 | 정선 (침대 박차 결) | 60+ 자국 *짧음의 결* = *비탈 위 가족 단위 자리* |
| **희재** | 산골 또는 분지 | 정선 (침대 박차 결) | 정해와 두 번 겹침 = *비탈에서 같은 새벽을 본 자리* |
| **유리** | 강가 또는 도시 변두리 | 단양 (자국빛 결) → 김제 (음습한 길 결) | 가족 → 나 자라남 = *강 따라 한 줄 마을에서 변두리로 가는 결* |

> **v1 → v1.1 1:1 치환표 (carry 검증용).**
>
> | v1 (한국 토착 어미) | v1.1 (한국 행정 지명, regions-v2) | 결 (regions-v2 §1~§6) |
> |---|---|---|
> | 새벽재 | 정선 (강원) | 산골 — 비탈 한 줄 마을 |
> | 옅은들 | 김제 (전라) | 들녘 — 만경평야 |
> | 느릿내 | 단양 (충북) | 강가 — 남한강 한 줄 마을 |
> | 마른포 | 통영 (경남) | 포구 — 작은 어촌 |
> | 늘재 | 무주 (전라) | 분지 — 산에 둘러싸인 정착 마을 |
> | 빽빽골 | 성남 변두리 (경기) | 도시 변두리 — 빽빽 골목 |

---

## 14. 6 권역 (regions-v2) × 8 지형 매트릭스 (신규)

> 6 권역 = regions-v2 의 한국 행정 지명. 8 지형 = 본 v1 §1~§8 의 사람 사는 지형 카테고리. 본 §14 = 어느 권역의 *주된 지형 자리* + *부속 지형 자리* 를 1 차 박음. ◎ = 권역의 1 차 지형 / ○ = 권역의 부속 지형 / × = 권역에 잘 안 박힘.

| 권역 \ 지형 | 산골 | 들녘 | 강가 | 포구 | 구릉 | 분지 | 도시 변두리 | 도시 한복판 |
|----------|-----|-----|-----|-----|-----|-----|-----------|-----------|
| 정선 (강원) | ◎ | × | ○ | × | ○ | × | × | × |
| 김제 (전라) | × | ◎ | ○ | × | ○ | × | ○ | × |
| 단양 (충북) | ○ | × | ◎ | × | ○ | ○ | × | × |
| 통영 (경남) | × | × | × | ◎ | ○ | × | × | × |
| 무주 (전라) | ○ | × | × | × | ○ | ◎ | × | × |
| 성남 변두리 (경기) | × | × | × | × | × | × | ◎ | ○ |

> **결.** 8 지형 중 *도시 한복판* (1 차) = 6 권역 안 0 자리. 본 세계의 *도시 한복판* 결은 *성남 변두리 의 안쪽 결* (옅은 ○) 로만 박힘 = regions-v2 §6 *익명 결의 옆자리* baseline 직접 정합. 신규 권역 발의 0 (cy-003 안).

---

## §15 cold-read 검증 (본 v1.1 박음 의무)

- 본 v1.1 = thin-bump (§11 carry + §14 신규 만). v1 §1~§10 + §12~§13 본문 0 변경.
- v1 §11 한국 토착 어미 6 자리 (새벽재 / 옅은들 / 느릿내 / 마른포 / 늘재 / 빽빽골) → 본 v1.1 §11 한국 행정 지명 6 자리 1:1 치환 검증 ✓.
- 본 v1.1 본문 안 *손금 / 손바닥 / 자국강 / 흙포구 / 굳은마을 / 빽빽골목* 적중 0 (vocabulary-shift v1 + regions v0 폐어 grep 자가 통과).
- F-20260503-region-names must_fix 2 항 (loremaster: terrain-v1 §11 carry) 직접 응답 = 본 §11.
