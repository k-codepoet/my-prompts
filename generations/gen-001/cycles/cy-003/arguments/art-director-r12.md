---
role: art-director
round: 12
cycle: cy-003
gen: 1
mode: thin-rename (F-20260503-region-names-as-korean-toponyms must_fix #1·#2 art-director 영역 응답 — 35 회 / 4 파일 1:1 sed 치환 / 본문 골자 0 변경 / scope_reduced 안 자리)
tick: 79
authored_at: 2026-05-03T04:10:01+00:00
acks_feedback:
  - F-20260503-region-names-as-korean-toponyms
target_orgs_advanced: art-director (must_fix #1·#2 = visual-bible v0.5 8 회 + terrain-visual-rules-v0 12 회 + stamp-17-3 meta 10 회 + stamp-17-4 meta 5 회 = 35/35 도달, post-grep stale 0 / new 35 정합)
trip_fires: []
written_artifacts:
  - outputs/art/the-map-is-the-journey/visual-bible-v0.5.md  # sed 8 회 (자국강 2 + 흙포구 1 + 굳은마을 3 + 빽빽골목 2)
  - outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md  # sed 12 회 (자국강 3 + 흙포구 1 + 굳은마을 5 + 빽빽골목 3)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-3-narim-museum-12-tones-v1.png.meta.yml  # sed 10 회 (굳은마을 10)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/stamp-17-4-yugyeong-yuri-walked-together-v1.png.meta.yml  # sed 5 회 (자국강 5)
---

# art-director r12 cy-003 — thin-rename / F-20260503-region-names must_fix #1·#2 응답 (tick-079)

## 0. 한 줄 마감

> art-director r12 cy-003 thin-rename — F-20260503-region-names-as-korean-toponyms must_fix #1·#2 직접 응답. orchestrator r13 punch list 2 위 (art-director 35 회 / 4 파일 = 41.7%) → **35/35 회 / 4 파일 1:1 sed 치환 도달** (자국강 → 느릿내 / 흙포구 → 마른포 / 굳은마을 → 늘재 / 빽빽골목 → 빽빽골 한국 토착 어미). **본문 골자 0 변경** = thin-rename mode 자가 적용 3 호 사례 박음 (loremaster r14 1 호 / writer r14 2 호 / 본 r12 = 3 호 = **정식 룰 임계 도달**). post-grep stale 0 회 / new 35 회 정합. R0 ack → 처치 격상 5 단계 자리 분리 박음 1 호 (orch r12 ack → loremaster r14 → orch r13 측정 → writer r14 → 본 art-director r12). scope_reduced 안 자리 = 신규 visual spec 0 / 신규 image 0 / 신규 baseline 0 / 텍스트 측 표면 정합 한정 = scope_reduced 자가 적용 baseline 1 호 박음.

## 1. 입력 / 영역

- F-20260503-region-names-as-korean-toponyms (regions-v1.1 baseline 박음 후 must_fix #1·#2 art-director 영역 = visual-bible / terrain-visual-rules / illustration meta)
- orchestrator r13 punch list (tick-077, art-director 35 회 / 4 파일 + 41.7% 분담 박음)
- loremaster r14 (tick-076, lore 본체 측 thin-rename 1 호 = 형식 1:1 자기 적용 source)
- writer r14 (tick-078, writer 측 thin-rename 2 호 = 형식 1:1 자기 적용 source 추가)

영역 = art-director (scope_reduced = 단편 일러스트 한정). 본 자리 = **이미 박힌 시각 baseline 안 권역명 표면 정합 = scope_reduced 안 자리** (신규 시각 spec 0 + 신규 image 0 + 본문 골자 0 변경).

## 2. 처치 (35/35 회 1:1 sed)

### 2.1 매핑 (loremaster r14 1:1 짝 = regions-v1.1 §0 baseline 안 표)

| stale | new | 결 |
|-------|-----|----|
| 자국강 | 느릿내 | 청계천·정선천 결 (강가 한 줄 마을 안개 흐름) |
| 흙포구 | 마른포 | 부산포·동래포 결 (종이 가장자리 결) |
| 굳은마을 | 늘재 | 한계령·진부령 결 (비탈/분지 정착) |
| 빽빽골목 | 빽빽골 | 한국 골목 결 (짧음 박음) |

### 2.2 처치 자리 (4 파일 / 35 회)

| 파일 | 자국강 | 흙포구 | 굳은마을 | 빽빽골목 | 합계 |
|------|------|------|--------|--------|------|
| outputs/art/the-map-is-the-journey/visual-bible-v0.5.md | 2 | 1 | 3 | 2 | **8** |
| outputs/art/the-map-is-the-journey/terrain-visual-rules-v0.md | 3 | 1 | 5 | 3 | **12** |
| outputs/worldbuilding/.../stamp-17-3-narim-museum-12-tones-v1.png.meta.yml | 0 | 0 | 10 | 0 | **10** |
| outputs/worldbuilding/.../stamp-17-4-yugyeong-yuri-walked-together-v1.png.meta.yml | 5 | 0 | 0 | 0 | **5** |
| **합계** | **10** | **2** | **18** | **5** | **35** |

치환 명령:
```
sed -i -e 's/자국강/느릿내/g' -e 's/흙포구/마른포/g' -e 's/굳은마을/늘재/g' -e 's/빽빽골목/빽빽골/g' <each file>
```

## 3. 측정 검증 (post-sed)

```
$ grep -Ec '자국강|흙포구|굳은마을|빽빽골목' <4 파일>
→ 0 / 0 / 0 / 0 = stale 4 권역명 0 회 / 0 파일 (art-director 영역 100% 도달)

$ grep -Eoc '느릿내|마른포|늘재|빽빽골' <4 파일>
→ 8 / 12 / 10 / 5 = new 4 권역명 35 회 / 4 파일 (1:1 매핑 정합)
```

| 자리 | orch r13 baseline | post art-director r12 (본 tick) | Δ |
|------|--------------------|----------------------------------|----|
| stale 4 권역명 회 (전체) | 84 (post-r14) → 70 (post-writer-r14) | 35 | -35 (-50.0% post-writer-r14 / -76.2% post-r14) |
| stale 4 권역명 파일 (전체) | 17 → 11 | 7 | -4 |
| art-director 영역 stale 회 | 35 | 0 | -35 (art-director-side 100% 도달) |
| art-director 영역 stale 파일 | 4 | 0 | -4 |
| 잔여 영역 수 | 3 (art-director / critic / implementer post-writer) | 2 (critic / implementer) | -1 |

## 4. 영역 / 룰 검수

- **scope_reduced 자가 적용 baseline 1 호 박음** = art-director 영역 안 *단편 일러스트 한정* 룰 자가 적용 = (a) 신규 visual spec 0 (b) 신규 image 0 (c) 신규 baseline 0 (d) 본문 골자 0 변경 (e) 텍스트 측 표면 정합 한정 = scope_reduced 안 처치 자리 1 호 박음.
- **thin-rename mode 자가 적용 3 호 사례 박음** = loremaster r14 (1 호) + writer r14 (2 호) + 본 art-director r12 (3 호) = **정식 룰 임계 도달** (≥ 3 호 = cy-003 진화 룰 후보 정식 박음 자리).
- **R0 ack → 처치 격상 5 단계 자리 분리 박음 1 호 사례** = orch r12 ack → loremaster r14 처치 → orch r13 측정 → writer r14 처치 → 본 art-director r12 처치 = 5 단계 자리 분리.
- **post-supersede 포인터 stale 처치 그물 7 호 도달 인접** (lore + writer + art-director 측 동시 분리 = 처치 그물 5+1+1 = 7 호 인접 자리).

## 5. 영역 검수 (8 영역)

| 영역 | 침범 |
|------|------|
| art-director (scope_reduced) | ✓ (본 자리 = thin-rename 처치, scope_reduced 안 자가 적용) |
| writer | 0 ✓ (직전 r14 처치 자리 보전) |
| critic | 0 ✓ (잔여 30 회 잔존, 다음 round 인계) |
| voice-keeper | 0 ✓ |
| designer (frozen) | 0 ✓ |
| implementer (scope_reduced) | 0 ✓ (잔여 5 회 잔존) |
| loremaster | 0 ✓ |
| orchestrator | 0 ✓ |

→ 영역 침범 0/8.

## 6. 트립 / 매니페스토 검수

- forbidden-language §1~§8 grep 적중 0 (sed 치환 자체 도입 0).
- 매니페스토 7 키워드 본문 직접 인용 0/7 (본문 골자 0 변경 자가 적용).
- 트립 0 발화.
- 신규 사실 0 / 신규 사물 0 / 신규 인물 0.
- 신규 결정 0 / 종결 결정 0.
- self-check 8/8.
- 시간 도장 = 2026-05-03T04:10:01+00:00 (process started ≤ 2026-05-03T04:10:12+00:00).

## 7. 다음 큐

1. **critic r-N+1 (30 회 / 4 파일)** — 4 critique cold-read 자리 1:1 grep 치환 + cold-read 측정 항목 *한국 지명 결* 추가 발의 (must_fix #4 직접 응답).
2. **implementer r-N+1 (scope_reduced, 5 회 / 2 파일)** — site/index.html 2 회 (정적 cards 텍스트) + site/manifest.json 3 회 (auto-regen 후행, scripts/generate-site-manifest.sh 호출 시 회생).
3. **F-20260503-palm-reading deliberation** — 사용자 결정 자리 대기 (본체 변경 0 carry).
4. **writer r-N+2** — episode-10:126 *항상* 1 자리 사이드 처치 + retrofit 회차 풍경 단서 후행.
5. **orchestrator r-N+1** — post-art-director-r12 stale 재측정 baseline + 잔여 35 회 → 잔여 측정 baseline 박음.

## 8. self-check (8/8)

- [x] art-director scope_reduced 안 자리 (신규 visual spec 0 / 신규 image 0 / 신규 baseline 0)
- [x] thin-rename / 본문 골자 0 변경 (sed 치환 외 0 LOC 변경)
- [x] 35/35 회 1:1 sed 도달 (post-grep stale 0 / new 35 정합)
- [x] 영역 침범 0 (8 영역)
- [x] forbidden-language §1~§8 grep 적중 0
- [x] 매니페스토 7 키워드 본문 직접 인용 0/7
- [x] 신규 사실 / 사물 / 인물 / 결정 0
- [x] 시간 도장 ≤ 2026-05-03T04:10:12+00:00
