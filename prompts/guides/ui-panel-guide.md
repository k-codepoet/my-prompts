# 9-Slice UI 패널 프롬프트 가이드

> border-image / 9-slice 방식으로 사용할 수 있는 픽셀아트 UI 패널 생성 템플릿

---

## 9-Slice란?

이미지를 3×3 격자로 나눠 코너는 고정, 엣지는 늘리고, 중앙은 채우는 방식.  
게임 UI, CSS `border-image`, Unity/Godot 9-slice sprite 등에 활용.

```
┌──────┬────────────┬──────┐
│ 코너 │   위 엣지  │ 코너 │  ← 고정
├──────┼────────────┼──────┤
│ 왼쪽 │    중앙    │ 오른 │  ← 늘어남
│ 엣지 │  (내용 영역)│ 엣지 │
├──────┼────────────┼──────┤
│ 코너 │  아래 엣지 │ 코너 │  ← 고정
└──────┴────────────┴──────┘
```

---

## 프롬프트 구조

```
2D pixel art game UI panel, 9-slice border-image style,
{테마} theme,
{장식 요소} decorating all four corners and edges,
empty clean {색상} center area for content,
thick decorative {테마} border,
retro RPG game HUD {서브테마} style,
flat layout, clear corner pieces and edge tiles visible,
{색상 키워드}, 512x512
```

### Negative Prompt (공통)
```
characters, people, 3D, realistic, blurry, filled center, dark background
```

---

## 핵심 필수 키워드

| 키워드 | 역할 |
|--------|------|
| `9-slice border-image style` | AI가 9분할 레이아웃을 인식 |
| `decorating all four corners and edges` | 코너+엣지 장식 강제 |
| `empty clean center area for content` | 중앙을 비워 내용 공간 확보 |
| `clear corner pieces and edge tiles visible` | 슬라이스 경계가 명확히 보이도록 |
| `flat layout` | 2D 플랫 스타일 유지 |

---

## 테마별 실제 예시

### 🌿 식물 / 덩굴 (Plant & Vine)
```
2D pixel art game UI panel, 9-slice border-image style, vine and plant theme,
green ivy vines and leaves decorating all four corners and edges,
empty clean white center area for content,
thick decorative botanical border,
retro RPG game HUD style, flat layout,
clear corner pieces and edge tiles visible, 512x512
```
결과: ../../outputs/comfyui-z-image-turbo/reference-images/43117e0c-8ebb-46ee-8e0f-b0a7434292c3.png  
**어울리는 용도:** 자연/숲 테마, 아이템 설명창, 퀘스트 UI

---

### 🌸 꽃 / 벚꽃 (Flower & Blossom)
```
2D pixel art game UI panel, 9-slice border-image style, flower blossom theme,
pink cherry blossoms and colorful wildflowers decorating all four corners and edges,
empty clean light center area for content,
thick decorative floral border,
retro RPG game HUD style, flat layout,
clear corner pieces and edge tiles visible, pastel colors, 512x512
```
결과: ../../outputs/comfyui-z-image-turbo/reference-images/b1673f37-1501-4c0e-9fdb-7b11ed71e67b.png  
**어울리는 용도:** 봄/낭만 테마, 대화창, 캐릭터 소개 UI

---

### 🪵 나무 / 목재 (Wood & Tree)
```
2D pixel art game UI panel, 9-slice border-image style, wooden tree log theme,
brown bark wood planks and tree knots decorating all four corners and edges,
empty clean beige center area for content,
thick decorative wood frame border,
retro RPG game HUD style, flat layout,
clear corner pieces and edge tiles, rustic earthy colors, 512x512
```
결과: ../../outputs/comfyui-z-image-turbo/reference-images/3a31a245-9490-4eb9-ba05-59d450aa363e.png  
**어울리는 용도:** 마을/선술집 테마, 인벤토리 창, 상점 UI

---

### 🪨 돌 / 석재 (Stone & Rock)
```
2D pixel art game UI panel, 9-slice border-image style, stone brick and rock theme,
gray mossy stone bricks and pebbles decorating all four corners and edges,
empty clean light center area for content,
thick decorative stone wall border,
retro RPG game HUD dungeon style, flat layout,
clear corner pieces and edge tiles, medieval gray tones, 512x512
```
결과: ../../outputs/comfyui-z-image-turbo/reference-images/229c94a9-61ae-404b-8bd0-ece3fe03fa27.png  
**어울리는 용도:** 던전/성 테마, 스탯 창, 보스전 UI

---

### 🏜️ 모래 / 사막 (Sand & Desert)
```
2D pixel art game UI panel, 9-slice border-image style, desert sand theme,
golden sandy dunes and small cacti and seashells decorating all four corners and edges,
empty clean warm beige center area for content,
thick decorative sandy border,
retro RPG game HUD desert style, flat layout,
clear corner pieces and edge tiles, warm sandy golden tones, 512x512
```
결과: ../../outputs/comfyui-z-image-turbo/reference-images/0852a63f-fa69-4b15-a751-6d8d22574623.png  
**어울리는 용도:** 사막/해변 테마, 지도 UI, 탐험 일지

---

## 추가 테마 아이디어

| 테마 | 장식 요소 키워드 | 색상 |
|------|----------------|------|
| ❄️ 얼음/설원 | `ice crystals and snowflakes` | `cool blue white tones` |
| 🔥 화염/용암 | `fire flames and embers` | `hot red orange tones` |
| ⚡ 번개/마법 | `lightning bolts and arcane runes` | `electric purple blue` |
| 🌊 바다/물 | `ocean waves and coral` | `deep blue aqua tones` |
| 🏰 왕실/금장 | `gold ornate filigree royal` | `rich gold purple tones` |
| 🍄 버섯/동굴 | `glowing mushrooms and fungi` | `bioluminescent purple green` |
| ☠️ 해골/저승 | `skulls and dark bones` | `dark gray bone tones` |
| 🌙 달/밤 | `crescent moon and stars` | `midnight navy silver` |

---

## CSS border-image 적용 예시

```css
/* 기본 적용 */
.game-panel {
  border-image: url("stone-panel.png") 80 fill / 80px stretch;
}

/* 코너 크기 개별 지정 */
.game-panel-lg {
  border-image: url("wood-panel.png") 64 fill / 64px / 0px round;
  min-width: 200px;
  min-height: 100px;
}
```

## Godot (GDScript) 적용 예시

```gdscript
var panel = NinePatchRect.new()
panel.texture = preload("res://ui/vine-panel.png")
panel.patch_margin_left = 64
panel.patch_margin_right = 64
panel.patch_margin_top = 64
panel.patch_margin_bottom = 64
```

---

← [목차로 돌아가기](../README.md)
---

## Metadata Prompts

| Image | Positive prompt | Seed | Model |
|---|---|---|---|
| `43117e0c-8ebb-46ee-8e0f-b0a7434292c3.png` | 2D pixel art game UI panel, 9-slice border-image style, vine and plant theme, green ivy vines and leaves decorating all four corners and edges, empty clean white center area for content, thick decorative botanical border, retro RPG game HUD style, top-down view flat layout, clear corner pieces and edge tiles visible, 512x512 | `2790541007` | `z_image_turbo_bf16.safetensors` |
| `b1673f37-1501-4c0e-9fdb-7b11ed71e67b.png` | 2D pixel art game UI panel, 9-slice border-image style, flower blossom theme, pink cherry blossoms and colorful wildflowers decorating all four corners and edges, empty clean light center area for content, thick decorative floral border, retro RPG game HUD style, flat layout, clear corner pieces and edge tiles visible, pastel colors, 512x512 | `3380992145` | `z_image_turbo_bf16.safetensors` |
| `3a31a245-9490-4eb9-ba05-59d450aa363e.png` | 2D pixel art game UI panel, 9-slice border-image style, wooden tree log theme, brown bark wood planks and tree knots decorating all four corners and edges, empty clean beige center area for content, thick decorative wood frame border, retro RPG game HUD style, flat layout, clear corner pieces and edge tiles, rustic earthy colors, 512x512 | `1467829623` | `z_image_turbo_bf16.safetensors` |
| `229c94a9-61ae-404b-8bd0-ece3fe03fa27.png` | 2D pixel art game UI panel, 9-slice border-image style, stone brick and rock theme, gray mossy stone bricks and pebbles decorating all four corners and edges, empty clean light center area for content, thick decorative stone wall border, retro RPG game HUD dungeon style, flat layout, clear corner pieces and edge tiles, medieval gray tones, 512x512 | `4034717130` | `z_image_turbo_bf16.safetensors` |
| `0852a63f-fa69-4b15-a751-6d8d22574623.png` | 2D pixel art game UI panel, 9-slice border-image style, desert sand theme, golden sandy dunes and small cacti and seashells decorating all four corners and edges, empty clean warm beige center area for content, thick decorative sandy border, retro RPG game HUD desert style, flat layout, clear corner pieces and edge tiles, warm sandy golden tones, 512x512 | `1291463412` | `z_image_turbo_bf16.safetensors` |
