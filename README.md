# Pixel Art Generation — 목차

> **Generator:** ComfyUI (z-image-turbo workflow)  
> **Base URL:** https://genai.home.codepoet.site

---

## 📁 폴더 구조

```
pixel-art/
├── README.md                              ← 이 파일 (목차)
│
├── game-views/                            ← 뷰 타입별 게임 에셋 세트
│   ├── top-down/
│   │   └── index.md                      ← 탑다운 JRPG 5종 에셋
│   ├── side-view/
│   │   └── index.md                      ← 횡스크롤 액션 5종 에셋
│   └── isometric/
│       └── index.md                      ← 아이소메트릭 RPG 5종 에셋
│
├── characters/
│   └── index.md                          ← 캐릭터 스프라이트 갤러리 (8종)
│
├── ui-panels/
│   └── index.md                          ← 9-slice 패널 갤러리 (5종)
│
├── buttons/
│   └── index.md                          ← 9-slice 버튼 갤러리 (5종)
│
├── status-bars/
│   └── index.md                          ← HP / MP / EXP 바 (3종)
│
├── inventory/
│   └── index.md                          ← 인벤토리 패널 + 슬롯 (2종)
│
├── dialog/
│   └── index.md                          ← 대화창 (1종)
│
├── leaderboard/
│   └── index.md                          ← 리더보드 랭킹 패널 (1종)
│
├── settings/
│   └── index.md                          ← 설정창 패널 (1종)
│
└── prompts/                              ← 프롬프트 작성 가이드
    ├── game-views-guide.md               ← ★ 뷰별 톤앤매너 통합 가이드
    ├── character-guide.md                ← 캐릭터 스프라이트 가이드
    ├── ui-panel-guide.md                 ← 9-slice 패널 가이드
    ├── button-guide.md                   ← 버튼 상태별 가이드
    └── hud-elements-guide.md             ← 바·인벤토리·대화창·랭킹·설정 가이드
```

---

## 📚 섹션별 링크

### 🎮 게임 뷰 에셋 세트 (톤앤매너 통일)

| 뷰 타입 | 팔레트 | 수량 | 파일 |
|--------|--------|------|------|
| 🔵 Top-Down (탑다운 JRPG) | 따뜻한 어스톤 | 5종 | [game-views/top-down/](./game-views/top-down/index.md) |
| 🟢 Side-View (횡스크롤 액션) | 따뜻-쿨 대비 | 5종 | [game-views/side-view/](./game-views/side-view/index.md) |
| 🟣 Isometric (아이소메트릭 RPG) | 풍부한 쥬얼톤 | 5종 | [game-views/isometric/](./game-views/isometric/index.md) |

각 뷰에 포함된 에셋: **타일 · 캐릭터 스프라이트 · 오브젝트 · 대화창 초상화 · 배경**

---

### 🖼️ UI 컴포넌트

| 섹션 | 수량 | 해상도 | 파일 |
|------|------|--------|------|
| 9-slice 패널 | 5종 | 512×512 | [ui-panels/](./ui-panels/index.md) |
| 버튼 | 5종 | 512×256 | [buttons/](./buttons/index.md) |
| 상태 바 (HP/MP/EXP) | 3종 | 512×128 | [status-bars/](./status-bars/index.md) |
| 인벤토리 + 슬롯 | 2종 | 512×512 / 128×128 | [inventory/](./inventory/index.md) |
| 대화창 | 1종 | 512×256 | [dialog/](./dialog/index.md) |
| 리더보드 | 1종 | 512×512 | [leaderboard/](./leaderboard/index.md) |
| 설정창 | 1종 | 512×512 | [settings/](./settings/index.md) |

### 🎭 캐릭터

| 섹션 | 수량 | 파일 |
|------|------|------|
| 캐릭터 스프라이트 (DC/원피스/에바) | 8종 | [characters/](./characters/index.md) |

---

### ✍️ 프롬프트 가이드

| 가이드 | 핵심 내용 |
|--------|---------|
| [★ game-views-guide.md](./prompts/game-views-guide.md) | 뷰별 앵커 키워드 + 5종 에셋 템플릿 + 톤앤매너 체크리스트 |
| [character-guide.md](./prompts/character-guide.md) | 포즈·시점·색상 팁, 원작 캐릭터 예시 |
| [ui-panel-guide.md](./prompts/ui-panel-guide.md) | 9-slice 패널 템플릿, CSS/Godot 적용법 |
| [button-guide.md](./prompts/button-guide.md) | Normal/Pressed/Disabled/Hover 상태 키워드 |
| [hud-elements-guide.md](./prompts/hud-elements-guide.md) | 바·인벤토리·대화창·랭킹·설정 통합 가이드 |

---

## 🗓️ 생성 이력

| 날짜 | 내용 |
|------|------|
| 2026-04-18 | 캐릭터 8종 (DC/One Piece/EVA) 최초 생성 |
| 2026-04-18 | 9-slice UI 패널 5종 (식물/꽃/나무/돌/모래) 생성 |
| 2026-04-18 | 9-slice 버튼 5종 (동일 테마) 생성 |
| 2026-04-18 | HUD 요소 8종 — HP/MP/EXP 바, 인벤토리, 대화창, 리더보드, 설정창 |
| 2026-04-18 | 게임 뷰 에셋 세트 15종 — 탑다운/사이드뷰/아이소메트릭 × 5종 에셋 |
