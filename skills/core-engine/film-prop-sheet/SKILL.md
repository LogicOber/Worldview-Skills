---
name: film-prop-sheet
description: Stage 4 of the AI film pipeline — generate and lock reference sheets for recurring props and wardrobe items (match ball, aged ball, homemade trophy, football kit on a ghost mannequin, notebook), do text/number/logo edits as a separate pass, and handle props that carry legible on-screen text. Use when a prop appears in more than one shot, must be worn consistently, carries text, or is a story clue.
---

# Prop & Wardrobe Sheet (stage 4)

## Why

A prop that recurs is an identity, like a face. A prop that carries text is a place where the model will write scribbles unless told the exact words. A prop that is a story clue (the brooch in an Odyssey, the hand-painted "SANTIAGO 30") must look identical every time or the clue is broken. All three earn a sheet, locked once, referenced everywhere.

## Which props need a sheet — decision

| Prop | Sheet? | Reasoning |
|---|---|---|
| appears in ≥2 blocks (match ball) | yes | recurrence = identity |
| carries text/number/logo (kit, notebook) | yes + text pass | text is where slop shows first |
| held in close-up (notebook, trophy) | yes | fills the frame; must be real |
| story clue / distinctive item (a scarf crest, a brooch) | yes | continuity-critical by definition |
| era marker (old ball, homemade trophy) | yes | props sell the era fastest |
| set dressing (lamps, plants) | no — lives in the plate | nobody tracks it |
| generic crowd items (flags, scarves en masse) | no — text only | no individual identity |

Rule of thumb from the pipeline author: *if you predict the next generation will show this object and a viewer would notice it changed, attach its image. If you predict it won't be in frame, don't.*

## Spec — single object

```text
SUBJECT — one <prop>, <real size>, photoreal. Single object, single clean hero presentation. <material, surface, construction>. <graphic / print>. <wear level: showroom / lightly used / heavily aged: yellowed panels, cracked seams, frayed stitching, grass stains, under-inflated>.
VIEW — one object, 45° three-quarter front, whole object in frame, centred.
BACKGROUND — seamless neutral mid-grey studio sweep. No gradient banding, no horizon line, no cast props, no text overlays.
LIGHTING — flat even reference lighting: broad soft key at 45°, equal fill opposite, subtle top rim to lift the object off the grey. WB 5600K, soft contact shadow.
COLOR (60:30:10, locked at asset stage) — 60% <…> / 30% <…> / 10% <…>.
STYLE — 8K photoreal product/reference photography. Real materials, real weight, correct contact shadow.
CONSTRAINTS — grey bg only; one object; single view; even legible lighting; true-to-life scale; whole object sharp. 16:9 or 4:3.
```

Era props: describe the *age* physically (peeling panels, patchy gold paint over rust, wire and twine bindings, no welds). "Old" alone gives a clean ball with a sepia tint.

## Spec — wardrobe / kit (ghost mannequin)

```text
Prop sheet of one <team> football kit on an invisible ghost mannequin — no body, no head, no face. Two views side by side on one 16:9 frame: FRONT (left) and BACK (right). Jersey, shorts, socks, boots present and aligned as worn.
Colours: <exact>. Crest: <position, simple mark>. Number <NN> on the back in <white block numerals>. Real knit texture and drape.
Plain neutral grey seamless background, flat even studio light, 5600K, soft contact shadow under the boots. Photoreal; no text other than the number.
```

Vibrant is fine — the video model dims it to scene light.

## Two-pass rule: render, then edit

Never ask one model to nail a design *and* its fixes in one pass; a word-level fix is a different job than a render.

1. **Render** with `gpt-image-2`, batch of 4, pick.
2. **Edit** the pick with the pick as reference and a one-line instruction:

```bash
cohub generate "Change the crest to a simple hexagonal monogram and swap the number 7 to 23. Keep everything else identical — colours, cut, layout, background." \
  --model gpt-image-2 --image assets/candidates/kit/pick.png --param size=2048x1152 --param quality=high --async --json
```

If glyphs warp, retry with `gemini-3.1-flash-image-preview` (stronger at legible text).

## Props with legible text in the *video*

Text on a prop fails silently: the acting and camera can be perfect and the notebook is scribbles. Three things fix it, all of which go in the **shot prompt**, but the decision is made here:

1. Quote the exact lines: `"GUILT — missed penalty" / "Self-blame, unresolved" / "Roots: childhood / football"`.
2. Hold the surface ≥2 s in a dedicated close-up at an angle that makes text legible (high angle looking down on the page).
3. If the text is also a story clue, pre-render the written page as a prop sheet (notebook open, text already written) and pass it as a reference.

## Generate / pick / lock

```bash
SK=<abs path of film-pipeline>/scripts
$SK/batch.sh --model gpt-image-2 --copies 4 --param size=2048x1152 --param quality=high \
  --out films/<slug>/assets/candidates/ball films/<slug>/prompts/prop-ball.txt
$SK/poll.sh films/<slug>/assets/candidates/ball
```

Pick test: one object, whole and sharp; neutral grey; correct scale cues (a ball is ~22 cm, not a beach ball); text/number legible and not mirrored; no render look (glow, emissive edges, perfect symmetry). Lock to `assets/props/<name>.png`, public URL, `asset-map.json` with ≤15-word `desc`, `blocks`, and `continuity_critical` (e.g. `["number 23","crest"]`).

## Text fallback when a sheet cannot be generated

When there is no budget for a sheet, the substitute is a **unified description sentence**: one sentence, written once, pasted verbatim into every prompt where the prop appears. The sentence names material, shape, one asymmetric detail and wear:

```text
the ancient brass lamp on a round stone pedestal, four empty socket holders around its rim, worn runes engraved on the metal
```

Store it in `asset-map.json` under `text_fallback`. Never reword it between prompts — paraphrase is how the lamp gains a fifth socket. Upgrade to a real sheet the moment credits allow; the sentence then becomes the sheet's prompt.

## Every prop has an origin

A prop that matters is introduced, not discovered. The script places a beat in which someone brings it from somewhere and a line or an action says where: "the department assignment, posted an hour ago — I printed it." A prop that is simply *there* in a character's hand reads as a continuity error even when it is drawn perfectly. Check this in the script before the sheet is made; the sheet cannot fix it.

## Screens as props

A laptop or phone that must show a *real* web page is a prop whose "texture" is a screenshot. Do not describe the page; capture it — see `film-screen-capture`.
