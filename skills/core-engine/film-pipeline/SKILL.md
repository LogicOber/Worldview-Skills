---
name: film-pipeline
description: End-to-end workflow for making a short, photoreal, live-action-style AI film or cinematic product film (idea → direction → script → character/location/prop sheets → screen captures → shot prompts → parallel video generation → review/lock/assemble). Use when the user wants a short film, a cinematic scene, a product trailer shot like a film, or asks "how do we go from idea to finished AI video". Routes to the stage skills.
---

# AI Short Film Pipeline (router)

## Why this pipeline exists

A video model has no memory. It only knows what the current prompt and the current reference images tell it. Every failure in the source course — a third chair, a character in a different seat, a grandfather with the hero's face, waxy hands, scribbled notebook text, a smile after a crying scene — was the model **filling a gap the prompt left open**. So the whole discipline is: close every gap *before* spending credits, and when randomness still wins, fight it with **parallel takes**, not with one-at-a-time rerolls.

We have the advantage of hindsight. The course taught these lessons one failure at a time because that is how humans learn; a skill should not repeat the failures. It should encode the final state of knowledge and aim for **first-pass success**, then use parallelism to absorb what randomness remains.

## Stages

| # | Skill | Produces | Gate (user confirms before next) |
|---|---|---|---|
| -1 | `film-style-library` | `style.json` — one visual style locked from reference cards; style header, sheet modifier, negative block, model routing | yes (one letter) |
| 0 | `film-direction` | `direction.md` — intent, genre, quality variables, shot-logic rules, continuity ledger template | yes |
| 0b | `film-story` | `story.md` — spine(s), conflict ladder, loss, dilemma, setups/payoffs, emotion map, hook | **yes — no script until the story has a loss and a dilemma** |
| 1 | `film-script` | `script.md` — blocks ≤15 s, each shot justified, build list | **yes — hardest gate** |
| 2 | `film-character-sheet` | locked 3-panel sheets: main cast, wardrobe variants, aged variants | yes (pick) |
| 3 | `film-location` | locked 3/4-angle plates with palette | yes (pick) |
| 4 | `film-prop-sheet` | locked prop sheets (incl. text props) | yes (pick) |
| 4b | `film-screen-capture` | real screenshots of web pages/apps that must appear on screens in shots (user-supplied first; browser capture only as fallback) | yes (pick) |
| 5 | `film-shot-prompt` | one prompt per block (or per split sub-block) with @refs | yes (read prompt) |
| 5b | `film-action-combat` | action-block prompts: anchors, four-part strikes, causality, density and camera parameters — called by 5 for any fight, chase or stunt | no (automatic) |
| 5c | `film-dialogue-voiceover` | audio for every line, timing, lip-sync syntax; warns when no TTS is configured — called by 5 for any spoken line | no (automatic) |
| 6 | `film-generate-review` | parallel takes, per-beat verdicts, locks, assembled scene | yes (lock) |
| 7 | `film-end-credits` | title, director and brand cards in cinema convention (black, white, still); dissolve spec; appended after the last shot | yes (read) |

Stages 2–4b run in parallel with each other. Stage 5 needs locked assets and calls 5b/5c as needed. Stage 6 loops to 5.

**Who calls whom.** Users talk to an entry skill (`cinematic-film`, `game-cutscene`, `boss-battle`, …). Entry skills call these stages. Stages -1 through 6 are internal: they are documented so their decisions are legible, not so users have to invoke them.

**Never generate video without passing through the gates.** The only exception is the user explicitly saying "just generate it" — then note the skipped gates in `review.md` so the debt is visible.

## Order of work (whole-film, not shot-by-shot)

The course went scene by scene: assets for scene 1, shoot scene 1, assets for scene 2… That is how you learn, not how you ship. The pipeline order is:

1. **Outline** (`direction.md` + `story.md`: spine, conflict ladder, emotion map) → user approves. The story stage supplies conflict, loss and dilemma even when the user did not ask for them; most users won't.
2. **Full script**, iterated until every block, shot and line is approved. Nothing is generated until here.
3. **All assets for the whole film** — every character, variant, location, prop, screen — generated in parallel batches, picked, locked. The script's build list is the checklist.
4. **Style check**: block 1 only, `standard` (×4), on the final video model. The user confirms the look is live-action, the motion feels right, the references hold. If not, fix the prompt template, not the film.
5. **All remaining blocks** fired as one parallel wave (`standard` each; `max` for blocks the user flags as risky).
6. **Lock by index** — user names take numbers per block; assemble; then the audio pass.
7. **Audio last**: TTS lines (`higgs-tts` preferred; `qwen-audio-3.0-tts-plus` alternate), music (`suno_music_chirp_fenix`) only after the picture is locked, because timing is set by the cut.

Reasoning: every API call adds variance; every gate closed early removes a class of it. Batching the whole film also means all takes arrive together and the review is one sitting instead of eight.

## Project folder (fixed)

```text
films/<slug>/
  direction.md            stage 0: intent, genre, palette per location, quality variables in play
  script.md               stage 1: blocks, shots, justifications, build list
  continuity.md           ledger: per block → exit state of every character (emotion, wardrobe, seat, props in hand)
  asset-map.json          name → locked file/url/desc + which blocks it appears in
  assets/
    characters/  locations/  props/  screens/  candidates/
  prompts/
    block-<nn>[<a|b|c>][-v<k>].txt
  takes/
    block-<nn>/  ...takes, review.md, locks.json
  scenes/                 assembled block videos + last frames
  tasks/
```

`asset-map.json` entry shape:

```json
"santiago": {"kind":"character","file":"assets/characters/santiago.png","url":"https://…",
             "desc":"25, Spanish, lean 1.82 m, dark curly hair, stubble, marbled camp shirt, olive trousers",
             "blocks":[1,3,5,7,8], "continuity_critical":["face","hair","shirt print"]}
```

`continuity_critical` lists the features a viewer would notice if they changed. Those features must be in the sheet and in every prompt's `desc`.

## Batch modes

| Mode | Prompts | Copies | Total | When |
|---|---|---|---|---|
| `lite` | 1 | 1 | 1 | user explicitly asks for a single run |
| `standard` (**default**) | 1 | 4 | 4 | normal work |
| `max` | 4 variants | 4 | 16 | user trades credits for wall-clock; or the last standard batch was 4/4 wrong |

Reasoning: one 30 s 1080p video take can take 5–20 minutes. Serial rerolls make a 2-minute film a multi-day job. Four parallel copies of a well-specified prompt almost always yield at least one keeper per shot; `max` additionally explores four prompt axes at once so the *next* rewrite is informed by evidence, not guesses.

## Shared scripts (`scripts/` next to this file — resolve absolute path)

- `batch.sh` — fire N parallel async generations from prompt files, record task ids.
- `poll.sh` — poll, download, status table.
- `capture.sh` — screenshot a live web page for use as an on-screen prop.

## Model defaults (verify with `cohub models ls --model-type multimodal`)

| Job | Model | Params / notes |
|---|---|---|
| Character / prop / location sheets, photoreal | `gpt-image-2` | `--param size=2048x1152 --param quality=high`; ≤16 reference images |
| Edits that must preserve a reference (kit number, crest, aging, put-him-in-this-kit) | `gpt-image-2` (fallback `gemini-3.1-flash-image-preview` for legible text) | pass the locked sheet(s) as `--image` |
| Text-only mood exploration | `krea2` | never for a locked asset |
| Video draft (blocking check) | `seedance-2-0-fast` | 1080p, cheap, ≤15 s |
| Video final | **`seedance-2-5`** | `--param duration=<4–30> --param resolution=1080p --param ratio=16:9`; ≤30 reference images, **public URLs only**; `first_frame` for match cuts |
| Dialogue / VO | `higgs-tts` (clone from a prior take) or `qwen-audio-3.0-tts-plus` (design a voice) | audio pass, after picture lock |
| Music | `suno_music_chirp_fenix` | after picture lock; instrumental unless asked |

**Block length with Seedance 2.5: default 30 s.** One generation = one block; fewer calls = less variance. Go shorter (10–15 s) only when a block needs a match cut, a single line that must be isolated, or a physical beat the model must not rush. A ~2 min film ≈ 4–5 blocks of 30 s. Translate any 4K / 21:9 note in a source prompt to 1080p / 16:9 and keep the composition intent.

## Non-negotiables

0. **Read the stage skill before doing the stage.** Open `film-<stage>/SKILL.md` with the read tool at the start of each stage and run its checklist literally. Working from memory is how the skill's own rules get skipped (this happened once: an outline was written with no conflict because §1b was never consulted).

1. **Direction before script, script before assets, assets before video.** Each earlier artifact is the specification for the next.
2. **Every shot must justify itself** (see `film-direction`). If it cannot say what it reveals and what breaks if it is cut, it is cut.
3. **Continuity-critical details get their own reference image.** Faces, hairstyles, wardrobe per scene, recurring props, anything with text, any one-off character who is *featured* (an old man in close-up), any real product UI. Background crowds do not.
4. **Positive language only inside shot blocks.** Say what is; never what is not.
5. **Wide anchor first** whenever a block has more than one shot in a known room.
6. **Parallel by default.** `standard` = 4 takes. Serial rerolls are not a strategy.
7. **Lock explicitly.** Every kept take/span is written to `locks.json` with the reason. If two takes each have a good half, prefer regenerating a merged version over a hard splice (splices between different generations rarely match; the source course did it, but the author of this pipeline found it reads unnatural).
8. **Record everything** — prompt text, task ids, verdicts, locks, continuity exit-states. A film is rebuilt from its notes.
