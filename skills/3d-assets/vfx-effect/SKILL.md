---
name: vfx-effect
description: >-
  Entry point for a reusable visual-effect design — an ability, an explosion, a
  spell, a transformation, a weather event — defined as a shape grammar, a
  palette, a timing envelope and a causality rule, then produced as a reference
  board and a short loop or one-shot clip. Use when the user names an effect, an
  ability's look, a magic system, or asks "what does it look like when…".
metadata:
  title: VFX Effect
  category: 3d-assets
  triggers: >-
    the effect when; what does the spell look like; explosion; magic VFX; the
    ability's visual
---

# VFX Effect

Design an effect the viewer can read in one frame and recognise every time.

## What a good effect has

- **A shape grammar.** Rings, shards, threads, arcs, columns. One family per source. The mage's effects are circles and constellation lines; the warrior's are straight edges and walls. Mixing grammars across one character reads as random.
- **A palette.** Two colours and one accent. Stated in the design, repeated in every prompt.
- **A timing envelope.** Wind-up (the tell), release, peak, decay — in seconds. A 0.3 s tell that the audience learns to read is what makes an ability fair in a game and legible in a film.
- **A cause.** The effect follows a physical event: blade contact, palm strike, landing, the core reaching critical. Written cause-first in every prompt.
- **A scale rule.** How big at rank 1, how big at ultimate. The ultimate is a different scale, not a different colour.

## What the user gets

| Deliverable | Format |
|---|---|
| Effect design | shape grammar · palette · timing envelope · cause · scale · sound family |
| Reference board | 4-panel: tell · release · peak · decay |
| Clip | 3–6 s loop or one-shot, on a neutral or in-context background |
| Variants | rank-1 / ultimate · hit / miss · on flesh / on stone / on metal |
| Sprite sheet (optional) | frame strip for 2D engines |

## Rules this entry enforces

- **Cause first.** Every prompt states the physical event, then the effect. "Blade contacts bone; only then does the burn spread along the crack." Effects that precede their cause are the most common action failure.
- **One grammar per source.** Enforced across a character's kit or a boss's phases.
- **Tell is mandatory.** 0.2–1.0 s of readable wind-up on the board and in the clip.
- **Peak does not hide the subject.** The character's face and weapon silhouette stay readable at peak; an effect that whites out the frame for more than 3 frames is rejected.
- **Style ceiling.** Photoreal styles express effects through light, particulate and camera; drawn speed lines and impact frames belong to anime and stylised 3D only.
- **Damage without gore when the style calls for it.** A burn-and-crumble chain (heat mark → cracks spread → carbonise → collapse to ash) replaces blood in ZeroBlood projects. Written as a chain so the model does not skip to the end.

## Example

```text
BONE RING (boss signature)
  Grammar: concentric rings, slab uplift
  Palette: cyan-green core light · bone white · dark iron accent
  Envelope: tell 0.8 s (cyan climbs the blade) → release (blade strikes floor)
    → peak 0.6 s (ring of slabs erupts, fog reverses) → decay 1.2 s (dust settles)
  Cause: blade contact with the arena floor
  Scale: 8 m radius phase 2 · 14 m phase 3
  Sound: sub-bass thud, stone shear, wind reversal

CONSTELLATION SHIELD (mage counter)
  Grammar: circle + connecting lines
  Palette: blue-white · pale gold · none
  Envelope: tell 0.3 s (hands rise, points of light appear) → release → peak
    1.5 s (ring holds, projectiles and fog freeze inside) → decay 0.5 s
  Cause: both palms raised and opened
  Scale: 3 m rank 1 · 6 m ultimate
  Sound: glass chime, then silence inside the ring
```

## Related entries

- `hero-skill-system` — the kit these effects belong to
- `boss-battle` — signature skills and their counters
- `film-action-combat` (core) — how effects are timed inside a fight prompt
