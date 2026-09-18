---
name: platformer-level
title: Platformer Level
description: Entry point for designing a side-view or 3D platformer level — the movement verbs available, the hazard vocabulary, a difficulty curve built from those two lists, a room-by-room layout with checkpoints, and reference plates for each biome. Use when the user says "level", "platformer", "jump and run", precision platforming, or asks for a stage.
category: game-design
triggers:
  - "platformer level"
  - "design a level"
  - "jump and run stage"
  - "a stage for my game"
---

# Platformer Level

Design a level that teaches, tests, and then twists what it taught.

## What the user gets

| Deliverable | Format |
|---|---|
| Movement verbs | the 3–6 things the player can do (jump, dash, wall-cling, glide…) with numbers |
| Hazard vocabulary | 5–10 hazards, each defined by which verb defeats it |
| Difficulty curve | room-by-room: introduce → practise → combine → twist → rest |
| Layout | rooms with entrances, exits, checkpoints, secrets, the one screenshot moment |
| Biome plates | 3/4-angle environment plates per biome, via `environment-scene` |
| Tile/prop sheets | recurring platforms, doors, collectibles, via `weapon-prop` |
| Flythrough (optional) | 15–30 s video of the intended route |

## What the user has to do

1. Say what the player can do and where the level is (or point at the project).
2. Approve the one-page curve.
3. Pick plates by number.

## Rules this entry enforces

- **Verbs before rooms.** No layout until the movement list is fixed with numbers (jump height in tiles, dash length, coyote time). Rooms are made of verbs.
- **Every hazard names its counter-verb.** A pit is answered by jump; a laser by dash; a crumbling floor by speed. A hazard with no counter is a wall.
- **The curve is written.** Introduce one idea in safety → practise it with mild penalty → combine two → twist (the idea used backwards) → rest. Per idea. The level is a sequence of these.
- **Checkpoints after every twist.** Failure costs seconds, not minutes.
- **One screenshot moment.** The vista, the reveal, the moment the level's identity is visible in a single frame. Designed, not hoped for.
- **Secrets reward the verb.** A hidden room is reached by using a verb in an unexpected place, not by luck.
- **Biome contrast.** If the level changes biome, the palettes contrast (warm/cold, open/closed) per `film-direction` rules.

## Example

```text
Verbs: jump (3 tiles) · dash (4 tiles, 1 airborne) · wall-cling (2 s)
Hazards: pit (jump) · spike wall (dash through gap) · falling pillar (speed) ·
  crumble floor (don't stop) · patrol drone (dash-cancel) · wind (cling)
Curve:
  R1 flat, one pit, checkpoint     introduce jump
  R2 three pits of rising width       practise
  R3 pit + spike gap    combine jump+dash
  R4 spike gap over pit, must dash first   twist
  R5 rest room, collectible, vista       the screenshot moment
  R6 wind corridor introduces cling…
```

## Related entries

- `environment-scene` — biome plates
- `roguelike-generator` — procedural variant of the same ideas
- `pixel-art-sprite` — tiles and player sprite for 2D
