---
name: film-character-sheet
description: Stage 2 of the AI film pipeline — build and lock 3-panel character reference sheets (full-body front, full-body back, close-up headshot on plain grey) for every character who must hold a face across cuts; derive wardrobe variants (same face in a different kit) and aged variants (the hero at 7) from the locked sheet; decide when a one-off character can be text-only and how to stop the hero's face leaking onto them. Use when any person appears in a film.
---

# Character Sheet (stage 2)

## Why

A video model reinvents a person on every generation unless it is handed one clean reference of that person from the angles it will need. The three-panel sheet (front / back / headshot) is the minimum that lets the model hold face, hair, proportions and outfit across dozens of unrelated shots. It also fixes the **voice**: dialogue models derive a voice from the look, so a locked sheet is a locked voice.

## Decision: who needs a sheet?

Ask, for each person in the script: *would a viewer notice if this person's face, hair or clothes changed between two shots?*

| Person | Sheet? | Reasoning |
|---|---|---|
| Main cast (hero, therapist, keeper, kid) | **yes** | appears across cuts; any drift is visible |
| Hero in a second wardrobe (match kit) | **yes — variant** | same face must survive a full outfit change; the model won't do it from text |
| Hero at another age (7 y.o.) | **yes — aged variant** | resemblance must read; derived from the adult sheet |
| Featured one-off (old fan in close-up) | **no sheet, but a full text description + identity-isolation clause** | appears once; description is enough; the risk is face leakage from the hero reference |
| Background (crowd, teammates, referee) | no | nobody tracks them |
| Anyone wearing a **distinctive item** that must persist (a brooch, a scarf with a crest) | item gets a **prop sheet** even if the person doesn't | the item is the identity |

## Sheet spec (fixed)

- One 16:9 image, three panels side by side, thin dark dividers, plain neutral grey seamless backdrop.
- Left: full-body front, head to toe, **shoes in frame**, standing straight, arms relaxed, facing camera.
- Center: full-body back, same pose, facing away (a true back, not 3/4).
- Right: face and shoulders, calm neutral gaze into lens.
- Light: neutral, soft, even, wrap-around, near-shadowless, 5600K, no colour cast, readable skin, **catchlights**, no glare on hair.
- Photoreal, sharp. No text, labels, swatches.
- LOCKS line: one identical person in all three views; identical backdrop and light.

Why grey and near-shadowless: any light pattern on the sheet becomes a *feature* the model tries to reproduce. A dark cheek on the sheet becomes a dark cheek in a sunlit scene. Grey has no hue to bleed into wardrobe.

## Prompt skeleton

```text
Character sheet of one <man/woman/boy>, three panels side by side, plain grey studio backdrop, thin dark dividers.

Left: full-body front, head to toe, shoes in frame, standing straight, arms relaxed, facing camera. Center: full-body back, same pose, facing away. Right: close-up of face and shoulders, calm gaze.

<NAME>: <age> y.o. <ethnicity>, <build>, ~<height>. <face shape>, <cheekbones>, <nose>, <brows>, <eye colour + expression>, <skin>, <one asymmetric marker: mole/scar/heavier brow>. <hair: colour, length, texture, cut>. <facial hair state>. <posture / energy>.

Outfit: <top — cut, colour, print>; <bottoms>; <shoes>. (Exact colours; prints described.) <Any text on garments: exact words, where, painted/printed.>

Lighting: neutral soft even wrap-around, near-shadowless, 5600K, no colour cast, readable skin texture, eye catchlights.

LOCKS: one identical person in all three views — same identity, outfit, hair, proportions; feet visible in both full-body panels; identical backdrop and light; sharp realistic photo. No extra people, no other text, no props.
```

The asymmetric marker matters: "handsome, stubble" describes a thousand men; "a small mole under the left eye, left brow slightly heavier" describes one.

## Generate (default `standard` = 4)

```bash
SK=<abs path of film-pipeline>/scripts
$SK/batch.sh --model gpt-image-2 --copies 4 --param size=2048x1152 --param quality=high \
  --out films/<slug>/assets/candidates/santiago films/<slug>/prompts/char-santiago.txt
$SK/poll.sh films/<slug>/assets/candidates/santiago
```

`max`: 4 prompt variants (e.g. vary the outfit, hair length, age-read, ethnicity read) × 4.

## Reject test (do it yourself before showing the user)

Read each candidate. Reject if any:

| Reject | Why it poisons downstream |
|---|---|
| one side of face in shadow / faces dark across panels | becomes a baked-in light pattern |
| glare or hot spots on hair | reads as a highlight feature |
| no catchlights | dead eyes in every video |
| backdrop not neutral grey, or differs between panels | hue bleeds; identity unlocked |
| feet cropped | proportions unknown |
| different person / hair / outfit between panels | identity not locked |
| back panel is 3/4 or profile | back unknown → drifts when he turns |
| text on garment misspelled | will be misspelled forever |

Most rejects are **lighting**, not likeness. Show survivors (2–4) with one-line verdicts; the user picks.

## Lock

1. Copy to `assets/characters/<name>.png`; make public (public-files skill) → URL.
2. `asset-map.json`: `kind`, `file`, `url`, `desc` (≤20 words: age, build, hair, facial hair, wardrobe), `blocks`, `continuity_critical`.
3. Note in `continuity.md` the wardrobe this sheet represents and which scenes it covers.

## Wardrobe variant (same face, new outfit) — e.g. `santiago-kit`

Two-input edit, not a new description. The kit comes from `film-prop-sheet` (ghost mannequin, number/crest already fixed).

```bash
cohub generate "Same three-panel character sheet layout (full-body front, full-body back, close-up headshot; plain grey; soft even light). The man from image 1, now wearing exactly the football kit from image 2 — jersey, shorts, socks, boots. Make him clean-shaven with neat, tidy hair, looking fresh and match-ready. Same face, same proportions, same eye colour." \
  --model gpt-image-2 --image assets/characters/santiago.png --image assets/props/kit.png \
  --param size=2048x1152 --param quality=high --async --json
```

4 copies; reject test **plus** "is it unmistakably the same face?". Reasoning for "clean-shaven": the script says the match was a different time in his life; the stubble is his *now*. State grooming per scene explicitly or the model carries it over.

## Aged variant — e.g. `santiago-kid` (7 y.o.)

Same idea: pass the adult sheet and describe the child version of *those* features (same eye colour, same curl, same face shape softened). Keep the outfit era-correct and add the identity hook that the story needs (hand-painted "SANTIAGO" and "30" on the back — hand-painted, not printed, so it reads as homemade). Then generate 4, pick the one that **most resembles the adult**, not the cutest.

The whole flashback must age together: younger person, warmer light, rougher props. Age one element only and it reads as a costume.

## Featured one-off character (no sheet)

Write the person fully in the shot prompt (age range, face, hair, wardrobe with team colours, what they hold), and add the identity-isolation clause because the only face reference in that prompt will be the hero:

```text
@santiago-kit is used ONLY as the distant player the fan looks toward — his face and identity must not transfer to the fan in any way. The fan is a COMPLETELY DIFFERENT person: 65–75, weathered, deep crow's-feet, grey/white hair, short grey stubble, own distinct features.
```

If a one-off character later turns out to need a second shot, promote them: build a sheet from the best frame of the kept take (`--image` the frame, ask for the three-panel sheet of "the person in this frame").

## Duplication guard

A character appeared twice in one frame — two copies of the same girl at the same table — in a production where she had been described in the cast list by text *and* implied by a second reference that also contained her. The model resolved two descriptions into two bodies.

Rules that prevent it:

- Each character appears in the cast list **once**, bound to **one** reference image. A second reference that also shows her (a group shot, a mockup with her in it) is either cropped to remove her or dropped.
- The shot prompt's Constraints block states the count and the uniqueness: "exactly 4 characters, each appearing once, never duplicated, no background figures."
- When a character is described in text (a featured one-off with no sheet), that text is the only description; no reference in the prompt may contain a similar-looking person.
- Group references (a party board, a team shot) are used for **action and spacing only**, with the line "identities come from the individual sheets; this board is for pose reference only."

## Text fallback when a sheet cannot be generated

When credits or time do not allow a sheet, the substitute is a **unified description sentence**: one sentence, written once, pasted verbatim into every prompt where the character or prop appears. Never paraphrase it between prompts; paraphrase is drift. Example:

```text
the hand-drawn city sketch on aged white paper: a crooked three-story corner building with a missing window, lopsided rooftop, unfinished lamp posts, eraser smudges
```

Record the sentence in `asset-map.json` under `text_fallback` so every skill copies the same string.

## Voice note

The sheet locks the voice. Tone direction (trembling, micro-pauses, self-resentment) goes in the shot prompt's dialogue line, not here.
