---
role: critic
cycle: cy-002
round: 4
created_at: 2026-05-02T22:10:00+00:00
creator: tick:cy-002/066
mode: charter-update  # charter-update mode 1 호 사례 박음 (tick-065 system-capability 후속 1 차 정합)
artifacts:
  - generations/gen-001/orgs/critic.md  # §트립와이어 1 자리 신설 + §Cold-read protocol 신설
inputs_read:
  - outputs/alignment/the-map-is-the-journey/human-readability-principle-v0.md  # tick-065 박음
  - generations/gen-001/orgs/voice-keeper/audit-rules-v0.md §7  # tick-065 박음 — 측정 측
  - generations/gen-001/orgs/writer.md  # tick-065 §챔피언 4 + §트립와이어 2 자리 신설 (이미 박힘)
  - generations/gen-001/cycles/cy-002/ticks/tick-065.md  # 누락 자리 §"critic-r3 cold-read protocol 갱신 미완"
  - generations/gen-001/cycles/cy-002/arguments/critic-r2.md  # 가짜 통과 baseline (15/15 첫 5분 즉답 — 사용자 진단으로 false positive)
  - generations/gen-001/cycles/cy-002/arguments/critic-r3.md  # image 매체 cold-read 5/5 (§7 면제 = visual)
self_check: 6/6
trip_fired: 0
trip_intercepted:
  - "critic 영역 — 외부 시선만 박음. writer 차터·voice-keeper 룰 본문 변경 0 (tick-065 박음 참조만)."
  - "기존 5 분 즉답률 protocol 폐기 0 = 누적 박음 위에 §7 의무 추가 (덧대기, 교체 아님)."
forbidden_grep: 0  # forbidden-language §1~§8 적중 0 자리
manifesto_inline_quotes: 0  # 본문 직접 인용 0
---

# critic r4 — Cold-read protocol §7 의무 추가 (charter-update mode)

## 1. 진입 자리

tick-065 (system-capability-announcement, writer + voice-keeper + critic 3 조직 공동) 가 `human-readability-principle-v0.md` 박음 후 *알려진 한계* 4 자리 중 **§"critic-r3 cold-read protocol 갱신 미완"** 자리 직접 응답.

tick-065 박음 자리 분포:
- writer.md = §챔피언 4 + §트립와이어 2 자리 박음 ✓
- voice-keeper/audit-rules-v0.md = §7 신설 (5 항목 측정표) ✓
- critic.md = **0 변경** ← 본 r4 진입 자리

본 r4 = critic 차터 후속 1 차 정합 박음.

## 2. 본 r4 박음 자리 (3 자리)

### 2.1 §트립와이어 1 자리 신설 (4 → 5)

> 5 분 즉답 통과 + 감정 표면 부재 (critic-r2 cy-002 가짜 통과 패턴, tick-065 박음) — *읽었나* 만 측정, *감정이 잡혔나* 미측정. 해소 = §cold-read protocol §7 의무.

발화 형식 1 자리 추가:
> *"5분 안에 읽기는 했다 — 그러나 §7 N 항 미통과로 감정이 표면에 잡히지 않았다."*

### 2.2 §Cold-read protocol 신설 (writing 카테고리 한정)

신설 §의 핵심 박음 자리:
1. **두 측정 의무 박음** — 5 분 즉답률 + §7 5 항목, *둘 다* 통과해야 산출물 통과.
2. **가짜 통과 패턴 정식 발화 자리** — 5 분 즉답률 통과 + §7 미통과 = §7-2 자리.
3. **카테고리 면제 박음** — 비-writing (worldbuilding 사양 / 시각 / 코드 / 결정 yaml / 메타 섹션) = §7 면제.
4. **5 인 페르소나 풀 일관성 박음** — critic r1/r2/r3 P1~P5 동일 풀 유지 (cy-002 charter 룰).

### 2.3 *charter-update* mode 1 호 사례 박음

cy-002 mode 분리 누적 사례:
- writer/loremaster/designer/implementer/art-director/voice-keeper/critic *role* mode = 기본
- loremaster *consistency-audit* mode (tick-061 1 호) + voice-keeper *audit-only* mode (tick-064 2 호) = mode 분리 박음
- loremaster *thin-patch* mode (tick-063 1 호) = mode 분리 박음
- art-director *spec / image 분리* mode (tick-060 1 호) = mode 분리 박음
- writer + voice-keeper + critic *system-capability-announcement* mode (tick-065 1 호) = 3 조직 공동
- **본 r4 *charter-update* mode 1 호 사례 박음** = 차터 본체 직접 박음 자리 분리

cy-002 진화 룰 후보 신규 = *system-capability-announcement → charter-update 후속 1 차 정합 박음 표준* (1 호 사례 = 본 r4).

## 3. 본 r4 가 *처치하지 않는* 자리 (영역 보전)

- writer 차터 본문 = tick-065 박음 자리 (본 r4 변경 0)
- voice-keeper §7 측정표 가중치 = voice-keeper 영역 (본 r4 변경 0)
- paired-dawns-v0 → v0.1 재작성 = writer r3 큐 1 위 (본 r4 변경 0)
- forbidden-dialogue-v0 / sideseat-dawn-v0 보존 = 사용자 명시 (본 r4 변경 0)
- 비-writing cold-read (visual / 게임 vertical slice / 결정 yaml) = 기존 protocol 유지 (§7 면제 박음)

## 4. 진화 룰 후보 신규 (본 r4 누적 3 자리)

- **B10 도입 사례 1 호** — *system-capability-announcement → charter-update 후속 1 차 정합 박음 표준* (tick-065 박음 후 한 발자국 안 차터 본체 정합).
- **A12 자가 적용 후보 1 호** — *3 조직 공동 박음 후 누락 1 자리 후속 정합 의무*. 본 r4 자체가 1 호 사례.
- **critic-r2 가짜 통과 패턴 = 측정 dimension 누락 회복 후 차터 박음 의무 1 호 사례** — 측정 누락 검출 → 측정 측 박음 (tick-065 voice-keeper §7) → cold-read 측 차터 박음 (본 r4) 3 단계 자리 분리.

## 5. 다음 자리 인계

- writer r3 cy-002 = paired-dawns-v0 → v0.1 재작성 (§7 5/5 PASS 임계, 큐 1 위)
- v0.1 박힘 후 critic r5 cy-002 = §cold-read protocol 첫 정식 적용 (5 분 즉답률 + §7 두 측정 동시 박음 1 호 사례 자리)

## 6. 자가 검사 (6/6)

- [x] 본 r4 = critic 영역만 박음 (writer / voice-keeper 차터 본문 변경 0)
- [x] tick-065 박음 자리 1:1 응답 (누락 §"critic-r3 cold-read protocol 갱신 미완" 직접 처치)
- [x] §트립와이어 신설 자리 = 사용자 발의 표현 1:1 보존 (paired-dawns-v0 사례 명시)
- [x] §Cold-read protocol 신설 자리 = voice-keeper §7 직접 참조 (덧대기, 교체 아님)
- [x] 면제 자리 명시 (비-writing 카테고리)
- [x] 매니페스토 직접 인용 0 + forbidden-language §1~§8 grep 적중 0
