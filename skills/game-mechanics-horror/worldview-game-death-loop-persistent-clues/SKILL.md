---
name: worldview-game-death-loop-persistent-clues
description: "Use when a horror game needs a bounded death or time loop where the dangerous world resets but authored clues, knowledge, marks, relationships, or selected state persist and enable a different decision on the next pass. Produces a reset-versus-persist ledger, clue dependency graph, safe save contract, an implementation when a runtime is available, and direct multi-loop verification. Do not use for ordinary checkpoint respawn, loot-driven procedural runs, repetitive failure without new inference, fake save corruption, or deletion of real player data."
---

# Worldview Game — Death Loop and Persistent Clues

## Call this Skill

The public invocation is:

```text
/worldview-game-death-loop-persistent-clues
```

Treat the text after the Slash command as the creative and project brief. Preserve the user's fictional cause, reset moment, intended discoveries, persistent traces, and ending condition. Do not turn every death into a generic upgrade currency unless the request actually calls for that structure.

## Read only the files this task needs

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same boundary, ledger, clue, transaction, and proof fields.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether repetition creates a new decision, resolving a reset/persistence tradeoff, or shaping replay compression. Skip it for a narrow task whose contract is already locked.
- Read [four-thirteen-at-low-water.md](examples/four-thirteen-at-low-water.md) only when a filled fictional example would clarify a field. Its clock, clues, and schedule are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review. It is not implementation guidance.
- [README.md](README.md) is the human catalog page; it is not required after this Skill is loaded.

## Use it when failure changes the next decision

A loop earns repetition when one pass can reveal a fact that meaningfully changes another. The player may learn a schedule, phrase, route, identity, consequence, or causal relationship. That knowledge persists because the person playing remembers it; the game may also preserve an in-world mark, journal entry, relationship, tool state, or explicit knowledge flag so the world can respond.

Use this Skill when:

1. The loop has a clear entry state and reset trigger.
2. At least one dangerous commitment can fail or reveal new information.
3. The revealed fact is actionable on a later pass.
4. Reset and persistence follow an explicit ledger.
5. The next pass changes a decision, route, timing, conversation, or outcome.
6. The player can distinguish intentional reset from a save or loading error.
7. The loop has a route toward resolution rather than infinite compulsory repetition.

Do not use it for a normal checkpoint that restores the same task, a run-based economy focused on random equipment, or a narrative montage without interactive state. Never fake platform errors, corrupt files, delete unrelated progress, or make the player believe their real saves were lost.

## What the user gives

Accept any combination of:

- an existing project and paths in scope;
- the fictional cause and temporal or ritual boundary of the loop;
- current save, checkpoint, quest, inventory, dialogue, world, and death systems;
- events, clues, schedules, routes, threats, and outcomes already authored;
- state that should reset, persist, transform, or remain outside the loop;
- desired number of meaningful passes, assistance, replay, and content limits;
- one intended discovery-to-action relationship.

Inspect only authorized project areas. Separate observed behavior, user-declared fiction, new proposals, and untested assumptions. Ask one grouped question when the answer changes data safety or progression—for example, whether “start over” means restart this loop, begin a new campaign, or erase a profile. Default to preserving user data.

## What the user receives

Deliver as much as the project permits:

1. An inventory of existing state owners, serialization, checkpoints, death, scenes, quests, dialogue, inventory, clocks, random seeds, and profile data.
2. A loop boundary contract defining entry, runtime, reset triggers, restoration order, exit, and behavior outside the loop.
3. A reset/persist/transform/external ledger for every state touched by the encounter.
4. A clue dependency graph connecting observation, interpretation, persistence, later action, and changed consequence.
5. Tunables for time windows, replay acceleration, clue review, assistance, recovery, and threat.
6. One complete multi-pass implementation in the existing runtime when available.
7. Automated and manual evidence for reset completeness, intended persistence, save safety, sequence handling, and restart.
8. A handoff explaining how to enter, die or reset safely, review learned clues, continue, quit, resume, and deliberately begin again.

If the runtime or save system cannot be exercised, deliver the contract and say which data claims remain unverified. Do not claim a safe loop after testing only in-memory state.

## Lock the recurrence before writing reset code

Close these locks in order. Later work may tune only the stated mutable fields. If a project fact contradicts an earlier lock, reopen that row and discard the downstream schema, content, implementation, and evidence named in the last column.

| Lock | Question resolved and locked artifact | Lock condition | Still mutable afterward | Reopen trigger and dependent work to discard |
| --- | --- | --- | --- | --- |
| **Loop promise** | One sentence fixes what the first pass can reveal, what survives, which later action changes, the changed consequence, and how the recurrence can end. | At least one legal first-pass observation changes a real later decision; the design has a route to resolution and does not depend on hidden meta-knowledge. | Fictional dressing and optional observations that do not alter the dependency. | Changing the discovery, later action, consequence, or ending reopens the promise; discard every later lock. |
| **Loop boundary** | Entry snapshot, active interval, reset triggers, snapshot-lock point, restoration order, re-entry, exit, and behavior outside the recurrence are fixed. | Every trigger reaches one transaction boundary; input, AI, damage, saves, and scene changes cannot continue mutating the old pass after it locks. | Transition presentation and replay speed inside the same state boundaries. | A new reset trigger, scene boundary, checkpoint owner, or exit rule reopens the boundary; discard the ledger, reset coordinator, save cases, and loop traces. |
| **State ledger** | Every touched field is classified as reset, persist, transform, external, or ephemeral, with owner, derivation, serialization, and reason. | Each state owner appears once; no field inherits a class by omission; settings, profile data, analytics, and deferred work are explicitly addressed. | Values inside a field whose class and owner stay unchanged. | Adding a state owner or changing any class, derivation, or serialization rule reopens the ledger; discard migration, restore, and restart tests. |
| **Clue dependency** | A graph connects observable event, interpretable clue, persistence representation, later action, changed consequence, and confirmation. | The later action can be performed through player knowledge where fiction permits; an explicit flag gates only world reactions that need state; incomplete evidence cannot silently become complete. | Wording and presentation that preserve the same inference and action. | Changing clue availability, interpretation, gate, or later action reopens the graph; discard sequence-break, journal, and two-pass traces. |
| **Schedule and replay** | Time basis, threat schedule, action-driven changes, randomness/seed, readable cues, and later-pass compression are fixed. | The same locked inputs reproduce the same causal schedule, and compression skips solved friction without skipping a necessary choice or clue. | Timing within the tested causal order and optional replay conveniences. | Clock source, seed, threat trigger, or skipped action changing reopens the schedule; discard timing and reproduction evidence. |
| **Storage transaction** | Atomic save, last-valid recovery, interruption behavior, quit/resume, new-game separation, network authority, migration, and data-safety boundaries are fixed. | A fault at any write phase leaves either the previous valid recurrence or the complete new one; no fictional reset deletes unrelated profile data. | Slot labels and storage implementation details that preserve atomic semantics. | Save schema, platform sync, profile ownership, or host authority changing reopens storage; discard fault, resume, reconnect, and migration tests. |
| **Multi-pass proof** | A matrix covers first pass, reset, persistence, early demonstrated knowledge, changed second pass, death/restart, save faults, accessibility, and every claimed network boundary. | The smallest complete proof shows both a meaningful first-pass failure/discovery and a later changed result, with state diffs and evidence from the environment actually run. | Evidence paths and additional passes that do not alter the locked dependency. | Any earlier lock changing reopens proof; rerun the affected passes and replace stale snapshots, logs, and captures. |

Ask one grouped question only when “restart” or “begin again” could mean incompatible data operations. Default to preserving profiles and slots. Derive timing and replay shortcuts after the loop promise, boundary, ledger, and clue dependency are fixed.

## Recover every state owner before designing persistence

This section gathers the evidence needed for **Loop boundary** and **State ledger** before any new reset path is added.

Death, checkpoint, save, scene loading, quest logic, inventory, dialogue, random generation, analytics, achievements, profile settings, and platform storage may all touch state. Find their owners before introducing another reset path.

Record:

```markdown
## Observed state systems
- Runtime world state: <owner and lifecycle>
- Save/checkpoint/profile: <owner and schema>
- Death and reload: <current behavior>
- Quest/dialogue/inventory/randomness: <owners>

## User-declared loop rules
- <fictional boundary and intended persistence>

## Proposed changes
- <new coordinator, fields, clue, or transition>

## Data-safety boundary
- <files/profiles never modified, migration and backup assumptions>
```

Do not create a second save system beside an established one. Extend the project's authoritative state model and migration practices. Use test profiles or temporary slots for validation.

## Define the loop boundary as a transaction

This section closes **Loop boundary**. The visible transition follows the locked transaction boundary.

The loop needs explicit states:

```text
outside
  -> entering
  -> active
  -> resolving or failing
  -> snapshot locked
  -> reset world
  -> restore persistence
  -> reenter active
  -> exiting
```

While reset runs, input, damage, AI, deferred interactions, autosave, and scene transitions must not continue mutating the old pass. Lock the result, cancel or drain old work, restore in a deterministic order, then expose control after the new state is coherent.

The visible transition—fade, sound, room reconstruction, waking animation—follows the transaction. It does not decide when state is safe.

## Build a complete state ledger

This section closes **State ledger** across runtime, save, profile, and ephemeral owners.

Classify every touched field:

- **reset:** returns to the loop-entry snapshot;
- **persist:** carries forward unchanged because the loop contract permits it;
- **transform:** derives a new state from the completed pass, such as a journal entry or relationship response;
- **external:** belongs to profile, settings, accessibility, platform, or progress outside this loop and must not be altered;
- **ephemeral:** callbacks, audio, particles, camera impulses, navigation requests, network messages, and temporary UI that must be cancelled and recreated.

Never classify by technical convenience. Inventory may contain resettable physical items, a persistent marked key, and external accessibility configuration. Split fields according to meaning.

Record serialization version and migration for new persistent fields. Missing or future-version data should fail safely with a recoverable error or supported fallback, not silently erase a profile.

## Connect every persistent clue to an actionable difference

This section closes **Loop promise** and **Clue dependency** together.

Write the dependency chain:

```text
observable event
  -> clue captured or remembered
  -> interpretation supported by evidence
  -> persistence representation
  -> earlier or different action on next pass
  -> changed world consequence
  -> confirmation or revision
```

A journal that fills with lore but never affects a choice may be valuable narrative material, but it is not the progression engine of this mechanic. At least one clue must alter when, where, why, or how the player acts.

Do not gate the later action only on a hidden knowledge flag when a player could reasonably perform it from remembered knowledge. Prefer demonstrating knowledge through the action—a phrase entered, lever moved before an event, route chosen, item marked—or explain in-world why the character must record or internalize it first.

Conversely, do not make the person outside the game maintain extensive notes because the interface refuses to preserve information their character intentionally recorded. Provide a reviewable clue ledger where the fiction supports one.

## Design the first pass as evidence, not sacrifice

An unavoidable first death can establish the loop, but it should still allow observation and agency. The player may choose how far to explore, which signal to follow, whom to warn, or what to mark before the reset. If the outcome is fixed, those choices should determine what evidence becomes available next.

Communicate the loop boundary before or immediately after the first reset. The player must understand that the reset is intentional and what, if anything, survived. Preserve real save confirmations and provide a clear quit/resume path.

Avoid long unskippable repetition. After the player has demonstrated knowledge, offer world-consistent shortcuts, accelerated routine actions, concise dialogue variants, or route openings. Acceleration must not skip the new decision the next pass is meant to test.

## Keep threat schedules causal and reproducible

This section implements **Schedule and replay** without changing the locked clue dependency.

When learning a schedule matters, define what drives it: time since loop start, objective phase, noise, player action, or an authoritative event. Randomness may vary nonessential texture or select from declared schedules, but a learned fact cannot become false without a readable reason.

Save the seed or active schedule when resuming mid-loop. A full loop reset may deliberately restore or advance a seed according to the contract. Document which. Developer restart, player death, checkpoint reload, quit/resume, and deliberate new loop are distinct transitions and must not accidentally share code paths with different meanings.

## Make death and reset humane

This section constrains the transition and replay portions of **Loop boundary** and **Schedule and replay**.

The player should reach the next meaningful decision quickly enough that repetition supports inference. Separate necessary consequence from wasted time. A short transition can preserve mood; a long load, repeated tutorial, or compulsory traversal taxes failure without adding meaning.

Provide options for reduced repetition, extended windows, clue review, subtitle and audio alternatives, motion and flash reduction, difficulty, and pause. Content involving death may need a presentation alternative defined by the project; the state transition can survive a less graphic representation.

Never punish a player for using accessibility assistance by withholding canonical progression or labeling the outcome invalid.

## Require new information and actor-specific memory

Every authored pass needs a `pass_objective`, at least one `new_information` result, and an `actionable_difference` for the next pass. Once routine labor is demonstrated, classify it as `mastered_labor` and give it a declared `compression_rule`. Compression may shorten travel, dialogue, setup, or solved manipulation; it must return control before the new inference or choice.

Store memory per actor and per fact:

| Field | Meaning |
| --- | --- |
| `actor_id` | the character or participant who can remember |
| `fact_id` | stable fact identity |
| `source_event` | what the actor observed or was told |
| `confidence` | uncertain, supported, or confirmed |
| `acquired_pass` | pass in which the memory became valid |
| `persistence_rule` | reset, persist, transform, or external player knowledge |
| `action_enabled` | action this memory can change |

Do not grant every actor a global `loop_knowledge` flag. A companion who never witnessed a failure does not become omniscient after reset. If the player knows a fact but the current character does not, permit direct demonstration where fiction allows or require a visible transmission step.

A bounded counterfactual replay is allowed only when it changes interpretation or action: replay one earlier event with one declared difference, show which actor remembers it, and record the changed consequence. A full timed investigation with hypotheses, isolated variables, confounds, actor schedules, and an outcome matrix belongs to the deferred time-loop investigation method; this Skill remains the owner of reset, persistence, transformation, and replay compression.

## Handle save, quit, resume, and new game honestly

This section closes **Storage transaction** and its user-facing data boundaries.

Define distinct user-facing actions:

- **resume current pass:** load the current authoritative pass and its committed active state;
- **restart current loop:** apply the declared reset and persistence ledgers;
- **return to loop entry without preserving this pass:** discard only uncommitted loop progress;
- **leave the loop in fiction:** use the authored exit and preserve broader campaign state;
- **start a new campaign/profile:** require explicit confirmation and affect only the selected slot;
- **delete save:** remain a normal platform/project operation with confirmation, never a horror effect.

Autosave must not capture a half-reset state. Use an atomic or recoverable write pattern already supported by the project. If failure occurs during save, keep the last valid version and report it honestly.

## Keep networked loops authoritative when relevant

In multiplayer, the server or host owns loop phase, reset trigger, world snapshot, persistent shared clues, threat schedule, completion, and restoration order. Decide whether knowledge is shared, per-player, or a combination. Reconnect and late join need explicit placement in the current pass and access to permitted clues.

Pause or protect state while applying the reset. Cancel old remote calls and attach loop identifiers to delayed actions so pass three cannot receive damage scheduled in pass two. Host migration during reset is a separate risk; do not claim support without testing it.

## Build the smallest complete two-pass proof

This section defines the playable core of **Multi-pass proof**.

Before a long campaign, implement:

1. A coherent loop-entry snapshot.
2. A first-pass choice that exposes one actionable fact.
3. A failure or reset that locks the pass and cancels old work.
4. A correct reset of world, threat, inventory, routes, and transient presentation.
5. A visible persistence of the earned clue or mark.
6. An earlier or different second-pass action using that clue.
7. A changed consequence that confirms the causal relationship.
8. A safe exit or next-loop state.

Include an attempted sequence break. Decide whether knowledge permits it, the world blocks it for a stated reason, or it reveals a bug. Do not silently force the original script after the player demonstrates the right answer early.

## Verify state and data directly

This section closes **Multi-pass proof** with state diffs, fault injection, accessibility paths, and direct evidence.

Run and record:

1. Capture the complete loop-entry snapshot and a state hash or normalized ledger.
2. Mutate every reset, persist, transform, and ephemeral category during a pass.
3. Trigger each reset route and compare resulting state with the contract.
4. Confirm persistent clues survive exactly the intended transitions and never leak into a new profile.
5. Use the clue on the next pass and observe the changed authoritative consequence.
6. Attempt the later action early with and without demonstrated knowledge; confirm the declared policy.
7. Save and quit during entry, active play, clue acquisition, failure, reset, restore, and exit; reject or recover half-reset states.
8. Interrupt the process where the test environment permits and recover the last valid save.
9. Repeat deterministic threat schedules under different render cadence and after resume.
10. Restart during audio, animation, attacks, interaction, and scene load; no old-pass event may survive.
11. Exercise clue review, repetition reduction, input alternatives, subtitles, no-audio path, reduced motion/flashes, and timing assistance.
12. If networked, verify two clients before and after reset, reconnect, late join, duplicate messages, and stale loop identifiers.

A video can show the transition but cannot prove data integrity. Pair presentation evidence with serialized-state inspection, assertions, and repeatable traces. Back up or use disposable test profiles before destructive fault injection.

## Work within the current Harness

This Skill does not bundle an engine, save backend, platform storage, clock, network service, asset generator, or deployment system. Use the project's existing authorized capabilities. Do not access personal files or real profiles outside scope. Never simulate corruption by touching unrelated data, filenames, operating-system UI, or platform storage.

## Deliver and hand off

Use established project documentation or:

```text
gameplay/<loop-slug>/mechanic.md
gameplay/<loop-slug>/tunables.yaml
gameplay/<loop-slug>/verification.md
```

End with entry point, controls, reset trigger, expected first clue, what resets, what persists, how to review knowledge, how to quit/resume, how to start over safely, verified two-pass outcome, save versions tested, accessibility paths, reused assets, proxies, and untested boundaries. Do not claim data safety beyond the storage and interruption paths actually exercised.
