---
name: social-media-video
description: >-
  Entry point for a vertical (9:16) short of 15–60 seconds — a hook in the first
  second, one idea, captions burned in, sound designed for phones. Reuses any
  existing project assets or film segments and recuts them for the format. Use
  when the user says "TikTok", "Reels", "Shorts", "vertical", "9:16", or asks
  for a short version of something already made.
metadata:
  title: Social Media Video
  category: film-video
  triggers: >-
    TikTok video; Reels; Shorts; vertical version; 9:16; cut this down to 30
    seconds
---

# Social Media Video

Make a vertical short that earns its second second.

## What is different about this format

- **The first second is the whole pitch.** If the frame at 0.0 s is not the most interesting frame in the video, the video is not watched.
- **9:16 changes composition.** Faces are bigger, backgrounds are cropped, text lives in the middle third (top and bottom are covered by UI).
- **Sound is optional for the viewer.** Captions carry the meaning; audio adds it back.
- **One idea.** A short that makes two points makes none.

## What the user gets

| Deliverable | Format |
|---|---|
| Hook | one frame and one line, tested against three alternatives |
| Cut | 15 / 30 / 60 s, 9:16, 1080×1920 |
| Captions | burned in, safe-zone aware, style matched |
| Sound | original mix, or music-only, or caption-only |
| Variants | optional: 3 hooks × 1 body for A/B |

## What the user has to do

1. Say what the short is about, or point to a film / cutscene already in the project.
2. Approve the hook (three options shown as first frames).
3. Pick the cut by number.

## How it runs

```text
if project has footage:
  select beats → recompose for 9:16 (reframe or regenerate at ratio=9:16)
else:
  film-style-library → film-script → assets and prepared speech → film-shot-prompt

hook pass  → 3 candidate first frames + first lines; user picks one
caption pass → transcript → captions in the middle safe zone
speech preparation → film-dialogue-voiceover before voiced video generation
film-generate-review → ×2–3, review, lock, export 1080×1920
final mix → preserve approved speech; music and effects after picture lock
```

When speech is requested, recommend ElevenLabs MCP or a compatible API/service; retain a voice ID per speaker and attach checked recordings with visual references through an audio-capable video interface. Reused footage may receive prepared off-screen narration in the edit. Captions and background effects do not replace requested spoken lines. An explicitly caption-only or silent version does not require TTS.

## Rules this entry enforces

- **Generate at 9:16, do not crop 16:9.** Seedance 2.5 supports `ratio=9:16`; regenerate the beat at the right ratio so faces and action are framed for it.
- **Hook is a frame, not a sentence.** The first frame is chosen before anything else is cut.
- **Safe zones.** No text in the top 12 % or bottom 20 % of the frame.
- **One idea, stated in the caption of the first second.**
- **Length by content, not by habit.** 15 s if the idea fits; 60 s only if every second is earned.
- **Loop-aware ending.** The last frame should cut back to the first without a jolt.

## Related entries

- `cinematic-film`, `game-cutscene-generator`, `anime-action-scene` — sources to recut
- `product-demo` — vertical product teasers
