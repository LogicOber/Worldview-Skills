---
name: worldview-game-key-item-backtracking
description: "Use when a blocked route and protected key item or learned capability should transform a return through familiar space. Defines bounded target compatibility, invalid feedback, calm and pressured use, physical versus knowledge ownership, handoff, final-use preview, atomic unlocking, recoverable failure, persistence, and graph verification."
---

# Worldview Game — Key-Item Backtracking

## Call this Skill

The public invocation is:

```text
/worldview-game-key-item-backtracking
```

Treat the text after the command as the world, route, and progression brief. Do not ask the user to preselect door-state identifiers or exact return distances before inspecting the actual map.

## Companion file routing

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already has an equivalent route-state contract.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when checking fit, resolving a return-route tradeoff, or tuning pressure; skip it for a narrow implementation whose route contract is locked.
- Read [rain-archive-return.md](examples/rain-archive-return.md) only when a completed fictional example clarifies a field; do not reuse its topology or values by default.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate supplied facts from repository decisions, not for implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the spatial problem before placing a key

The mechanic is not “put an object far from a door.” Its problem is how to make a known space support a new decision after the player learns or obtains something. The first encounter establishes an unresolved relationship. Acquisition changes the player's capability and often the world state. The return tests memory while revealing a shortcut, altered hazard, new interpretation, or different traversal choice.

Use this Skill only when the return itself matters. A long unchanged hallway is padding. A gate whose key could be any inventory icon is a task marker. A valid loop connects lock, object, map, persistence, and player knowledge in a way that remains legible after a break in play.

Do not use this method for:

- a code, riddle, or symbol puzzle where deduction is the primary action;
- a linear delivery task resolved automatically on acquisition;
- procedural loot where locks accept arbitrary rarity tiers;
- a universal quest framework for unrelated objectives;
- an irreversible one-way sequence with no actual return.

## What the user gives

Accept any combination of:

- an authorized project or level path;
- map geometry, collision, navigation, door, interaction, objective, and save code;
- the blocked destination and candidate key item;
- a route or rooms the user wants revisited;
- threats or environmental state changes already justified by the world;
- desired pacing, navigation aids, input, accessibility, and multiplayer constraints.

Inspect only the provided scope. Record declared world facts, runtime observations, and new proposals separately. A map annotation is not evidence that the corresponding door state persists after load.

If no map exists, author the smallest topology that proves the relationship: a recognizable locked objective, a fork leading to the item, one loop or shortcut, one changed return condition, a safe wrong-turn recovery, and an objective beyond the unlocked gate.

## What the user receives

Complete as much of the following as the project permits:

1. A reuse inventory of level geometry, door systems, item data, objective state, map UI, saves, threats, and audio-visual signals.
2. A mechanic contract defining the gate, key item, acquisition, route states, world change, return choices, success, failure, restart, accessibility, persistence, and network authority.
3. A route-state document showing reachability before inspection, after inspection, after acquisition, after any return change, and after unlocking.
4. Tunable values for interaction reach, prompt timing, reminder thresholds, door transition, traversal costs, threat staging, and shortcut behavior.
5. A working implementation in the project's actual runtime when available; otherwise an implementation-ready contract with its blocked dependencies named.
6. Evidence for lock recognition, key protection, changed return, wrong-turn recovery, no-softlock boundaries, restart, save/load, and any network claims.

Do not describe a diagram as a working level. Do not call a route memorable because its rooms have different labels; test whether the information needed to return is actually available.

## Lock progression and route alignment before implementation

The following locks are dependencies, not parallel checklists. Later work may tune only the fields left mutable; it cannot change an earlier state meaning or edge. When inspection or implementation exposes a contradiction, reopen the earliest affected lock, amend its artifact, and discard every dependent graph, test, save fixture, and evidence claim. Ask one grouped question only if the brief leaves two incompatible meanings for the gate, key, or return change.

| Lock | Question resolved | Locked artifact | Lock condition | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Progression Relationship Lock** | What exact blocked state, protected capability, application event, and completed state form the loop? | Stable gate/key identifiers and a progression transition table for inspection, acquisition, application, and success. | The gate accepts a specific justified capability, every transition has one authoritative cause, and S0–S3 meanings are unambiguous. | Names shown to the player, animation, and non-authoritative feedback may change. | Reopen when the accepted capability, consumption rule, success condition, or state identifiers change; invalidate every route snapshot, persistence fixture, and completion trace. |
| **State-Aligned Route Lock** | Which nodes and directed edges are reachable in S0, S1, S2, and S3, including safe recovery anchors? | A versioned route graph with connection conditions, traversal direction, no-return boundaries, and one reachability snapshot per progression state. | Each state in the progression table maps to exactly one coherent graph, every supported snapshot can reach completion, and collision/navigation agree with its edges. | Travel costs and threat occupancy may be tuned without adding, removing, or reversing an edge. | Reopen when geometry, streaming, a connector condition, or a state-to-graph mapping changes; invalidate return timing, wrong-turn, save-location, and shortcut evidence. |
| **Return Transformation Lock** | What changes after acquisition, what visible cause explains it, and what familiar information remains reliable? | A before/after matrix for landmarks, hazards, shutters, shortcuts, cues, and wrong-turn recovery tied to one progression event. | Every change has a perceivable cause, unchanged landmarks remain useful, and at least one intended and one mistaken return remain recoverable in the locked graph. | Presentation intensity, cue timing, and threat tuning inside unchanged route states may move. | Reopen when the cause, changed connection, landmark, or recovery loop changes; invalidate recognition, return-choice, and accessibility traces. |
| **Atomic Application Lock** | How do key ownership, installed ownership, gate state, save data, and multiplayer authority resolve interruption or duplicate requests? | An idempotent acquisition/application transaction that atomically changes the key owner from protected storage to the named installed socket with the gate state, plus persistence reconstruction order and authority rule. | Every interruption yields either protected-storage-owned/gate-locked or installed-socket-owned/gate-unlocked; no snapshot contains both owners or neither, and repeated requests resolve once. | Presentation after commit, retry messaging, and client prediction may change. | Reopen when serialization, ownership conversion, consumption/installation semantics, authority topology, or commit boundary changes; invalidate save/load, migration, race, and interrupted-unlock evidence. |
| **Navigation Pressure Lock** | How much recognition, time, threat exposure, and assistance make the return meaningful without turning it into padding? | A measurement sheet for outbound, changed return, shortcut, wrong turn, reminders, cues, and supported assists. | Actual or explicitly proposed route measurements use the locked graph, cues expose known facts, and every supported assist still reaches completion. | Threat speed, reminder delay, prompt duration, and traversal values may tune inside verified ranges. | Reopen when an edge, required cue, supported input, or pressure source changes; invalidate timing, difficulty, reminder, and accessible-route evidence. |

Implementation starts only after these artifacts are filled as far as evidence allows. A blocked graph or progression relationship blocks dependent code rather than permitting a guessed shortcut.

## Recover the project as a progression graph

This section builds the **Progression Relationship Lock** and **State-Aligned Route Lock** from inspected state and topology.

Before editing, write an intake note:

```markdown
## Facts declared by the project or user
- Blocked objective:
- Existing key/objective state:
- Existing rooms and connections:

## Behavior observed in a running build
- Gate feedback and collision:
- Door persistence:
- Current reachable graph:

## Proposals introduced here
- Key item relationship:
- Return-state change:
- Why each is needed:
```

Then draw a route graph using stable room or landmark identifiers. For every connection, record direction, lock condition, traversal cost, whether it is visible from either side, and the player state required to use it. Mark one-way drops, elevators, streamed boundaries, threat triggers, and points of no return.

Produce at least these graph snapshots:

```text
S0  before the lock is inspected
S1  lock known, key not acquired
S2  key acquired, return change active
S3  gate unlocked, downstream objective reachable
```

Name a valid safe anchor for each snapshot, even when several snapshots share one location. The anchor must exist in that snapshot's graph, accept reconstruction without collision or hazard overlap, and retain a completion path. “Nearest safe place” is not a reproducible load rule.

If inspection is not required by the design, say so and merge S0 with S1. Do not invent a flag merely to match the template.

## Make the blocked objective recognizable

This section uses the **Progression Relationship Lock** to communicate the gate without redefining what opens it.

The player needs to understand three things without an external walkthrough:

1. the obstruction is deliberate rather than broken scenery;
2. progress can plausibly be restored later; and
3. enough identifying information remains to recognize the place on return.

Use a combination of shape, material, nearby landmark, interaction feedback, map annotation, sound, and concise text appropriate to the project. Do not rely on color alone or on a tiny inventory icon. The feedback may preserve uncertainty about the exact item, but it should not falsely imply that repeated interaction or combat will open the gate.

Record the gate as persistent state, not an animation boolean owned by the current scene. Collision, navigation, renderer, interaction prompt, audio, and map state must agree on whether it is locked, unlocked, opening, or open.

## Give the key item a specific relationship to the gate

This section completes the key side of the **Progression Relationship Lock** and supplies invariants for atomic application.

The item can be a physical component, credential, tool, pattern, living permission, or learned capability. Its form should explain why this gate responds to it and why the player could not substitute every ordinary item. That relationship carries world meaning and helps memory.

Define:

- stable item or capability identifier;
- where and how it is acquired;
- what the player learns at acquisition;
- whether it is retained, consumed, installed, or converted into permanent state;
- its authoritative owner before and after application, including the exact installed socket or capability record;
- which gates accept it and why;
- what happens if the inventory is full;
- how it is recovered after a drop, scene unload, death, or migration.

Progression items do not vanish through ordinary discard, overflow, crafting, or storage cleanup. If the fiction allows the player to place one in the world, its stable location and recovery route must persist. If it is consumed at a gate, commit the unlocked progression state in the same transaction; never consume first and hope the door saves later.

## Bound the item's target compatibility

Do not turn a memorable tool into a universal scanner, key, weapon, or repair device. Write a finite compatibility table:

| Verb | Valid target class | Excluded target class | Range/duration | Cost/cooldown | Effect | Invalid feedback |
| --- | --- | --- | --- | --- | --- | --- |

Compatibility belongs to authoritative interaction rules, not item-description text. A valid target exposes a stable target class and precondition. An invalid target rejects before cost or ownership changes and explains the category through world feedback without revealing every future use.

Teach one calm use before demanding a pressured use. The calm case establishes operation, target proof, cost, duration, and feedback. The pressured case changes timing, route, or threat consequence without changing compatibility. If the final use adds a new target class, preview that relationship earlier through an inaccessible socket, safe demonstration, residue, or low-cost rejection.

## Separate physical ownership, knowledge, and operation

Record physical holder or installed socket, actors who know the item's purpose, actors authorized or physically able to operate it, and observers who witnessed use. These sets may differ. Do not grant knowledge because an item entered shared inventory or grant custody because dialogue revealed meaning.

For every handoff record item ID, prior and new holder, knowledge retained, knowledge transmitted, operation permission, world location, acknowledgement, save transaction, failure fallback, and whether the item is returned, retained, installed, or consumed. Use `/worldview-game-character-handoff-and-shared-evidence` when custody and knowledge cross playable viewpoints.

## Change the return without making the map arbitrary

This section fills the **Return Transformation Lock** within the edges permitted by the **State-Aligned Route Lock**.

The return should add at least one new relationship:

- a shortcut now opens from the far side;
- a hazard changes which corridor is safest;
- a known room reveals a previously inaccessible layer;
- an earlier threat moves according to a readable world event;
- a resource cache becomes valuable because the destination is now known;
- a story fact changes how the player interprets a familiar landmark;
- the key item itself enables a new traversal action.

Anchor changes to the acquisition or another visible cause. A shutter alarm may redirect movement; restored power may activate an elevator and lighting; removing a component may stop one machine and start another. Do not teleport threats or seal routes only to surprise the player without an in-world state transition.

Preserve continuity. The same room still has the same geometry unless a visible event changed it. Landmarks should remain useful even when lighting or threat placement shifts. The player should think “I know where I am, but it now asks something different,” not “the rules rearranged off-screen.”

## Keep progression state authoritative

This section implements the **Atomic Application Lock** against the exact state identifiers and route versions already fixed.

Use stable progression records rather than deriving the entire state from scene objects:

```text
gate inspected          optional knowledge state
key item acquired       ownership or capability state
return event activated  world-state version
gate unlocked           persistent progression state
gate open               current physical state
```

Scene actors render and enact those records. They do not become the only copy. On load or stream-in, reconstruct collision, navigation, animation, prompts, and map symbols from authoritative state.

Apply acquisition and unlocking idempotently. For an installed object, commit its owner conversion and the gate transition together:

```text
before: key_owner = protected_storage, installed = false, gate = locked
after:  key_owner = <gate installed socket>, installed = true, gate = unlocked
```

Do not model installation as merely setting `installed = true` while leaving another owned copy in protected storage. Repeated callbacks must not grant duplicate keys, replay destructive world changes, or install the item twice. If a cutscene or animation is interrupted, the authoritative transaction resolves to one documented side and resumes presentation safely.

## Shape the route as recognition, choice, and compression

This section produces the **Navigation Pressure Lock** from the locked state graphs and return transformation.

Backtracking is strongest when the player can choose between a familiar longer route and a newly available shorter or riskier connection. A shortcut rewards spatial learning and prevents every later failure from repeating the entire outbound journey.

Measure:

```text
outbound traversal time
direct unchanged return time
authored changed-return time
shortcut time after it is earned
cost of one plausible wrong turn
distance from recovery point to required item or gate
```

Do not optimize only for minimum seconds. A short return may still be confusing, and a longer return can remain engaging if choices, anticipation, and state changes are dense. The wrong-turn cost must be bounded: provide map updates, landmark reminders, or a loop that returns the player without irreversible loss.

When the player resumes after time away, surface the unresolved relationship through an objective note, map symbol, item description, or optional reminder. The reminder should identify known facts, not reveal unexplored solutions.

## Work within the current Harness and tool boundary

This section applies the lock artifacts only through capabilities verified in the current project and Harness.

This Skill does not bundle an engine, map editor, pathfinder, browser, asset model, or deployment provider. Use only what the current Harness and project expose.

- Prefer the existing level, source, tests, engine tooling, and licensed assets.
- Browser automation proves only the web build it actually ran.
- Image, audio, video, and 3D generation are optional dependencies; state a real gap before using them.
- APIs and MCP services are callable only when configured and authorized.
- A route diagram or generated walkthrough video does not replace playable implementation.
- Do not inspect unrelated directories for assets or secrets.

When runtime access is missing, deliver the route states, implementation plan, and exact blocked checks. Label proposed behavior as proposed.

## Preserve success, failure, and restart

This section derives its cases from all five locks; an unreachable case reopens the earliest inconsistent state or route lock.

A complete loop contains:

- a gate the player can recognize before obtaining its key;
- a navigable outbound route with at least one useful landmark;
- an acquisition that updates protected persistent state;
- a causally legible return change;
- a return choice, recognition test, or earned shortcut;
- successful application of the item to the original gate;
- a plausible wrong turn or hazard failure with a bounded recovery;
- restart from before acquisition, after acquisition, during return change, and during unlock.

Failure may cost time, health, resources, or position according to the project, but it must not delete the key or trap the player behind a newly sealed route. Restart clears transient prompts, threat triggers, animations, path requests, audio loops, and input locks while restoring the correct progression snapshot.

## Make navigation and operation accessible

This section uses the **Navigation Pressure Lock** for cues and assistance without silently changing progression or topology.

Landmark recognition cannot depend on color alone, perfect visual memory, stereo hearing, or reading small map labels. Pair cues across shape, text, contrast, vibration, spatial audio, and optional map notation according to supported hardware. Provide scalable text and map symbols, remappable interaction, hold alternatives, and enough prompt time for the intended pressure.

Offer navigation assists such as stronger unresolved-gate markers, a return breadcrumb, reduced route change, threat adjustment, or direct objective reminders. State what each option changes. Do not punish, shame, or remove unrelated rewards for using it.

Avoid inaccessible timing gates masquerading as backtracking. If the key item must be carried through a timed shutter, provide an alternate timing profile or non-timed route when required by the project's accessibility commitment.

## Preserve save data and multiplayer authority

This section applies the **Atomic Application Lock** to persistence, migration, and multiplayer ownership.

Save stable progression state, the key's single authoritative owner, installation state, gate state, return-world version, relevant shortcut state, and the player's named safe anchor. Write the protected-storage-to-installed-socket ownership conversion and unlocking atomically or with a recoverable transaction: after a crash or load, the player must have either the usable key in protected storage and a locked gate or the key owned by the installed socket and an unlocked gate—never both and never neither.

Validate loaded locations against the loaded route state. If an update removes a connection or changes a gate, migrate the player to a declared nearby safe anchor while preserving progression. Unknown keys remain visible for migration rather than being silently discarded.

In multiplayer, an authoritative host or server owns acquisition, gate transitions, world-state version, and item consumption. Clients may request interaction and show anticipation, but confirmed state arrives from authority. Simultaneous interactions are idempotent; late joiners reconstruct the same graph; disconnect during unlocking resolves to one durable state.

## Verify the graph, not only the happy path

This section verifies every lock and treats a state/route mismatch as a reopen event, never as a local exception.

Perform and record at least these checks:

1. Inspect the gate without the key and confirm feedback, collision, navigation, and map state agree.
2. Reach the key through every intended outbound route and reject unintended shortcuts.
3. Acquire with a full ordinary inventory and preserve the progression item.
4. Trigger the return change once; repeat or reload the trigger without duplicating it.
5. Follow every claimed completion return, including a longer alternate path, and one plausible wrong turn; each reaches completion or its declared safe recovery.
6. Use any earned shortcut from both sides under its declared rules.
7. Unlock the gate, interrupt on both sides of commit, save/load, and confirm that key ownership changes from protected storage to the installed socket in the same durable state as the unlock.
8. Restart or load at S0, S1, S2, and S3 from each snapshot's named safe anchor; every snapshot has a route to completion.
9. Exercise non-color cues, map scaling, remapped interaction, and each accessibility option claimed.
10. In multiplayer, test simultaneous acquisition, duplicate unlock requests, late join, and disconnect during transition.
11. Exercise every valid and excluded target class; invalid use gives bounded feedback and never charges, consumes, duplicates, or moves the item.
12. Prove one calm use teaches the same verb, duration, and compatibility used under pressure.
13. Transfer the item between every supported holder; verify custody, knowledge, permission, acknowledgement, save/load, disconnect, and recovery independently.
14. Prove the final target class and consequence were previewed before commitment, and final application introduces no unlearned verb.

Capture route-state assertions, logs, saves, and reproducible traversal traces. A screenshot can show that the gate opened; it cannot prove the key survived interruption or every state remained reachable.

## Deliver and hand off

This section delivers the five lock records, their graph versions, and the evidence invalidated by any reopen event.

Use the project's established documentation location. If none exists, save:

```text
gameplay/<return-route-slug>/mechanic.md
gameplay/<return-route-slug>/route-states.md
gameplay/<return-route-slug>/tunables.yaml
gameplay/<return-route-slug>/verification.md
```

The final handoff answers:

- Where does the player first encounter the gate, and how is it remembered?
- Where is the key item acquired, and why does it fit the gate?
- What changes on the return, and what caused that change?
- What route, wrong-turn, shortcut, and restart states were tested?
- How are progression, saves, accessibility, and authority protected?
- Which project assets were reused, and what remains proposed or unverified?

Do not call the route intuitive, balanced, accessible, production-ready, or network-safe beyond the evidence and environments actually tested.
