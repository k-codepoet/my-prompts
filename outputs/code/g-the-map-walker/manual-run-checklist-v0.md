---
game_id: g-the-map-walker
artifact: manual-run-checklist
version: v0
created_at: 2026-05-01
gen: 1
cycle: cy-001
round: 1
authored_by: implementer
source_charter_task: implementer #3
source_concept: outputs/design/g-the-map-walker/concept.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_spec: outputs/code/g-the-map-walker/walk-trace-spec-v0.md
constitution_anchor: invariant #7 (manual-run 1 회 통과 우선)
---

# manual-run 체크리스트 v0

> charter §첫 task #3. vertical slice 가 my-life Iron Law 의 *manual-run 1 회 통과* 를 충족했다고 *선언* 하기 위한 객관적 5 항.
> 본 5 항 모두 통과 시 — implementer 가 *"manual-run 1 회 통과"* 를 선언 가능. 통과 전 자동화 / cron 등록 금지 (constitution invariant #7).

---

## 통과 기준 — 5 항

### ✅ 1. 부팅 시간 ≤ 60 s

**측정**: `vite build && python -m http.server` (또는 임의 정적 호스트) → 브라우저 URL 접속 → Walker 가 화면에 보일 때까지의 시간.

**임계**: 60 초.

**근거**: charter §빌드 성공 + concept §2 *0–3 s 빈 새벽*. cold-reader 가 1 분 안에 *시작 화면* 에 닿지 못하면 critic r2 의 첫 5 분 시뮬레이션이 시작도 못 함.

**측정 도구**: 브라우저 Performance 탭 + 수동 스톱워치. 측정 결과는 `outputs/code/g-the-map-walker/manual-run-log-<date>.md` 에 기록.

---

### ✅ 2. 30 초 안에 ③ 노드 (겹친 자국) 도달

**측정**: 새 세션 시작 → 첫 입력 → 동행 자국 1 점이 화면 안에 페이드인 될 때까지의 시간.

**임계**: 30 초 (designer fail-modes §F1 의 *30 초 안에 1 점 보장 룰* 직접 인용).

**근거**: concept §2 25–30 s 시각이 본 게임의 1 차 후크. 30 초 안에 ③ 노드 미도달 = vertical slice 의 *움직임 → 연대* 진동 미발생 = manual-run 실패.

**측정 도구**: 수동 플레이 + 스톱워치. 동행 자국 시드는 walk-trace-spec §O4 의 cluster 매칭 룰 따라 *플레이어 첫 5 자국 평균 ± 종이너비/8* 안에 등장해야 함.

---

### ✅ 3. 5 분 세션 안 충돌 0

**측정**: 5 분 연속 플레이. 어느 메카닉도 (걸음 / 자국 박힘 / 멈춤 광휘 / 동행 자국 / 카메라) 충돌 / 콘솔 에러 / 흰 화면 / 60 fps 유지 실패 없이 작동.

**임계**: 5 분 세션 안 콘솔 error 0, fps ≥ 50 평균.

**근거**: charter §빌드 성공 — *돌아가는 빌드* 의 1 차 검증. cold-reader 가 검수 중 게임이 멈추면 검수 자체가 중단.

**측정 도구**: Chrome DevTools Console + Performance Monitor. 캡처를 manual-run-log 에 첨부.

---

### ✅ 4. cold-reader 검수 마찰 ≤ 60 s (URL 클릭 → 첫 자국 박힘)

**측정**: implementer 가 외부 검수자 (charter 외 1 인 — 본 시스템 미접속) 에게 URL 1 개 전달 → 검수자가 URL 클릭 → 첫 자국 박힘까지의 시간.

**임계**: 60 초. 설치 / 회원가입 / 다운로드 / 권한 요청 부재 — *URL 1 개로 충분*.

**근거**: D-20260501-002 응답 = `web` 의 1 차 가치 (cost/value §C4). critic r2 의 vertical slice 가중치 평가 *진입 장벽* 축 직접 입력. 본 항이 manual-run 의 *외부 시선* 게이트.

**측정 도구**: 외부 1 인 + 수동 스톱워치. cold-reader 의 첫 30 초 즉답 ("이 게임이 뭐야?") 도 함께 기록 → critic r2 입력으로 직접 사용.

---

### ✅ 5. 자국빛 면적 1–3% 룰 통과 (첫 자국 1 회 예외 5–8%)

**측정**: 5 분 세션 종료 후 화면 캡처 분석 — 자국빛 (`#C8995A`) 픽셀 면적 / 자국 면적 비율.

**임계**:
- 첫 자국 1 점: 자국빛 면적 = 5–8% (fail-modes §F3 *첫 자국 임팩트* 룰).
- 둘째 자국부터: 자국빛 면적 = 1–3% (visual-bible §2 + fail-modes §F3 룰).
- 멈춤 광휘 (idle_glow): 1% 면적, 3 s 페이드 (fail-modes §F4 *쉼의 자리* 룰).

**근거**: art-director §9 트립 (자국빛 과잉) 의 manual-run 게이트. *드물기 → 없음* 변질 (F3) + *과잉 → 휘황* 변질 둘 다 본 항이 막음.

**측정 도구**: 캡처 + ImageMagick / Pillow histogram (`#C8995A` 임계 픽셀 카운트). 자동화 가능 — manual-run 통과 후 cy-002+ 자동화 후보.

---

## 통과 선언 형식

5 항 모두 통과 시 implementer 가 발행:

```yaml
# outputs/code/g-the-map-walker/manual-run-log-<YYYYMMDD>-<seq>.md
artifact: manual-run-log
game_id: g-the-map-walker
ran_at: <ISO 8601>
ran_by: <human or system>
checklist_results:
  - id: 1
    name: 부팅 시간
    threshold: ≤ 60 s
    measured: <초>
    pass: true | false
  # ... 5 항 ...
overall_pass: true | false
notes: <자유 코멘트>
artifacts:
  - <스크린샷 경로>
  - <DevTools 캡처 경로>
  - <외부 cold-reader 후기 경로>
```

**5/5 통과** 시 — *"manual-run 1 회 통과 — vertical slice 자동화 게이트 해제"* 선언. constitution invariant #7 만족.

**4/5 이하** 시 — 미통과 항목 1 차 책임 (designer / art-director / implementer 중) 에게 인계 + 다음 manual-run 시점까지 자동화 금지 유지.

---

## 협업 인계

- **designer**: 본 5 항 모두 designer concept §2 + fail-modes §F1–F5 직접 인용. 차기 designer r2 의 *5 분 세션 시퀀스 v0* 가 본 체크리스트의 §3 (5 분 세션 안 충돌 0) 의 시퀀스 입력.
- **art-director**: §5 (자국빛 면적 룰) 의 1 차 책임. visual-bible v0.1 의 §2 폭 + §6 그라디언트 룰의 *manual-run 게이트* 자리.
- **critic**: §4 (cold-reader 검수 마찰) 의 cold-reader 후기는 critic r2 vertical slice 가중치 평가에 직접 입력.
- **voice-keeper**: 본 체크리스트는 매니페스토 정렬 측정 대상 아님. 단 §3 (5 분 세션 안 충돌 0) 통과 시 designer concept 의 *축복* 점수 재측정 가능 자리.

---

> 본 v0 은 5 항. cy-001 또는 cy-002 후속에서 8–10 항까지 확장 가능. 매 항은 *측정 + 임계 + 근거 + 도구* 형식 유지.
> 본 체크리스트 통과 전 — cron 등록 / 자동 빌드 / 자동 배포 등 자동화 시도 0 (constitution invariant #7).
