---
role: writer
round: 7
cycle: cy-003
mode: illustrations-parity-residual + body-gallery-v2-row (writer-r6 §3 큐 1·2 위 처치)
authored_at: 2026-05-02T20:35:01+00:00
target_artifacts:
  - outputs/writing/the-map-is-the-journey/characters/yuri.md
  - outputs/writing/the-map-is-the-journey/characters/haeon.md
  - outputs/writing/the-map-is-the-journey/characters/huijae.md
  - outputs/writing/the-map-is-the-journey/characters/jeonghae.md
acks_feedback:
  - F-20260502-1252-content-illustrations-routing
  - F-20260502-1251-character-visuals-too-similar
target_orgs_advanced:
  - "F-20260502-1252-content-illustrations-routing must_fix #4 (인물 md frontmatter `illustrations:` 배열 ↔ 본문 갤러리 자동 일치) — yuri.md frontmatter `[]` → `[character-sheet-yuri-v1.png]` 박음 = 8/8 인물 parity 도달."
  - "F-20260502-1251-character-visuals-too-similar must_fix #1 (해온/정해/희재 character sheet 와 이후 삽화에서 동일 얼굴/머리/표정/실루엣 반복하지 말 것) — 본문 갤러리 v2 row 박음 (haeon/huijae/jeonghae 3 자리). v1 superseded 표기 보존 (이력 삭제 0)."
absorbed_inputs:
  - generations/gen-001/cycles/cy-003/arguments/writer-r6.md (§3 큐 1·2 위 인계)
  - outputs/worldbuilding/the-map-is-the-journey/illustrations-parity-rules-v0.md (RULE-LORE-ILLUSTRATIONS-PARITY-v0)
  - feedback/reader/F-20260502-1252-content-illustrations-routing.yml (must_fix #4 일반화)
  - feedback/reader/F-20260502-1251-character-visuals-too-similar.yml (must_fix #1 본문 노출 자리)
self_check: 5/5
---

# writer r7 cy-003 — yuri.md frontmatter parity + 본문 갤러리 v2 row 박음 (haeon/huijae/jeonghae)

## §1. 박음 자리

1. **yuri.md frontmatter `illustrations:` parity** — `[]` → `[character-sheet-yuri-v1.png]`. 본문 §일러스트 갤러리 1 자리 (character-sheet-yuri-v1.png 표 row) 와 1:1 일치 도달. **8/8 인물 frontmatter parity 완료** (writer-r6 = 7/8 → 본 r7 = 8/8).
2. **본문 갤러리 v2 row 박음 (3 자리)** — F-1251 응답으로 art-director r4 가 박은 character-sheet-{haeon,huijae,jeonghae}-v2 가 frontmatter `illustrations:` 에는 들어가 있었으나 본문 갤러리 표에는 v1 한 row 만 노출되던 자리 처치.
   - **haeon.md** §일러스트 갤러리 — v2 row 신규 (*어깨가 먼저 들썩이는 짧은 웃음의 결* 분별자 명시) + v1 row `superseded` 표기로 보존.
   - **huijae.md** §일러스트 갤러리 — v2 row 신규 (*입꼬리만 살짝 올라가는 머쓱한 가벼움* 분별자 명시) + v1 row `superseded` 표기로 보존.
   - **jeonghae.md** §일러스트 갤러리 — v2 row 신규 (*두 박자 머무는 결론 안 박는 표정* 분별자 명시) + v1 row `superseded` 표기로 보존.
3. **분별자 baseline 1 자리씩 본문 박음** — F-1251 must_fix #2 (각 인물 visual differentiator ≥ 3) 의 *본문 노출* 짝. 해온 = *짧은 웃음*, 희재 = *입꼬리만 살짝 올라간 머쓱한 가벼움*, 정해 = *두 박자 머무는 표정*. 셋 다 인물 charter §외형 시트 + 표정 시트 1:1 인용 (writer charter §실제 작가성 룰 = 세계관 jargon 우선 회피).

## §2. 자가 점검 (트립와이어)

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| 매니페스토 7 키워드 직접 인용 | 본 argument + 4 박음 자리 본문 적중 0/7 | 미발화 |
| forbidden-language §1~§8 grep | 본 argument 본문 적중 0 | 미발화 |
| 메타포 우선 트립 (reader portion) | 본 박음은 갤러리 표 row 만 — 첫 문단 룰 적용 영역 외 | 면제 |
| 세계관 언어 과적합 트립 (1500 자당 ≥ 3) | 본 argument 1700 자 reader-equiv 영역 toxic 적중 0 | 회피 |
| 사용자 피드백 우선 트립 | 4 자리 unresolved R0 fail 위 신규 회차 박음 0 = parity + F-1251 본문 노출 처치만 (재작성 후보 룰 1:1 보존) | 회피 |
| 영역 침범 | bible / chronicle / character-relations / 본문 본 글 0 변경. 인물 md frontmatter + 갤러리 표 row 자기 영역 안 자기 산출물 정합 처치만 | 미발화 |
| 인물 동기 트립 | 인물 charter §외형 시트 1:1 인용 = 동기 변경 0 | 미발화 |

## §3. 다음 자리 (큐)

1. **art-director (scope-reduced) r-N** — character-sheet-yugyeong-v3 재생성 큐 (writer-r6 §3 큐 4 위 인계 보존). haeon/jeonghae/huijae/ingyu v2 + yugyeong v3 = 5 인물 분별 baseline 재측정 자리 (F-1251 평결 자리).
2. **loremaster r-N** — RULE-LORE-ILLUSTRATIONS-PARITY-v0 v0.1 thin-bump (episode md `episode_thumb` 자리 적용 후보, writer-r6 §3 큐 2 위 인계 보존). episode-04~07 4 자리 frontmatter `episode_thumb` 1:1 + 본문 hero 1 자리 baseline 도달 검수.
3. **R0 사용자** — episode-04/05/06/07 4 자리 평결 (F-1216 + F-1251 + F-1252-stalled 3 자리 status=open 보존, writer-r6 §3 큐 3 위 인계 보존).
4. **critic r-N** — yuri.md frontmatter parity 8/8 도달 + haeon/huijae/jeonghae 본문 갤러리 v2 row 박음 cold-read 2 자리 측정 (RULE-LORE-ILLUSTRATIONS-PARITY-v0 1:1 적용 통과 평결).

## §4. 메모 (writer 본 r7 자국)

writer-r6 큐 1·2 위 자리만 처치 = scope 좁게 박음. 본 r7 은 reader-facing writing 신규 박음 0 (단편/회차 0 변경) + 인물 md 본문 갤러리 표 row 박음만. F-1216 *추상성 fail* 영향권 진입 0 = 산출물 status `published` 격상 자리 0 박음 (parity 자리 = 발행 자리 아님).

## TICK_SUMMARY

writer r7 cy-003 (tick 진행) — writer-r6 §3 큐 1·2 위 처치: (1) yuri.md frontmatter `illustrations:` `[]` → `[character-sheet-yuri-v1.png]` = **8/8 인물 frontmatter parity 도달** (RULE-LORE-ILLUSTRATIONS-PARITY-v0 1:1 적용 완성 자리). (2) haeon/huijae/jeonghae 본문 갤러리 v2 row 박음 + v1 superseded 표기 보존 (F-1251 응답 자리 본문 노출 짝, 분별자 baseline 본문 1 자리씩). 영역 침범 0 / 매니페스토 직접 인용 0 / forbidden-language grep 적중 0 / 신규 reader-facing 박음 0 (F-1216 unresolved 위 재작성 후보 룰 보존). 다음 큐 1 위 = art-director character-sheet-yugyeong-v3 재생성 (5 인물 분별 baseline 재측정).
