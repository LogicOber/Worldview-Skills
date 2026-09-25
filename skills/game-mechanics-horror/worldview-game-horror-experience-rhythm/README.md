# Worldview Game — Horror Experience Rhythm

Design the minute-to-minute experience of a horror game so ordinary play, suspicion, confirmation, pressure, cost, recovery, and aftermath form a readable arc. Use it to decide not only when something frightening happens, but what the player is doing, expecting, learning, and carrying forward at that moment.

## Call this Skill

```text
/worldview-game-horror-experience-rhythm

Reshape the first 35 minutes of my single-ending game. The player maintains a
mountain water relay, notices that completed readings are changing, and later
must cross the exposed spillway. Give me quiet work that teaches the route,
one failed interpretation that remains recoverable, a short pressure peak,
and enough aftermath for the player to understand what survived.
```

Use it when a game has promising rooms, mechanics, or scenes but feels flat, rushed, exhausting, arbitrary, or like a sequence of unrelated scares. It owns the experience clock, attention budget, question sequence, pressure/recovery placement, and aftermath. It routes implementation of a chase, puzzle, sound system, save system, or threat AI to the focused Skill that owns that state.

## What the Agent needs

A premise, current route, chapter outline, runnable build, or even a list of scenes is enough. Reference screenshots or video can clarify presentation and emphasis, but edited time is never treated as measured play time. The Agent marks missing runtime evidence and continues with bounded estimates when safe.

## What the Agent delivers

- a promise for what the player does, notices, fears, learns, and pays off;
- an experience clock with novice and experienced duration ranges;
- a beat ledger recording job, expectation, question, action, state change, emotion hypothesis, control, cost, and next question;
- an attention budget for navigation, reading, sound, threat tracking, resources, and social judgment;
- pressure, recovery, false-closure, replay-compression, and aftermath contracts;
- exact handoffs to the focused mechanic Skills selected for each beat;
- runtime journeys for first play, likely mistake, recovery, save/load, accessibility, and ending;
- a truthful report separating measured, observed, estimated, and unverified claims.

## Output shape

```text
gameplay/<chapter-or-game-slug>/
├── experience-rhythm.md   promise, clocks, beats and owner handoffs
├── rhythm-tunables.yaml   duration ranges, attention and recovery budgets
└── verification.md        journeys, traces, evidence and unresolved gaps
```

Read [SKILL.md](SKILL.md) for the full method, use [the contract template](templates/rhythm-contract.md), review [why rhythm fails](references/why-rhythm-fails.md), and see [the original worked example](examples/the-silent-shift.md).
