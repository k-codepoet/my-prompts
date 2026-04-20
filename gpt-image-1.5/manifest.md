# gpt-image-1.5 Manifest

Generated on: 2026-04-20
Mode: built-in `image_gen`
Purpose: mirror the existing prompt-library folder structure with one representative generated image per folder

## Assumption

This batch creates representative cover assets per folder, not the full 100+ image set from every individual prompt in the library.

## Files

| Folder | Saved file | Summary |
|---|---|---|
| `characters` | `characters/hero-lineup.png` | 8-character retro fantasy hero lineup sheet |
| `enemies` | `enemies/enemy-sheet.png` | slime, goblin, skeleton, dragon boss enemy sheet |
| `npcs` | `npcs/npc-sheet.png` | merchant, wizard, knight NPC sheet |
| `items` | `items/item-icons.png` | fantasy inventory icon grid |
| `buttons` | `buttons/button-themes.png` | multi-theme pixel UI button sheet |
| `ui-panels` | `ui-panels/panel-themes.png` | multi-theme 9-slice panel sheet |
| `inventory` | `inventory/inventory-panel.png` | wooden inventory panel plus slot |
| `dialog` | `dialog/dialog-box.png` | parchment dialogue box |
| `leaderboard` | `leaderboard/leaderboard-panel.png` | royal ranking panel |
| `settings` | `settings/settings-panel.png` | gear-and-machinery settings panel |
| `status-bars` | `status-bars/status-bars.png` | HP, MP, EXP bar sheet |
| `game-views/top-down` | `game-views/top-down/view-overview.png` | top-down JRPG overview scene |
| `game-views/side-view` | `game-views/side-view/view-overview.png` | side-view platformer overview scene |
| `game-views/isometric` | `game-views/isometric/view-overview.png` | isometric RPG overview scene |

## Prompt Notes

The prompts were shaped from the existing guides in:

- `prompts/character-guide.md`
- `prompts/ui-panel-guide.md`
- `prompts/button-guide.md`
- `prompts/hud-elements-guide.md`
- `prompts/game-views-guide.md`

Each generated asset was constrained to:

- keep a retro pixel-art game-asset look
- avoid text and watermarks
- remain usable as a representative folder-level reference image

## Next Expansion Path

If needed, this folder can be expanded in the next pass from representative covers into per-prompt sets such as:

- `game-views`: 3 views x 3 sets x 5 assets
- `buttons`: per-theme per-state exports
- `ui-panels`: per-theme single-panel exports
- `characters`, `enemies`, `npcs`: one file per subject
