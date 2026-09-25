---
name: pixel-art-sprite
description: >-
  Entry point for 2D pixel assets — a character sprite with a locked palette and
  grid, idle/walk/attack/hurt animation strips, a tileset that shares the
  palette, and a style card so every later sprite matches. Use when the user
  says "pixel art", "sprite", "16-bit", "8-bit", "tileset", "retro 2D".
metadata:
  title: Pixel Art Sprite
  category: 2d-game
  triggers: pixel art; sprite sheet; 16-bit character; tileset; retro 2D game
---

# Pixel Art Sprite

Make sprites that share one grid, one palette and one silhouette rule.

## What the user gets

| Deliverable | Format |
|---|---|
| Style card | grid size (16/32/64), palette (8–32 colours, listed), outline rule, shading rule, era reference |
| Character sprite | idle frame at the grid size, on transparent/neutral |
| Animation strips | idle (4–6 f) · walk (6–8 f) · attack (4–6 f) · hurt (2–3 f) · death (4–6 f) |
| Tileset | ground, wall, edge, decoration — same palette, seamless |
| Enemy / prop sprites | from the same style card |
| Preview | assembled scene mock-up showing everything together |

## Rules this entry enforces

- **Grid first.** Every asset is generated at the locked pixel size and never scaled by the model. A 32-px character next to a 16-px tile is two games.
- **Palette is a list, not a mood.** Hex values, counted. The style card carries it; every prompt pastes it.
- **Silhouette test.** The character is recognisable as a black shape. Hats, weapons and hair do the work.
- **Consistent light direction.** Top-left, stated once, obeyed in every sprite.
- **Animation from the idle.** Each strip is generated with the idle frame as reference and a one-line delta per frame. Re-describing the character per frame produces five characters.
- **Era reference, not "retro".** "SNES-era 16-bit with 4-tone ramps and dithering" is a spec; "retro" is not.
- **Seamless tiles verified.** Edges are checked by tiling the output 3×3 before locking.

## Example

```text
Style card: 32 px · 24-colour palette (listed) · 1-px dark outline ·
  3-tone ramps, no dithering · top-left light · Celeste-era
Character: knight-cartographer · black braid reads as a single dark shape ·
        brass compass as a 2-px accent on the hip
Strips: idle 6 f (breath) · walk 8 f · attack 5 f (wind-up on f1–2) · hurt 3 f
Tileset: bone-brick ground · rib-wall · lantern (2-frame flicker) · fog overlay
```

## Related entries

- `side-scroller` — the level that uses these sprites
- `platformer-level` — level design
- `character-model` — the same character in 3D or as a sheet
