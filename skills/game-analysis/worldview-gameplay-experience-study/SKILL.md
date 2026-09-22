---
name: worldview-gameplay-experience-study
description: "Turn timecoded gameplay evidence and selected qualitative cases into a first-person player reconstruction, a third-person design critique, quality judgments, and an original transfer card. Use after gameplay-video analysis or when a horror/game design brief needs lived player experience and visual-reference routing; never use it to copy a source game's identity, map, dialogue, UI, or assets."
---

# Worldview Gameplay Experience Study

## Call this Skill

```text
/worldview-gameplay-experience-study
```

The text after the slash is the study brief. It must identify the evidence to read, the design decision the study should inform, and the intended output. If the evidence is an edited video, keep source time, estimated experience time, and editorial gaps separate.

## The problem this Skill solves

A mechanical report can correctly say “the player hides after an audio cue” and still fail to explain why the moment works. This Skill first reconstructs the lived sequence: what the player expected, what occupied their attention, why they hesitated, what they chose, what changed in the room, and what belief they carried forward. It then steps outside the moment and asks what the work did well, what it did poorly, and which relationship is safe to transfer to a new project.

Do not turn private emotion into fact. A first-person passage is a bounded reconstruction grounded in visible action, voice, silence, camera movement, resource use, and the player's stated reaction. Label an inferred bodily or emotional state as reconstructed, not observed.

## Case-study lookup gate

1. Translate the brief into need tags: `pursuit`, `hiding`, `route-learning`, `sound`, `resource-fear`, `spatial-memory`, `recovery`, `reveal`, `pacing`, `visual-language`, or another concrete need.
2. Read [`references/experience-studies/index.md`](references/experience-studies/index.md).
3. Select two to five cases with the strongest overlap, plus one counterexample if the archive contains one.
4. Read only each selected case's `case-study.md`, `transfer-card.md`, and listed visual references. Do not load the whole archive by default.
5. Cite the internal `study_id` in the working rationale. Public case prose must not name the source game, creator, platform, or URL unless the material is user-owned or rights-cleared and the project explicitly requires attribution.
6. If no case matches, write `no prior case loaded` and continue from the supplied evidence. Never imply that an unrecorded memory was consulted.

## Two voices, one evidence boundary

Every major beat has both voices:

### First-person player reconstruction

Write in the present tense when possible. Include:

- what I thought would happen before the beat;
- what occupied my eyes, ears, hands, memory, and available attention;
- what made me hesitate or commit;
- the exact choice, detour, resource trade, or failed prediction;
- what the immediate result felt like in terms of pressure, relief, confusion, pride, embarrassment, curiosity, or fatigue;
- the rule or suspicion I carried into the next space.

Use phrases such as “I expected…”, “I kept the camera off because…”, “I could not tell whether…”, and “after that failure I stopped…”. Do not invent a private thought that the footage cannot support; mark it `reconstructed` and give the observable anchor.

### Third-person critic commentary

Step back and explain:

- what the work prepared the player to expect;
- which visual, spatial, sound, object, timing, or performance detail changed that expectation;
- why the beat was placed there rather than earlier or later;
- what it made the player do next;
- what was genuinely memorable versus merely loud, slow, confusing, or unfair;
- whether the player could understand the cause of success or failure;
- what a different project should preserve as a relationship and what it must replace.

Do not praise a beat because it has darkness, a loud sting, a monster, or a long corridor. Explain the causal relationship that made the player's decision meaningful.

## Expected versus actual

For every high-value beat, complete this chain:

```text
player's prior expectation
→ visible / audible evidence
→ actual event
→ immediate interpretation
→ action or correction
→ new expectation carried forward
```

Classify the turn as one or more of `confirmation`, `fair reversal`, `misdirection`, `false alarm`, `earned surprise`, `arbitrary punishment`, `recovery`, or `unresolved`. Explain the classification; the label is never the explanation.

## Quality judgment

Each major beat needs a judgment and a reason. Use the controlled vocabulary in [`references/quality-judgment.md`](references/quality-judgment.md), but write a sentence rather than a score alone.

```text
Judgment: effective and memorable.
Reason: the player had already seen the cabinet, spent battery to preserve a
small amount of visibility, and heard the adjacent door open; the escape was
therefore a decision learned under pressure rather than a hidden cutscene.
Weakness: the later return route has no landmark, so disorientation feels like
missing spatial support rather than a deliberate mystery.
```

Record what did not work. A useful case study is allowed to say that a scene dragged, over-signaled, wasted a scare, made a failure unreadable, or demanded memory that the camera never taught.

## Transfer only the relationship

The transfer card must not say “make a scene like [source]”. It must state:

1. **Relationship to preserve** — for example, “a scarce visibility tool makes a sound-only decision more consequential.”
2. **Surface to change** — new setting, cast, architecture, fiction, art direction, UI, and audio identity.
3. **Implementation action chain** — exact trigger, player affordance, state change, timing, route alternatives, failure feedback, and recovery point.
4. **Boundary** — the context in which the relationship stops working or becomes unfair.
5. **Verification** — what a first-time tester must predict, do, misunderstand, learn, and later explain.

Preserve the causal player relationship, not the source's name, map, wording, camera shot, monster silhouette, puzzle order, or recognizable prop.

## Visual reference routing

For each image, record `reference_id`, `path`, `owner_or_license`, `what_it_can_influence`, and `what_it_must_not_copy`. Prefer original abstract topology plates, generated mood studies, user-owned images, or rights-cleared references. A reference image can guide lighting, material contrast, camera density, or route annotation; it cannot authorize copying a source game's character, level, UI, or distinctive composition.

If a diagram is needed, draw the transfer relationship in a new topology: mark player start, uncertainty zone, confirmed cue, failed route, successful route, cover/recovery node, and the reason for each arrow. Do not redraw an analyzed game's recognizable floorplan.

## Required outputs

1. **Qualitative case study** — use [`templates/qualitative-case-study.md`](templates/qualitative-case-study.md) with both voices, expected/actual turns, quality judgments, memorable details, weak details, evidence, and unknowns.
2. **Machine-readable study** — use [`templates/experience-study.json`](templates/experience-study.json).
3. **Transfer card** — one original relationship that can be handed to a production or chase Skill.
4. **Reference manifest** — only if images are actually used.
5. **Design test** — a small first-time-player test that could prove the transfer wrong.

When the source is part of a series, do not synthesize until every requested episode has its own qualitative case study and evidence limits. When the source is a channel sample, keep ranking metadata and acquisition records in the operational workspace; publish only de-identified, original case records unless the user explicitly authorizes otherwise.

## Truth and safety checklist

- First-person writing is reconstructed from evidence, not a claim to private access.
- Third-person judgments name a detail and a consequence, not a genre cliché.
- “Memorable” includes why the moment stayed in attention after it ended.
- “Unfair” names the missing cue, impossible timing, unreadable failure, or unsupported memory demand.
- Unknown source time, hidden retries, mixed audio, and edited gaps remain visible.
- No raw videos, transcripts, ripped frames, source URLs, recognizable names, dialogue, UI, or copied maps enter public case files.
- Horror content warnings remain visible in the handoff.
- The final transfer is original, testable, and reversible.
