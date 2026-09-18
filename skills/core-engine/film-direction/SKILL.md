---
name: film-direction
description: Stage 0 of the AI film pipeline — turn an idea into a director's brief before any script is written. Defines intent, genre, palette per location, the full inventory of variables that decide whether a generated shot is good (the "f(x)"), the shot-justification test, pacing/tension rules, and the continuity ledger. Use whenever a film, scene, or product trailer is being planned, or when generated shots "look fine but feel wrong".
---

# Film Direction (stage 0)

## Why a separate stage

The viewer of a film cannot say *why* it is good or bad. They feel pace, tension, and continuity, but they cannot name them. A product trailer viewer is the same: they either get the "aha — so that's what it does" moment or they don't. Everything that produces that feeling is a decision the director made *before* shooting. AI generation does not change this; it only makes the cost of undecided things visible faster.

So before a script exists, write down the decisions. The output is `films/<slug>/direction.md`.

## 1. Intent (write it in three lines)

- **What kind of film**: drama short / product trailer / music-video / documentary-style piece.
- **What the viewer must feel or understand** by the end. For drama: one emotional sentence ("a man forgives himself a little"). For a product film: the list of "aha" moments in the order they must land ("it understands a plain description → it builds a world → you step inside").
- **Length and unit**: total runtime; block length (15 s default because one Seedance generation = one block).

## 1b. The dramatic spine — see `film-story/SKILL.md` (stage 0b), which owns the full engine: spine, conflict ladder, loss, dilemma, setups/payoffs, emotion map, nested stories. Run it before the script. Summary of the minimum here so this file stays self-contained:

| | Question | Test |
|---|---|---|
| **Want** | What does the hero want, concretely, in this film? | can be shown in one object or action |
| **Obstacle** | What stands in the way — inside them or outside? | the obstacle is *present on screen*, not implied |
| **Stakes** | What is lost if they fail, visibly? | a viewer could point at the thing that would be lost |
| **Turn** | The moment the want meets the obstacle head-on (climax) | one shot; one line at most |
| **Change** | What is different about the hero at the end? | state it as behaviour, not feeling |

Every block must then carry a **tension line**: what is unresolved *at the end of this block* that makes the viewer need the next one. A block whose tension line is "nothing — it went well" is a montage, and a film may afford one at most.

**Product films are not exempt.** The product is never the hero; a person is. The product enters as the thing that changes what is *possible* for the hero against their obstacle — and it should arrive *after* the obstacle is felt, not before. If the product removes the obstacle instantly there is no film; the product should open a door the hero is afraid to walk through.

## 2. Genre → defaults

Genre is not decoration; it sets defaults for everything downstream, so name it once here.

| Genre | Palette default | Camera default | Pace default | Light |
|---|---|---|---|---|
| Drama | warm interiors / cold exteriors, muted | locked-off + occasional handheld, Dutch for tension | slow, held pauses | natural, contre-jour, soft key |
| Documentary / sports | desaturated, floodlight white | handheld 1–4 cm tremor, long-lens broadcast | reactive | practical only |
| Product / tech trailer | brand palette 60:30:10 | smooth dolly, clean locked-off, occasional macro | brisk, one idea per shot | soft, high-key, screen glow as practical |
| Nostalgic flashback | golden hour, film grain, sun-bleached | run-alongside handheld | playful | warm backlight |

## 3. The quality function — variables that decide a shot

Treat a generated shot as `quality = f(x₁ … xₙ)`. The course discovered these variables one failure at a time; list them here so every prompt sets all of them on purpose. If a variable is left unset, the model chooses — and the model's choice is the "slop".

**A. Reference / identity variables**
- Face identity (sheet), hair, facial hair state (stubble vs clean-shaven per scene), skin texture level.
- Wardrobe **per scene** (kit on the pitch, casual in the office; the same outfit in both would be wrong unless the story explains it).
- Recurring props (ball, notebook, trophy) — their own sheet.
- Featured one-off characters (the old fan) — described in text **plus** an identity-isolation clause so the hero's face does not leak onto them.
- Location plate — used as *look/scale/layout reference only*, with the statement that it is not a keyframe.
- Screen content (a laptop showing a real product page) — a real screenshot, never described from memory.

**B. Spatial variables**
- Counts: people, chairs, balls. Unlocked counts get filled.
- Seating / positions in metres, screen-left/right, who faces whom, the 180° line.
- A **wide anchor** at the head of any multi-shot block in a known room.
- Edge placement and looking room (or deliberate absence of it).

**C. Camera variables (per shot)**
- Lens (24/28/35/50/85/100 mm or 8° super-tele), height, angle (level / Dutch °), move (static / push cm / whip with timings / rack / crane).
- Camera operator character: locked-off, gimbal, handheld 1–2 cm, super-handheld 3–6 cm with breath and whip-lag.
- Shot size must not change inside a single continuous move (a whip pan opens and lands on the same size).
- Frame-rate honesty: real time vs an explicit speed ramp with start/end beats.

**D. Performance variables**
- Beats timed to the half-second; muscle-level actions (masseter, swallow, inner brow, chest rise, foot tap rate).
- Eye-line target and **eye-tracking stability** (drifting eyes were the most common reject in the final scene).
- Emotional **entry state** — must match the previous block's exit state (no smile two seconds after tears).
- Dialogue: exact words, one speaker per shot, tone notes (micro-pauses, trembling, self-resentment), where the voice breaks.
- Anatomy when a body part fills the frame (hands: veins, tendons, knuckle creases, hangnail, uneven nails).

**E. Light / atmosphere / palette**
- Single stated key source and direction, WB in Kelvin, contre-jour or wrap, haze %, fog, flare style.
- 60:30:10 palette named in colours, contrasting between intercut locations (warm office vs cold stadium vs golden street).

**F. Time / pace**
- Shot count per 15 s (2–3 normal; 6 only for action montage with salvage expected).
- Held pauses written as beats, especially **1–2 s of processing after any flashback** before dialogue resumes.
- Terminal action inside the last beat ("the shot cuts as he leaves") so takes do not end early.

**G. Sound**
- Diegetic list; the one line; "no music". VO lines recorded as a separate face take when the action take is already locked.

**H. Text on screen**
- Exact words, quoted; hold ≥2 s on the surface; camera angle that makes it legible (high angle on a notebook).

Copy this list into `direction.md` and tick which variables matter for this film. Prompts later cite it.

## 4. The shot-justification test

Every shot in the script must answer, in one line each:

1. **What does it reveal** (plot fact, emotion, product function, spatial fact)?
2. **What breaks if it is cut?** If nothing breaks → cut it. (The course cut "shot 4: he turns and says 'And I missed'" because the unfinished "And I…" in shot 3 already carried it.)
3. **Why this size and angle** rather than the default? (A Dutch angle because he is losing grip; an OTS because the question is aimed at him; a worm's-eye rise because the boy's world starts at the ball.)
4. **What must the viewer be able to see** for the shot to work (hands textured, text legible, ball in frame)? → these become asset and constraint lines.

For product films add: **Which "aha" does this shot deliver, and can a first-time viewer perceive it without narration?** If the answer is "they wouldn't notice", redesign the shot (bigger screen, slower move, a hand pointing) or cut it.

## 5. Shot-to-shot logic (the part the course felt but never wrote down)

The author of the course kept saying things like "any director will tell you…" — these are the rules he was applying:

- **Question → reaction**: a line aimed across a room is followed by the face it lands on. Cut *after* the line, not during.
- **Flashback → processing pause**: never cut from a memory straight into dialogue. Give 1–2 s of face (reuse an existing clean take if one exists).
- **Anchor → detail**: wide first, then hands/face. The wide is what keeps the room consistent across cuts.
- **Escalation through camera, not just acting**: when the emotion is right but the shot is flat, change lens, angle or operator behaviour; do not push the actor harder.
- **Tension tools**: Dutch tilt, no looking room, tighter lens, less headroom, handheld tremor. **Release tools**: level horizon, wider lens, more air, static.
- **One continuous take** for a physical climax (the penalty) so the physics stay honest; **cut coverage** for dialogue so pauses can be placed.
- **Speed ramp** only inside an already-locked continuous take, and only around one named beat.
- **Whip pan** = one move, same shot size both ends, labelled subjects, timed swing.
- **End on the beat, not after it** — the penalty take ends on the save, not on a reaction; the reaction gets its own shot where the pause can be controlled.
- **Silence is a beat.** Write it with a duration.

## 6. Palette per location

Write a table: location → time of day → key light → 60:30:10 → mood word. Intercut locations must contrast (warm/cold, or warm/golden). This is what makes an edit read as a flashback without a title card.

## 7. Continuity ledger (`continuity.md`)

For every block, on lock, record the **exit state**:

```markdown
| block | character | seat/position | wardrobe | props in hand | emotional exit | eye-line | last-frame file |
|---|---|---|---|---|---|---|---|
| 1 | santiago | lounge chair, upper-right | camp shirt | none | eyes closed, holding it in | down | scenes/block-01-last.png |
```

The next block's prompt **must** open on these states. This single table prevents the "he smiles right after crying" class of failure and the "different chair" class.

## 8. Output

`direction.md` with sections 1–7 filled. Show the user the intent, genre defaults and palette table; ask for corrections; then hand off to `film-script`. Do not generate anything in this stage.
