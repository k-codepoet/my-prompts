---
game_id: g-the-map-walker
artifact: engine-choice
version: v0
created_at: 2026-05-01
gen: 1
cycle: cy-001
round: 1
authored_by: implementer
source_charter: generations/gen-001/orgs/implementer.md
source_concept: outputs/design/g-the-map-walker/concept.md
source_fail_modes: outputs/design/g-the-map-walker/fail-modes-v0.md
source_visual_bible: outputs/art/the-map-is-the-journey/visual-bible-v0.1.md
candidates: [web, godot, unity]
recommended: web
proposes_decision: D-20260501-002
champion_primary: 자립
champion_secondary: [움직임, 시간이 곧 나]
trip_wire_fired: cost-value-asymmetry-vs-unity
---

# g-the-map-walker — Engine Choice (cost/value v0)

> charter §첫 task #1. designer r1 의 *기술 요구* (concept §7) + *페일 5 항* (fail-modes-v0) 을 비용 축으로 사용.
> 1 차 산출은 표 + 추천 + 결정 발의. *돌아가는 빌드* 가 invariant #2 (단일 진실 참조) + charter §빌드 성공 의 1 차 게이트.

---

## 1 평가 축 (designer 입력 → 비용·가치 축으로 변환)

**concept §7 기술 요구 (필수):**
1. 2D 종이 셰이더 — 매트 섬유 결 + 흙 그라디언트 (`#3A2D1E`–`#8B7355`) + 자국빛 광휘 (`#C8995A`, 1–3% 면적, 첫 자국 1 회 5–8% 예외)
2. 비동기 동행 자국 데이터 — 프리렌더 N ≥ 50 점, 좌표 cluster 매칭 (좌표 hash 금지)
3. 카메라 — 무릎-허리 시점, 3/4 후방 시점, **부감/미니맵/HUD 금지**
4. 입력 — 1–2 키 또는 1 탭. 입력 간격 → 흙 채도 직접 매핑
5. 멈춤 검출 — 8 초 임계 → 자국빛 *고요한 광휘* 1% 면적 3 초

**charter §빌드 성공 + §실현 가능성 + §코드 단순성 ⇒ 비용 축:**
| 축 | 1 줄 정의 | 가중치 |
|----|----------|-------|
| C1 셋업 비용 | 빈 프로젝트 → 첫 매트 종이 셰이더 1 픽셀 까지 시간 | 高 (1 일 budget) |
| C2 셰이더 수단 | 흙 hex 그라디언트 + 광휘 광역 셰이더 자유도 | 高 (concept 의 1 차 시각) |
| C3 비동기 데이터 로드 | JSON / 텍스트 / 바이너리 외부 자국 데이터 임포트 난이도 | 中 |
| C4 cold-reader 배포 | 외부 검수자가 빌드를 *경험* 하기까지 마찰 | 高 (critic r2 입력 직결) |
| C5 반복 속도 | 수정 → 화면 반영까지의 hot-reload 마찰 | 中 |
| C6 페일 방어 비용 | fail-modes-v0 §F1–F5 각 항을 막는 데 드는 추가 코드/도구 | 高 |
| C7 외부 의존도 | 라이센스 / 계정 / 빌드 인프라 (charter 1 차 챔피언 *자립*) | 高 |

**가치 축:**
| 축 | 정의 |
|----|------|
| V1 첫 30 초 시각 충실 | concept §2 의 6 단계가 시각으로 박힐 가능성 |
| V2 1 일 vertical slice | 1 인 + 1 일 budget 안에 §1 한 줄 빌드 가능성 |
| V3 cy-002+ 확장 경로 | 비동기 동행 → 봇 / 매칭 / 멀티 로 자라는 경로 비용 |

---

## 2 후보별 평가

### 2.1 Web (Pixi.js 또는 Three.js + 커스텀 WebGL2 fragment shader)

| 축 | 평가 | 1 줄 |
|----|------|------|
| C1 셋업 | **0.5 일** | `npm create vite` + Pixi 또는 Three.js + GLSL 1 패스 → 첫 픽셀까지 반나절. |
| C2 셰이더 | **GLSL 직접** | 종이 노이즈 + radial soft-additive 광휘. 흙 hex 매핑 = 텍스처 룩업 1 회. concept 의 *드물기* 룰을 GLSL `mix()` 1 줄로 박음. |
| C3 데이터 로드 | **`fetch('traces.json')`** | N=50 자국 좌표 + hex 인덱스. 1 줄. |
| C4 배포 | **URL 1 개** | `vite build` → 정적 호스팅 (5–10 KB JS + 자산). cold-reader 가 *링크 클릭* 으로 30 초 안에 검수 시작. **本 항 ≫ 다른 두 후보.** |
| C5 반복 | **HMR < 1 초** | 셰이더 수정 → 즉시 반영. |
| C6 페일 방어 | **F1 데이터셋 인라인 / F2 좌표 cluster (단순 KD-tree 또는 grid bucket) / F3 GLSL hex 폭 / F4 `requestAnimationFrame` 타이머 8s / F5 UI 부재 = HTML 부재** | 5 항 모두 *기본 도구* 로 막힌다. |
| C7 자립 | **OSS 풀 스택** | Pixi (MIT) / Three.js (MIT) / Vite (MIT). 라이센스 / 계정 / 스토어 무관. |
| V1 30 초 시각 | **충실** | GLSL 의 `fract(noise)` 1 줄로 종이 섬유. 자국빛은 `smoothstep(0.97, 1.0, lum)` 1 줄. |
| V2 1 일 빌드 | **여유** | 0.5 일 셋업 + 0.5 일 로직. 셰이더 디테일은 0.5 일 추가 polish 로 충분. |
| V3 cy-002+ | **WebSocket / WebRTC 네이티브** | 비동기 자국 → 실시간 자국 으로 자연 진화. |

**소계**: 7/7 축 통과. C2 의 셰이더 디버그 ergonomics 가 Godot 인스펙터보다 약간 약함 (1 차 약점) — 단 GLSL 직접 작성이 결과적으로는 *더 단순* (한 파일 = 한 책임).

---

### 2.2 Godot 4 (GDScript + GDShader)

| 축 | 평가 | 1 줄 |
|----|------|------|
| C1 셋업 | **1 일** | 프로젝트 / 노드 / 첫 셰이더 머티리얼까지 하루. 에디터 학습 시간 포함. |
| C2 셰이더 | **GDShader (GLSL 와 90% 동일)** | 종이 그라디언트 직접 박을 수 있음. 단 GDShader 의 일부 함수 차이 / 디버그 출력 채널 제한 — 광휘 1–3% 면적 룰의 정밀 튜닝에서 시간 추가. |
| C3 데이터 로드 | **`FileAccess.open` / `JSON.parse`** | 표준. |
| C4 배포 | **HTML5 export 5–15 MB** | 초기 다운로드 무거움. 네이티브 export 별도. cold-reader 마찰 = Web 대비 5–10x. |
| C5 반복 | **에디터 실행 빠름, 셰이더 hot-reload 부분 지원** | Web 보다 약간 느림. |
| C6 페일 방어 | **F1 Resource (JSON) / F2 좌표 cluster (직접 구현) / F3 GDShader / F4 `_process(delta)` / F5 UI 노드 부재** | 5 항 모두 막을 수 있음. F2 cluster 알고리즘은 GDScript 직접 구현 — Web 의 JS 와 비용 거의 동등. |
| C7 자립 | **OSS 풀 스택** (MIT) | 라이센스 / 계정 무관. **Web 과 동률**. |
| V1 30 초 시각 | **충실** | 단, 종이 결의 *매트* 무광 보장에 GDShader 의 광택 default 를 끄는 단계 1 회 필요. |
| V2 1 일 빌드 | **타이트** | 1 일 셋업 + 0.5 일 로직 = 1.5 일. 셋업 학습 비용 가산 시 *budget 초과 가능*. |
| V3 cy-002+ | **네이티브 + Web export 둘 다** | 봇 매칭 인프라 = 별도 백엔드 필요. |

**소계**: 6.5/7 축 통과. C1 + C4 가 Web 대비 약. **2D 종이/흙 셰이더 + URL 배포** 의 결에서는 Web 이 더 결 일치. cy-002+ 의 *네이티브 게임으로의 진화* 가 표적이 되면 Godot 가 결 일치.

---

### 2.3 Unity (URP 2D + Shader Graph)

| 축 | 평가 | 1 줄 |
|----|------|------|
| C1 셋업 | **2+ 일** | 프로젝트 + URP + 2D 렌더 파이프라인 + 첫 머티리얼까지 이틀. 1 일 budget *직접 초과*. |
| C2 셰이더 | **Shader Graph 또는 HLSL** | 자유도 충분. 단 1–3% 면적 광휘 룰의 GPU 비용 측정 / 튜닝 도구 셋업이 무거움. |
| C3 데이터 로드 | **Addressables / ScriptableObject** | 표준이나 셋업 비용. |
| C4 배포 | **WebGL build 10–30 MB + 30 s+ 로딩** | cold-reader 마찰 = Web 대비 30x+. |
| C5 반복 | **에디터 컴파일 느림** | 수정 → 재생까지 5–15 초 (대형 프로젝트로 자라면 분 단위). |
| C6 페일 방어 | **막을 수 있음** — 단 *비싸게.* 5 항 모두 추가 코드/도구. |
| C7 자립 | **계정 / Hub / Pro 라이센스 (수익 임계 시)** | charter 1 차 챔피언 *자립* 직접 위반 후보. **본 축이 Unity 의 결정적 약점.** |
| V1 30 초 시각 | **과대** | 2D 종이/흙 1 인 vertical slice 에 비해 엔진 무게 비례 비용 5x+. |
| V2 1 일 빌드 | **불가능** | 셋업만 1 일 budget 초과. |
| V3 cy-002+ | **모바일 / 콘솔 진출 시 가치** | cy-001 의 결로는 *오버엔지니어링*. |

**소계**: 4/7 축 미달. designer r1 §7 의 *비례 비용 과대* 와 결 일치. **트립와이어 #1 발화 후보 = 본 후보.**

---

## 3 매트릭스 요약

| 축 | Web | Godot | Unity |
|----|-----|-------|-------|
| C1 셋업 (1 일 budget) | ✅ 0.5 일 | ⚠️ 1 일 | ❌ 2+ 일 |
| C2 셰이더 자유도 | ✅ GLSL 직접 | ✅ GDShader | ✅ Shader Graph/HLSL |
| C3 비동기 자국 데이터 | ✅ fetch() | ✅ FileAccess | ⚠️ Addressables 셋업 |
| C4 cold-reader 배포 | ✅ URL 1 개 | ⚠️ 5–15 MB HTML5 | ❌ 10–30 MB + 긴 로딩 |
| C5 반복 속도 | ✅ HMR < 1 s | ⚠️ 부분 | ❌ 5–15 s+ |
| C6 페일 5 항 방어 비용 | ✅ 기본 도구 | ✅ 표준 | ⚠️ 비례 비용 |
| C7 자립 (라이센스/계정) | ✅ OSS 전체 | ✅ OSS 전체 | ❌ 계정/라이센스 |
| V1 30 초 시각 충실 | ✅ | ✅ | ⚠️ |
| V2 1 일 vertical slice | ✅ 여유 | ⚠️ 타이트 | ❌ 불가 |
| V3 cy-002+ 확장 | ✅ WebSocket/WebRTC | ✅ 네이티브 + Web | ⚠️ 모바일/콘솔 (cy-001 결 무관) |

**합계 (대략)**: Web 10/10 · Godot 7.5/10 · Unity 3.5/10.

---

## 4 트립와이어 (charter §트립와이어)

charter §트립와이어 3 종 자가 검사:

| 트립 | 자가 진단 | 결과 |
|------|---------|------|
| **C1 비용/가치 비대칭 (5 배 싸게 동등 효과)** | Unity 셋업 = 2+ 일 vs Web 셋업 = 0.5 일 → **4–5 배 싸게 동등 시각·동등 페일 방어**. 1 일 budget 직접 초과. concept §7 의 *비례 비용 과대* 와 결 일치. | **🔥 발화** — 본 표가 정식 발화 자리. 본 라운드의 1 차 발의 사항. 발화 형식: *"Unity 후보는 Web 대안으로 5 배 싸게 동등 효과."* |
| 메카닉이 추상적 명령에 머물러 시스템 분해 안 됨 | designer r1 의 fail-modes-v0 가 5 항 모두 *입력·상태·출력* 으로 분해 가능 (F1 데이터셋 N≥50, F2 cluster 룰, F3 hex 폭, F4 8s 타이머, F5 UI 부재). | **미발화** |
| 새 워크플로우 manual-run 미통과 자동화 시도 | 본 산출물은 cost/value 표 — 자동화 시도 0. 엔진 결정 후 *수동 빌드 1 회* 가 manual-run 게이트. | **미발화** |

---

## 5 추천 + 결정 발의

### 5.1 1 차 추천: **Web (Pixi.js + 커스텀 WebGL2 fragment shader)**

**근거 — charter 챔피언 정렬:**
- *실현 가능성*: 1 일 vertical slice budget 안에 §1 한 줄 빌드 도달. Godot 는 타이트, Unity 는 불가.
- *코드 단순성*: 한 GLSL 파일 = 한 책임 (종이 + 흙 + 광휘). HTML 1 + JS 2–3 모듈. 의존 그래프 *읽힌다*.
- *빌드 성공*: `vite build` → URL 1 개. critic r2 의 cold-reader 30 초 시뮬레이션이 *링크 한 번 클릭* 으로 즉시 가능.
- *자립 (1 차 매니페스토)*: OSS 전체 스택, 라이센스 / 계정 / 스토어 0.

**스택 결 (1 차):**
- 빌드: Vite + TypeScript
- 렌더: Pixi.js (2D 우선, hex 그라디언트 + 광휘에 충분) — *또는* Three.js (cy-002+ 3D 진화 여지). v0 은 Pixi 권고.
- 셰이더: 커스텀 WebGL2 fragment — 종이 노이즈 1 패스 + 자국 hex 룩업 1 패스 + 광휘 soft-additive 1 패스
- 데이터: `fetch('traces.json')` — N≥50 자국 좌표 + hex 인덱스
- 입력: KeyboardEvent + Pointer (모바일 탭 자동)

### 5.2 결정 발의 — Type B (charter §첫 task #1: *결과 미정 시 Type B 결정 발의*)

본 표는 implementer 의 *코드 단순성 / 자립* 축 1 차 추천이다. 단 본 결정은 cy-001 이후의 모든 vertical slice 인프라를 결정하므로 — 본 라운드는 *추천만* 발행하고 **사용자 / orchestrator 의 confirm 또는 override 를 Type B 로 발의**한다.

→ `decisions/open/D-20260501-002.yml` (Type B — Web vs Godot — Unity 는 트립와이어 발화로 후보 제거)

**발의 근거 (Type B 인 이유):**
- Type A (Go/No-Go) 가 아니다 — 두 옵션 (Web / Godot) 모두 charter 챔피언 영역 안에서 통과.
- Type C (비전·시드·G-* 영향) 가 아니다 — 엔진 선택은 cy-001 운영 차원, constitution 영향 0.
- 결정 자체는 *cold-reader 배포 마찰 vs 네이티브 진출 여지* 의 가치 판단 — 사용자 페이스 우선 항목.

---

## 6 다음 task (cy-001 후속 — implementer 자기 발행)

D-20260501-002 응답 후:
- **#A walk-trace 시스템 1 페이지 사양** (charter §첫 task #2) — 입력·상태·출력만 1 페이지. 비동기 동행 자국 매칭 = cluster (좌표 hash 금지) 룰 명시. 멀티플레이 동기화·계정·저장은 v2 미룸 명시.
- **#B manual-run 체크리스트** (charter §첫 task #3) — 30 초 부팅 / 30 초 안에 ③ 노드 (겹친 자국) 도달 / 충돌 0 / 빌드 1 분 안에 cold-reader 손에 / 자국빛 면적 1–3% 룰 통과 등 5 항. my-life Iron Law manual-run 1 회 통과 게이트.
- **#C 1 차 prototype 빌드** — 위 사양 + 체크리스트 통과 후. critic r2 의 vertical slice 가중치 평가 직접 입력.

D-20260501-002 미응답 (사용자 페이스) 시:
- implementer 차기 라운드는 *엔진 비독립* task — fail-modes §F2 cluster 매칭 알고리즘 의사코드, F3 셰이더 1 패스 의사코드 — Web/Godot 양쪽 호환 형태로 발행 가능.

---

## 7 협업 인계

- **designer**: §3 매트릭스 + §5.1 추천이 designer r2 의 *vertical slice 표적 옹호* (concept §9 #A) 와 정합 — *움직임 게임 측 옹호* 에 *1 일 안에 cold-reader 가 검수 가능* 입력 추가.
- **art-director**: 셰이더 결정은 art-director §9 트립 (자국빛 과잉) 의 1 차 책임. Web/Godot 어느 쪽이든 §C2 평가 동일 — 셰이더 *값* (광휘 1–3%, hex 폭, 매트 무광) 의 결정은 art-director 영역.
- **critic**: §C4 cold-reader 배포 마찰이 critic r2 의 vertical slice 가중치 평가 *진입 장벽* 축 직접 입력. URL 1 개 = 진입 장벽 최소.
- **voice-keeper**: 본 결정은 매니페스토 정렬 측정 대상 아님 — 단 *자립* (OSS 라이센스/계정 0) 키워드의 *시스템 차원* 메타포로 voice-keeper r2 가 audit 가능.
- **loremaster**: 영향 0 (lore 미경유). bible v0.2 의 *축복* 결 보강과 무관.
- **orchestrator**: D-20260501-002 발의 후 결정 큐 1/5. cy-001 후반의 vertical slice 표적 결정 (Type B 두 번째) 은 critic r2 도착 후 분리 발의 권고 — 큐 동시 폭주 회피 룰 (orchestrator-r1 §정렬 모니터링) 준수.

---

## 8 메타

- 본 v0 은 cost/value 표 1 페이지 + 추천 + Type B 발의. *돌아가는 빌드* 1 차 코드는 D-20260501-002 응답 후 시작.
- 본 라운드 트립와이어 발화 1 건 (Unity 후보 cost/value 비대칭) — Unity 는 본 v0 에서 *cy-001 후보 제외*. cy-002+ 모바일/콘솔 진출 시 재평가 가능.
- 영역 위반 0 — 시각 셰이더 *값* 결정은 art-director 인계, vertical slice 표적 결정은 critic r2 인계.

---

> 본 v0 은 implementer r1 의 *charter §첫 task #1*. r2 는 D-20260501-002 응답 후 walk-trace 시스템 사양 + manual-run 체크리스트 + 1 차 prototype.
