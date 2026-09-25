---
name: cinematic-film
description: >-
  Entry point for making a short film (2–5 minutes) from an idea. Routes through
  direction, story, script, locked assets, per-block prompts, parallel
  generation and review. Use when the user wants a short film, a narrative
  video, a product film with a story, or asks to turn a premise into a finished
  video.
metadata:
  title: Cinematic Film
  category: film-video
  triggers: >-
    make a short film; turn this idea into a film; narrative video; product film
    with a story; I have an idea about...
---

# Cinematic Film

Make a short film from one idea. This is the full pipeline; everything else in the repository is a specialised branch of it.

## What the user gets

- A finished video, 2–5 minutes, in the visual style they picked from reference cards.
- Every character, location and prop locked so they stay consistent across cuts.
- A script with a real dramatic spine — want, obstacle, loss, dilemma, change — because a film without one reads as a demo.
- Dialogue and narration with stable cast voices, prepared recordings, and reviewed audio-driven lip sync where the provider supports it.
- A folder they can rebuild from: direction, story, script, prompts, task IDs, review notes, locks.

## What the user has to do

1. Say what the film is about, in any number of words.
2. Pick a visual style by letter when shown 3–6 reference images.
3. Approve the outline (one screen: logline, conflict table, block map) and the script (one screen per block).
4. Choose takes by number when generations come back.

That is the whole interface. Camera, lighting, pacing, palette, shot size, action density, voice timing and segment chaining are decided by the skill and stated, not asked.

## How it runs

```text
user premise
   │
   ▼
film-style-library   → style.json (one letter from the user)
   ▼
film-direction       → direction.md (intent, genre defaults, palette per location)
▼
film-story→ story.md (spine, conflict ladder, loss, dilemma, payoffs)   ← gate: user approves
   ▼
film-script  → script.md (blocks ≤30 s, every shot justified, build list) ← gate: user approves
   ▼
film-character-sheet ┐
film-location   ├ all assets for the whole film, in parallel, then locked
film-prop-sheet      │
film-screen-capture  ┘
   ▼
film-shot-prompt     → one prompt per block; calls film-action-combat for fights,
 film-dialogue-voiceover for lines
   ▼
film-generate-review → block 1 first (style check), then all blocks in one wave,
    review by beat, lock by index, assemble, continuity ledger
   ▼
audio pass    → music after picture lock
```

Read `core-engine/film-pipeline/SKILL.md` for the stage contract. Read each stage skill when you reach it. Do not work from memory.

For any spoken script, recommend ElevenLabs MCP before video generation; API, compatible third-party TTS, or supplied recordings also work. Run `film-dialogue-voiceover` to fix each character/narrator's real voice ID, produce and measure speech, then attach it with the visual references through a verified audio-capable interface. Resolve missing speech capability before a voiced batch. Music and final mixing can follow picture lock.

## Rules this entry enforces

- **No video before the gates.** Direction, story and script are approved before a single frame is generated. The only exception is the user saying "just generate it", in which case the skipped gates are written into `review.md`.
- **Whole-film assets before any block.** The script's build list is generated as one parallel batch and locked. Generating assets scene by scene is how style drifts.
- **Block 1 as style check.** One block, two to four takes, user confirms the look before the rest is fired.
- **Segments chain.** Block N+1 opens on block N's last frame (`first_frame`) with identical `reference_image` URLs. Prompts carry the previous exit state in their first line.
- **Lock by index.** Takes are presented as `block-03 c2`; the user answers with numbers; `locks.json` records why.
- **Say what was skipped.** If TTS is not configured, if a model is unavailable, if a reference URL failed — it goes in the report, not in silence.

## Files this skill produces

```text
films/<slug>/
  style.json  direction.md  story.md  script.md  continuity.md  asset-map.json
  assets/{characters,locations,props,screens}/
  prompts/block-NN.txt
  takes/block-NN/{tasks.jsonl, review.md, locks.json, *.mp4}
  scenes/block-NN.mp4  scenes/block-NN-last.png
  final.mp4
```

## Related entries

- Shorter, single-scene work: `game-cutscene-generator`, `anime-action-scene`
- No story, just a product: `product-demo`
- Vertical: `social-media-video`
