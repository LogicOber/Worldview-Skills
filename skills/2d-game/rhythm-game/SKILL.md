---
name: rhythm-game
title: Rhythm Game
description: Entry point for a rhythm-game slice — an original music track with a known BPM and structure, a note chart derived from the track's onsets, lane and visual design in the project style, and a playable web prototype with timing windows. Use when the user says "rhythm game", "music game", "beat map", or describes performance driven by timed input.
category: 2d-game
triggers:
  - "rhythm game"
  - "music game"
  - "beat map"
  - "note chart"
---

# Rhythm Game

Make a chart that feels like the song, not a metronome.

## What the user gets

| Deliverable | Format |
|---|---|
| Track | original instrumental, fixed BPM, stated structure (intro / verse / build / drop / outro), 60–120 s |
| Onset analysis | detected beats and accents with timestamps |
| Chart | note placements per lane, density by section, difficulty tiers (easy / normal / hard) |
| Visual design | lanes, note sprites, hit effects, background reactive to the drop — in the project style |
| Prototype | web build with timing windows (perfect / good / miss), score, combo |
| Preview video (optional) | 15–30 s of the chart being played |

## Rules this entry enforces

- **Track first, chart second.** The chart is derived from the audio's onsets, never written before the music exists.
- **Fixed BPM.** Generated music is requested at a stated BPM; the file is checked; drift over 0.5 BPM is rejected.
- **Density follows structure.** Verse sparse, build rising, drop dense, outro release. A flat-density chart is a typing test.
- **Notes on accents, not on every beat.** The chart plays what the ear hears.
- **Timing windows are stated in ms.** perfect ±40 · good ±90 · miss beyond.
- **Hit effects obey causality.** The effect fires on the hit, in the lane, with the note's colour — same rule as `vfx-effect`.
- **Difficulty tiers share the song.** Easy is a subset of normal; normal a subset of hard.

## Example

```text
Track: 128 BPM, 90 s, "amber pulse" — intro 8 bars · verse 16 · build 8 ·
drop 16 · outro 8; instrumental, no vocals
Chart (normal): verse 1 note/beat on kick · build adds hats every half-beat ·
     drop 2–3 notes/beat with holds on the synth stabs · outro 1/2 beat
Lanes: 4 · notes as lantern sparks · hit = amber ring · miss = fog puff
Windows: ±40 / ±90 ms
```

## Related entries

- `film-generate-review` (core) — music generation happens in its audio pass
- `vfx-effect` — hit effects
- `pixel-art-sprite` — note and lane sprites
