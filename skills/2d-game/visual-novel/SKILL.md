---
name: visual-novel
description: >-
  Entry point for a visual novel or adventure-game (AVG) scene set — character
  sprites with expression sets, backgrounds by time of day, a script with
  branching from narrative-choice, voiced lines when TTS is available, and a
  playable web build. Absorbs the earlier create-avg skill. Use when the user
  says "visual novel", "AVG", "otome", "dating sim", "text adventure with art".
metadata:
  title: Visual Novel
  category: 2d-game
  triggers: visual novel; AVG; otome game; dating sim; text adventure with pictures
---

# Visual Novel

Make a scene set the reader can click through tonight.

## What the user gets

| Deliverable | Format |
|---|---|
| Style card | one of the VN sub-styles (modern anime, 90s anime, painterly, western comic, 3D-toon) chosen from reference cards |
| Character sprites | full-body standing sprites, 6–8 expressions each, same pose and light |
| Backgrounds | 3/4 or straight-on room plates by time of day (morning, dusk, night, rain) |
| Script | scenes with speaker, line, expression tag, background tag; branches from `narrative-choice` |
| Voice (optional) | per-line audio via `film-dialogue-voiceover` when TTS is configured |
| Build | web runtime (text box, name plate, sprite swap, background fade, choice menu) |
| CG stills (optional) | key illustrated moments |

## Rules this entry enforces

- **Sprites share a pose and a light.** Expressions change the face and hands only; the body stays so swaps do not jump.
- **Backgrounds are plates.** Each room is one locked plate with time-of-day variants generated from it, so the desk is in the same place at night.
- **Expression tags are a fixed list.** `neutral · smile · surprise · anger · sad · blush · thinking · shout` — the script uses only these, and every character has all of them.
- **Lines are ≤2 sentences.** VN text boxes are small; long lines are split with a click.
- **Choices cost.** From `narrative-choice`: both options give and take something; consequences appear later.
- **Voice is audio-first.** If TTS exists, lines are generated as audio and the runtime plays them; if not, the skill says so and ships text-only.

## Example

```text
Style: modern anime (card E)
Cast: Ana (creator) · Tom · Priya — 8 expressions each
Backgrounds: Ana's apartment (night, dawn) · campus steps (overcast) ·
     Rib Street (game-world, amber dusk)
Script excerpt:
  [bg apartment_night] [ana thinking]
  ANA: I've had this world in my head for years.
  [ana sad]
  ANA: I just don't know where to start.
> CHOICE: Open the link / Close the laptop
Build: web runtime, 14 scenes, 3 endings from narrative-choice state
```

## Related entries

- `narrative-choice` — the branching logic
- `romance-arc`, `mystery-detective` — story spines common in VNs
- `film-dialogue-voiceover` (core) — voiced lines
