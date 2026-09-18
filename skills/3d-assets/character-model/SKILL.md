---
name: character-model
title: Character Model
description: Entry point for producing a game-ready character — locked 3-panel reference sheet in the project style, turnaround and expression sheets, wardrobe variants, and (where a 3D model generator is available) a textured mesh with the sheet as its reference. Use when the user says "character model", "3D character", "make a character for my game", or asks for a consistent character across many shots.
category: 3d-assets
triggers:
  - "character model"
  - "3D character"
  - "make a character for my game"
  - "turnaround sheet"
  - "keep this character consistent"
---

# Character Model

Make a character that looks like itself in every shot and every engine.

## What the user gets

| Deliverable | Format |
|---|---|
| Reference sheet | 3-panel (front / back / face), plain grey, even light — the identity lock every other skill uses |
| Turnaround | 8-view (front, 3/4, side, 3/4 back, back, and mirrors) from the locked sheet |
| Expression sheet | 6 expressions on the locked face |
| Wardrobe variants | same face, new outfit — from a prop sheet of the outfit, never from text alone |
| 3D mesh (optional) | textured GLB/FBX generated from the sheet when a 3D model provider is configured |
| asset-map entry | name, file, public URL, description, continuity-critical features |

## What the user has to do

1. Describe the character in a sentence, or upload a reference.
2. Pick a style by letter if the project has none.
3. Pick the sheet from 2–4 candidates.

## How it runs

```text
film-style-library  → sheet_modifier for this style
film-character-sheet     → 3-panel sheet ×4 → reject test → user picks → lock → public URL
turnaround pass   → 8 views, sheet as reference, same backdrop and light
expression pass       → 6 faces, sheet as reference
wardrobe variants   → film-prop-sheet (outfit on ghost mannequin) + two-image edit
3D pass (optional)   → mesh generator with sheet as image reference; preview render;
   style guard checks the render against style.json
```

## Rules this entry enforces

- **The sheet is the source of truth.** Turnarounds, expressions, variants and meshes are all generated *from* the locked sheet as an image reference, never re-described from text. Text re-description is how faces drift.
- **Grey, even, shadowless.** Any light pattern on the sheet becomes a feature the video model reproduces in every scene.
- **One asymmetric marker.** A mole, a scar, a heavier brow. "Handsome, stubble" describes a thousand men.
- **Feet in frame, true back view.** Proportions and the back must be known or they drift when the character turns.
- **Wardrobe is a two-image edit.** Character sheet + outfit sheet → same face in the new clothes. Describing the outfit in words gives a different person.
- **Style guard.** Every output is checked against `style.json`. A photoreal face in an anime project stops the pipeline with a one-line fix.
- **Continuity-critical list.** `asset-map.json` names the features a viewer would notice changing; every downstream prompt repeats them.

## 3D generation note

When a 3D provider is available (Meshy, Trellis, Hunyuan3D, or an MCP tool), the sheet's front panel is the image reference and the style header is the text. The preview render is compared to the sheet; a mismatch in silhouette or palette is a reject. Without a provider, the skill stops after the 2D deliverables and says so.

## Example

```text
User: A 30-year-old cartographer-knight, Spanish-Korean, black braid, leather
      armour, brass compass. She appears in 6 of 8 blocks.

Skill: Style is B (UE5). Generating 4 sheets… c3 has catchlights, true back,
       feet visible, scar through right brow on all panels. Lock c3?
User: Yes.
Skill: Turnaround (8) ✓ · Expressions (6) ✓ · Variant "battle-damaged" from
       prop sheet ✓ · asset-map: ines · continuity_critical: face, braid,
     brow scar, compass on left hip, map case.
```

## Related entries

- `boss-model` — same pipeline scaled to a boss
- `weapon-prop` — the weapon as its own locked sheet
- `hero-skill-system` — what this character can do
