# 게임 뷰 에셋 — 톤앤매너 프롬프트 가이드

> 3가지 게임 뷰 타입별 톤앤매너를 유지하며 다양한 에셋을 생성하는 프롬프트 시스템

---

## 핵심 원칙: 톤앤매너 3요소

| 요소 | 설명 |
|------|------|
| **뷰 앵커** | 모든 프롬프트에 포함되는 시점 고정 키워드 |
| **팔레트 앵커** | 색상 방향을 고정하는 키워드 (뷰마다 다름) |
| **캐릭터 앵커** | 동일 캐릭터가 모든 에셋에서 일관되게 등장하도록 하는 설정 |

---

## 뷰별 앵커 키워드

### 🔵 Top-Down (탑다운 JRPG)
```
뷰 앵커:     "top-down 2D pixel art, classic JRPG overhead style, 16-bit retro pixel art, overhead top-down flat view"
팔레트 앵커: "warm earthy green brown tones"
캐릭터 앵커: "young adventurer green tunic brown boots short brown hair"
```

### 🟢 Side-View (횡스크롤 액션)
```
뷰 앵커:     "side-view 2D pixel art, classic action platformer style, 16-bit retro pixel art, side perspective"
팔레트 앵커: "warm earthy tones cool shadow blue contrast"
캐릭터 앵커: "young adventurer green tunic brown boots sword, clear side profile silhouette"
```

### 🟣 Isometric (아이소메트릭 RPG)
```
뷰 앵커:     "isometric 2D pixel art, classic isometric RPG style, 16-bit retro pixel art, isometric 45 degree perspective"
팔레트 앵커: "rich earthy jewel tones deep green gray gold"
캐릭터 앵커: "young adventurer green tunic brown boots sword, 45 degree angle"
```

---

## 에셋 타입별 프롬프트 템플릿

### 1. 타일 (Tile)

**공통 구조:**
```
{뷰 앵커} tileset,
{지형 종류} terrain tile,
seamlessly tileable {형태},
{팔레트 앵커},
clean tile edges, multiple tile variants,
512x512
```

| 뷰 | 형태 키워드 | 지형 예시 |
|----|------------|---------|
| Top-Down | `square tile` | `grass and dirt path`, `stone floor`, `water edge` |
| Side-View | `horizontal platform tile` | `stone and earth platform`, `castle brick wall`, `cave rock` |
| Isometric | `isometric diamond shape tile` | `grass and stone floor`, `dungeon floor`, `sand desert` |

**실제 예시 — Top-Down 잔디 타일:**
```
top-down 2D pixel art, classic JRPG overhead style, 16-bit retro pixel art, overhead top-down flat view tileset,
grass and dirt path terrain tile,
seamlessly tileable square tile,
warm earthy green brown tones,
clean tile edges, multiple tile variants,
512x512
```
결과: ../../outputs/comfyui-z-image-turbo/guides/f4338823-ab59-42b1-a551-70acbb46e2ad.png

---

### 2. 캐릭터 스프라이트 (Character Sprite)

**공통 구조:**
```
{뷰 앵커} character sprite sheet,
{캐릭터 앵커},
{포즈/방향 키워드},
{팔레트 앵커},
512x512
```

| 뷰 | 포즈/방향 키워드 |
|----|----------------|
| Top-Down | `walking facing four directions north south east west, small cute sprite` |
| Side-View | `idle run jump attack animation frames, clear side profile silhouette` |
| Isometric | `multiple directions 45 degree angle isometric view` |

**실제 예시 — Side-View 캐릭터:**
```
side-view 2D pixel art, classic action platformer style, 16-bit retro pixel art, side perspective character sprite sheet,
young adventurer green tunic brown boots sword, clear side profile silhouette,
idle run jump attack animation frames,
warm earthy tones cool shadow blue contrast,
512x512
```
결과: ../../outputs/comfyui-z-image-turbo/guides/6bb91556-5bd8-4d48-a1e7-96c24d93aff7.png

---

### 3. 오브젝트/프롭 (Objects / Props)

**공통 구조:**
```
{뷰 앵커} game props and objects sheet,
{오브젝트 목록} {뷰별 suffix},
{팔레트 앵커},
neat sprite collection sheet arranged neatly,
512x512
```

| 뷰 | 오브젝트 목록 | 뷰별 suffix |
|----|------------|------------|
| Top-Down | `trees bushes rocks barrels treasure chest crates` | `viewed overhead` |
| Side-View | `crates barrels platforms spikes coins torches collectibles` | `side view` |
| Isometric | `trees rocks treasure chests barrels well fence stone wall` | `isometric view` |

**실제 예시 — Isometric 오브젝트:**
```
isometric 2D pixel art, classic isometric RPG style, 16-bit retro pixel art, isometric 45 degree perspective game props objects sheet,
trees rocks treasure chests barrels well fence stone wall isometric view,
rich earthy jewel tones deep green gray gold,
neat sprite collection sheet,
512x512
```
결과: ../../outputs/comfyui-z-image-turbo/guides/c27de129-2f8b-4f8a-a559-1450ebb37745.png

---

### 4. 대화창 캐릭터 일러스트 (Dialogue Portrait)

**공통 구조:**
```
2D pixel art character dialogue portrait, {스타일명} style,
{캐릭터 앵커} bust portrait,
{표정/포즈 키워드},
{팔레트 앵커},
detailed 16-bit pixel shading, game dialogue portrait illustration,
512x512
```

> ⚠️ 대화창 초상화는 뷰앵커 없이 스타일앵커만 유지 (시점과 무관한 클로즈업)

| 뷰 | 스타일명 | 표정/포즈 |
|----|---------|---------|
| Top-Down | `classic JRPG` | `friendly expression` |
| Side-View | `classic action platformer` | `dynamic confident expression, side-facing pose` |
| Isometric | `classic isometric RPG` | `calm wise expression detailed` |

**실제 예시 — Top-Down 초상화:**
```
2D pixel art character dialogue portrait, classic JRPG style,
young adventurer green tunic short brown hair bust portrait,
friendly warm expression,
warm earthy tones,
detailed 16-bit pixel shading, game dialogue portrait illustration,
512x512
```
결과: ../../outputs/comfyui-z-image-turbo/guides/63126a30-5556-4eb9-a94f-cd6424674702.png

---

### 5. 배경 (Background)

**공통 구조:**
```
{뷰 앵커} game background scene,
{씬 설명},
{팔레트 앵커},
detailed {뷰별 suffix} scene,
512x512
```

| 뷰 | 씬 예시 | 뷰별 suffix |
|----|--------|------------|
| Top-Down | `overhead view of green forest path leading to small village` | `top-down map` |
| Side-View | `layered parallax forest scene with tall trees mountains clouds` | `depth layers visible` |
| Isometric | `isometric view of small town buildings trees stone paths river` | `isometric map` |

**실제 예시 — Side-View 배경:**
```
side-view 2D pixel art, classic action platformer style, 16-bit retro pixel art, side perspective game background scene,
layered parallax forest scene with tall trees mountains clouds from side view,
warm foreground cool distant background depth,
multiple depth layers visible,
512x512
```
결과: ../../outputs/comfyui-z-image-turbo/guides/3a4f27f0-4abb-40d5-a57d-d8d0a4f7269a.png

---

## 전체 Negative Prompt

```
3D, realistic, photographic, blurry, low quality, text, watermark
```

에셋 타입별 추가:
| 에셋 | 추가 Negative |
|------|--------------|
| 타일 | `characters, people` |
| 캐릭터 | `UI, panels` |
| 오브젝트 | `characters, people` |
| 초상화 | `full body, isometric geometry` |
| 배경 | `characters, people, UI` |

---

## 빠른 생성 체크리스트

새 세트(예: 던전 테마)를 만들 때:

- [ ] 뷰 앵커 고정 (뷰 타입 결정)
- [ ] 팔레트 앵커 유지 OR 새 색상 정의
- [ ] 캐릭터 앵커 동일하게 유지
- [ ] 5종 에셋(타일/캐릭터/오브젝트/초상화/배경) 동시 생성
- [ ] Negative Prompt에 해당 에셋 제외 키워드 추가

---

← [목차로 돌아가기](../README.md)
---

## Metadata Prompts

| Image | Positive prompt | Seed | Model |
|---|---|---|---|
| `f4338823-ab59-42b1-a551-70acbb46e2ad.png` | top-down 2D pixel art game tileset, classic JRPG overhead style, grass and dirt path terrain tiles, seamlessly tileable square tile, warm green brown earthy tones, 16-bit retro pixel art, overhead top-down flat view, clean tile edges, multiple tile variants, 512x512 | `3969491981` | `z_image_turbo_bf16.safetensors` |
| `6bb91556-5bd8-4d48-a1e7-96c24d93aff7.png` | side-view 2D pixel art character sprite sheet, classic action platformer style, young adventurer green tunic brown boots sword, side-facing poses idle run jump attack, warm earthy tones cool shadow contrast, 16-bit retro pixel art, clear side profile silhouette, animation frames, 512x512 | `330578880` | `z_image_turbo_bf16.safetensors` |
| `c27de129-2f8b-4f8a-a559-1450ebb37745.png` | isometric 2D pixel art game props objects sheet, classic isometric RPG style, trees rocks treasure chests barrels well fence stone wall isometric view, rich earthy jewel tones, 16-bit retro pixel art, isometric 45 degree perspective, neat sprite collection, 512x512 | `3814652203` | `z_image_turbo_bf16.safetensors` |
| `63126a30-5556-4eb9-a94f-cd6424674702.png` | 2D pixel art character dialogue portrait, classic JRPG style, young adventurer hero bust portrait, green tunic short brown hair expressive warm face, warm earthy tones, detailed 16-bit pixel shading, game dialogue box portrait illustration, friendly expression, 512x512 | `2620296115` | `z_image_turbo_bf16.safetensors` |
| `3a4f27f0-4abb-40d5-a57d-d8d0a4f7269a.png` | side-view 2D pixel art game background, classic action platformer style, layered parallax forest scene with tall trees mountains clouds from side view, warm foreground cool distant background depth, 16-bit retro pixel art, multiple depth layers visible, 512x512 | `2839410542` | `z_image_turbo_bf16.safetensors` |
