---
name: film-action-combat
description: Stage 5b of the film pipeline — the action director. Turns any fight, chase, one-take pursuit, boss phase or aerial sequence into a video prompt where every hit has a wind-up, a contact, a consequence and a camera reaction; where speed is a parameter (actions per second, camera degrees per second) inferred from the user's words instead of asked; where physics anchors (hooks, footholds, momentum) are named so nothing floats; and where effects are locked to follow their cause. Called by film-shot-prompt whenever a block contains combat, pursuit or a stunt. Also used directly by anime-action-scene and boss-battle.
---

# Film Action Combat (stage 5b)

## Why this stage exists

Action is where video models fail loudest. A dialogue block that drifts is merely dull; an action block that drifts is nonsense — a sword that hits nothing, an enemy who falls before the blow, a hero who hovers because the prompt never said what she stood on. **The model does not know that a punch has a beginning, a middle and an end.** It has to be told, in order, with times.

This skill exists to write that order. It is a cinematographer's and a stunt coordinator's checklist compressed into a prompt format.

## The four questions the skill answers by itself

The user says "a fight" or "she escapes." The skill does not ask what kind. It infers four parameters from the words used and the story context, sets them, states them in one line, and moves on. The user can override with a word.

### 1. Action density — how many things happen per second

| Level | Actions / second | Reads as | Inferred from |
|---|---|---|---|
| `measured` | 2–3 | Duel, standoff, one clean strike | "elegant", "tense", "duel", "single blow", dialogue-heavy scenes |
| `high` | 4–6 | Standard action cinema | default for "fight", "chase", "battle" |
| `insane` | 6–10 | Relentless pursuit or close-quarters chaos | "insane", "crazy", "relentless", "non-stop", ALL CAPS emphasis |

An *action* is one visible physical event with a consequence: a strike that lands, a dodge that clears, a hook that grips, a wall that cracks. A camera move is not an action. A VFX flourish is not an action.

### 2. Camera intensity — how hard the camera works

| Level | Behaviour | Whip pan | Reads as |
|---|---|---|---|
| `locked` | Tripod, cuts carry the energy | none | Classical, tense, lets the choreography breathe |
| `handheld` | 1–2 cm tremor, small reframes | 400–800°/s | Alive, documentary, most action films |
| `dynamic` | Follows the fighter, swings around impacts, 3–6 cm shake on hits | 800–1200°/s | Modern blockbuster |
| `insane` | Camera is a participant: spins with spins, drops with drops, inverts with the body | 1200–1800°/s, 720° spins | Extreme aerial or vertical pursuit |

Density and intensity are independent. "Insane action, locked camera" is a valid and powerful combination (the audience watches chaos from a still point). "Measured action, insane camera" is how you make a single sword draw feel like a war.

### 3. Key-frame emphasis — what happens at the moment of contact

| Level | On the decisive hit | Source |
|---|---|---|
| `continuous` | Nothing special; motion flows through | Live-action realism |
| `impact` | 2–3 frame hold, radial speed lines from the contact point, ±5° camera shake, one-frame white or black flash, dust/debris burst | Graphic animated impact |
| `extreme` | All of the above plus barrel distortion at the contact point, freeze up to 6 frames, colour inversion for one frame | Deliberately hyper-stylised impact |

Photoreal styles (A, C, D, G) cap at `impact` and express it through camera and sound only — no drawn speed lines.

### 4. Causality strictness

| Level | Rule |
|---|---|
| `normal` | Effects follow actions; a 0.1 s overlap is tolerated |
| `strict` (default) | Effect appears **only after** the physical event: swing → trail; contact → shockwave; landing → dust. Written into every beat |

## Inference in practice

```text
User: A woman with dual swords fights an armored knight.
→ density=high, camera=dynamic, keyframe=impact, causality=strict

User: A slow, elegant duel between two masters. Focus on technique.
→ density=measured, camera=locked, keyframe=continuous

User: A winged courier grabs the artifact and escapes a swarm. Make it INSANE.
→ density=insane, camera=insane, keyframe=impact

User: Boss fight, three phases, he's 15 feet tall.
→ density=high (phase 1) → insane (phase 3), camera=dynamic, keyframe=impact
```

The skill prints one line — `Action: high density · dynamic camera · impact frames · strict causality` — and proceeds. It asks nothing unless the request is contradictory ("slow and frantic").

## The five physical rules

Every action prompt written by this skill obeys these. They are what separates a fight that reads from one that floats.

### Rule 1 — Anchor every force

Nothing accelerates without a visible cause. A grappling hook **attaches to a named surface** before the body moves. A jump has a **foot on a named platform**. Flight has **wings that flare** or **thrust that fires**. A leap across a gap names both edges.

```text
✗ She swings across the canyon.
✓ Left hook FIRES toward the brown stone building on the right, grips the
  corner ledge, cable snaps taut; only then does her body accelerate, arcing
  left across the canyon.
```

### Rule 2 — Every strike has three parts and a fourth

```text
WIND-UP   (0.1–0.3 s)the body loads: hips rotate, arm draws back, blade rises
CONTACT   (0.05 s)     the named target is struck at a named point
FOLLOW    (0.1–0.2 s)  the body continues through; weight commits
CONSEQUENCE (0.2–0.5 s) the target reacts: staggers, blocks, flies, cracks, dies
```

A strike without a consequence did not happen. Write all four, in order, with the target named.

### Rule 3 — Effects obey the event

Trail after swing. Shockwave after contact. Dust after landing. Fire after the blade touches. Blood, sparks, debris, light — all of it is *caused*. The prompt states the cause first, the effect second, every time.

### Rule 4 — Momentum is conserved

A body moving at speed does not stop without a reason. Turns are preceded by body rotation. Landings bend knees. A blocked strike pushes *both* fighters. If she is flying at 30 m/s and the shot ends, she is still flying at 30 m/s when the next shot opens.

### Rule 5 — Spatial anchors stay in frame

Name 3–5 fixed landmarks for the sequence (a tower, a fallen pillar, the cliff edge, the ground). Reference at least one in every beat so the viewer — and the model — always knows where the fight is. After every kill or major beat, allow a 0.2–0.5 s reorientation in which a landmark is clearly visible.

## Prompt anatomy for an action block

```text
Style: <style_header from style.json>

Action parameters: <density> density · <camera> camera · <keyframe> key frames · strict causality.
Total actions in this block: <N>. Total major camera moves: <M>.

References:
  @hero — <desc>. 100% matches the reference.
  @enemy — <desc>.
  @arena — LOCATION REFERENCE ONLY. Landmarks: <L1>, <L2>, <L3>.
@ability-board — reference for the look of <skill name> only, not a keyframe.

SPATIAL LOCK: <L1> stays screen-left; <L2> centre-back; <L3> right. Ground level
visible whenever a fighter is within 3 m of it.

[0.0–1.2 s] <LABEL>
  WIND-UP: <body loads>
  CONTACT: <what hits what, where>
  FOLLOW: <weight through>
  CONSEQUENCE: <target reacts>
  CAMERA: <lens> <height> <move with rate>; <shake on contact if keyframe≥impact>
  ANCHOR: <landmark visible>

[1.2–2.5 s] <LABEL>
  ...

[N] <TERMINAL BEAT>
  The block ends *on* the last contact or the last landing, never on a pose
  after it. State the exit state: where each body is, what it holds, its speed.

Sound: <each contact named>, <each effect named>, breath, no music unless the
style header says otherwise.
Constraints (positive): exactly <n> fighters present from first frame; <weapon>
keeps the same length and shape; <hero> face matches @hero; all effects follow
their cause.
Aspect 16:9. <duration> seconds.
```

## Density budget per duration

| Duration | `measured` | `high` | `insane` |
|---|---|---|---|
| 5 s | 2–3 actions | 4–6 | 8–12 |
| 10 s | 4–6 | 8–12 | 16–24 |
| 15 s | 6–9 | 12–18 | 24–36 |
| 30 s | 12–18 | 24–36 | do not attempt; split the block |

At `insane` density, 10 s is the practical ceiling for one generation. Longer sequences are chained with `first_frame`.

## Boss fights — the phase structure

A boss is not a strong enemy. A boss is an enemy whose **rules change**. The skill writes boss blocks as phases, each with:

- **A signature skill** that normal attacks cannot answer (a ring shockwave, a summon, a grab). Named, telegraphed (0.5–1 s wind-up the player can read), with an area and a consequence.
- **A counter** that requires a *specific* hero ability, not more damage (shield wall, freeze, rope-pull, chain-cut). This is what makes it a fight instead of a health bar.
- **A tell** that the phase has changed: armour cracks, eyes change colour, the arena breaks.
- **A cost**: the win takes something (the arena, an ally, the core that was also a person).

Normal attacks and abilities must look different. A normal axe swing is grounded footwork and a small spark. The shield-wall ability is a planted stance and a wall of light three metres wide. If the viewer cannot tell which is which at a glance, rewrite.

## Chases — the escape structure

A chase is a sequence of **obstacles the pursuer handles worse than the hero**. Each beat is one obstacle:

```text
OBSTACLE: <named thing in the path>
HERO: <how she clears it — with anchor, with cost>
PURSUER: <how it fails or is delayed by the same obstacle>
GAP: <did the distance grow or shrink? say it>
```

A chase in which the gap never changes is a treadmill. Write the gap.

## One-take sequences

When the block is one continuous shot through a ridge, shaft, street, or arena:

- The camera has a **path** stated as physical motion: drops with, rises with, orbits, passes through. Never "cuts to".
- Landmarks are named at the start and reappear at the end so the take proves it is one space.
- Reorientation pauses (0.2–0.5 s) are written in; without them the take is unreadable.
- The take ends on a hold of ≥0.5 s so the model does not cut early.

## Style-specific notes

| Style | Adjust |
|---|---|
| A / C / D photoreal | keyframe caps at `impact`; express impact through camera shake and sound; no drawn lines |
| B UE5 game | full VFX budget; abilities may glow; keep PBR weight — a greatsword still needs hip rotation |
| E anime | speed lines, impact frames, smear frames allowed; 2s/3s timing on holds |
| F stylised 3D | comedic physics allowed, but still anchored; consequences can be squash-and-stretch |

## Review checklist (hand to film-generate-review)

- Did every strike show wind-up → contact → consequence?
- Did any effect precede its cause?
- Did anyone float without an anchor?
- Did weapon length or fighter count change?
- Did a landmark stay visible in every beat?
- Did the take end on the beat, not after?
- Does the density match the stated level (count the actions)?

Four takes failing the same check = a missing rule in the prompt, not bad luck. Fix the rule.

## Worked pattern — a ten-second aerial escape

For an extreme aerial escape, divide the block into 1–1.5 second windows. Give every action a physical anchor such as a platform edge, portal rim, cable point, or pursuer used as a springboard. State the camera path as physical motion: rise, corkscrew, invert, then stabilize. Layer the decisive artifact beat in causal order — object flares, portal reacts, propulsion ignites — and finish with a brief readable hold so the model does not cut early.
