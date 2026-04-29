# Prompt Source Library

이 폴더는 모델 공통 프롬프트의 진리의 원천입니다.

> 결과물은 여기 두지 않고 `../outputs/` 아래 모델별로 보관합니다.
> 각 카테고리 문서에 있는 이미지는 과거 생성 예시 또는 참고 출력이며, 현재의 공용 프롬프트 소스를 설명하기 위한 레퍼런스입니다.

---

## 📁 폴더 구조

```text
prompts/
├── README.md
├── game-views/                           ← 뷰 타입별 프롬프트 세트
│   ├── top-down/index.md
│   ├── side-view/index.md
│   └── isometric/index.md
├── characters/index.md                   ← 캐릭터 프롬프트
├── enemies/index.md                      ← 적 캐릭터 프롬프트
├── npcs/index.md                         ← NPC 프롬프트
├── ui-panels/index.md                    ← UI 패널 프롬프트
├── buttons/index.md                      ← 버튼 프롬프트
├── status-bars/index.md                  ← 상태 바 프롬프트
├── inventory/index.md                    ← 인벤토리 프롬프트
├── dialog/index.md                       ← 대화창 프롬프트
├── leaderboard/index.md                  ← 리더보드 프롬프트
├── settings/index.md                     ← 설정창 프롬프트
├── items/index.md                        ← 아이템 아이콘 프롬프트
└── guides/                               ← 작성 가이드와 템플릿
    ├── game-views-guide.md
    ├── character-guide.md
    ├── ui-panel-guide.md
    ├── button-guide.md
    └── hud-elements-guide.md
```

---

## 📚 섹션별 링크

### 🎮 게임 뷰 프롬프트

| 뷰 | Set 1 | Set 2 | Set 3 |
|----|-------|-------|-------|
| [🔵 Top-Down](./game-views/top-down/index.md) | 숲/마을 | 던전 | 설원 |
| [🟢 Side-View](./game-views/side-view/index.md) | 숲 | 성/고딕 | 동굴 |
| [🟣 Isometric](./game-views/isometric/index.md) | 마을 | 마법 던전 | 가을 숲 |

### 🧑 캐릭터 / 적 / NPC

| 섹션 | 내용 | 파일 |
|------|------|------|
| 플레이어 캐릭터 | DC/One Piece/EVA 8종 | [characters/](./characters/index.md) |
| 적 캐릭터 | 슬라임/고블린/스켈레톤/드래곤 보스 | [enemies/](./enemies/index.md) |
| NPC | 상인/마법사/기사 | [npcs/](./npcs/index.md) |

### 🖼️ UI 컴포넌트

| 섹션 | 내용 | 파일 |
|------|------|------|
| 9-slice 패널 | 자연5 + 신규 5테마 | [ui-panels/](./ui-panels/index.md) |
| 버튼 | 기존 5테마 3상태 + 신규 5테마 | [buttons/](./buttons/index.md) |
| 상태 바 | HP / MP / EXP | [status-bars/](./status-bars/index.md) |
| 인벤토리 | 패널 + 슬롯 | [inventory/](./inventory/index.md) |
| 대화창 | 양피지 스크롤 | [dialog/](./dialog/index.md) |
| 리더보드 | 왕실 금장 | [leaderboard/](./leaderboard/index.md) |
| 설정창 | 기어/기계 | [settings/](./settings/index.md) |
| 아이템 아이콘 | 무기/포션/방어구/퀘스트 아이템 | [items/](./items/index.md) |

### ✍️ 가이드

| 가이드 | 내용 |
|--------|------|
| [game-views-guide.md](./guides/game-views-guide.md) | 뷰별 앵커 + 5종 에셋 템플릿 + 체크리스트 |
| [character-guide.md](./guides/character-guide.md) | 캐릭터 포즈/시점/색상 |
| [ui-panel-guide.md](./guides/ui-panel-guide.md) | 9-slice 패널 + CSS/Godot 적용법 |
| [button-guide.md](./guides/button-guide.md) | Normal/Pressed/Disabled/Hover |
| [hud-elements-guide.md](./guides/hud-elements-guide.md) | 바·인벤토리·대화창·랭킹·설정 |

---

## 운영 원칙

- 여기 있는 프롬프트를 기준으로 여러 모델에 동일하게 적용
- 결과 비교는 `../outputs/` 아래에서 수행
- 프롬프트 변경은 이 폴더에서만 발생
- 벤치마크 시 모델만 바꾸고 입력 프롬프트는 유지
