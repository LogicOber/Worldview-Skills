---
name: boss-model
description: >-
  Entry point for a large-scale enemy asset — the boss reference sheet with
  scale reference, a 4-panel action board (idle, signature skill, taking damage,
  phase break), damage-state variants, and an optional 3D mesh. Built on
  character-model with the additions a boss needs: readable silhouette at
  distance, a core or weak point, and a visual story of what it used to be. Use
  when the user says "boss model", "giant enemy", or "monster design".
metadata:
  title: Boss Model
  category: 3d-assets
  triggers: boss model; giant enemy; monster design; design the final boss's look
---

# Boss Model

Make an enemy the player can read from across the arena and remember after it falls.

## What makes a boss model different from a character model

- **Silhouette at distance.** The shape must be identifiable at 50 m and at 5 m. Asymmetry helps: one oversized arm, one broken horn.
- **A weak point that shows.** The core, the exposed heart, the cracked plate — the place the player is meant to hit is visible in the design, not only in the rules.
- **A past.** The best bosses were something else: a guardian, a person, a machine that still half-works. The design carries that history in its materials.
- **Phase states.** The boss changes as it is beaten. Each phase needs a variant sheet: armour cracked, eyes changed, limb lost.
- **Scale reference.** Every sheet includes a human-height figure or a known object so the model, the engine and the video all agree on size.

## What the user gets

| Deliverable | Format |
|---|---|
| Boss sheet | 3-panel (front / back / detail of weak point), grey, even light, scale figure |
| Action board | 4-panel: idle · signature skill wind-up · being struck at the weak point · phase-break state |
| Phase variants | one sheet per phase, generated from the base sheet |
| Weapon sheet | via `weapon-prop` if the boss carries one |
| 3D mesh (optional) | from the sheet, when a provider is configured |
| asset-map entry | with `scale_m` and `weak_point` fields |

## What the user has to do

1. Describe the boss and, ideally, what it used to be.
2. Pick a style by letter if the project has none.
3. Pick the sheet from 2–4 candidates.

## Rules this entry enforces

- Everything in `character-model`, plus:
- **Scale figure in every panel.** A 1.8 m human silhouette or a named object.
- **Weak point drawn.** Named in the prompt, visible on the sheet, framed in the detail panel.
- **Action board before video.** The 4-panel board is the reference the video prompt uses for how the boss *moves*; a static sheet alone produces a statue that slides.
- **Phase variants share the base.** Generated with the base sheet as image reference plus a one-line delta ("armour on the left shoulder cracked open, cyan light inside"). Never re-described from scratch.
- **Readable materials.** Bone, iron, chitin, flesh — each with a stated wear. "Weathered ivory bone with hairline cracks filled with cyan light" survives; "scary monster" does not.

## Related entries

- `boss-battle` — the fight this model is for
- `character-model` — the base pipeline
- `weapon-prop` — the greatsword
