---
name: worldview-game-safe-room-pressure-reset
description: "Use when a horror or survival game needs a trustworthy refuge that converts immediate danger into a bounded planning interval, with validated entry, explicit threat disengagement, declared recovery and persistence, stable save/load behavior, fair re-entry, and complete restart. Produces an implementation when a runtime exists plus a refuge contract, tunables, and verification. Do not use for a pause menu, unconditional global invulnerability, a loading-only checkpoint, or a fake safe room whose unavoidable betrayal is hidden from the player."
---

# Worldview Game — Safe-Room Pressure Reset

## Call this Skill

The public invocation is:

```text
/worldview-game-safe-room-pressure-reset
```

Treat the following text as the project and refuge brief.

## Route the companion files

- Fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same decisions.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when checking fit, deciding which pressure persists, or resolving an entry/exit tradeoff. Skip it for a narrow implementation task with a locked contract.
- Read [the-dryroom-bell.md](examples/the-dryroom-bell.md) only when a completed fictional refuge clarifies a field. Its distances, services, and timing are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate supplied facts from repository decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the problem hidden by the word “safe”

A player under pursuit may carry many kinds of pressure: an enemy has current sight, a search is converging, health is low, a lamp is empty, inventory is disordered, an objective clock is running, and the route ahead is unknown. A safe room should not automatically erase all of them. It should convert the pressures named by the design into a dependable period of agency while preserving consequences that give the surrounding game structure.

The room therefore needs more than an exclusion collider. It needs a boundary transaction, a threat reconciliation policy, a service and resource contract, persistence rules, and a fair exit. Those parts must agree across normal play, re-entry, death, reload, and multiplayer authority.

Start by separating pressure dimensions:

```text
immediate threat      current attack, chase, detection, or damaging hazard
local uncertainty    unknown threat position, route visibility, door state
resource pressure    health, ammunition, light, tools, inventory capacity
progress pressure    unsaved progress, incomplete objective, external clock
strategic pressure   route commitment, consumed world resources, lasting changes
```

For each dimension, write `clears`, `pauses`, `changes`, or `persists`, with a reason. “Safe” without this table is an assumption waiting to become a bug.

## Use and routing boundaries

Use this Skill for a spatial refuge the player can enter from a dangerous game state and normally leave again. It may provide saving, storage, crafting, limited recovery, story review, map planning, or another project-specific service.

Do not use it for:

- a global pause or settings screen;
- a respawn checkpoint that cannot be inhabited;
- a cutscene transition or loading vestibule with no pressure decisions;
- a temporary combat shield used while fighting in the same space;
- a room whose core purpose is an unavoidable breach or betrayal;
- a general save system with no relationship to pursuit and space;
- a complete campaign economy before one refuge loop is verified.

If the project intentionally has unreliable shelters, state that as a separate risk mechanic. Do not label them safe rooms in instructions, UI, or accessibility promises unless the conditions of safety are communicated before commitment.

## What the user can give

Accept any useful combination of:

- an authorized repository and the candidate room or level region;
- player, health, inventory, equipment, save, checkpoint, and objective systems;
- active threats, detection, pursuit, spawn, navigation, and encounter directors;
- door, lock, seal, transition, streaming, and checkpoint logic;
- intended services such as storage, crafting, recovery, route preview, or dialogue;
- rules for what persists across entry, exit, failure, reload, and new sessions;
- desired emotional tone, world justification, accessibility, and network mode.

Inspect project conventions instead of requiring the user to specify serialization order, AI reset calls, or arbitrary wait times. Ask only when two creative interpretations would create incompatible contracts—for example, whether a global countdown keeps running inside the room.

## What the user receives

Deliver as much as the available project allows:

1. A reuse inventory for refuge geometry, doors, pursuit, spawn, save, inventory, resources, objectives, audio, input, and restart.
2. A pressure ledger stating what clears, pauses, changes, and persists.
3. An atomic boundary and lifecycle state model for approach, entry, occupancy, exit preparation, exit, and re-entry.
4. A threat reconciliation policy that does not destroy or teleport threats without a declared world rule.
5. A service and resource contract protected against duplication and reload exploits.
6. A fair exit state with information, spacing, and spawn constraints.
7. A runnable encounter, tunables, success and failure paths, save/load checks, accessibility behavior, and network authority when relevant.

If the runtime cannot be executed, provide the contract and exact blocker. Never call a design document, static room, or screenshot a verified refuge loop.

## Lock the refuge contract before implementation

Close these locks in order. A later service, checkpoint, or presentation choice may not redefine an earlier safety promise. If implementation reveals a conflict, reopen the earliest affected lock and invalidate every dependent transition, save, route, and test. Ask one grouped question only when project evidence cannot decide between incompatible meanings of safety.

| Lock | Question resolved | Locked artifact | Locked when | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Refuge-boundary lock** | Where, when, and under which eligibility rules does protection begin and end? | Boundary geometry, valid/invalid entry predicate, lifecycle commit points, and attack/hazard resolution table | Door, collision, navigation, damage, and authority agree on one entry and exit boundary, including rejected requests | Transition presentation and debounce duration inside the same commit semantics | Door geometry, eligibility, damage order, or crossing authority changes; invalidate lifecycle, checkpoint, threat, exit, and boundary evidence |
| **Pressure-ledger lock** | Which immediate, local, resource, progress, and strategic pressures clear, pause, change, or persist? | Pressure ledger for entry, occupancy, exit, death, and reload | Every relevant pressure has one declared behavior and player-facing signal | Values inside the declared resource and recovery policy | A new hazard, resource, clock, or objective consequence appears; invalidate services, persistence, accessibility, and outcome claims |
| **Exterior-threat lock** | What happens to each threat outside without deletion, duplication, visible teleport, or doorway camping? | Threat reconciliation table, exterior anchors, exclusions, memory policy, and relocation constraints | Every threat family has a reachable occupancy state and fair exit constraint | Search duration and legal-anchor weighting within the same constraints | Threat abilities, navigation, director ownership, or exterior topology changes; invalidate reconciliation, exit, save/load, and re-entry evidence |
| **Checkpoint-and-service lock** | At which stable lifecycle point is the baseline saved, and which atomic services may run afterward? | Checkpoint order, snapshot boundary, service transaction table, persistent IDs, failed-checkpoint service gate, and failure policy | Stable occupancy is provable; the checkpoint result is known before services enable, and every service allowed after failure is read-only or independently durable; duplication cases are specified | Service costs/capacity and optional UI after the same checkpoint boundary | Snapshot ownership, service order, failure gate, resource cycle, or transaction semantics change; invalidate persistence, duplication, re-entry, and restart evidence |
| **Exit-and-reentry lock** | What information, control, spacing, authority, and reset make leaving and returning fair? | Exit preparation state, exterior information rule, control-margin equation, re-entry and restart matrix | Both exits or all supported exits meet exclusions and measured control margins under supported settings | Named exit timing assists within verified ranges | Exit geometry, warning channel, threat speed, protection handoff, network topology, or load anchor changes; invalidate exit, accessibility, re-entry, and authority traces |

## Recover the project and establish evidence

This recovery supplies the facts for the **Refuge-boundary lock**, **Pressure-ledger lock**, and any threat or persistence decisions that remain proposals.

Read local repository instructions, then identify normal run/test commands, the authoritative player state, pursuit and damage order, zone or trigger system, door animation and collision, navigation updates, world streaming, save serialization, resource ownership, objective flags, and restart flow. Inspect only authorized paths.

Write the intake record before changes:

```markdown
## Verified project facts
- <path, behavior, and evidence>

## User requirements
- <binding refuge behavior>

## Proposed additions
- <new boundary, service, cue, or value>

## Design judgments
- <interpretation, alternatives, and reason>
```

A candidate room mesh is a fact. “The creature cannot cross salt-painted metal” is a user fact only if supplied; otherwise it is a proposal. Whether entering clears search memory or merely moves its target outside is a judgment. Keep these distinctions in the final contract.

Inventory existing assets before creating new ones. Do not replace working doors, save menus, or resource systems with parallel implementations. If no project exists, build the smallest local proof supported by the Harness: one dangerous approach, one pursuer, one sealed refuge, one bounded service, one exit, and save/restart behavior if local persistence is available.

## Define one authoritative refuge boundary

Implement entry only from the **Refuge-boundary lock**.

Visual walls, collision, navigation, damage, AI access, audio, and the refuge state must agree on where safety begins. Name the boundary by stable geometry or volume, not screen position.

Entry should require a valid crossing or interaction:

- the player is alive and still eligible to enter;
- the entry point is reachable and not used through a wall;
- any door, lock, power, or seal condition is satisfied;
- the transition has not already committed for this crossing;
- multiplayer ownership or group conditions are satisfied when relevant.

Resolve entry atomically on the authoritative simulation step. A robust order is:

1. Validate interaction or crossing.
2. Commit `entering` and reject duplicate requests.
3. Resolve or cancel incompatible player actions.
4. Close or seal the boundary through the project's normal door logic.
5. Mark the player protected from declared immediate threats.
6. Reconcile pursuit and damage that have not already resolved.
7. Prove stable occupancy: the seal, protection, pressure ledger, and reconciled threat state agree.
8. Capture and durably resolve the promised baseline checkpoint while optional services remain disabled.
9. Report checkpoint failure without claiming saved progress; retain safety and apply the declared retry or continue policy.
10. Enter `occupied_ready` only after the result is known. On success, enable the declared services. After failure, enable only read-only services unless a state-mutating service has an independently durable transaction already locked and tested.

Do not grant safety one frame before the door state permits entry if an attacker can cross behind the player. Do not apply a hit after valid protection began merely because its animation still plays. Record the exact resolution boundary for in-flight attacks, damage-over-time, projectiles, grabs, and environmental hazards.

## Reconcile threats instead of deleting the problem

Use the **Exterior-threat lock**; the director cannot invent a fallback outside its anchors and exclusions.

For each threat family, define what happens at entry:

```text
current attacks       resolve or cancel according to the boundary rule
navigation            stop at a legal exterior point or choose an exterior route
current sight         loses valid target through the sealed boundary
pursuit memory        clear, age, or persist as declared
search                continue outside, convert, or end
spawn/director state  retain ownership and respect an exclusion distance
audio/presentation    transition without implying a false position
```

A common fair policy is to stop the pursuer at an exterior limit, break confirmed detection when the sealed geometry blocks it, and route the pursuer back into the outer zone after a short world-consistent inspection. This is only a proposal. A creature that can hear through the door may retain suspicion; a hazard such as cold may continue inside unless the room counteracts it.

Do not destroy and respawn a unique stalker merely to simplify entry. Do not teleport it away while the player can observe the discontinuity. If a director must relocate an off-screen threat, use declared exclusion, reachability, visibility, and minimum-distance rules, log the relocation, and verify it cannot choose the doorway or player's immediate exit route.

Multiple threats may have different contracts. A sealed room can stop a physical pursuer while failing to block contamination or an external countdown. Show that distinction before the player commits.

## Model the refuge lifecycle explicitly

The lifecycle combines the **Refuge-boundary lock** with the ordering owned by the **Checkpoint-and-service lock**.

Map project states to these responsibilities:

```text
outside_danger
  -> entering, on a valid boundary request

entering
  -> occupied_stabilizing, after seal/protection commits
  -> outside_danger, if entry legally aborts before commitment

occupied_stabilizing
  -> occupied_ready, after seal, protection, pressure, and threat state are stable and the baseline checkpoint result is known

occupied_ready
  -> exit_preparing, on a valid exit request

exit_preparing
  -> exiting, after outer state and door are ready
  -> occupied_ready, if the player cancels before commitment

exiting
  -> outside_danger, after crossing and protection handoff
```

Keep `protected`, `services_available`, and `save_stable` as explicit permissions if the project needs them; do not infer all three from being inside a trigger. Overlap jitter at the threshold must not repeatedly grant resources or alternate pursuit state. Use directional crossing, entry identity, and debouncing.

Door presentation must not be the only state. Animation may finish after authority commits, but collision, navigation, damage, camera, and input need a declared transition order.

## Write a pressure ledger before adding rewards

Fill and close the **Pressure-ledger lock** before defining recovery or service value.

For every pressure, record entry, occupancy, exit, death, and reload behavior. Example categories:

| Pressure | Possible refuge behavior |
| --- | --- |
| Current attack | cancel if unresolved after valid entry |
| Confirmed pursuit | break at sealed boundary |
| Search memory | age outside rather than erase instantly |
| Health | no change, bounded recovery, or service cost |
| Light/charge | one bounded refill per declared cycle |
| Inventory | allow reorganization; preserve ownership |
| World pickups | remain consumed |
| Objective state | persist exactly once |
| External clock | continue, pause, or explicitly not used |
| Save/checkpoint | commit only after stable occupancy |

The table is not a menu of required features. A room with no healing can still be a strong refuge. Add only services that support the project's resource loop.

Avoid infinite duplication. One-time supplies need stable IDs and persistence. Recharge stations need a capacity, cost, cooldown, world cycle, or other declared reset. Storage transfers must be atomic so death or disconnect cannot leave an item both carried and stored. Crafting spends inputs and grants output in one authoritative transaction.

Do not use a surprise depletion timer solely to force the player out of a room promised as safe. Strategic pressure can persist through unfinished objectives, limited supplies, route choice, or an existing campaign clock. Rest is not a design failure.

## Make saving and loading a stable transaction

Use the **Checkpoint-and-service lock**. The baseline checkpoint resolves after stable occupancy and before the capacitor, storage, crafting, recovery, or other optional service can mutate state.

If the refuge saves, define exactly when. Avoid serializing halfway through door closure, resource transfer, enemy relocation, or outcome presentation. A safe default is while `occupied_stabilizing` has completed door, pressure, and threat reconciliation, before transition to `occupied_ready` and before optional resource spending. A failed checkpoint does not remove protection; it produces the declared retry or continue-without-new-checkpoint result before any service enables.

Continuing after checkpoint failure does not make later mutations durable. Read-only planning, gauges, settings, and exit may remain available. Recovery, storage, crafting, limited supplies, or other state-mutating services stay disabled until a retry succeeds unless the **Checkpoint-and-service lock** names a separate durable transaction owner and the failure, death, reload, and reconnect cases prove it cannot duplicate or lose state.

Persist at least:

- player state and position at the declared load anchor;
- inventory and stable item identities;
- resource station use and world pickups;
- objectives, doors, switches, and route changes;
- unique threat identity and valid outer-world state;
- refuge lifecycle and service transactions;
- difficulty and accessibility settings that affect mechanics.

On load, restore the refuge and outer world in an order that cannot place an active threat inside, duplicate a reward, replay entry audio endlessly, or apply an attack saved before protection. Verify repeated save/load, death after leaving, application restart if supported, and incompatible or corrupted data according to project policy.

Saving may be manual, automatic, limited, or absent. Do not invent a save service merely because safe rooms often contain one. Follow the brief and project.

## Design a fair return to danger

Use the **Exterior-threat lock** for valid outer state and the **Exit-and-reentry lock** for information, control, and protection handoff.

The room must not become a trap. Before exit commitment, give the player the information the fiction permits: a viewport, listening point, threat indicator, map, door audio, camera feed, or a short protected threshold. The player need not know the exact threat transform, but should be able to avoid an unavoidable immediate hit.

Reconcile the outer state before opening:

- no threat occupies the door sweep, exit capsule, or unavoidable first step;
- navigation and collision agree that the route is open;
- a roaming director respects minimum distance and visibility constraints;
- unresolved exterior projectiles or area hazards follow declared rules;
- entry protection does not disappear before the player can control movement;
- closing the door does not clip the player or duplicate a crossing.

Do not always reset the threat to the same distant patrol point if that makes the outer game mechanical. It may continue elsewhere under constrained, fair state. Conversely, do not let it camp one meter beyond an opaque door indefinitely. The contract should define an exclusion region, maximum unresolved camping interval, or exterior reroute appropriate to the fiction.

Measure exit risk:

```text
player control window
  = protected threshold time
  + time until threat can reach a valid attack line

required orientation time
  = camera/input recovery
  + time needed to perceive the allowed exterior cue

fair exit margin
  = player control window - required orientation time
```

Test the actual door, controller, latency, and camera. A positive estimate is not proof.

## Communicate the refuge contract

Presentation reports the states owned by the **Refuge-boundary lock**, **Pressure-ledger lock**, **Exterior-threat lock**, **Checkpoint-and-service lock**, and **Exit-and-reentry lock**; it cannot move their commit, checkpoint, or protection boundaries.

Relief comes from consistency before decoration. Use environment, threat behavior, sound, lighting, and interaction feedback to distinguish:

- approach: safety is possible but not yet committed;
- entry: the boundary is changing and duplicate input is rejected;
- stabilization: immediate danger has ended but services may still be settling;
- ready occupancy: planning and declared services are available;
- exit preparation: the outer state is being revealed or reconciled;
- protection handoff: danger is active again.

Avoid an unavoidable loud intrusion, damage event, or hostile spawn inside a room declared safe. Optional story changes can occur without violating protection. If the narrative later revokes safety, foreshadow and formalize the new contract before the player relies on the old one.

## Complete success, failure, re-entry, and restart

Use the invalid-entry predicate from the **Refuge-boundary lock**, checkpoint order from the **Checkpoint-and-service lock**, threat state from the **Exterior-threat lock**, pressure behavior from the **Pressure-ledger lock**, and exit matrix from the **Exit-and-reentry lock**. Every restart restores one declared side of each transaction.

The bounded playable loop includes:

- a dangerous approach with real pressure;
- one valid entry and at least one rejected invalid interaction;
- visible or audible proof that immediate pursuit disengaged;
- each declared service used legally;
- an exit after the outer state has been reconciled;
- re-entry without duplicated rewards or stale pursuit;
- a failure outside whose cause remains legible;
- restart or load that restores the correct side of the contract.

If failure can occur during entry, define the precise boundary. Failure should not arrive after a valid atomic entry because a stale hit callback ignored protection. Inside failure is allowed only for pressures explicitly declared persistent, such as an already communicated campaign clock or untreated hazard.

Restart clears or restores lifecycle state, triggers, door animation and collision, player protection, threat path and memory, director exclusions, services, transaction locks, audio, camera, UI, save flags, outcomes, and replication. Test repeated crossing, rapid interaction, death immediately before and after commitment, save/load, and application restart when supported.

## Accessibility and psychological reliability

Accessibility changes name the mutable fields in the **Pressure-ledger lock** or **Exit-and-reentry lock** and preserve the boundary promise.

The refuge is often where players adjust settings, recover from intense sensory load, or inspect instructions. Support that function:

- avoid required rapid input during entry and exit;
- expose hold/toggle interaction options and remappable controls;
- pair boundary, ready, and exit states with multiple suitable channels;
- let intense pursuit audio, camera shake, flash, and haptics decay or stop according to the pressure ledger;
- keep menus readable and pause behavior explicit;
- provide a reduced-intensity presentation without changing persistence silently;
- do not place an unannounced startle inside the stable refuge state;
- allow the player to remain without a punitive timer unless an already communicated world clock is fundamental.

If an accessibility option extends entry protection, exit preview, or recovery, store it as a named mechanic change and test it. The room should remain trustworthy under every supported setting.

## Multiplayer authority when relevant

Record authority in the **Refuge-boundary lock**, **Pressure-ledger lock**, **Exterior-threat lock**, **Checkpoint-and-service lock**, and **Exit-and-reentry lock** wherever multiplayer changes their artifacts. A topology change reopens those decisions rather than adding client exceptions afterward.

Do not add multiplayer unless the project requires it. When it does, answer:

- Is refuge occupancy individual, shared, or available only when the group gathers?
- Can an outside player keep a threat in confirmed pursuit while another is inside?
- Who owns entry commitment, protection, doors, threat reconciliation, services, storage, saving, and exit?
- What happens when a player disconnects during a transaction or blocks the door?
- Can hostile players enter, damage through the boundary, or exploit protected attacks?

The authoritative host commits crossings, resource transactions, protection, and threat state. Clients may predict door presentation but cannot grant safety or duplicate resources. For shared entry, define timeout, cancellation, and downed-player rules. Test players on opposite sides, simultaneous entry/exit, latency near an attack, storage races, reconnect, and host migration if claimed.

## Respect the Harness and tool boundary

The available Harness limits which evidence can close the **Refuge-boundary lock**, **Pressure-ledger lock**, **Exterior-threat lock**, **Checkpoint-and-service lock**, and **Exit-and-reentry lock**; it does not permit a weaker safety or persistence claim.

This Skill does not bundle a game engine, save backend, asset generator, browser, network service, or deployment platform. Inspect what the current environment provides.

- Work in the existing project and reuse its state, save, UI, and content systems.
- Browser automation proves only the web build it runs.
- Generated art, audio, or 3D assets are optional and should not precede mechanical proof.
- An API or MCP service is usable only when configured, authorized, and needed.
- Use labeled proxies when visual polish is not a blocking dependency.
- Never substitute a refuge illustration or video for the interactive lifecycle.

If the project cannot run, document commands and errors, inspect safe local evidence, and produce the contract without claiming behavior.

## Verify boundaries and persistence

Execute the matrix owned by the **Exit-and-reentry lock** and **Checkpoint-and-service lock** against the **Refuge-boundary lock**, **Pressure-ledger lock**, and **Exterior-threat lock**, including invalid entry and checkpoint-before-service order. Rerun every dependent row after a reopen.

Run at least these tests:

1. Valid approach and entry commit once, in the documented order.
2. Invalid range, wrong side, blocked door, dead player, or duplicate request is rejected without partial safety.
3. Attacks immediately before and after commitment follow the declared resolution boundary.
4. Every relevant threat respects the sealed boundary and transitions to a valid exterior state.
5. No threat is deleted, duplicated, or observably teleported unless explicitly designed.
6. Every pressure clears, pauses, changes, or persists exactly as the ledger states.
7. Every service is atomic and protected from repeated trigger, save/load, death, and reconnect duplication.
8. Save and load from stable occupancy restore player, world, threat, room, and transactions consistently.
9. Exit supplies the declared information and control margin; no threat can select an unfair doorway position.
10. Re-entry after immediate exit, outer failure, and longer excursion creates no stale state.
11. Restart works from entering, stabilizing, service transaction, exit preparation, exiting, success, and failure.
12. Supported inputs, accessibility settings, viewports, and network conditions preserve the contract.

Use state traces and persistence snapshots in addition to scene captures. For deterministic simulations, replay boundary inputs at different render schedules. Label each result `verified`, `inferred`, `proposed`, or `blocked` and name the tested environment.

## Deliver and hand off

Hand off the current **Refuge-boundary lock**, **Pressure-ledger lock**, **Exterior-threat lock**, **Checkpoint-and-service lock**, and **Exit-and-reentry lock** artifacts. Save documentation in the project convention. Otherwise use:

```text
gameplay/<refuge-slug>/mechanic.md
gameplay/<refuge-slug>/tunables.yaml
gameplay/<refuge-slug>/verification.md
```

The handoff states:

- the run command, approach route, controls, and exact boundary;
- which pressures clear, pause, change, and persist;
- what each threat does during occupancy;
- which services exist and how duplication is prevented;
- when saving occurs and what load restores;
- what exterior information and protection exist on exit;
- which approach, entry, service, exit, re-entry, failure, and restart cases were verified;
- assets reused, proxies, supported settings, blocked claims, and remaining proposals.

Do not claim complete safety, persistence correctness, accessibility, balance, or multiplayer reliability beyond the checks actually performed.
