---
name: worldview-game-barricade-delay-and-route-choice
description: "Use when a horror game needs a playable barricade that buys a measured interval by changing routes, consuming time or material, making noise, and eventually being breached or bypassed. Works with an existing level or a small authored prototype. Produces an implemented interaction when a runtime is available, plus a route contract, tunables, direct timing evidence, failure cases, and restart verification. Do not use for decorative blocked doors, permanent key locks, broad base building, or a non-interactive defense cutscene."
---

# Worldview Game — Barricade Delay and Route Choice

## Call this Skill

The public invocation is:

```text
/worldview-game-barricade-delay-and-route-choice
```

Treat the text after the Slash command as the creative and project brief. Preserve the user's location, threat, available objects, and intended consequence. Do not make them translate the scene into arbitrary hit points or seconds before the map has been measured.

## Read only the files this task needs

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same route, transition, timing, and proof fields.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether a barricade is the right mechanic, comparing breach with detour, or tuning the exchange. Skip it for a narrow implementation task whose contract is already locked.
- Read [the-north-stair-cart.md](examples/the-north-stair-cart.md) only when a filled fictional example would clarify the contract. Its room graph and numbers are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review. It is not implementation guidance.
- [README.md](README.md) is the human catalog page; it is not required after this Skill is loaded.

## Use it when safety must cost a route

A barricade becomes a mechanic when the player chooses to transform space under pressure. One approach becomes slower or temporarily closed; another task becomes possible; a retreat, resource, or future visit becomes worse. The player can understand that exchange before committing and can later see the consequence arrive.

Use this Skill when the requested experience contains all of these relationships:

1. A threat has at least one reachable approach to the player.
2. The player can deliberately obstruct an approach.
3. Placement itself costs time, position, material, noise, or attention.
4. The obstruction changes navigation or breach time rather than merely playing an animation.
5. The player has something concrete to do with the purchased interval.
6. The obstruction can fail, be bypassed, be removed, or impose a later route cost.

Do not use it for a static lock-and-key door, an object that exists only in a cutscene, a permanent construction system covering an entire base, or an arena defense game with waves and economies. A small encounter may later feed those systems, but this Skill closes one barricade decision.

## What the user gives

Accept any useful combination of:

- an existing game project and authorized working path;
- a room, floor plan, navigation mesh, grey box, screenshot, or written layout;
- one or more threat actors and their current movement rules;
- a movable object, board, lock, shutter, chain, spell, or other world-consistent obstruction;
- the action the player should attempt during the delay;
- persistence rules: whether the barrier survives leaving, saving, death, or a chapter transition;
- input, accessibility, camera, physics, networking, and target-platform constraints.

Inspect only the paths placed in scope. Record what was observed in project files or a running build, what came from the user's brief, and what is newly proposed. If a choice would create incompatible encounter shapes—such as a single-use irreversible barrier versus a reusable movable object—ask one grouped question. Derive ordinary timing and integrity values from geometry and play traces.

## What the user receives

Complete as much of the following as the project permits:

1. An inventory of reused geometry, navigation, threat, interaction, animation, audio, UI, and save-state components.
2. A route contract showing the approach graph before placement, while blocked, after breach, and after reset or persistence reload.
3. Player verbs and interruption rules for carrying, positioning, placing, bracing, abandoning, dismantling, or repairing the obstruction.
4. Tunables separated from logic: placement duration, alignment tolerance, mass or material cost, noise radius, breach phases, detour weights, damage, recovery, and grace periods.
5. A working encounter inside the existing runtime when available. Use a small browser prototype only for a new project or an explicitly requested proof, not as a substitute for the user's engine.
6. Direct evidence for useful delay, early abandonment, late escape, breach, detour, collision, persistence, and restart.
7. A handoff with playable entry point, controls, screenshot, verified claims, proxies, and untested boundaries.

If the runtime cannot be executed, deliver an implementation-ready contract and identify the blocked checks. Do not describe an unrun design as playable.

## Lock the spatial exchange before implementation

Close these locks in order. A later pass may tune only the stated mutable fields. When a project discovery contradicts a lock, reopen the earliest affected row and discard all dependent work named in the last column.

| Lock | Question resolved and locked artifact | Lock condition | Still mutable afterward | Reopen trigger and dependent work to discard |
| --- | --- | --- | --- | --- |
| **Delay exchange** | One sentence fixes the approach being blocked, the task bought by the delay, the price paid, the route left for recovery, and the nearby failure. | The map and brief can support every named part without a softlock or an unrelated construction system. | Object fiction and cosmetic feedback that preserve the exchange. | Changing the task, price, usable exit, or permanence reopens the exchange; discard all later locks. |
| **Route mutation** | Before, secured, breached/dismantled, and reload graphs name every changed edge and the geometry, collision, navigation, and interaction owners. | Player and threat traversal agree with the visible object in every graph; all required objectives remain reachable. | Mesh polish and tolerances that do not move an edge or legal side. | Moving a socket, changing an edge, or changing the object's spatial role reopens the graph; discard placement, threat choice, timing, persistence, and route evidence. |
| **Placement transaction** | Player verbs, reach, alignment, authority, interruption, material charge, and `available -> moving -> aligning -> secured` transitions are fixed. | Every completion and cancellation leaves the player, object, collision, navigation, and inventory in one legal state. | Animation duration and input presentation inside the same transition boundaries. | A new verb, physics owner, socket rule, or interruption reopens placement; discard state, duplication, and timing tests. |
| **Threat response** | The allowed breach, detour, inspection, ranged, or abandonment choice and its commitment/recheck rules are recorded. | Each choice follows current capabilities and route costs, exposes readable phases, and cannot oscillate on equal scores. | Phase duration, damage, and cues within the locked response grammar. | A new capability, route option, or knowledge rule reopens response; discard response and usable-delay traces. |
| **Useful interval** | A measured equation includes placement, threat arrival, breach/detour, task travel, task action, exit travel, animation locks, and reacquisition margin. | One supported path succeeds repeatedly inside tolerance and one adjacent late or greedy attempt fails for the declared reason. | Values inside the tested band that preserve both results. | Route, speed, interaction, accessibility timing, or response changes reopen the interval; discard all balance claims and play traces. |
| **Lifecycle proof** | Save/unload/death/restart/network ownership, deferred-work cancellation, test procedures, and claim evidence are fixed. | Every persistent state reloads with matching collision/navigation, and restart clears old route reservations, hits, and callbacks. | Evidence locations and extra coverage that do not alter behavior. | Authority, serialization, or any earlier lock changing reopens proof; rerun the dependent test matrix and replace stale captures. |

If the brief leaves an irreversible seal and a recoverable movable object equally plausible, ask one grouped question. Derive integrity and seconds from the locked route and transitions rather than asking the user for decorative numbers.

## Recover the existing spatial truth

This section closes **Delay exchange** and supplies the evidence for **Route mutation**.

Begin with the map, because a barrier changes a route rather than an abstract meter. Identify the threat's approach node, the barrier socket or valid placement volume, the player's position during placement, the task destination, every remaining exit, and the point at which contact becomes dangerous.

Write a short source boundary before editing:

```markdown
## Observed
- Existing geometry and collision: <path and verified behavior>
- Existing navigation and threat: <path and verified behavior>
- Existing interaction and persistence: <path and verified behavior>

## Requested
- <the user's intended barricade beat>

## Proposed
- <new rule, asset, proxy, or tuning choice>
```

Visible geometry, collision, navigation, line of sight, and interaction reach must agree. If a cart visibly seals a doorway while the threat's navigation walks through it, the player and simulation inhabit different maps.

## Define the barrier as a stateful spatial change

This section implements **Route mutation** and **Placement transaction** together; the state transition and the spatial edge must change on the same authoritative boundary.

Use explicit states rather than a single boolean:

```text
available
  -> moving
  -> aligning
  -> secured
  -> stressed
  -> breached

moving | aligning
  -> abandoned

secured | stressed
  -> dismantling
  -> available or displaced
```

Each transition declares who owns it, what can interrupt it, how collision and navigation change, which animation or audio communicates it, and what persists. The threat must never begin using the blocked route before the authoritative state makes that route available again.

If physics drives the object, separate visual settling from the logical seal. The barrier becomes secured only when it is inside a valid volume, below an allowed velocity, and confirmed by the authoritative simulation. Do not let a single jittering corner repeatedly open and close the route.

## Make placement a readable commitment

This section completes **Placement transaction** without changing the already locked route.

The player needs to know three things before committing: which approach will be delayed, what placement costs, and which route or object becomes unavailable. Communicate these through framing, handles, floor marks, character posture, sound, or restrained UI that fits the project.

Define:

- interaction reach and line-of-action requirements;
- whether the player must hold, tap, alternate, or complete a timed interaction;
- movement and camera limits during placement;
- interruption by damage, threat proximity, release, or loss of footing;
- whether partial progress persists and why;
- where the player's body and the object end after completion or interruption.

An uninterruptible progress bar under active threat removes the spatial decision. An instant placement removes the cost. Choose a transition that lets the player judge whether starting now is safe.

For repeated or strenuous inputs, provide a hold or toggle alternative. Difficulty may change the available interval or route pressure, but it must not depend on physically exhausting button repetition.

## Calculate useful delay, not decorative durability

This section closes **Useful interval** after placement, routes, and threat response are stable.

Choose one authoritative time origin and measure every timestamp from it. Do not mix a duration measured after placement with a formula that also subtracts placement. A useful encounter trace can use placement-input acceptance as `t0`:

```text
placement secured at
  = t0
  + placement duration

barrier failure at
  = threat contact at
  + breach or detour duration

player safe-boundary requirement at
  = placement secured at
  + travel to the intended task
  + task duration
  + travel from task to the remaining safe boundary
  + interaction and animation locks
  + reacquisition or attack windup margin

useful interval
  = barrier failure at
  - placement secured at

success margin
  = barrier failure at
  - player safe-boundary requirement at
```

The encounter works only if at least one intended task fits inside the usable time and at least one greedy or delayed attempt fails legibly. A large durability number is not evidence because animation, navigation, player acceleration, and route length determine whether those seconds are usable.

Record a target interval and a tolerance rather than one magical timestamp. Test the slowest supported movement or interaction accommodation. If accessibility settings lengthen player actions, either scale pressure coherently or expose an explicit timing assistance option.

## Give the threat a coherent response

This section implements **Threat response** inside the locked route graphs.

When the route changes, the threat chooses among breach, detour, inspection, assistance, ranged pressure, or abandonment according to declared capabilities. It cannot know the player's hidden destination merely because the game code does.

A breach should have readable phases:

```text
contact -> test -> commit -> damage cycle -> opening -> recovery -> pursuit
```

The first contact signals that the purchased interval has begun to expire. Later phases let the player estimate remaining time without requiring a precise HUD. Audio must be spatialized and captioned or represented visually where accessibility requires it.

If a detour is possible, compare its actual path time with breach time. The threat should not oscillate between equally weighted options every frame. Choose a route commitment, reevaluate only on meaningful events, and record the reason for the switch.

## Make the route consequence real

Blocking the obvious approach should change another fact. The cart may close the shortest return path. Boards may consume material needed elsewhere. A shutter may protect the room but remove sight of a second corridor. Noise may attract a different actor. An irreversible seal may protect one visit and make later backtracking harder.

State that consequence in the contract and preserve it in save data when the design says it persists. Do not create a fake choice in which every barrier is free, every route remains open to the player, and the threat alone is delayed.

The consequence must not create an undocumented softlock. Before making a barrier irreversible, prove that all required objectives and exits remain reachable from both sides or provide a world-consistent recovery path.

## Keep authority and persistence explicit

This section supplies authority and storage rules for **Lifecycle proof**.

In a single-player game, the authoritative simulation still owns barrier state, navigation changes, threat choice, timers, and save serialization. Visual animation follows that state; it does not secretly decide it.

In multiplayer, the host or server validates placement reach, item ownership, socket availability, collision, route mutation, breach damage, and completion. Clients may predict dragging or animation, but reconciliation must not duplicate materials, strand a player inside collision, or show different route states. Late join and reconnect load the same barrier state before navigation resumes.

Declare what happens on checkpoint reload, manual save, player death, area unload, and full restart. Clearing an encounter must cancel deferred breach hits and navigation callbacks from the previous run.

## Preserve a complete success and failure loop

Build one complete junction before creating a general barricade library. It needs:

- a visible approach and a reason to block it;
- a reachable object or resource;
- a placement interaction that can be completed and interrupted;
- a real route change shared by collision and navigation;
- a task that fits the intended purchased interval;
- an understandable failure from starting late, overstaying, or choosing the wrong route;
- a breach or detour that restores pressure;
- a legal exit after both success and failure where the design permits recovery;
- a restart that clears every object, timer, route reservation, damage event, and outcome.

Failure should explain the exchange. The player may hear the final brace snap because they searched too long, discover that the blocked stair was their fastest return, or lose the object because they abandoned placement. An unexplained instant attack teaches nothing.

## Verify the contract directly

This section closes **Lifecycle proof** by tying each route, timing, failure, and restart claim to direct evidence.

Run and record at least these checks:

1. Approach the valid placement from every supported direction; reject placement through walls or outside reach.
2. Interrupt each placement phase and confirm player, object, input, and navigation return to a legal state.
3. Complete placement once and confirm one material cost, one state transition, and one route mutation.
4. Confirm the threat cannot cross the secured geometry or continue a stale path through it.
5. Measure time from placement start to renewed threat contact across the intended route.
6. Complete the intended task and escape with a narrow but repeatable positive margin.
7. Start late or overstay and reach a readable failure rather than a scripted teleport.
8. Exercise every supported threat response: breach, detour, or declared alternative.
9. Confirm player routes and required objectives remain reachable; test both sides of an irreversible barrier.
10. Save or unload during every persistent state and reload without duplication, disappearance, or mismatched navigation.
11. Restart during placement, breach windup, breach damage, success, and failure; no deferred event may survive.
12. Test the narrowest viewport, supported input families, captions or visual threat cues, and timing assistance.

For deterministic simulations, replay a fixed input trace under different render schedules. The same fixed-step inputs must reach the same barrier, route, and threat states. A screenshot proves that the barrier appeared; pair it with logs, assertions, or a reproducible play trace for behavior.

## Work within the current Harness

This Skill does not bundle an engine, physics package, navigation service, asset generator, browser, deployment provider, or multiplayer backend. Use only capabilities actually present in the project and Harness.

Reuse existing licensed geometry and animations before generating replacements. A proxy block is acceptable when it proves collision and timing and is labeled as a proxy. Do not make a paid model or asset call without the authorization already required by the user's environment. Never replace requested gameplay with a rendered video.

## Deliver and hand off

Save the contract using the project's established documentation structure. If none exists, use:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

End with the playable route or command, controls, initial state, visible proof that placement began, measured useful interval, verified success and failure, persistence behavior, reused assets, proxies, and untested environments. Do not call one tuned junction a universal construction system or production-balanced feature.
