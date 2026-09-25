---
name: environment-scene
description: >-
  Entry point for a location asset — a 3/4-angle plate in the project style, a
  multi-angle coverage set (main, reverse, detail), a written spatial lock
  naming every fixed landmark, time-of-day and damage variants, and an optional
  3D scene. Use when the user says "environment", "location", "scene", "arena",
  "room", "build the place where...".
metadata:
  title: Environment Scene
  category: 3d-assets
  triggers: >-
    environment for my game; build the location; the arena; the room where; 3D
    scene
---

# Environment Scene

Make a place that stays the same place from every angle and in every shot.

## The problem this solves

A video model re-builds the room on every cut. Give it one plate and it copies the *look*; it does not remember where the door was. Two things fix this, and this skill produces both:

1. **Multi-angle coverage.** Three plates of the same space — main, reverse, detail — so any shot has a reference from roughly its own angle.
2. **A spatial lock.** A written floor plan naming every fixed thing and where it is, repeated at the top of every prompt that uses the location.

## What the user gets

| Deliverable | Format |
|---|---|
| Main plate | 3/4 angle, two walls visible, exact furniture count, palette from direction |
| Reverse plate | the same room from the opposite corner |
| Detail plate | the surface the actors will use (table, altar, console) |
| Spatial lock | `SPATIAL LOCK — <name>: door frame-LEFT; table CENTRE; …` as text |
| Variants | time of day · weather · damage state, each from the main plate as reference |
| 3D scene (optional) | blockout mesh with camera path, when a provider is configured |
| asset-map entry | landmarks list, overrides ("plate is empty — shots must populate") |

## What the user has to do

1. Describe the place, or point at existing project assets.
2. Pick a style by letter if the project has none.
3. Pick the main plate from 2–4 candidates. Reverse and detail are generated from it.

## Rules this entry enforces

- **3/4 angle, always.** Straight-on plates are flat backdrops; the model reads no depth from them.
- **Counts are locked.** "Exactly two chairs." An unlocked count is how the third chair appears.
- **Palette and time of day in words.** Kelvin, direction, 60:30:10 in named colours. Vague mood words produce nothing pickable.
- **Reverse and detail from the main.** Generated with the main plate as image reference and a one-line camera delta. Re-describing from text produces a different room.
- **Spatial lock is mandatory output.** Every location ships with its lock text. `film-shot-prompt` pastes it verbatim.
- **Plate is reference only.** Every prompt that uses it says so, plus any override (empty stands → fully populated).
- **Variants share the base.** Night, rain, ruined — each from the main plate with a delta, so the geometry never moves.

## Spatial lock format

```text
SPATIAL LOCK — Ana's apartment (identical in every shot):
  entrance door: frame-LEFT on the near wall
  shared table: CENTRE, taped-paper wall directly behind it
  bunk A (navy curtain): RIGHT wall, leader's desk beneath
  bunk B (yellow curtain): LEFT wall, prankster's desk beneath
  nerd's desk: FAR wall under the window
  string lights: ceiling, between the bunks
Furniture, curtain colours and door position never change between shots.
```

## Example

```text
User: The boss arena — a cathedral-sized chamber inside a titan's chest.

Skill: Style B (UE5). Main plate ×4… c2 shows two walls, six lanterns exactly,
 the dais centred, the sealed arch at the rear. Lock c2?
User: Yes.
Skill: Reverse (from the arch looking back) ✓ · Detail (the dais and core
       socket) ✓ · Variants: battle-damaged, golden-light ✓
   SPATIAL LOCK written: dais CENTRE · arch REAR · lanterns 3 left 3 right ·
       core socket rear wall above the arch · fog to ankle height.
```

## Related entries

- `boss-battle` — the fight staged here
- `horror-chase` — routes through several linked environments
- `weapon-prop` — objects that live in the scene and recur
