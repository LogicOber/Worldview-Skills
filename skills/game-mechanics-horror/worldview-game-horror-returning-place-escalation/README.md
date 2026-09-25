# Worldview Game — Horror Returning-Place Escalation

Make a familiar room, street, workplace, shelter, or social hub change meaning each time the player returns. Preserve enough stable grammar for comparison, then change an authoritative fact, observer understanding, relationship, route, or threat rule so the next visit asks a different question.

## Call this Skill
```text
/worldview-game-horror-returning-place-escalation

Use the hill tram depot as a recurring hub. Establish the ticket cage, brass
clock, painted safety line, and west stair on the first visit. On later visits,
change who understands the parcel rack, who controls the west stair, and whether
the former safe return path can still be trusted. Keep one ending and give every
wrong interpretation a recoverable edge.
```

Use it when revisiting an existing place should create recognition, comparison, and a new decision. It is not empty backtracking, a key-only return, or a darker copy of the same room.

## What the Agent delivers
- a shared place/object identity map and stable landmark grammar;
- a return ledger separating authoritative, observed, presented, route, social, and knowledge changes;
- viewpoint, role, observer-knowledge, and safe-return history;
- comparison actions, new questions, decisions, recovery edges, and payoff;
- persistence, failure, save/load, accessibility, and ending verification;
- implementation in the current runtime when available.

```text
gameplay/<place-slug>/
├── mechanic.md       shared IDs, returns, questions, deltas and ownership
├── tunables.yaml     visit, warning, comparison and recovery values
└── verification.md   first-visit, return, failure, reload and payoff runs
```

Read [SKILL.md](SKILL.md), fill [the contract](templates/returning-place-contract.md), review [why returns fail](references/why-returns-fail.md), and see [the original example](examples/the-closed-platform.md).
