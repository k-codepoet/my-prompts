# HUD 요소 프롬프트 가이드

> 상태 바, 인벤토리, 대화창, 리더보드, 설정창 생성 템플릿

---

## 1. 상태 바 (Status Bars)

### 구조
```
2D pixel art game UI {종류} bar, {테마} theme,
horizontal wide bar shape,
{색상} filled portion showing full {종류} on left,
dark empty track on right,
rounded pixel art end caps on both sides,
retro RPG game HUD style, 9-slice sliceable bar design,
{색상 키워드}, 512x128 resolution, flat layout
```

### 종류별 키워드

| 바 종류 | 종류 키워드 | 테마 | 색상 |
|---------|-----------|------|------|
| HP 체력 | `health bar HP bar` | `red heart` | `red crimson tones` |
| MP 마나 | `mana bar MP bar` | `blue crystal magic` | `deep blue sapphire tones` |
| EXP 경험치 | `experience bar EXP bar` | `golden star level-up` | `golden yellow green tones` |
| SP 스태미나 | `stamina bar SP bar` | `green leaf energy` | `fresh green tones` |
| 분노/rage | `rage bar fury bar` | `dark fire anger` | `deep orange red tones` |

### 실제 예시 — HP Bar
```
2D pixel art game UI health bar HP bar, red heart theme,
horizontal wide bar shape,
red filled portion showing full health on left,
dark empty track on right,
rounded pixel art end caps on both sides,
retro RPG game HUD style, 9-slice sliceable bar design,
red crimson tones, 512x128 resolution, flat layout
```
결과: ../../outputs/comfyui-z-image-turbo/guides/e7e32374-fc3d-48d5-b8fd-19dd960a02c0.png

---

## 2. 인벤토리 (Inventory)

### 인벤토리 패널
```
2D pixel art game UI inventory panel, {테마} theme,
grid of empty item slots {열}x{행} rows,
each slot clearly separated by {재질} dividers,
outer {재질} frame border,
retro RPG game HUD style, flat layout,
{색상 키워드}, clear grid cells visible, 512x512 resolution
```

| 옵션 | 예시 |
|------|------|
| 테마 | `wooden crate chest`, `stone dungeon`, `magical crystal` |
| 그리드 크기 | `4x5`, `5x6`, `3x4` |
| 재질 | `wood`, `stone`, `gold` |

### 인벤토리 슬롯 (단일)
```
2D pixel art game UI single inventory item slot, {재질} frame square slot,
raised bevel border pixel art,
empty dark inner area for item icon,
{재질} texture border,
retro RPG game HUD style, flat layout,
{색상 키워드}, clear square slot shape, 128x128 resolution
```

### 실제 예시 — 인벤토리 패널
```
2D pixel art game UI inventory panel, wooden crate chest theme,
grid of empty item slots 4x5 rows,
each slot clearly separated by wood dividers,
outer wooden frame border,
retro RPG game HUD style, flat layout,
warm brown earthy tones, clear grid cells visible, 512x512 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/204d0edd-3f6c-4f00-a9b3-681a2a9a3867.png

---

## 3. 대화창 (Dialogue Box)

### 구조
```
2D pixel art game UI dialogue box speech bubble, {테마} theme,
horizontal wide panel with portrait area on left side and text area on right,
{장식} border decorations,
arrow indicator at bottom for next dialogue,
retro RPG game dialogue HUD style, flat layout,
{색상 키워드}, 512x256 resolution
```

| 테마 | 키워드 | 색상 |
|------|--------|------|
| 양피지 | `fantasy scroll parchment` | `warm parchment cream tones` |
| 나무 | `wooden tavern board` | `rustic earthy brown tones` |
| 마법 | `magical crystal arcane` | `electric blue purple tones` |
| 돌 | `stone dungeon carved` | `medieval gray tones` |

### 실제 예시
```
2D pixel art game UI dialogue box speech bubble, fantasy scroll parchment theme,
horizontal wide panel with portrait area on left side and text area on right,
ornate scroll paper border decorations,
arrow indicator at bottom for next dialogue,
retro RPG game dialogue HUD style, flat layout,
warm parchment cream tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/968c84c0-f9e0-4e98-841a-6379497587ef.png

---

## 4. 리더보드 (Leaderboard)

### 구조
```
2D pixel art game UI leaderboard ranking panel, {테마} theme,
tall vertical panel with numbered rank rows
1st 2nd 3rd {메달} decorations at top,
empty row slots for player names and scores,
{장식} decorations,
retro RPG game HUD style, flat layout,
{색상 키워드}, 512x512 resolution
```

| 테마 | 메달/장식 | 색상 |
|------|----------|------|
| 왕실 | `gold silver bronze crown and star` | `rich gold purple royal tones` |
| 무협 | `jade dragon scroll` | `red gold eastern tones` |
| SF | `neon digital circuit` | `cyberpunk blue green tones` |

### 실제 예시
```
2D pixel art game UI leaderboard ranking panel, royal gold trophy theme,
tall vertical panel with numbered rank rows
1st 2nd 3rd gold silver bronze decorations at top,
empty row slots for player names and scores,
crown and star decorations,
retro RPG game HUD style, flat layout,
rich gold purple royal tones, 512x512 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/1592f906-05b6-4220-83d5-0e6f34b6a16e.png

---

## 5. 설정창 (Settings Panel)

### 구조
```
2D pixel art game UI settings panel configuration menu, {테마} theme,
square panel with horizontal slider bars and toggle switch placeholder rows,
{장식} corner decorations,
section divider lines,
retro RPG game HUD style, flat layout,
{색상 키워드}, 512x512 resolution
```

| 테마 | 장식 | 색상 |
|------|------|------|
| 기계/기어 | `gear wheel` | `dark iron metallic blue gray tones` |
| 마법 | `arcane crystal rune` | `mystical purple tones` |
| 나무 | `carved wood ornament` | `rustic earthy brown tones` |

### 실제 예시
```
2D pixel art game UI settings panel configuration menu, gear cog machinery theme,
square panel with horizontal slider bars and toggle switch placeholder rows,
gear wheel corner decorations,
section divider lines,
retro RPG game HUD style, flat layout,
dark iron metallic blue gray tones, 512x512 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/6c7b1eb8-e4e5-475d-8879-30a70a48a749.png

---

← [목차로 돌아가기](../README.md)
---

## Metadata Prompts

| Image | Positive prompt | Seed | Model |
|---|---|---|---|
| `e7e32374-fc3d-48d5-b8fd-19dd960a02c0.png` | 2D pixel art game UI health bar HP bar, red heart theme, horizontal wide bar shape, red filled portion showing full health on left, dark empty track on right, rounded pixel art end caps on both sides, retro RPG game HUD style, 9-slice sliceable bar design, red crimson tones, 512x128 resolution, flat layout | `2106332538` | `z_image_turbo_bf16.safetensors` |
| `204d0edd-3f6c-4f00-a9b3-681a2a9a3867.png` | 2D pixel art game UI inventory panel, wooden crate chest theme, grid of empty item slots 4x5 rows, each slot clearly separated by wood dividers, outer wooden frame border, retro RPG game HUD style, flat layout, warm brown earthy tones, clear grid cells visible, 512x512 resolution | `3585428595` | `z_image_turbo_bf16.safetensors` |
| `968c84c0-f9e0-4e98-841a-6379497587ef.png` | 2D pixel art game UI dialogue box speech bubble, fantasy scroll parchment theme, horizontal wide panel with portrait area on left side and text area on right, ornate scroll paper border decorations, arrow indicator at bottom for next dialogue, retro RPG game dialogue HUD style, flat layout, warm parchment cream tones, 512x256 resolution | `1964977507` | `z_image_turbo_bf16.safetensors` |
| `1592f906-05b6-4220-83d5-0e6f34b6a16e.png` | 2D pixel art game UI leaderboard ranking panel, royal gold trophy theme, tall vertical panel with numbered rank rows 1st 2nd 3rd gold silver bronze decorations at top, empty row slots for player names and scores, crown and star decorations, retro RPG game HUD style, flat layout, rich gold purple royal tones, 512x512 resolution | `1629689180` | `z_image_turbo_bf16.safetensors` |
| `6c7b1eb8-e4e5-475d-8879-30a70a48a749.png` | 2D pixel art game UI settings panel configuration menu, gear cog machinery theme, square panel with horizontal slider bars and toggle switch placeholder rows, gear wheel corner decorations, section divider lines, retro RPG game HUD style, flat layout, dark iron metallic blue gray tones, 512x512 resolution | `2824598509` | `z_image_turbo_bf16.safetensors` |
