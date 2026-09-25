---
name: worldview-game-relief-resource-with-hidden-cost
description: "Use when a resource or action should reduce immediate pressure while raising a separate delayed bodily, social, access, dependency, detection, or transformation risk that the player can learn and manage. Produces and, when possible, implements a two-axis transaction ledger, disclosure schedule, alternatives, thresholds, handoffs, persistence, accessibility, and cautious/compulsive/never-use verification. Do not use for ordinary inventory scarcity or treatment whose only effect is physical recovery."
---

# Worldview Game — Relief Resource with Hidden Cost

## Call this Skill

```text
/worldview-game-relief-resource-with-hidden-cost
```

Treat the text after the Slash command as the pressure, relief, and consequence brief. The user may describe only “something that helps but is dangerous later.” Inspect the project before choosing quantities, symptoms, or thresholds.

## Route companion files as needed

- Fill [`relief-resource-contract.md`](templates/relief-resource-contract.md) before implementation unless equivalent owners, disclosure, alternatives, and tests already exist.
- Read [`why-relief-resources-fail.md`](references/why-relief-resources-fail.md) when the resource feels like a trap, the cost is unknowable, or one meter is doing several incompatible jobs.
- Read [`the-blue-room-tonic.md`](examples/the-blue-room-tonic.md) only when a complete original application clarifies the contract. Do not reuse its fiction or values.
- Read [`SOURCE.md`](SOURCE.md) for provenance review.

## What this Skill owns

This Skill owns the relief transaction ledger and these decisions:

1. the immediate pressure the player wants relieved;
2. the resource, provider, action, or access condition that can relieve it;
3. the relief axis, curve, duration, and interruption behavior;
4. the separate downstream-cost axis and the system that receives it;
5. whether the first use is informed, uncertain, or surprising;
6. the first visible symptom, trace, permission change, debt, or exposure;
7. the repeated-use disclosure schedule;
8. diminishing relief, escalating cost, dependency, or tolerance rules;
9. at least one viable alternative coping action and its tradeoff;
10. safe, risky, and irreversible thresholds;
11. refusal, exhaustion, unavailable-resource, and misuse behavior;
12. use under immediate threat, interruption, and partial completion;
13. inventory, body, permission, detection, narrative, and ending handoffs;
14. persistence and reload of every use event and disclosed rule;
15. cautious, compulsive, never-use, and mixed-history verification;
16. reduced-intensity and non-medical presentation where bodily content appears.

Inventory does not own the cost merely because it stores the item. A body system does not own social permission merely because a symptom caused it. This package owns the coupling transaction; each receiving subsystem remains authoritative for its own state.

## Routing boundaries and handoffs

| Concern | Owner | This Skill sends | This Skill accepts | Forbidden duplicate |
| --- | --- | --- | --- | --- |
| count, capacity, storage, transfer | scarce-inventory triage | use request and accepted quantity | availability and committed quantity result | inventory count |
| injury, fictional infection, treatment | wounds, infection, and treatment | bodily cost delta and cause | physical-state result and treatment eligibility | physical condition |
| unreliable perception | perception distortion and trust | relief request and current channel | current reliability and cue eligibility | channel truth |
| role, access, and social permission | role and identity pressure | trace, debt, or disclosure event | permission-state result | actor permission |
| detection | relevant threat owner | emitted trace or behavior | alert-state result | threat knowledge |
| final aftermath | single-ending campaign | complete relief/cost history | ending acceptance and local aftermath mapping | ending commit |

Every handoff records source transaction ID, requested delta, accepted delta, receiving owner, and visible result. A receiver may reject an invalid transition; this ledger records the rejection without inventing a replacement state.

## Inspect before proposing

1. Find the playable entry, current pressure meters, item or service owner, inventory, body state, permissions, threats, save schema, accessibility settings, and ending gate.
2. Run the current mechanic. Record which action helps, which state visibly changes, when control returns, and what persists.
3. Separate observed behavior, user-declared rules, proposals, and unverified assumptions.
4. Identify every writer. Remove or route any duplicate writer before adding the coupling.
5. Preserve working conventions and use test profiles for persistence work.

## Six locks

### 1. Pressure and Relief Lock

Define the pressure in concrete action terms: unstable aim, distorted navigation, reduced endurance, social panic, environmental exposure, or another project-specific limitation. Define what one accepted use improves, by how much, for how long, and what cannot be relieved.

Relief must be real. If use only plays comforting feedback while the pressure state remains unchanged, the choice is fraudulent.

### 2. Downstream Cost Lock

The cost is an independent axis. It may affect physical condition, access, attention, detection, debt, trust, dependency, or transformation. Name the receiving owner and its accepted delta. Do not derive it from the remaining item count or overwrite relief with one “sanity” value.

### 3. Disclosure and Alternative Lock

The cost may surprise once. After the first material consequence, teach the coupling through repeatable evidence. Define:

- what the player knows before first use;
- first cue and when it appears;
- second confirmation and competing explanation;
- explicit rule confirmation before irreversible threshold;
- alternative coping action;
- why the alternative is slower, harder, or limited but viable.

Do not punish a rational first use with information only the author knew.

### 4. Threshold and Pressure-Use Lock

Declare safe, risky, and irreversible thresholds. Define simultaneous-use requests, interruption, cancellation, partial use, use during attack or timed work, exhaustion, and unavailability. The player must know the last cancel point and whether a consumed charge has already committed.

### 5. Persistence and Access Lock

Persist each accepted transaction, both axis deltas, disclosure stage, thresholds crossed, alternatives learned, and handoff acknowledgements. Restore state atomically before control. Provide non-color, non-audio, reduced-motion, reduced-intensity, timing, and input alternatives without revealing undiscovered rules early.

### 6. Single-Ending History Lock

Cautious, compulsive, never-use, and mixed histories converge on one required ending. They may change route method, injury, permissions, evidence, relationship, procedure, and aftermath. They do not silently multiply endings. Define a fallback if the resource is exhausted or the irreversible threshold has been crossed.

## Two-axis transaction

Use stable transaction IDs and an atomic state boundary:

```text
validate resource/action, pressure, threshold, and use context
reserve quantity or provider access through its owner
calculate proposed relief_delta and downstream_cost_delta separately
commit use_event with knowledge_stage and cue obligations
send deltas to their authoritative owners
record acknowledgements and resulting states
publish feedback only after committed results exist
release reservation and permit the next action
```

Minimum state:

```text
use_event_id
resource_or_provider_id
pressure_before
relief_delta_requested
relief_delta_accepted
relief_expiry_or_decay
cost_axis
cost_delta_requested
cost_delta_accepted
knowledge_stage
cue_ids_presented
safe_risky_irreversible_thresholds
alternative_ids_learned
handoff_acknowledgements
schema_version
```

If interruption occurs before commit, release the reservation and apply neither delta. After commit, retry by transaction ID and never charge or apply either delta twice.

## Author disclosure as playable evidence

Use this progression when the user has not specified one:

1. **Before use:** communicate the immediate benefit and at least ordinary uncertainty.
2. **First use:** deliver real relief; allow one ambiguous downstream trace.
3. **Second encounter:** repeat or contrast the trace so it can be tested.
4. **Before risky threshold:** offer a stable cue, an alternative, and a reversible choice.
5. **Before irreversible threshold:** make the coupling explicit enough for informed commitment.
6. **After commitment:** preserve consequences and a viable route to the one ending.

Do not hide every cost until the ending. Do not make every use automatically wrong. The mechanic works because the correct choice depends on current pressure, learned cost, alternatives, and remaining route.

## Alternatives and exhaustion

At least one no-use path must work. Alternatives can cost time, position, help, privacy, route access, attention, or another declared resource. They cannot be cosmetic refusals that return the player to the same compulsory use prompt.

When the resource is exhausted:

- stop offering unavailable use;
- preserve learned rules;
- expose the fallback action;
- avoid a dead save;
- let existing costs continue according to their owner;
- distinguish “none available” from “player refuses.”

## Accessibility and content safety

- Never present a fictional item as real health guidance.
- State that bodily systems are fictional and project-specific.
- Provide reduced-intensity versions of distress, dependency, or transformation cues.
- Do not require grotesque imagery as the only threshold evidence.
- Pair spatial audio with visual or haptic direction.
- Pair color with shape, label, or pattern.
- Support toggle/hold alternatives and extended decision windows.
- Assistance may clarify known rules; it must not reveal a hidden coupling before its scheduled evidence.

## Failure and recovery

- Failed validation changes neither axis.
- Interrupted pre-commit use consumes nothing.
- Interrupted post-commit presentation reconstructs from the ledger.
- Duplicate callbacks are idempotent by `use_event_id`.
- A receiving owner rejection is logged and shown; it cannot silently apply only half of an intended inseparable transaction unless the contract explicitly allows that outcome.
- Death/retry restores the declared checkpoint history, including disclosed knowledge and persistent costs.
- New game and profile reset require their own explicit authority.

## Verification matrix

### Histories

- **Never use:** reach the ending through declared alternatives.
- **Cautious:** use after sufficient pressure, remain below risky threshold, and verify real benefit.
- **Compulsive:** cross repeated-use and irreversible thresholds with advance disclosure, then reach the same ending through a changed procedure.
- **Mixed:** alternate resource and coping actions; verify independent decay and cost.

### Pressure and interruption

- use at low, medium, and critical pressure;
- cancel before commit and interrupt after commit;
- request two uses rapidly;
- use during threat warning and timed interaction;
- exhaust supply and lose provider access;
- cross each threshold exactly once.

### Persistence

- save/load before use, after commit, after delayed cost, and at every disclosure stage;
- crash/relaunch around the transaction boundary;
- death/retry after a persistent cost;
- confirm no duplicate count, relief, cost, cue, or aftermath;
- migrate or explicitly reject an older schema.

### Accessibility

- complete with reduced intensity, no directional audio, non-color cues, remapped input, and extended windows;
- verify the player can perceive thresholds without grotesque presentation;
- confirm assistance does not disclose unknown rules early.

## Deliver

Return:

1. observed project facts and assumptions;
2. authoritative two-axis ledger;
3. disclosure, alternatives, threshold, and pressure-use contracts;
4. explicit neighbor handoffs;
5. implementation and files changed;
6. persistence, failure, and accessibility results;
7. cautious, compulsive, never-use, and mixed-history evidence;
8. single-ending handoff and remaining risks.

Do not call the mechanic complete because one button reduces a meter. Completion requires a real benefit, a separate learnable cost, a viable alternative, fair thresholds, atomic persistence, accessible evidence, and divergent histories that remain playable.
