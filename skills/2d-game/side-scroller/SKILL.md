---
name: side-scroller
description: >-
  Entry point for a 2D side-scrolling game slice — parallax background layers, a
  playable level built from the platformer curve, the sprite set, and a playable
  HTML prototype when a runtime is available. Use when the user says
  "side-scroller", "2D platformer", "Metroidvania", "run and gun", "horizontal
  level".
metadata:
  title: Side-Scroller
  category: 2d-game
  triggers: side-scroller; 2D platformer; Metroidvania; horizontal scrolling level
---

# Side-Scroller

Ship a playable slice of a 2D game, not a mood board.

## What the user gets

| Deliverable | Format |
|---|---|
| Parallax set | 3–5 background layers per biome, seamless horizontally, from one locked plate |
| Level | designed via `platformer-level`, expressed as a tile map |
| Sprites | via `pixel-art-sprite` (or a painted 2D style card if the project is not pixel) |
| Prototype | HTML5 (Phaser/Kaplay or plain canvas) with movement, one hazard type, one collectible, a checkpoint |
| Trailer (optional) | 15–30 s video of the slice, camera following the player |

## Rules this entry enforces

- **Parallax from one plate.** The far, mid and near layers are cut and extended from a single locked environment plate so the biome reads as one place.
- **Horizontal seamlessness verified.** Each layer is tiled 3× before locking.
- **Movement numbers from `platformer-level`.** Jump height, dash length and coyote time are the same numbers in the design doc and the prototype.
- **One vertical slice.** One biome, one enemy type, one hazard, one collectible, one checkpoint. Breadth comes after the slice feels right.
- **Style card governs everything.** Sprites, tiles, UI and parallax share the palette and outline rule.

## Example

```text
Biome: Rib Street (bone-brick ground, rib arches, lanterns, teal fog)
Parallax: far ribs (0.2×) · mid buildings (0.5×) · near lanterns (0.8×) ·
  fog overlay (1.1×, additive)
Level: platformer-level rooms R1–R6, exported as a 16-px tile map
Sprites: knight-cartographer set + bone-runner enemy + compass collectible
Prototype: Kaplay, WASD + space, one crumble-floor hazard, checkpoint at R5
```

## Related entries

- `platformer-level` — the level design
- `pixel-art-sprite` — the sprites
- `environment-scene` — the plate the parallax is cut from
