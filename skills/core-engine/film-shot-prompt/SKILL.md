---
name: film-shot-prompt
description: Stage 5 of the AI film pipeline — turn one script block plus locked asset references into a complete video-generation prompt (style header, context, @references with reference-only scoping, wide anchor, timed shots with muscle-level beats, lens/angle/move per shot, palette, positive-only locks, diegetic sound). Encodes the full director toolkit — Dutch angle, no looking room, 180° line, handheld grades, broadcast long lens, rack focus, push-in, whip pan with timings, speed ramp, match cut, worm's-eye rise, hands anatomy, legible text, VO isolation, post-flashback pause, splitting dense blocks, one-line deltas on locked takes. Use when a block is ready to be generated.
---

# Shot Prompt (stage 5)

You are the cinematographer. The user describes the block the way they'd brief a DP; you return one complete prompt for **one generation (default 30 s on Seedance 2.5; shorter only when the block needs it)** plus the exact `cohub generate` command. Read `direction.md`, `script.md` (the block), `continuity.md` (entry state) and `asset-map.json` first.

## Prompt anatomy (keep this order — the model reads top-down and the header sets priors)

```text
Style: <global header>
Context: <story beat; mood; N SHOTS with cut times; camera family; 180° line statement; entry state from continuity.md>
References:
  @<name> — <desc from asset-map>. 100% matches the reference.
  @<location> — LOCATION REFERENCE ONLY (look/materials/scale/layout; not a keyframe; do not copy its composition). <landmarks>. <override, e.g. stands COMPLETELY FULL>.
  @<prop> — <desc>. 100% matches the reference.
Camera feel (all shots): <locked-off | handheld 1–2 cm | super-handheld 3–6 cm with breath, footfalls, whip-lag | broadcast>

[SHOT 1] 0–1.5s — wide anchor
SUBJECT: everyone, where (screen-left/right, metres apart), orientation, what each holds. Present from the first frame.
CAMERA: WS 24 mm, high, <level | slight Dutch>, static.
⚠️At 1.5s, a clean HARD CUT to SHOT 2.

[SHOT 2] 1.5–Ns — <label>
SUBJECT: …
ACTION: beat 1 (t–t) — … beat 2 … (muscle-level; eye-line target; breath)
CAMERA: <size> <lens mm ≈FOV> <height> <angle> <move with cm/seconds>; camera on the shadow side.
⚠️At Ns, HARD CUT to SHOT 3.
…

Style (scene): key source + direction + WB K; contre-jour/wrap; haze %; fog; flare style; 60:30:10 named; grain.
Constraints: POSITIVE LOCKS — counts; seats; who speaks / who is silent; eye directions; edge placement; what stays identical; "exactly N shots joined by N-1 hard cuts"; "exactly N characters, each appearing once, never duplicated". Aspect 16:9.
Sound: diegetic list; the one line with tone; no music.
```

(Duration is passed as `--param duration=N`, never written in the prompt.)

### Global style header (paste; adjust the "Key light from … only" clause and the camera family)

```text
Style: 8K IMAX. Photorealistic — no 3D render, no game engine, no game-cutscene aesthetic. Cinematography: Emmanuel Lubezki × Roger Deakins. Lighting: Natural light only — contre-jour backlight, camera on shadow side, atmospheric haze throughout. Key light from <sky and windows | stadium floodlights> only. Color: 60:30:10 — dominant / secondary / accent. Camera: Physical cine lens. 180° shutter motion blur. Skin: Pore-level realism — vellus hair, asymmetric moles, capillary flush, pore-shadow matching on-set light. Acting: Hollywood — micro-pauses before reactions, precise eye-line, wet living eyes with catch-lights, visible breath and chest rise. Physics: Gravity and inertia respected — mass has real weight, correct contact shadows. No floating props. Composition: Rule of thirds + golden ratio. Continuity: Characters, props, environment identical across every cut. No identity drift. Technical: 24fps smooth motion. No jitter. Audio: environmental SFX + scripted dialogue only. No music. No subtitles.
```

The header's own exclusions ("no 3D render", "no music") are style-level priors and are tolerated. Inside SHOT blocks and Constraints: **positive statements only**.

## Hard rules (each one is a failure the course paid for)

1. **Wide anchor first** in any multi-shot block in a known room (≤1.5 s, 24 mm, everyone placed). Without it the model re-improvises the room on every cut and the hero ends up in a different chair.
2. **Shot density: ≤3 shots per 15 s of runtime** (so ≤6 in a 30 s block) for dialogue; more only for action montage with salvage expected. If the script needs more, **split the block** — one beat per generation. Prefer one longer generation over two short ones: every extra API call is extra variance at the seam.
3. **Positive language.** "eyes clear and dry", "tears pool but never fall", "stays seated", "exactly two chairs". The model reads "not crying" as "crying".
4. **Lock counts and positions** in metres and screen sides; hold the **180° line** in a sentence.
5. **Every shot names lens, height, angle, move.** Lens changes between shots are what make it feel cut rather than generated.
6. **Populated first frame** — "present in frame from the first frame".
7. **Beats timed to the half-second, muscle-level**: masseter, delayed swallow, inner brow, chest rise, foot-tap *rate* ("several times a second"). Say where the eyes look and that they **stay** there (eye-tracking drift was the top reject in the final scene).
8. **Entry state matches continuity.md.** If he cried in the previous block, this block opens shaky and red-eyed; a smile must be earned inside the block.
9. **One line of dialogue per shot, quoted, with tone**; every other character "stays silent"; say whose lips move. Long lines split across shots with a written pause.
10. **Post-flashback pause**: when the previous block was a flashback, the first 1–2 s here is a silent processing beat. Write it.
11. **Location plate is reference only** — say it, plus any override (full stands).
12. **Hands / skin filling the frame get anatomy, not adjectives**: "pronounced veins and raised tendons across the backs, deep creases over the knuckles, fine dark hairs, open pores, a faint hangnail, nails cut short and slightly uneven, ruddier skin at the knuckles, a sheen of natural oil".
13. **Text on screen**: exact words quoted; ≥2 s hold; legible angle.
14. **End inside the beat**: the terminal action is in the last beat and "the shot cuts as he leaves / holds on the save".
15. **Sound is diegetic and listed**; "no music".
16. Seedance 2.5 here: `duration` 4–30 passed as a **parameter** (never written into the prose — see rule 23), `resolution` 1080p, `ratio` 16:9, references as **public URLs only** (≤30). End the prompt with "Aspect 16:9." and nothing about seconds.
17. **Spatial lock at the top of every multi-shot block.** Paste the location's `SPATIAL LOCK` text from `asset-map.json` verbatim, before the shots. A video model rebuilds the room on every cut; the lock is the only thing that keeps the door on the left. If the location has no lock yet, write one (door, table, beds, window, lights — each with a screen side) before writing shots.
18. **Every prop has a source.** An object does not appear in a hand; someone brings it in from somewhere, and the prompt (or a line) says where. "She enters holding a printed page — the department notice, posted an hour ago" survives; "she has a paper" does not.
19. **Pauses are written as beats.** `BEAT — SILENCE: two seconds. Nobody has noticed.` If a reaction is not in the prompt, in order, with a duration, it does not happen and the next line is spoken over the previous action.
20. **Route by content.** If the block contains a fight, chase, stunt or boss phase → write it with `film-action-combat` (anchors, four-part strikes, causality, density/camera parameters). If the block contains a spoken line → run `film-dialogue-voiceover` first so the line is generated as audio and referenced with `{line} [AudioN]` syntax; if no TTS is configured, the prompt says the lip-sync will be approximate and the report says so too.
21. **Chain long films.** Block N+1 opens on block N's exit state, uses N's last frame as `first_frame`, and keeps the same `reference_image` URLs. The first line of N+1's Context restates where every body is, what it holds and which way it faces.
22. **One body per identity.** Each character is bound to exactly one reference and named exactly once in the cast list. The Constraints block states: "exactly N characters, each appearing once, never duplicated, no background figures." A character described in two places (a reference plus a fresh text description, or two overlapping references) is how a second copy of her appears in the frame.
23. **Duration lives in the parameter, not the prose.** Never write "30 seconds" or "(10s)" inside shot text — the model treats it as content. Request 2–3 s more than the edit needs (model start/end is stochastic) and trim in the cut.
24. **Screens are scene-matched mockups.** A UI reference is the original capture composited onto a device *in this location at this time of day* (see `film-screen-capture` §Scene-matched mockup). A raw screenshot or a generic-desk mockup gives the model a second room to reconcile.
25. **Budget mode.** When the user has one pass, write for one pass: every rule above applied in full, every prop and character bound, every beat timed, no draft run. Say so in the report: "single-take, budget mode, no style check." Detail is cheaper than a reroll.

## Director toolkit (write it exactly like this)

| Tool | Phrase | Use for |
|---|---|---|
| Dutch angle | "strong Dutch tilt ~45°, LEFT side of frame dipped lower" | tension, losing grip |
| No looking room | "pushed hard to the lower-RIGHT corner, looking screen-right off the near edge — deliberately no looking room, boxed in" | trapped |
| 180° line | "The 180° line stays fixed: A always screen-left, B always screen-right." | eyelines match |
| OTS pair | "over A's near shoulder (soft, foreground screen-right) onto B on the left third" then the reverse | dialogue coverage with pauses |
| Locked-off | "static, locked off, breath-only motion" | heaviness, shock |
| Handheld doc | "shoulder-mounted; operator's breath; constant fine 1–2 cm tremor; small organic reframes (a real operator, not digital jitter)" | alive |
| Super-handheld | "pronounced shoulder shake, heavy breath and footfalls, 3–6 cm tremor, whip-pans that lag then snap, stumbles, reaction-lag (never gimbal, never digital jitter, never locked-off)" | climax physicality, crowd |
| Broadcast | "super-tele 8° FOV (~300–400 mm), anchored on the touchline, re-frames within its own vantage, never approaches or crosses" | live-match feel |
| Slow push | "EXTREMELY SLOW dolly-in, ~12–15 cm total across 9 s, physical, no zoom" | a question landing |
| Rack focus | "focus sits on <far> through the action, then racks to <near> ~20 cm from lens" | reveal a prop |
| Lips-to-eyes rise | "opens tight on the mouth, one slow vertical rise to the eyes, then holds" | a confession |
| Worm's-eye rise | "starts almost on the asphalt tight on the ball and running feet; as the boy takes the ball the camera floats up and cranes to his face in one unbroken move" | a child's POV becoming a person |
| **Whip pan** | "camera planted midway between A and B, pivoting on the spot; settled CU on A (Subject A) until ~0.3 s before the move; a ~0.5 s motion-blur whip; B (Subject B) settled in the **same shot size** by ~1.4 s. A finishes her line before the whip; B speaks only after settling." | question → answer in one move |
| **Speed ramp** | (only on an already-locked continuous take) "real time through the run-up; as the ball leaves the boot the footage dips into slow motion (~25 % speed) for the ball's flight; snaps back to full speed the instant the keeper's gloves meet the ball; crowd frozen mid-roar during the dip" | freeze the crucial second |
| Match cut | block N: "eyes close and stay closed to the final frame"; block N+1: pass N's last frame as `first_frame`, open on the same pose | invisible seam |
| Exit frame | "he surges toward camera and exits past the lens; the shot cuts as he leaves" | clean end |
| Atmosphere | "thin interior haze ~10 %, sun shafts, floating dust" / "light low-lying fog ~20 % thicker in the deep background; anamorphic streak flares and soft blooms off the floodlights whenever they sit near frame, organic, never a flat overlay" | depth, cinema |
| One-off featured face | full description + "@hero is used ONLY as the distant player; his face and identity must not transfer to this person" | crowd close-ups |
| Full stands override | "COMPLETELY FULL — every seat occupied, dense rim-lit silhouettes dotted with phone-lights; if the location reference shows empty stands, override and fully populate" | crowd density |
| Silhouetted partner | "the adult stays a soft dark silhouette edge (torso/hands) on the extreme left foreground, never his face, silent" | keep a shot about one person |
| Asymmetry | "subject held hard off-centre every beat, never centred; varied headroom shot to shot" | anti-generic framing |

## VO isolation (audio-only take)

When an action take is locked and only the line is missing, do **not** regenerate the action. Write a separate 15 s face take in a quiet room whose only job is the read:

```text
Context: a voice take. @santiago seated in the office, tight CU 85 mm, static, soft window key. He says: "That kid was sure we'd become world champions. Never doubted for a second." — low, with micro-pauses after "champions" and before "Never"; a little self-resentment; the voice trembles and catches on "second". Lips move only for the line. Diegetic room tone under it. No music.
```

Its audio is laid over the action take in the edit. Direct the **voice** like a camera move: named, timed, specific — never "make him sound sad".

## One-line deltas on a locked take

Once a take is locked, changes are one sentence appended to the same prompt, not a rewrite: "Add a speed ramp during the kick." / "He is still red-eyed and shaky from the last scene; no smile on the answer." / "Remake shot 2 as a high-angle close-up of her hand writing these exact lines: …". Save as `block-NN-v<k>.txt` with a header comment naming the delta. Reasoning: the base prompt carries the geometry; the delta carries the change; rewriting everything reintroduces variance.

## Splitting a dense block

If a block has >3 beats of dialogue or a physical action plus a dialogue, split at script level into `08a`, `08b`, `08c`, each a full 15 s prompt sharing the same References, Style (scene) and Sound blocks so the takes cut together. Sub-blocks share the anchor wide only in the first one; the others open on the previous exit state.

## Command

```bash
cohub generate "$(cat films/<slug>/prompts/block-01.txt)" \
  --model seedance-2-5 \
  --image reference_image=<hero url> --image reference_image=<location url> --image reference_image=<screen url> \
  --param duration=30 --param resolution=1080p --param ratio=16:9 --async --json
# match cut: add --image first_frame=<public url of scenes/block-00-last.png>
# blocking draft: --model seedance-2-0-fast --param duration=15 --param resolution=1080p
```

Hand this to `film-generate-review` to run as a batch (default 4). Never run a single sync generation unless the user chose lite.

## `max` mode — 4 variants that differ on one axis each

- v1 camera family (locked-off ↔ handheld)
- v2 angle (level ↔ Dutch + edge-pinned)
- v3 shot count (2 ↔ 3)
- v4 performance intensity (contained ↔ visible: foot tap, wet eyes, trembling jaw)

References, Style header, Sound and dialogue identical across variants so takes are interchangeable.

## Failure → fix map (use after reading `review.md`)

| Failure | Fix |
|---|---|
| extra chair / object | lock counts; reference-only line; name every furniture piece in use |
| character in a different seat than last block | wide anchor first; copy exit state from continuity.md |
| flat, boring | Dutch + no looking room; change lens per shot; add push or handheld |
| dead eyes / no emotion | muscle-level beats; "wet living eyes with catchlights"; eye-line target |
| eyes wander | "gaze locks on <target> and stays there; one slow blink only" |
| too close / man-spread | metres; "knees together, reclined"; body orientation |
| location drift | repeat landmarks in Style (scene); reference-only line |
| stands empty | full-stands override |
| people vanish mid-shot | list them in every SUBJECT; "present from first frame to last" |
| weightless ball placement | "sets the ball down with real weight, fingers release, contact shadow" |
| micro-action missing (foot tap) | move it into the beat list with a rate |
| shot cuts early | terminal action inside last beat; "cuts as he leaves" |
| hero's face on the one-off | identity-isolation clause |
| kit recoloured | "kit, gloves, colours match the reference exactly; use the reference's own outfit" |
| smile after tears | entry state line; "no smile is earned in this block" → write the state you want ("mouth stays tight, eyes red-rimmed") |
| whip pan changes shot size | "same shot size at both ends (CU→CU)"; label Subject A/B; timings |
| speech before the whip lands | "A finishes the line before the whip; B speaks only after settling" |
| notebook scribbles | exact text quoted; 2 s hold; high angle |
| waxy hands | anatomy list |
| rushed dialogue | split block; pauses as beats; post-flashback 1–2 s |
| screen shows invented UI | real capture reference + "matches EXACTLY, text unchanged" |

Four bad takes from one prompt = the prompt lacked a variable. Find it in `film-direction` §3, set it, rerun.
