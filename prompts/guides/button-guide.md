# 버튼 프롬프트 가이드

> 9-slice 방식 픽셀아트 버튼 생성 템플릿 및 상태별(Normal/Pressed/Disabled) 변형 방법

---

## 버튼 vs 패널 차이점

| 속성 | 패널 (Panel) | 버튼 (Button) |
|------|-------------|--------------|
| 해상도 | 512×512 (정방형) | 512×256 (가로형) |
| 형태 | 대화창·인벤토리 크기 | 클릭 가능한 좁은 사각형 |
| 핵심 키워드 | `empty clean center area` | `raised 3D bevel pixel art button` |
| 상태 | 단일 | Normal / Pressed / Disabled 3종 |

---

## 프롬프트 구조

```
2D pixel art game UI button, {테마} theme,
{장식 요소} decorating button border and corners,
{상태 키워드},
wide rectangular button shape,
empty clean {색상} center area for text label,
retro RPG game HUD style, flat layout,
clear 9-slice sliceable design,
{색상 키워드}, 512x256 resolution
```

### Negative Prompt (공통)
```
characters, people, 3D render, realistic, blurry, filled center, text, label
```

---

## 상태별 키워드

| 상태 | 키워드 | 설명 |
|------|--------|------|
| Normal (기본) | `raised 3D bevel pixel art button` | 볼록하게 올라온 기본 상태 |
| Pressed (눌림) | `pressed sunken 3D bevel pixel art button, darker shading` | 눌려 들어간 상태, 더 어두운 음영 |
| Disabled (비활성) | `disabled grayed out pixel art button, desaturated muted colors` | 회색 처리된 비활성 상태 |
| Hover (호버) | `glowing highlighted pixel art button, bright edge highlight` | 테두리가 빛나는 호버 상태 |

---

## 테마별 실제 예시

### 🌿 식물 / 덩굴 — Normal
```
2D pixel art game UI button, vine and plant theme,
green ivy vines and leaves decorating button border and corners,
raised 3D bevel pixel art button, wide rectangular button shape,
empty clean center area for text label,
retro RPG game HUD style, flat layout,
clear 9-slice sliceable design, botanical green tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/82a7d504-c3dc-45f7-8e09-001cd0254e10.png

### 🌸 꽃 / 벚꽃 — Normal
```
2D pixel art game UI button, flower blossom theme,
pink cherry blossoms and wildflowers decorating button border and corners,
raised 3D bevel pixel art button, wide rectangular button shape,
empty clean pastel center area for text label,
retro RPG game HUD style, flat layout,
clear 9-slice sliceable design, pastel floral tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/9b0e5cf4-c1b7-4066-a4e0-dc957cc4a8f3.png

### 🪵 나무 / 목재 — Normal
```
2D pixel art game UI button, wooden plank theme,
brown bark wood grain and tree knots decorating button border and corners,
raised 3D bevel carved wood pixel art button, wide rectangular button shape,
empty clean beige center area for text label,
retro RPG game HUD style, flat layout,
clear 9-slice sliceable design, rustic earthy brown tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/6b0a2b47-498b-4009-81eb-f66819170f74.png

### 🪨 돌 / 석재 — Normal
```
2D pixel art game UI button, stone brick and rock theme,
gray mossy stone bricks and pebbles decorating button border and corners,
raised 3D bevel chiseled stone pixel art button, wide rectangular button shape,
empty clean light gray center area for text label,
retro RPG dungeon HUD style, flat layout,
clear 9-slice sliceable design, medieval gray tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/71ca124b-5531-4916-b93e-04d549fcbc62.png

### 🏜️ 모래 / 사막 — Normal
```
2D pixel art game UI button, desert sand theme,
golden sandy texture and small cacti and seashells decorating button border and corners,
raised 3D bevel sandy pixel art button, wide rectangular button shape,
empty clean warm beige center area for text label,
retro RPG desert HUD style, flat layout,
clear 9-slice sliceable design, warm sandy golden tones, 512x256 resolution
```
결과: ../../outputs/comfyui-z-image-turbo/guides/593bc05e-8e94-4709-8677-2de20f224c50.png

---

## CSS 적용 예시

```css
/* 기본 버튼 */
.btn-wood {
  border-image: url("wood-button.png") 32 fill / 32px stretch;
  min-width: 120px;
  height: 48px;
  background: none;
  cursor: pointer;
}

/* Pressed 상태 — 이미지 교체 방식 */
.btn-wood:active {
  border-image: url("wood-button-pressed.png") 32 fill / 32px stretch;
  transform: translateY(2px); /* 살짝 내려가는 효과 */
}

/* Disabled 상태 */
.btn-wood:disabled {
  border-image: url("wood-button-disabled.png") 32 fill / 32px stretch;
  cursor: not-allowed;
  opacity: 0.6;
}
```

## Godot (GDScript) 적용 예시

```gdscript
# TextureButton으로 3상태 처리
var btn = TextureButton.new()
btn.texture_normal = preload("res://ui/stone-button.png")
btn.texture_pressed = preload("res://ui/stone-button-pressed.png")
btn.texture_disabled = preload("res://ui/stone-button-disabled.png")
btn.texture_hover = preload("res://ui/stone-button-hover.png")
```

---

## 추가 테마 아이디어

| 테마 | 장식 키워드 | 상태 색상 힌트 |
|------|------------|--------------|
| ❄️ 얼음 | `ice crystals and frost` | `cool blue` → `darker blue pressed` |
| 🔥 화염 | `fire flames and embers` | `hot orange` → `bright yellow hover` |
| ⚡ 마법 | `arcane runes and lightning` | `electric purple` → `glowing white hover` |
| 🏰 왕실 | `gold ornate filigree` | `rich gold` → `bright gold hover` |
| 🌙 달/밤 | `crescent moon and stars` | `midnight navy` → `silver glow hover` |

---

← [목차로 돌아가기](../README.md)
---

## Metadata Prompts

| Image | Positive prompt | Seed | Model |
|---|---|---|---|
| `82a7d504-c3dc-45f7-8e09-001cd0254e10.png` | 2D pixel art game UI button, vine and plant theme, green ivy vines and leaves decorating button border and corners, raised 3D bevel pixel art button, wide rectangular button shape, empty clean center area for text label, retro RPG game HUD style, flat layout, clear 9-slice sliceable design, botanical green tones, 512x256 resolution | `2510078609` | `z_image_turbo_bf16.safetensors` |
| `9b0e5cf4-c1b7-4066-a4e0-dc957cc4a8f3.png` | 2D pixel art game UI button, flower blossom theme, pink cherry blossoms and wildflowers decorating button border and corners, raised 3D bevel pixel art button, wide rectangular button shape, empty clean pastel center area for text label, retro RPG game HUD style, flat layout, clear 9-slice sliceable design, pastel floral tones, 512x256 resolution | `2999899154` | `z_image_turbo_bf16.safetensors` |
| `6b0a2b47-498b-4009-81eb-f66819170f74.png` | 2D pixel art game UI button, wooden plank theme, brown bark wood grain and tree knots decorating button border and corners, raised 3D bevel carved wood pixel art button, wide rectangular button shape, empty clean beige center area for text label, retro RPG game HUD style, flat layout, clear 9-slice sliceable design, rustic earthy brown tones, 512x256 resolution | `2202239783` | `z_image_turbo_bf16.safetensors` |
| `71ca124b-5531-4916-b93e-04d549fcbc62.png` | 2D pixel art game UI button, stone brick and rock theme, gray mossy stone bricks and pebbles decorating button border and corners, raised 3D bevel chiseled stone pixel art button, wide rectangular button shape, empty clean light gray center area for text label, retro RPG dungeon HUD style, flat layout, clear 9-slice sliceable design, medieval gray tones, 512x256 resolution | `1393332032` | `z_image_turbo_bf16.safetensors` |
| `593bc05e-8e94-4709-8677-2de20f224c50.png` | 2D pixel art game UI button, desert sand theme, golden sandy texture and small cacti and seashells decorating button border and corners, raised 3D bevel sandy pixel art button, wide rectangular button shape, empty clean warm beige center area for text label, retro RPG desert HUD style, flat layout, clear 9-slice sliceable design, warm sandy golden tones, 512x256 resolution | `2964104167` | `z_image_turbo_bf16.safetensors` |
