---
world_id: the-map-is-the-journey
artifact: tone-and-manner-lock
version: v0
created_at: 2026-05-02
gen: 1
cycle: cy-003
round: 2
authored_by: art-director (사용자 직접 발의 — yugyeong v1 실사 드리프트 대응)
trigger_incident: "캐릭터 시트 8 장 중 유경 v1 만 sumukhwa 톤 어긋나 실사로 생성됨 (2026-05-02). v2 재생성 시 negative prompt + sumukhwa 키워드 강화로 정정."
applies_to:
  - outputs/worldbuilding/the-map-is-the-journey/illustrations/*.png
  - outputs/art/the-map-is-the-journey/*.png
binds:
  - generations/gen-001/orgs/art-director.md (트립와이어 §medium 톤 드리프트)
  - outputs/art/the-map-is-the-journey/visual-bible-v0.4.md (§11.2 인물 hex baseline)
champions_keywords_primary: [축복]
champions_keywords_secondary: [움직임, 방향]
constitution_invariant_check: |
  - #1 매니페스토 정렬: 7 키워드 본문 직접 인용 0.
  - #2 단일 진실: visual-bible v0.4 §11.2 hex 1:1 인용. 신규 사실 0.
---

# Tone & Manner Lock — visual-bible v0.4 baseline (cy-003 r2)

> 본 lock 은 *the-map-is-the-journey* 세계의 모든 일러스트가 *같은 세계의 한 매체* 로 보이도록 박는 prompt + negative prompt baseline. art-director 가 `generate_image` 호출 시 의무 적용.

---

## §1 매체 (medium) baseline

**Korean traditional ink-and-wash painting (sumukhwa, 수묵화) on rice paper**.

painterly brushwork visible, ink wash texture. *NOT* photograph / 3D render / CGI / hyperrealism.

---

## §2 필수 prompt 키워드 (모든 호출 의무)

다음 4 키워드가 *모든* prompt 에 포함되어야 함:

1. `traditional Korean ink-and-wash painting (sumukhwa)` — 매체 명시
2. `painterly brushwork visible` — 손글씨 결 명시
3. `restrained sepia and dust-ochre palette` — 팔레트 baseline
4. `NOT photograph` — 모델 드리프트 차단 (prompt 끝쪽에 명시)

prompt 시작 부분에 *traditional Korean ink-and-wash painting (sumukhwa)* 박는 것이 톤 강도 가장 높음 (모델이 첫 부분에 가중치).

---

## §3 필수 negative prompt (모든 호출 의무)

```
photorealistic, photograph, realistic skin texture, 3D render, CGI, hyperrealism, modern photograph, studio photo, glossy, plastic skin
```

`z-image-turbo` workflow 의 `negative_prompt` 인자에 의무 박음. 이 키워드들이 빠지면 모델이 실사 톤으로 미끄러질 위험.

---

## §4 인물별 hex 팔레트 (visual-bible v0.4 §11.2 직접 인용)

| 인물 | hex | 결 |
|------|-----|-----|
| 해온 | `#5C4A36` | 먼지길 중앙 |
| 정해 | `#3A2D1E` | 진한 정중앙 (8 자 중 가장 진함) |
| 나림 | `#7A6447 ~ #8B7355` | 옅은 회갈 |
| 유경 | `#5C4A36` | 먼지길 중앙 + 골든 오커 힌트 |
| 인규 | `#42321F` | 진한 옅음 |
| 연강 | `#5A4A35` | 먼지길 옅은 폭 |
| 희재 | `#3F3525` | 진한 정중앙 옅음 (정해 0.05 폭 옅게) |
| 유리 | `#C8995A` | 자국빛 + 아이색조 |

prompt 에 인물 hex 명시 (예: *palette around #5C4A36*).

---

## §5 워크플로우 baseline

| 모델 | 자리 | 톤 검수 |
|------|-----|--------|
| `z-image-turbo` | 1024×1024 — 현 baseline | sumukhwa 톤 안정 (단 yugyeong v1 = 실사 드리프트 1 호 발생, v2 정정) |
| `gpt-image-1.5` | 두 모델 페어리티 자리 (미박음) | 별도 톤 lock 박음 자리 |
| `nano-banana-2` | 보강 큐 | 별도 톤 lock 박음 자리 |

다른 모델 사용 시 모델별 톤 검수 후 별도 lock § 추가.

---

## §6 자가 검사 의무

`generate_image` 호출 후 결과 image 가 sumukhwa 톤 위반 시 (실사 / 3D 등) **즉시 재생성**:

1. prompt 시작 부분에 sumukhwa 키워드 강조 박음
2. negative prompt 박음 (§3)
3. prompt 끝에 `NOT photograph` 명시
4. 같은 path 에 v 덮어쓰기 + meta.yml 갱신 (caption 에 *재생성 자리* 명시)

---

## §7 발화 형식 (트립 발화)

art-director 가 톤 위반 발견 시:

> *"이 에셋은 tone-lock §1 매체 baseline 위반 (예: 실사 드리프트). 재발주 — sumukhwa 키워드 + negative prompt 강화."*

---

## §8 cy-003 r2 baseline 박음 자리

- yugyeong v1 = 실사 드리프트 1 호 사례 (2026-05-02 23:xx)
- yugyeong v2 = sumukhwa 톤 정정 도달 (2026-05-02 24:xx)
- 본 lock = 사용자 직접 발의 (D-20260502-yugyeong-tone-drift) 응답 자리

---

## 보강 큐 (cy-003+)

1. 다른 모델 (gpt-image-1.5 / nano-banana-2) 의 sumukhwa 톤 검수 + 별도 lock § 추가
2. 인물별 외형 hex 외 *분위기 / 자세 / 복식* baseline (현재는 hex + 자세 일부만)
3. 회차 대표 일러스트 톤 lock 박음 (캐릭터 시트와 결 인접)
4. 자동화 자리 — `generate_image` 호출 시 §2 + §3 자동 prepend (스크립트 또는 wrapper)
