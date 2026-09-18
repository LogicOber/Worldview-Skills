---
name: worldview-game-lure-hide-escape
description: "Use when a game needs a playable pursuit built around a reusable lure, sight and hearing, last-known-position search, a hiding place with a real risk, and a timed escape through another route. Works with an existing project or a small authored prototype. Produces an implemented encounter when a runtime is available, plus its mechanic contract, tunables, screenshot, and verification. Do not use for a chase video, unconditional invisibility, or a universal stealth framework."
---

# Worldview Game — Lure, Hide, Escape

## Call this Skill

The public invocation is:

```text
/worldview-game-lure-hide-escape
```

Treat everything after the Slash command as the creative and project brief. Do not make the user restate it as a technical questionnaire.

## Read only the files this task needs

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same decisions. Map the fields into the established format instead of creating a second system.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether this mechanic fits, resolving a perception or timing tradeoff, or tuning pressure. A narrow implementation task with a locked contract does not require rereading it.
- Read [last-footstep.md](examples/last-footstep.md) only when a filled example would clarify a field. Its layout and values are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate the supplied Mechanics Lab facts from this rewrite's decisions.
- [README.md](README.md) is the human catalog page; it is not required after this Skill is loaded.

## Use it when the escape depends on knowledge

Use this Skill when the player can cause the pursuer to hold a useful but incomplete belief: a sound came from the far side of the room, the player was last seen entering a corridor, or a hiding place may contain them but has not been confirmed. The encounter becomes playable because the player understands enough of that belief to act on it.

The presence of a monster and a bed is not sufficient. A valid request needs, or can reasonably be given, a false point of interest, a way to break observation, a hiding decision, and another route. If the intended scene is only a continuous sprint, route to a chase or action method. If the desired output is a filmed sequence rather than interactive behavior, stop and explain that this Skill is the wrong entry.

## What the user gives

Accept any combination of:

- an existing game project and the path the user authorized;
- a room, level, collision map, screenshot, sketch, or verbal layout;
- an existing pursuer, player controller, lure, or hiding interaction;
- a world or story packet that constrains appearance and behavior;
- one desired moment, such as “the creature's feet stop beside the bed, then continue to the window.”

Do not scan unrelated directories in search of assets. Inspect only the project and paths placed in scope. Record which materials were actually opened, which behavior was observed in a running build, and which details remain proposals.

If there is no map, author the smallest map that can prove the rule: an approach, a lure destination, a sight-breaking corner, one hiding place, a far-side inspection point, and an exit that cannot be reached safely without manipulating the pursuer. Proxy geometry is enough when it makes collision, distance, and sightlines legible.

## What the user receives

Complete as much of this result as the current project permits:

1. An inventory of reused map, character, animation, sound, and code assets, with gaps stated before new generation or downloads.
2. A saved mechanic contract covering player verbs, state transitions, pursuer knowledge, map landmarks, timing, success, failure, restart, accessibility, and network authority when relevant.
3. Tunable data separated from code: ranges, speeds, grace periods, search duration, lure cooldown, reach, windup, and hiding transitions.
4. A working encounter in the project's existing runtime when one is available. A browser prototype is a fallback for a new project, not a replacement for an existing Unreal, Unity, Godot, or custom runtime.
5. A playable entry point, controls, and one screenshot captured from the running encounter.
6. Verification covering the intended escape, at least one real failure, restart, perception boundaries, collision, and the environment actually tested.

If implementation cannot run, deliver the contract and an exact blocked-state report. Never call a design document “playable.”

## Lock the chase before implementation

Work through these locks in order. A later lock may tune only the fields listed as mutable. If a discovered project fact contradicts an earlier lock, reopen the earliest affected lock and discard the dependent implementation and evidence named in the final column.

| Lock | Question resolved and locked artifact | Lock condition | Still mutable afterward | Reopen trigger and dependent work to discard |
| --- | --- | --- | --- | --- |
| **Encounter promise** | One sentence names the false point of interest, sight break, hiding decision, alternate exit, intended success, and nearby failure. | The brief and available project can support all six without inventing a different genre or supernatural knowledge rule. | Fictional dressing, nonessential props, and presentation wording. | A changed objective, required pursuer power, or removal of the alternate exit reopens the promise; discard every later lock. |
| **Shared room** | A map graph names player entry, lure destination, occluder, cover entry, cover exit, pursuer inspection point, escape boundary, and collision/navigation ownership. | Direct inspection or an explicitly labeled proposed grey box shows one continuous legal route for each required actor and agreement among geometry, collision, sight, and navigation. | Cosmetic dimensions that do not move an edge or sight boundary. | Moving a landmark, changing reachability, or changing an occluder reopens the room; discard perception traces, cover tests, and the escape budget. |
| **Pursuer evidence** | A knowledge table fixes which sightings and sound events may update current sight, last seen, last heard, and search target, including priority and ageing. | Every transition can cite an observation event; no transition reads the hidden live player transform. | Sensor ranges and ageing values inside the same evidence hierarchy. | A new sensor, supernatural tracking rule, or different priority reopens this lock; discard AI transitions, lure behavior, search tests, and timing evidence. |
| **Lure event** | An event schema fixes origin, propagation, timestamp, source type, cost or cooldown, deduplication, and its comparison with stronger evidence. | One activation produces one inspectable event, the chosen destination commits the pursuer to a route, and recovery rules prevent a single mistake from softlocking the encounter. | Cooldown, radius, and presentation after measured trials. | A new propagation model, inventory economy, or target-priority rule reopens the lure; discard investigation and success/failure traces. |
| **Cover transition** | Entry reach, line of action, enter/hidden/exit states, cancellation, occupancy, legal emergence point, and attack permissions are fixed. | Entry and exit cannot pass through blocked geometry; hiding suppresses only declared evidence; the player can understand both risk and exit state. | Transition duration, camera framing, and animation polish within the same state boundaries. | Moving cover, changing collision, or granting unconditional invisibility reopens this lock; discard cover, contact, and escape tests. |
| **Escape margin** | A measured budget compares pursuer commitment with player emergence, route travel, interactions, and attack windup for one success and one adjacent failure. | The slowest supported control path has a repeatable positive margin, while an early exit, late exit, or wrong route creates the declared readable failure. | Values inside the tested tolerance that preserve both traces. | Any route, speed, animation lock, accessibility timing, or reacquisition change reopens the margin; discard all balance claims and recorded traces. |
| **Reset proof** | Persistence, authority, restart cleanup, test procedures, and claim-to-evidence paths are fixed. | Restarts at every active phase clear old events and callbacks; each delivery claim has direct evidence from the environment actually run. | Evidence filenames and extra coverage that do not change claimed behavior. | Save ownership, network authority, or any earlier lock changing reopens proof; rerun every affected test and replace stale captures. |

Do not collect all possible settings before locking the encounter promise. Ask one grouped question only when the brief supports incompatible promises, such as a mundane animal that follows evidence versus a supernatural hunter that always knows the player. Derive ordinary ranges and timings after the map and evidence hierarchy are locked.

## Recover the world and project before designing the chase

This section supplies the **Encounter promise** and **Shared room** locks. It records what the project already proves before any chase rule is proposed.

First identify what is already true. A hotel with mirrored corridors, a ship whose doors seal during alarms, and a forest creature that hunts by vibration do not share the same lure merely because all three can support this mechanic. Preserve declared world facts, observable project behavior, and new proposals as different things.

Write a short intake note before changing code:

```markdown
## Reuse
- Existing map: <path and what was verified>
- Existing pursuer: <path and current behavior>
- Existing player/input: <path and current behavior>

## Gaps
- <what the requested encounter still needs>

## Proposed additions
- <new rule or proxy, clearly marked as new>
```

Do not generate a replacement monster, room, or video because a tool happens to be available. New assets require a genuine missing dependency and the user's permission or an already established project policy.

## Build the pursuer from observations, not omniscience

This section implements the **Pursuer evidence** lock. It may not change a route or cover boundary already fixed by **Shared room**.

The simulation knows the player's live transform. The pursuer does not automatically inherit it. Maintain an explicit knowledge record:

```text
current sighting     updated only while visibility succeeds
last seen position   frozen when sight is lost
last heard position  the lure or player sound origin, with a timestamp
search target        chosen from one of the records above
knowledge age        elapsed time since the supporting observation
```

Use the following state family unless the project already has a compatible one:

```text
patrol
  -> investigate(sound origin)
  -> chase(current sighting)
  -> search(last seen or last heard)
  -> return

chase
  -> attack windup, only with current detection and reach
  -> search, when sight is lost

search
  -> chase, on reacquisition
  -> return, when the search finishes
```

Sight has priority over sound because a visible player is stronger information than an old lure. Hearing reveals the source of an event, not the player's current position. Losing sight freezes the remembered destination; continuing to read the hidden player transform would make the lure and hiding decision cosmetic.

An attack requires current permission from the mechanic: detection, reach, windup, and an unresolved hit opportunity. Reaching the player's hidden transform through a wall is not permission.

## Make the lure reusable without making it free

This section implements the **Lure event** lock inside the fixed evidence hierarchy.

A one-use lure can softlock the encounter after one poor throw. A lure with no limit removes the need to plan. Give it a recoverable constraint that fits the world: cooldown, retrieval, a finite charge restored at a station, or a noise budget that attracts additional danger.

One activation creates one event with a position, radius or propagation rule, timestamp, and source type. Edge jitter or held input must not create several events. When the pursuer is already seeing the player, the sound does not overwrite that stronger observation.

Place the lure destination so following it commits the pursuer to a route. If it can turn instantly and cover both exits, the lure changes animation but not the player's decision.

## Treat hiding as a transition with consequences

This section implements the **Cover transition** lock. Hiding cannot repair an invalid map or overwrite the pursuer's evidence rules.

Entering cover changes the player's body and options. Define the entry reach, entry duration, hidden pose, camera height, movement restriction, exit points, and interruption rules. The destination must be a walkable point outside collision.

Hiding is not a universal invisible flag. If the pursuer visibly watches the player enter the bed, locker, or alcove, it may inspect that exact place. If the world declares another sense—heat, smell, vibration, magic—state how that sense works and what can block or mislead it. Do not quietly add supernatural detection to repair a weak map.

A useful hiding place has at least two meaningful relationships to the map: one way in and another way to leave, or one concealment route and one observation line that lets the player judge when leaving becomes possible. A sealed box that merely pauses the encounter is waiting, not hiding gameplay.

## Derive the escape window from the map

This section closes the **Escape margin** only after the shared room, evidence, lure, and cover locks are stable.

Do not invent a percentage such as “one chance in three.” Measure whether the route works.

For the intended near-miss, record:

```text
pursuer commitment time
  = path length from current position to inspection point / pursuer speed
  + inspection hold

player exit time
  = cover exit transition
  + path length from cover exit to safety / player speed
  + interaction time at the exit, if any

escape margin
  = pursuer commitment time - player exit time
```

Positive margin does not alone prove the route. Collision, acceleration, door timing, animation locks, camera information, and a possible reacquisition line can consume it. Run the encounter at the actual simulation rate and observe the narrowest successful and failing timings.

The near-miss should emerge from those distances and commitments. Do not add a random kill roll to imitate tension that the map has not created.

## Keep geometry shared

Renderer, collision, line of sight, reach, and navigation must describe the same walls and openings. A decorative wardrobe that does not block sight, or a visible door whose navigation cell remains closed, makes the player reason about a different map from the simulation.

Name the required landmarks in the contract:

- the player's entry;
- the lure destination;
- the sight-breaking boundary;
- the hiding place and legal exit points;
- the pursuer's far-side inspection point;
- the escape boundary;
- any door, obstacle, or height change that modifies reachability.

Use world coordinates or the project's stable spatial representation. Screen-left and screen-right change with the camera and cannot serve as persistent map facts.

## Work with the current Harness instead of assuming tools

This Skill does not bundle a game engine, browser, scraper, image generator, model provider, or deployment service. Inspect what the current Harness and project already expose.

- Local code, engine tooling, and existing assets are the default path.
- Browser automation may verify a web build when available; it is not proof for another engine.
- Image, audio, video, and 3D generation are optional dependencies. State the missing capability before any paid call and continue with licensed existing assets or labeled proxies when those are sufficient.
- An API or MCP server is callable only when it is actually configured in the current environment.
- Never replace a requested gameplay implementation with a generated video.

## Preserve success, failure, and restart

This section contributes the lifecycle portion of **Reset proof**.

Build one complete encounter before expanding the system. It must have:

- a reachable start;
- a lure the player can understand and activate;
- a pursuer whose observation changes can be read through pose, direction, sound, or UI appropriate to the project;
- a real hiding interaction;
- a successful exit reached through the intended manipulation;
- at least one failure caused by a comprehensible player decision;
- an immediate restart that clears every timer, sound event, memory record, route commitment, hiding flag, and outcome.

Failure should diagnose the rule. Leaving while the pursuer still has sight, choosing cover it watched the player enter, or waiting until the search returns are legible failures. An unexplained instant capture is not.

## Verify the behavior rather than the promotional image

This section closes **Reset proof** by connecting every claim to a repeatable procedure and evidence path.

Test the rule at its boundaries:

1. Activate one lure and confirm only one sound event exists.
2. Confirm the pursuer investigates the event origin without reading the hidden player position.
3. Let the pursuer see the player and confirm sight overrides the lure.
4. Break sight and confirm the remembered target stops following the player.
5. Enter cover within reach and reject entry through walls or from outside the allowed range.
6. Confirm observed entry can cause cover inspection when the contract says it should.
7. Leave during the valid window and reach the exit.
8. Leave too early, wait too long, or hide in plain view and reach a real failure.
9. Restart from investigation, chase, hiding, attack windup, success, and failure; no old event may survive.
10. Test the narrowest supported viewport and input family. Touch and reduced-motion behavior must preserve game state even when presentation differs.

For a fixed-step simulation, repeat a deterministic input trace under at least two render schedules. Rendering speed must not change the outcome clock. For multiplayer, the authoritative host owns detection, knowledge, timers, hiding, damage, and completion; two clients must observe the same state before the work is described as networked.

Save direct evidence. A screenshot proves the scene rendered, not that the pursuit logic worked. Pair it with tests, logs, or a reproducible playthrough that exercises the claim.

## Deliver and hand off

Save the contract and verification beside the project using its established documentation location. If none exists, use:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

End with a short handoff that answers:

- Where can the user run it?
- What should they do first?
- What visible or audible response proves the mechanic started?
- What success and failure were verified?
- Which existing assets were reused?
- What remains a proxy, proposal, untested environment, or explicit limitation?

Do not describe a tested prototype as balanced, production-ready, universally accessible, or compatible with engines that were not run.
