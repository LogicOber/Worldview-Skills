---
name: weapon-prop
description: >-
  Entry point for any object that must look the same every time it appears —
  weapons, relics, tools, documents with text, wardrobe on a ghost mannequin.
  Produces a locked single-object sheet on grey, a held/in-use variant, a text
  pass for anything with writing on it, and an optional 3D mesh. Use when the
  user names an object that recurs, is held in close-up, carries text, or is a
  story clue.
metadata:
  title: Weapon & Prop
  category: 3d-assets
  triggers: >-
    the sword; the artifact; a prop for; the letter says; the costume; weapon
    design
---

# Weapon & Prop

Make an object that is the same object in every shot.

## Which objects need this

| Object | Needs a sheet? | Why |
|---|---|---|
| Appears in two or more blocks | yes | recurrence is identity |
| Held in close-up | yes | it fills the frame; it must be real |
| Carries text, a number or a logo | yes, plus a text pass | text is where drift shows first |
| Is a story clue (the compass, the brooch) | yes | continuity-critical by definition |
| Marks an era (an old ball, a homemade trophy) | yes | props sell the period fastest |
| Set dressing (lamps, plants) | no — lives in the location plate | nobody tracks it |
| Crowd items in bulk | no — text only | no individual identity |

Rule: if the next generation will show this object and a viewer would notice it changed, it gets a sheet.

## What the user gets

| Deliverable | Format |
|---|---|
| Object sheet | one object, 45° three-quarter, whole object in frame, seamless grey, flat reference light |
| Held / in-use variant | the object in a hand or on a body, from the sheet as reference |
| Text pass | exact words rendered legibly, as a separate edit on the locked sheet |
| Wardrobe sheet | front and back on a ghost mannequin, no body, colours and marks exact |
| Wear variants | pristine · used · damaged, each from the base |
| 3D mesh (optional) | when a provider is configured |
| asset-map entry | ≤15-word description, blocks it appears in, `continuity_critical` list |

## Rules this entry enforces

- **One object, one view, grey background.** No hands, no scene, no text overlays. Hands and scenes come later as variants.
- **Real size cues.** State the dimension in the prompt ("4 cm brass compass"). Without it a compass becomes a dinner plate.
- **Wear is physical, not adjectival.** "Patina in the recesses, brass bright on the high points, glass with fine scratches" — not "old".
- **Two-pass for text.** Render the object, pick, then edit the pick with the exact words. Asking one generation to nail the design and the lettering produces neither.
- **Text in the video prompt.** Exact words quoted, ≥2 s hold, an angle that makes it legible (high angle on a page). If the text is a story clue, the pre-rendered page is passed as a reference.
- **Wardrobe on a ghost mannequin.** No face, no body — so the face of the eventual wearer is not contaminated.
- **Style guard.** A photoreal prop in an anime project is rejected before use.

## Example

```text
User: A brass compass. The needle never points north. It matters in six scenes.

Skill: Sheet ×4… c1: 4 cm case, patina in the engraving, needle 15° off north,
    leather cord. Lock c1?
User: Yes.
Skill: Held variant (in a woman's hand, from the character sheet) ✓ ·
     Belt-mounted variant ✓ · Glowing-needle variant for the game world ✓ ·
     asset-map: compass · continuity_critical: case shape, off-north needle,
       cord knot.
```

## Related entries

- `character-model` — who holds it
- `environment-scene` — where it sits
- `boss-model` — the boss's weapon uses this same pipeline
