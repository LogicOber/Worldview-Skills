---
name: film-generate-review
description: Stage 6 of the AI film pipeline — run image/video generations in parallel batches (lite 1 / standard 4 / max 16), poll and download, review every take beat-by-beat against the prompt, decide what to LOCK (which take, which span, why), prefer regenerating a merged version over splicing two generations, isolate VO takes, reuse existing frames for pauses, assemble the block, and write the continuity exit state. Use whenever a prompt is ready to generate or takes came back and need judging.
---

# Generate & Review (stage 6)

## Why parallel

A 30 s 1080p take can take 5–20 minutes. Generation is also stochastic: the same prompt yields different eye-lines, different hand physics, a different third chair. The course rerolled serially and spent days. We fire four at once so that (a) the turn stays alive and (b) we see the *distribution* of what the prompt produces — which is the only way to tell "prompt problem" from "bad luck".

| Mode | Prompt files | Copies | Total | When |
|---|---|---|---|---|
| `lite` | 1 | 1 | 1 | user explicitly asks |
| `standard` (**default**) | 1 | 4 | 4 | normal |
| `max` | 4 variants | 4 | 16 | user wants speed over credits, or the last standard batch was 4/4 wrong |

State the mode, count, model and expected wait before firing.

## Scripts (`film-pipeline/scripts/`)

```bash
SK=<abs path of film-pipeline>/scripts
$SK/batch.sh --model seedance-2-5 --copies 4 \
  --image reference_image=<url> --image reference_image=<url> --image reference_image=<url> \
  --param duration=30 --param resolution=1080p --param ratio=16:9 \
  --out films/<slug>/takes/block-01 films/<slug>/prompts/block-01.txt   # 4 files → max
$SK/poll.sh films/<slug>/takes/block-01            # loops every 30 s; --once for a single pass
```

`batch.sh` writes `tasks.jsonl` and copies the prompt(s) into the take folder so the folder is self-describing. `poll.sh` downloads `<prompt>-c<k>.mp4|png` and writes `status.json`. Run `poll.sh` in the background for long video batches and tell the user what's cooking.

Drafts: run the first version of a new prompt on `seedance-2-0-fast` 1080p to validate blocking, then seedance-2-5 at 30 s.

## Submission and status — the rules that were paid for

These came from a production where 24 "submitted" tasks turned out to be 24 CLI errors, and a 30-second block came back as 10 seconds without anyone noticing until assembly.

1. **A task exists only when the CLI returned a task ID.** `cohub generate … --async --json` must produce a `taskRunId`. No ID → not submitted, regardless of how many files were written. Count IDs, not files.
2. **Use the CLI's own syntax, checked against `cohub generate --help` and `cohub models show <model> --json` in this session.** The prompt is a positional argument. Images are `--image reference_image=<url>`. Seedance 2.5 accepts public URLs only; a local path becomes base64 and is rejected. Parameters are `--param duration=N --param resolution=1080p --param ratio=16:9`; nothing else.
3. **Status is read from `cohub tasks get <id> --json`, field `run.status`.** Do not infer state from files on disk, from process exit codes, or from a custom poller that parses a guessed schema. Results live at `run.result.output[].source.url`; download from there.
4. **Completed ≠ correct.** After download, `ffprobe` the file: duration, video stream, audio stream. A 30 s request that returns 10.08 s is a failed take even though its status is `completed`; regenerate it with the duration restated in the prompt ("produce the full 30 seconds; hold the final card for the remaining time").
5. **Failed tasks are retried per candidate, once, with the failure named.** `OutputAudioSensitiveContentDetected` → remove sung/lyrical audio language from the prompt or move music to the audio pass. Provider 400 → check parameter names against the schema again.
6. **Never re-submit a task that already has an ID.** Old tasks finish on their own; deleting or duplicating them destroys the comparison you were running.
7. **Report only what was verified.** "16 tasks submitted, 14 completed, 2 failed, 12 downloaded, 11 pass ffprobe, 1 short" is a status. "All done" is not.

## Duration: parameter, buffer, verify

- The requested length goes in `--param duration=N`. It is never written into the prompt text; the model treats "(15s)" as content and may render a clock, a caption, or simply ignore it.
- Request **2–3 s more** than the edit needs. Model start and end are stochastic — the first half-second is often a settle, the last half-second an early fade. The buffer is trimmed in the cut.
- Verify with `ffprobe` on download. A `completed` task with the wrong length is a failed take.

## Budget mode

When the user says the budget is one pass (no rerolls, no drafts):

1. Say it back: "Budget mode — one take per block, no style check, no drafts."
2. Write every prompt at full detail: all references bound, spatial lock, literal blocking, beats with durations, positive constraints, the count-and-uniqueness line. Detail is the only variance reducer left.
3. Submit all blocks in one parallel wave so the user is not waiting on a chain.
4. Report per block: task ID → status → ffprobe duration → beat checklist pass/fail. Nothing else.
5. If a block fails, do not re-submit automatically. Name the failed beat, identify the missing or contradictory variable, change only that cause, and ask before spending again.

## Pre-flight checklist (run before every submit)

- [ ] Every character in the cast list has exactly one reference URL, and no other reference contains that character.
- [ ] Every location used has its `SPATIAL LOCK` pasted at the top of the block.
- [ ] Every prop that matters has a sheet URL or a `text_fallback` sentence used verbatim.
- [ ] Every screen is a scene-matched mockup of the original capture; language and logo checked.
- [ ] Every spoken line has audio (or the report notes lip-sync will be approximate).
- [ ] Every action beat has wind-up → contact → consequence; every effect follows its cause.
- [ ] Constraints state "exactly N characters, each appearing once."
- [ ] No duration, no seconds, no timestamps inside the prompt text.
- [ ] `--param duration` = edit length + 2–3 s.
- [ ] All URLs are public and return 200.

## Long-form assembly

For films longer than one block:

- Each block is generated with the previous block's last frame as `first_frame` and the same `reference_image` set. Extract the last frame immediately after download (`ffmpeg -sseof -0.1 -i block-N.mp4 -frames:v 1 block-N-last.png`), publish it, and only then write block N+1's prompt.
- Splice across hard cuts of different setups; regenerate-merged inside a continuous setup.
- Assemble with `ffmpeg -f concat` only after every input passes `ffprobe`. Verify the assembled duration against the sum of the parts.
- Audio (dialogue via `film-dialogue-voiceover`, music via Suno) is laid in after picture lock, ducked under dialogue.

## Review — judge by beats, not by "good/bad"

For each take: extract frames (`ffmpeg -i c1.mp4 -vf fps=1/3 frames/c1-%02d.png`) and read them; for dialogue also extract audio timing if needed (`ffmpeg -i c1.mp4 -vn c1.wav`). Write `takes/block-NN/review.md`:

```markdown
# block-01 — review — <date>
Prompt: block-01.txt (standard ×4, seedance-2-5 1080p 30 s)

| take | 1A wide | 1B Vega CU | 1C Santiago CU | verdict |
|---|---|---|---|---|
| c1 | ✅ seats right | ❌ third chair | ✅ emotion, foot-tap missing | KEEP 1C |
| c2 | ❌ man-spread | ❌ | ❌ | reject |
| c3 | ✅ best geometry | ⚠️ tilt weak | ⚠️ | BASE 1A |
| c4 | ⚠️ | ✅ best Dutch, line clean | ❌ cuts at 13 s | KEEP 1B |

Checklist tells seen: extra chair (2/4) · foot tap missing (4/4) · early cut (1/4)
Pattern → prompt fix: lock furniture count; move foot tap into beat list with rate.
Decision: v2 standard batch for 1A+1C; keep c4 1B as locked.
```

### The checklist (run every take through it)

identity drift · wardrobe/kit recolour · seat/position vs continuity · counts (people/chairs/balls) · location drift · people vanishing · physics (weightless prop, snapping limb, floaty ball) · **eye-tracking stability** · emotional entry state vs previous block · missing micro-action · lips moving off-line / speech before a whip lands · **shot size change inside a continuous move** · text legibility (scribbles?) · early cut · hero's face on a one-off · flat angle (technically fine, no reason to look twice) · screen UI invented

### Verdict rules

- **4/4 wrong the same way → the prompt is missing a variable.** Rewrite (see `film-shot-prompt` failure map). Do not reroll.
- **1/4 wrong → fluke.** Use the others.
- **Every take has one good shot → normal.** Decide how to combine (below).
- **"Basic but correct" → stop tuning emotion, tune camera.**
- Keep backups noted ("c2 ball placement most physical — backup").

## LOCK — make the decision explicit

Locking is the thing the user will most want to override later, so it must be legible. Write `takes/block-NN/locks.json`:

```json
{
  "block": "01",
  "locked": [
    {"shot": "1A", "take": "c3", "span": [0, 6],   "why": "geometry matches script; both seated; tilt legible"},
    {"shot": "1B", "take": "c4", "span": [6, 10],  "why": "best Dutch, clean line, no looking room"},
    {"shot": "1C", "take": "c1", "span": [10, 15], "why": "emotion right; foot tap missing but acceptable"}
  ],
  "rejected": {"c2": "man-spread, flat"},
  "backup": {"1C": "c3"},
  "assembly": "splice | regenerate-merged | single-take",
  "open_debt": ["foot tap not visible in 1C"]
}
```

Show the user this table in the reply (take → shot → why) and ask them to confirm or swap before assembling. If they change their mind later, the file is the thing they edit.

## Combining takes: splice vs regenerate-merged

Two options when the good parts live in different takes:

1. **Splice** (cut spans from different takes). Cheap, instant. Works when the cut point is a hard cut in the prompt anyway *and* the shots on either side are different setups (a wide then a CU). It reads unnatural when the two spans are the *same* setup from different generations — light, grain, head position all shift.
2. **Regenerate-merged.** Write a v-next prompt that describes the winning qualities of each take explicitly ("1B: her tilt and eye-line as in take c4; 1C: his welling eyes as in take c1, plus the foot tap"), optionally pass the best frames as `reference_image`, and batch 4 again. Costs one more batch; yields a single coherent take.

Default: **splice across hard cuts of different setups; regenerate-merged inside a continuous setup.** Write the choice in `locks.json.assembly`. This is the pipeline author's own finding — spliced same-setup takes look wrong; regenerate instead.

## Reuse before regenerate

- **Pause beat**: the 1–2 s processing pause after a flashback can be a *clean span from an already-locked take* of the same setup (the course reused the VO take's opening). Look through `locks.json` of earlier blocks first.
- **VO**: if the action take is locked and only the line is off, generate the separate voice take (`film-shot-prompt` → VO isolation) and lay its audio over the action.
- **Match cut**: reuse the previous block's last frame as `first_frame`.

## Assemble

```bash
cd films/<slug>/takes/block-01
ffmpeg -y -i c3.mp4 -ss 0  -t 6 -c:v libx264 -crf 16 -c:a aac s1.mp4
ffmpeg -y -i c4.mp4 -ss 6  -t 4 -c:v libx264 -crf 16 -c:a aac s2.mp4
ffmpeg -y -i c1.mp4 -ss 10 -t 5 -c:v libx264 -crf 16 -c:a aac s3.mp4
printf "file 's1.mp4'\nfile 's2.mp4'\nfile 's3.mp4'\n" > list.txt
ffmpeg -y -f concat -safe 0 -i list.txt -c copy ../../scenes/block-01.mp4
ffmpeg -y -sseof -0.1 -i ../../scenes/block-01.mp4 -frames:v 1 ../../scenes/block-01-last.png
# VO overlay: ffmpeg -i action.mp4 -i vo.mp4 -map 0:v -map 1:a -c:v copy -shortest out.mp4
```

Publish the block (public-files) and show the link.

## Close the block — continuity exit state

Append to `continuity.md` the exit state of every character as **actually seen** in the locked take (not as scripted): seat, wardrobe, props in hand, emotional state, eye-line, last-frame path. The next block's prompt opens on this. Then say in one line what was locked and what the next block is.

## Audio pass (after picture lock)

- Dialogue that the video model got wrong: `higgs-tts` cloning the voice from a clean span of a locked take (`ffmpeg -i take.mp4 -vn -ss a -t b voice.wav`), text = the exact line; or `qwen-audio-3.0-tts-plus` with a `voice_prompt` when no clean reference exists. Lay over with `-map 0:v -map 1:a`.
- Music: `suno_music_chirp_fenix`, prompt describes genre, tempo, instrumentation and the arc ("quiet piano → swell at 1:10 → resolve"); generate after the cut so the length is known; duck under dialogue in ffmpeg (`-filter_complex "[1:a]volume=0.25[m];[0:a][m]amix"`).

## Cost sanity

- Sheets/plates are cheap: always 4.
- Video `standard` ×4 at 1080p/30 s is the default; `max` ×16 is confirmed once per film, then not asked again.
- **Style check first**: block 1 alone in `standard`; user confirms live-action look and motion before the whole-film wave.
- **Lock by index**: present takes as `block-02 c3` etc. so the user can answer with numbers ("02:c3, 03:c1 0–12 s + c4 12–30 s").
- Drafts on `seedance-2-0-fast` when a prompt is brand new.
