# Pixel Art Generation — 목차

> **Generator:** ComfyUI (z-image-turbo workflow)  
> **Base URL:** https://genai.home.codepoet.site

---

## 📁 폴더 구조

```
pixel-art/
├── README.md
│
├── game-views/                            ← 뷰 타입별 게임 에셋 세트
│   ├── top-down/index.md                  ← 탑다운 JRPG (숲/던전/설원) × 5종
│   ├── side-view/index.md                 ← 횡스크롤 액션 (숲/성/동굴) × 5종
│   └── isometric/index.md                 ← 아이소메트릭 RPG (마을/던전/가을) × 5종
│
├── characters/index.md                    ← DC/One Piece/EVA 캐릭터 8종
├── enemies/index.md                       ← 적 캐릭터 (슬라임/고블린/스켈레톤/드래곤)
├── npcs/index.md                          ← NPC (상인/마법사/기사)
│
├── ui-panels/index.md                     ← 9-slice 패널 10종 (자연5+신규5)
├── buttons/index.md                       ← 버튼 — 기존5 × 3상태 + 신규5 Normal
├── status-bars/index.md                   ← HP / MP / EXP 바
├── inventory/index.md                     ← 인벤토리 패널 + 슬롯
├── dialog/index.md                        ← 대화창
├── leaderboard/index.md                   ← 리더보드
├── settings/index.md                      ← 설정창
├── items/index.md                         ← 아이템 아이콘 시트 4종
│
└── prompts/                               ← 프롬프트 작성 가이드
    ├── game-views-guide.md                ← ★ 뷰별 톤앤매너 통합 가이드
    ├── character-guide.md
    ├── ui-panel-guide.md
    ├── button-guide.md
    └── hud-elements-guide.md
```

---

## 📚 섹션별 링크

### 🎮 게임 뷰 에셋 (3세트 × 5종 에셋)

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
| 9-slice 패널 | 자연5 + 신규(얼음/화염/마법/바다/왕실)5 | [ui-panels/](./ui-panels/index.md) |
| 버튼 | 기존5 × Normal/Pressed/Disabled + 신규5 | [buttons/](./buttons/index.md) |
| 상태 바 | HP/MP/EXP | [status-bars/](./status-bars/index.md) |
| 인벤토리 | 패널 + 슬롯 | [inventory/](./inventory/index.md) |
| 대화창 | 양피지 스크롤 | [dialog/](./dialog/index.md) |
| 리더보드 | 왕실 금장 | [leaderboard/](./leaderboard/index.md) |
| 설정창 | 기어/기계 | [settings/](./settings/index.md) |
| 아이템 아이콘 | 무기/포션/방어구/퀘스트 아이템 | [items/](./items/index.md) |

### ✍️ 프롬프트 가이드

| 가이드 | 내용 |
|--------|------|
| [★ game-views-guide.md](./prompts/game-views-guide.md) | 뷰별 앵커 + 5종 에셋 템플릿 + 체크리스트 |
| [character-guide.md](./prompts/character-guide.md) | 캐릭터 포즈/시점/색상 |
| [ui-panel-guide.md](./prompts/ui-panel-guide.md) | 9-slice 패널 + CSS/Godot 적용법 |
| [button-guide.md](./prompts/button-guide.md) | Normal/Pressed/Disabled/Hover |
| [hud-elements-guide.md](./prompts/hud-elements-guide.md) | 바·인벤토리·대화창·랭킹·설정 |

---

## 🗓️ 생성 이력

| 날짜 | 내용 |
|------|------|
| 2026-04-18 | 캐릭터 8종 (DC/One Piece/EVA) |
| 2026-04-18 | 9-slice UI 패널 5종 + 버튼 5종 (Normal) |
| 2026-04-18 | HUD 요소 8종 (HP/MP/EXP 바, 인벤토리, 대화창, 리더보드, 설정창) |
| 2026-04-18 | 게임뷰 에셋 45종 — 3뷰 × 3세트 × 5에셋 |
| 2026-04-18 | 버튼 Pressed/Disabled 상태 추가 (기존 5테마) |
| 2026-04-18 | 신규 UI 테마 5종 — 얼음/화염/마법/바다/왕실 (패널+버튼) |
| 2026-04-18 | 적 캐릭터 4종 + NPC 3종 + 아이템 아이콘 시트 4종 |
