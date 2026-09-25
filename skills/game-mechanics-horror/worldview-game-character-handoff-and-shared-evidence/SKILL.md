---
name: worldview-game-character-handoff-and-shared-evidence
description: "Use when a single-player game changes playable protagonists and earlier actions, possessions, knowledge, or mistakes must be indexed into a later viewpoint without duplicating their authoritative systems. Produces and, when possible, implements stable shared IDs, a cross-viewpoint handoff ledger with domain-owner pointers, action-to-residue mappings, atomic switches, save and failure recovery, and a single-ending convergence gate. Do not use for a cast that never shares consequential state or for ordinary live co-op communication."
---

# Worldview Game — Character Handoff and Shared Evidence

## Call this Skill

```text
/worldview-game-character-handoff-and-shared-evidence
```

Treat the text after the Slash command as the project and viewpoint brief. The user may describe only characters and a desired mystery. Recover the actual runtime, existing save model, and shared world state before asking them to invent schemas.

## Route companion files as needed

- Fill [`handoff-evidence-contract.md`](templates/handoff-evidence-contract.md) before implementation unless the project already records every equivalent owner and transition.
- Read [`why-handoffs-fail.md`](references/why-handoffs-fail.md) when viewpoints disagree, chronology can vary, or a proposed shared journal risks leaking knowledge.
- Read [`orison-flood-archive.md`](examples/orison-flood-archive.md) only when a complete fictional ownership matrix would clarify the task. Its story and values are not defaults.
- Read [`SOURCE.md`](SOURCE.md) for provenance review. It is not an implementation guide.

This package is self-contained. A neighboring Skill is a handoff, not a hidden loading dependency.

## What this Skill owns

This Skill owns one authoritative record: the **cross-viewpoint handoff ledger**. It links stable shared IDs, outgoing and incoming playable characters, domain-owner versions, residue mappings, transition status, rollback scope, and campaign-consumption status.

It decides:

1. which shared place, object, actor, fact, and event IDs cross a viewpoint boundary;
2. which existing system owns each referenced field;
3. which domain-owner version must be committed before the switch;
4. which earlier action produces which later residue or route consequence;
5. which facts the incoming viewpoint may inspect without acquiring hidden knowledge;
6. which transitions are fixed, optional, replayable, commutative, or prohibited out of order;
7. the atomic switch order and completion marker;
8. failure and rollback scope around an incomplete handoff;
9. save/load, schema migration, skipped-transition, and replay behavior;
10. debug comparison across owner pointers without creating a second source of truth;
11. accessible equivalents for mandatory transferred evidence;
12. the convergence record delivered to one campaign ending.

Domain precedence is explicit: the world/event system owns truth; inventory or object state owns physical custody; the evidence/knowledge system owns what each actor knows; perception owns player-facing presentation; role/identity owns permissions; the campaign owns the ending. This Skill stores IDs, versions, transfer events, and read permissions that connect those owners across viewpoints. It never replaces their ledgers.

## Use and routing boundaries

Use this Skill when at least two playable protagonists affect or interpret the same state. Route elsewhere when:

- roles communicate simultaneously to close an information-action gap: asymmetric-information cooperation;
- one protagonist tests a finite candidate set: evidence-based entity identification;
- the core problem is whether a cue channel lies: perception distortion and trust;
- the work is the complete campaign and release route: single-ending campaign.

Those systems remain authoritative for their domains. They publish stable IDs and committed versions to this handoff ledger; this Skill orders the cross-viewpoint transaction and returns read-only pointers. It must not create a second truth, possession, knowledge, presentation, permission, or ending ledger.

## What the user gives

Accept any combination of:

- an authorized project path and playable entry;
- protagonist list, chronology, chapters, or switch moments;
- existing inventory, quest, journal, save, streaming, checkpoint, and dialogue systems;
- shared locations, recurring objects, earlier actions that should leave residue, and later deductions;
- whether chapter order is fixed, partially selectable, or replayable;
- one required ending and allowed local aftermath variation;
- accessibility, input, platform, and multiplayer constraints.

If no project exists, produce the smallest vertical proof: two protagonists, one shared room, one shared object, one action-to-residue conversion, one indirect knowledge transfer, one switch, one save/load test, one failure/retry, and one fixed convergence action.

## What the user receives

Deliver as much as the current environment permits:

1. An inventory of existing truth, item, knowledge, viewpoint, save, and campaign owners.
2. A completed ownership contract and shared-ID registry.
3. A cross-viewpoint handoff ledger containing domain-owner pointers, committed versions, residue mappings, and incoming read permissions.
4. Cross-perspective residue rules and transition transactions.
5. Implementation with debug inspection when a runtime exists.
6. Single-ending convergence prerequisites and neighbor handoffs.
7. Verification for chronology, switches, save/load, death, skips, optional evidence, accessibility, and failure recovery.

Do not claim implementation when only a document exists.

## Lock sequence

### 1. Shared-ID and Owner-Pointer Lock

- **Resolve:** stable IDs, chronology, and which external domain system writes each referenced state.
- **Artifact:** shared-ID registry and domain-owner pointer table.
- **Condition:** each consequential place, object, actor, and event has one authoritative owner; viewpoint content references it rather than cloning it.
- **Reopen when:** chronology, event causality, or shared identity changes. Invalidate residue, knowledge, presentation, save, and convergence tests.

### 2. Physical Ownership Lock

- **Resolve:** holder, location, operability, transfer, destruction, duplication policy, and unavailable states for each consequential object.
- **Artifact:** physical ownership transition ledger.
- **Condition:** every switch and handoff has exactly one legal result; objects cannot duplicate or disappear because a chapter loads.
- **Reopen when:** inventory authority, transfer timing, streaming ownership, or object lifecycle changes.

### 3. Knowledge Ownership Lock

- **Resolve:** observer, source, confidence, interpretation, transmission, forgetting, and mandatory versus optional knowledge.
- **Artifact:** character-fact matrix and transmission history.
- **Condition:** no protagonist can act on a fact they did not observe or receive; skipping optional evidence does not remove mandatory campaign comprehension.
- **Reopen when:** dialogue order, observation eligibility, shared journal behavior, or knowledge-gated action changes.

### 4. Consequence and Presentation Lock

- **Resolve:** how earlier actions produce later physical residue, route changes, descriptions, animations, and deductions.
- **Artifact:** action-to-residue matrix and viewpoint presentation mapping.
- **Condition:** presentation derives from truth plus viewpoint knowledge; it never writes either one.
- **Reopen when:** a consequence, inspect description, route gate, or visual state changes meaning.

### 5. Transition and Persistence Lock

- **Resolve:** atomic switch order, save schema, death scope, retry scope, skip behavior, version migration, and debug audit.
- **Artifact:** switch transaction and persistence matrix.
- **Condition:** switches, loads, and failures preserve the declared truth, possession, knowledge, and presentation without partial commits.
- **Reopen when:** checkpoint, save, scene loading, chapter order, or failure behavior changes.

### 6. Single-Ending Convergence Lock

- **Resolve:** mandatory facts, mandatory physical resources, optional interpretation, final action, and permitted local aftermath variation.
- **Artifact:** convergence gate consumed by the campaign owner.
- **Condition:** all supported evidence orders and viewpoint outcomes can reach the same ending without pretending optional knowledge is mandatory.
- **Reopen when:** the ending ontology, final action, or mandatory prerequisites change.

## Recover the current project before proposing another owner

Inspect code, data, saves, prefabs/entities, scene transitions, quest state, journal state, and runtime behavior. Write:

```markdown
## Verified owners
- World/event truth: <path and behavior>
- Physical objects: <path and behavior>
- Character knowledge: <path and behavior or missing>
- Viewpoint presentation: <path and behavior>
- Save/switch lifecycle: <path and behavior>

## Gaps
- <responsibility with no authoritative owner>

## Proposed changes
- <new or extended owner>
- Reason: <specific conflict resolved>
```

Do not interpret a quest boolean as proof that every character knows the quest fact. Do not infer physical possession from a dialogue line.

## Build stable shared identity

Assign stable IDs to every shared entity used across viewpoints:

```text
place_id
object_id
actor_id
event_id
fact_id
chapter_instance_id
```

Viewpoint scenes reference these IDs. If a room must use a separate runtime instance, serialize its authoritative state through the shared ID and verify equivalence. Never repair callbacks by matching display names.

## Separate the four ledgers

### Event-owner pointer and transition index

Store event preconditions, actor, world time, mutations, and immutable result. This ledger answers what happened, not who understands it.

### Physical-custody pointer and transition index

Store object location/holder, operability, condition, transfer event, and current authority. A destroyed object has a terminal state; it is not “not in inventory.”

### Knowledge ledger

Store `(character_id, fact_id)` with source event, observed detail, confidence, interpretation, transmission event, and status. Distinguish:

- unknown;
- observed but uninterpreted;
- believed;
- doubted;
- contradicted;
- confirmed.

Do not turn optional interpretation into authoritative truth.

### Presentation mapping

Derive inspect text, label, highlight, animation, audio, and available action from authoritative state plus active viewpoint knowledge. Presentation may intentionally mislead only through declared perception rules and must not mutate truth.

## Convert actions into later residue

For every cross-perspective callback, declare:

| Earlier action | World mutation | Persistent residue | Later eligible observer | Knowledge gained | Later decision |
| --- | --- | --- | --- | --- | --- |
| <action> | <authoritative change> | <physical/log/route evidence> | <character> | <fact, confidence> | <choice or route> |

Residue must survive the relevant transition and remain inspectable long enough. A later narration that merely says what an earlier protagonist did is not a playable consequence.

Support absence. If the earlier protagonist did not act, the later scene needs a declared default or missing-residue interpretation. Do not spawn the residue because the later chapter expects it.

## Make switches atomic

Use one transaction order:

1. suspend new outgoing interactions;
2. finish or cancel bounded actions under declared rules;
3. commit authoritative mutations;
4. commit physical ownership;
5. commit outgoing knowledge and transmissions;
6. write checkpoint/version;
7. instantiate incoming viewpoint;
8. derive its presentation from authoritative and knowledge state;
9. enable input;
10. emit a debug ownership snapshot.

If any required step fails, restore the last complete transaction. Never leave the outgoing object mutation committed while its ownership or knowledge event is missing.

## Preserve mandatory knowledge without magical sharing

Mandatory campaign facts require at least one guaranteed delivery path. That path may be direct observation, a persistent record, an explicit conversation, or a world state that the next character must inspect. Optional evidence may alter confidence, route efficiency, dialogue, or aftermath.

When a transition cutscene is skipped, grant only the facts the scene guarantees and record the delivery source as `transition_summary` or the project's equivalent. Do not grant optional visual observations that the player skipped.

Shared journals are not neutral. If every character can read one, define who writes, when sync occurs, whether private notes remain private, and what happens when the journal is inaccessible.

## Failure and recovery

Declare failure scope:

- retry current encounter while preserving prior chapters;
- rewind current viewpoint to its checkpoint;
- rewind the entire cross-viewpoint transaction;
- replay a chapter as non-canonical review.

Clear pending callbacks, temporary presentation effects, and partial transfers. Retain only the state declared by the checkpoint. Replaying an earlier chapter must not silently rewrite later canonical state unless the project explicitly supports timeline replacement and invalidates dependent saves.

## Accessibility and comprehension

- Identify active viewpoint through more than color: name, voice, body, UI role, entrance context, and objective wording.
- Provide a chronology and relationship view that exposes only known information.
- Give nonvisual equivalents for critical residue and nonaudio equivalents for transmissions.
- Allow review of mandatory facts and their source without exposing hidden truth.
- Avoid requiring players to remember a large cast without stable IDs, portraits, or role labels.
- Keep switch transitions comfortable; do not use forced camera effects as the only handoff cue.

## Implementation order

1. Inventory current domain owners and create shared IDs.
2. Add versioned pointers to authoritative event and physical-custody records.
3. Add knowledge-access pointers and transmission events without replacing the knowledge owner.
4. Ask the presentation owner to derive the incoming view from those committed records.
5. Implement one action-to-residue conversion.
6. Implement the atomic switch transaction.
7. Add save/load, failure, skip, and version handling.
8. Add convergence gate and neighbor handoffs.
9. Add debug ownership snapshot and automated invariants.
10. Validate in the running build.

## Verify

At minimum, test:

1. every supported chapter/viewpoint order;
2. action performed and not performed before later inspection;
3. physical transfer at each switch boundary;
4. known object with unknown meaning and meaningful object held by an uninformed role;
5. optional evidence skipped;
6. mandatory transition scene skipped;
7. save/load before, during, and after a switch;
8. death during an interaction and immediately after handoff;
9. duplicate event and stale callback rejection;
10. replay/review mode without canonical mutation;
11. no-audio, low-vision, and alternative-input access to critical knowledge;
12. convergence with minimum mandatory knowledge;
13. debug comparison of truth, holder, knowledge, and presentation at each reveal.

## Handoff

Deliver:

- changed files and owners;
- filled ownership contract;
- shared-ID and event schema;
- physical and knowledge ledgers;
- residue and switch transactions;
- save/recovery results;
- accessibility evidence;
- convergence contract;
- direct runtime evidence and remaining blockers.

Do not call the result complete because all cutscenes play. Completion requires causal integrity across viewpoints, saves, failures, and the single ending.
