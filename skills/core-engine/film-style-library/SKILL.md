---
name: film-style-library
description: Lock a film or game-video project to one visual language before asset production. Use the user's references when available or create a small project-specific comparison board when an authorized image tool is present. Produces the style header, asset-sheet modifier, negative constraints, and model routing consumed by downstream Skills.
---

# Film Style Library

## Why this stage exists

Words such as “animated,” “cinematic,” and “realistic” leave too many production decisions open. Line weight, material response, lighting, motion cadence, lens behavior, and surface detail can produce very different results inside the same label. A small visual comparison usually resolves that ambiguity faster than another paragraph of adjectives.

The first locked asset also influences every later reference. If its visual language is wrong, characters, locations, props, and shots inherit the mismatch. Lock style before producing those assets.

## What this Skill does

1. Inspect the request, existing project, and any user-supplied references.
2. Infer a likely direction when the evidence is already strong; otherwise compare three or four relevant directions.
3. Lock the selected direction in `films/<slug>/style.json`.
4. Emit four fields every downstream Skill can reuse:
   - `style_header` for image and video prompts;
   - `sheet_modifier` for character, location, and prop sheets;
   - `negative_block` for the main forms of visual drift;
   - `model_routing` for tools actually available in the project.
5. Check every later reference against the lock before it enters generation.

## Build the comparison from project evidence

Prefer evidence in this order:

1. approved user-supplied images;
2. an existing project style guide or locked production asset;
3. project-specific comparison frames made with an authorized image tool;
4. concise text cards when no image evidence can be created.

Do not ship or depend on a permanent universal image library. A generic card can carry the wrong subject, era, palette, or production assumptions into a new project. Comparison frames belong to the current project and must keep subject, framing, action, aspect ratio, and major palette constant. Change only the visual-language fields the user is choosing.

Useful direction families include:

| Direction | Shape and surface | Light and color | Motion and camera |
|---|---|---|---|
| Photographic cinema | Natural anatomy and materials | Motivated light and restrained grade | Physical lenses and controlled camera mass |
| Real-time game cinematic | Game-ready geometry and PBR surfaces | World lighting that can survive runtime | Readable staging and camera collision awareness |
| Graphic 2D animation | Designed silhouettes, line weight, and cel regions | Flat palettes and hard shadow groups | Held poses, smears, impact frames, selective camera motion |
| Stylized 3D animation | Simplified proportions and shaped materials | Soft bounce and controlled gradients | Clear arcs, expressive timing, stable spatial continuity |
| Documentary observation | Unstaged texture and practical detail | Available light and muted correction | Restrained handheld framing led by events |

Only present directions that fit the story and delivery format. Do not make the user choose between unrelated scenes and call that a style choice.

## Conversation pattern

```text
User: I want an animated short about two rival swordsmen.

Agent: Which direction is closest to what you see?
  A. Graphic 2D — sharp silhouettes, cel regions, impact frames
  B. Stylized 3D — shaped materials, soft bounce, expressive timing
  C. Photographic — natural materials, motivated light, physical lenses
  Reply with a letter, or send a reference image.

User: A

Agent: Locked: Graphic 2D. Every character sheet, location plate, prop sheet,
and shot prompt for this project will use that visual language.
```

If the user already supplied consistent references, confirm the inferred direction in one sentence and continue. Ask only when the evidence conflicts or two materially different directions remain plausible.

## Create project-specific comparison frames

When the project has no suitable references and image generation is available:

1. Record the exact subject, framing, action, aspect ratio, and major palette shared by every candidate.
2. Create no more than four candidates.
3. Change only shape, surface, light, line, motion treatment, and lens behavior.
4. Save candidates under `films/<slug>/style-comparison/` with their generation record.
5. Describe each visible difference in one sentence.
6. Record the selected file in `style.json`; rejected candidates are not downstream references.

If image generation is unavailable or unauthorized, use text cards and set `reference` to `null`. Do not claim that a verbal choice has the same evidentiary strength as a selected image.

## Style lock file

Write `films/<slug>/style.json`:

```json
{
  "style_id": "graphic-2d",
  "style_name": "Graphic 2D animation",
  "reference": "films/<slug>/style-comparison/selected.png",
  "style_header": "Graphic 2D animation with designed silhouettes, clean line weight, hard cel-shadow groups, controlled impact frames, and stable spatial continuity.",
  "sheet_modifier": "Production sheet with the locked silhouette, line, palette, and cel-shadow rules on a plain neutral background.",
  "negative_block": "No photographic skin, no generic 3D render, no painterly texture drift, and no changes to the locked palette or proportions.",
  "model_routing": {
    "sheets": "<available image tool or manual workflow>",
    "video": "<available video tool or runtime>",
    "video_draft": "<optional available draft path>"
  },
  "locked_at": "<ISO-8601 timestamp>"
}
```

Use only tools verified in the current environment. A missing provider, model, credential, or budget is a capability gap, not permission to invent availability.

## Guard later references

Before any image becomes a generation reference:

1. Compare silhouette, proportions, surface language, palette, lighting, and line treatment with the selected reference.
2. If it matches, record the check and continue.
3. If it conflicts, stop before spending quota. Name the mismatch and offer two clear choices: rebuild that asset inside the lock or deliberately reopen the project style.
4. If the style is reopened, invalidate downstream assets and prompts that depended on the earlier lock.

## Output

- `films/<slug>/style.json`
- optional `films/<slug>/style-comparison/` candidates and generation record
- one confirmation line naming the selected direction
- a list of any existing assets that conflict with the lock

Do not generate production characters, locations, or props before the style lock exists.
