# 캐릭터 스프라이트 프롬프트 가이드

> 2D 픽셀아트 게임 캐릭터를 일관된 스타일로 생성하기 위한 템플릿

---

## 프롬프트 구조

```
{캐릭터명} 2D pixel art style,
{핵심 의상/외형 특징},
{포즈/동작},
retro 16-bit pixel art,
{색상 키워드},
detailed pixel shading,
game sprite style,
clean pixel edges,
nostalgic arcade game aesthetic
```

### Negative Prompt (공통)
```
realistic, 3D, blurry, photographic, modern art, low quality
```

---

## 구성 요소 상세

| 요소 | 설명 | 예시 |
|------|------|------|
| `캐릭터명` | 원작명 포함 권장 | `Superman`, `Luffy from One Piece` |
| `핵심 의상/외형` | 색상 + 복장 + 헤어 등 | `red vest straw hat`, `blue plugsuit` |
| `포즈/동작` | 정지/액션/표정 | `heroic pose flying`, `hands folded` |
| `색상 키워드` | 전체적 팔레트 방향 | `vibrant colors`, `dark color palette` |

---

## 스타일 고정 키워드 (항상 포함)

```
retro 16-bit pixel art
detailed pixel shading
game sprite style
clean pixel edges
nostalgic arcade game aesthetic
```

---

## 실제 사용 예시

### 예시 1 — Superman
```
Superman 2D pixel art style, classic blue and red costume with cape,
heroic pose flying, retro 16-bit pixel art, vibrant colors,
detailed pixel shading, game sprite style, clean pixel edges,
nostalgic arcade game aesthetic
```
결과: ../../outputs/comfyui-z-image-turbo/guides/0ef596ae-825e-4df5-bd36-7a648d0f9b69.png

### 예시 2 — Batman
```
Batman 2D pixel art style, dark black bat costume with cape and cowl,
brooding heroic pose, retro 16-bit pixel art, dark color palette,
detailed pixel shading, game sprite style, clean pixel edges,
nostalgic arcade game aesthetic
```
결과: ../../outputs/comfyui-z-image-turbo/guides/51005de2-6857-471f-9b20-03c8a3ce12eb.png

### 예시 3 — Monkey D. Luffy (원작 캐릭터)
```
Monkey D. Luffy from One Piece 2D pixel art style,
red vest straw hat pirate, signature grin and stretched rubber arm pose,
retro 16-bit pixel art, vibrant colors, detailed pixel shading,
game sprite style, clean pixel edges, nostalgic arcade game aesthetic
```
결과: ../../outputs/comfyui-z-image-turbo/guides/8b408094-878e-4fb7-962c-397d42402697.png

### 예시 4 — Rei Ayanami (에반게리온)
```
Rei Ayanami from Neon Genesis Evangelion 2D pixel art style,
white blue plugsuit pilot suit, quiet expressionless pose,
short blue hair red eyes, retro 16-bit pixel art, pale color palette,
detailed pixel shading, game sprite style, clean pixel edges,
nostalgic arcade game aesthetic
```
결과: ../../outputs/comfyui-z-image-turbo/guides/7c6277f6-1e39-45c1-9ef1-ec152c34d6c6.png

---

## 응용 팁

### 포즈 변형
| 키워드 | 효과 |
|--------|------|
| `heroic pose flying` | 영웅적 비행 포즈 |
| `standing idle pose` | 기본 대기 포즈 |
| `action attack pose` | 공격 동작 |
| `running side view` | 옆면 달리기 |
| `sitting relaxed` | 앉아있는 포즈 |

### 시점 변형
| 키워드 | 효과 |
|--------|------|
| `side view` | 횡스크롤 게임 스타일 |
| `front view` | 정면 (RPG 배틀 스타일) |
| `3/4 view` | 쿼터뷰 RPG 스타일 |

### 색상 팔레트
| 키워드 | 효과 |
|--------|------|
| `vibrant colors` | 선명하고 밝은 색 |
| `dark color palette` | 어둡고 무거운 색 |
| `pale color palette` | 연하고 부드러운 색 |
| `warm earthy tones` | 따뜻한 자연색 |

---

← [목차로 돌아가기](../README.md)
---

## Metadata Prompts

| Image | Positive prompt | Seed | Model |
|---|---|---|---|
| `0ef596ae-825e-4df5-bd36-7a648d0f9b69.png` | Superman 2D pixel art style, classic blue and red costume with cape, heroic pose flying, retro 16-bit pixel art, vibrant colors, detailed pixel shading, side view, game sprite style, clean pixel edges, nostalgic arcade game aesthetic | `1630920229` | `z_image_turbo_bf16.safetensors` |
| `51005de2-6857-471f-9b20-03c8a3ce12eb.png` | Batman 2D pixel art style, dark black bat costume with cape and cowl, brooding heroic pose, retro 16-bit pixel art, dark color palette, detailed pixel shading, game sprite style, clean pixel edges, nostalgic arcade game aesthetic | `2594396060` | `z_image_turbo_bf16.safetensors` |
| `8b408094-878e-4fb7-962c-397d42402697.png` | Monkey D. Luffy from One Piece 2D pixel art style, red vest straw hat pirate, signature grin and stretched rubber arm pose, retro 16-bit pixel art, vibrant colors, detailed pixel shading, game sprite style, clean pixel edges, nostalgic arcade game aesthetic | `3051671563` | `z_image_turbo_bf16.safetensors` |
| `7c6277f6-1e39-45c1-9ef1-ec152c34d6c6.png` | Rei Ayanami from Neon Genesis Evangelion 2D pixel art style, white blue plugsuit pilot suit, quiet expressionless pose, short blue hair red eyes, retro 16-bit pixel art, pale color palette, detailed pixel shading, game sprite style, clean pixel edges, nostalgic arcade game aesthetic | `1635842860` | `z_image_turbo_bf16.safetensors` |
