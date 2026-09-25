---
name: worldview-game-chase-route-architecture
description: "Use when a horror chase needs a learnable indoor route rather than a pursuer following the player's live position. Builds a calmly rehearsed building graph, sequential branch rejection, success and failure paths, interaction and travel margins, recovery pockets, no-return and lure/containment thresholds, checkpoints, and a verified runtime encounter. Route moving-vehicle attention and progressive loss of journey protections to their dedicated Skills."
---

# Worldview Game — Chase Route Architecture

## Call this Skill

```text
/worldview-game-chase-route-architecture
```

Treat the text after the Slash command as the creative brief. Do not ask the user to convert a room idea into engine jargon. Infer ordinary implementation details from the project, and ask one grouped question only when two incompatible chase promises are possible.

## What this Skill is responsible for

This Skill makes the chase a spatial problem the player can learn. It joins four distinct layers without confusing them:

1. **Architecture:** rooms, stairs, openings, occluders, heights, landmarks, loops, dead ends, and route edges.
2. **Runtime geometry:** collision, navigation mesh, movement constraints, door states, and legal traversal.
3. **Perception simulation:** sight, hearing, authored traces, microphone input, sanity/perception effects, memory, and pursuit decisions.
4. **Communication:** the floor plan, route colors, sound/LOS legend, lighting, audio, signs, and feedback that let a player form a mental model.

The player should be able to fail because they made a comprehensible route decision, learn which cause mattered, and try again quickly. A red arrow on a generated image is not a route until the running build proves it.

## Read only the files this task needs

- Read [templates/chase-route-contract.md](templates/chase-route-contract.md) before implementation unless the project already contains an equivalent contract. Map fields into the existing format rather than making a parallel system.
- Read [references/why-chase-routes-fail.md](references/why-chase-routes-fail.md) when choosing branches, diagnosing a flat chase, or reviewing a route that feels arbitrary.
- Read [examples/the-red-service-corridor.md](examples/the-red-service-corridor.md) when a filled contract would clarify the expected evidence. Its names, dimensions, and values are not defaults.
- Read [SOURCE.md](SOURCE.md) when auditing provenance or explaining which decisions are original.
- `README.md` is the human catalog page; it is not required after this Skill is loaded.

## Intake: recover the actual problem

Before drawing a route, write a short intake note. Separate what the user declared, what the project already proves, what a source video or screenshot merely suggests, and what you are proposing.

```markdown
## Declared
- Story position and desired feeling:
- Player objective and failure tolerance:
- Existing map, pursuer, player, and mechanics:
- Required runtime and delivery target:

## Observed
- Build/version and test entry:
- Walkable geometry and collision:
- Navigation and door behavior:
- Sight, hearing, sound, microphone, sanity, and checkpoint behavior:
- Player reaction or playtest observation:

## Proposed
- Route promise:
- New geometry or interactions:
- Why each new element is needed:
- What evidence could overturn it:
```

Do not imitate a route from a reference game one-to-one. Extract the design question—such as “how can the player make the pursuer commit to the wrong wing?”—and author a new topology, landmarks, timings, and fictional context.

## Layer locks

Work in order. A later lock may tune only fields named mutable in the table. If a discovery hits a reopen trigger, reopen the earliest affected lock, invalidate the dependent implementation and evidence, and rerun it. Do not silently retune a route after a geometry change.

| Lock | Artifact that must be concrete | Close when | Still mutable afterward | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| **Route promise** | One sentence states objective, pursuer information, main route, meaningful alternative, teaching failure, and recovery. | The request and project can support those beats without becoming a different genre or omniscient chase. | Fictional dressing and non-route props. | Objective, ending, pursuer power, or route count changes; invalidate every later lock. |
| **Architectural graph** | Versioned plan with rooms, entrances, exits, landmarks, loops, occluders, vertical links, and route edges. | A player and pursuer can be placed on every required edge; scale and coordinates are recorded. | Surface material, decor, and dimensions that do not change an edge or sight boundary. | A wall, stair, door, landmark, or branch moves; invalidate runtime geometry, perception, timing, and route evidence. |
| **Runtime geometry** | Collision, navmesh/path nodes, door states, reach, slopes, turn radii, and spatial ownership. | A grey-box build traverses the graph with no phantom openings or unreachable targets. | Physics tolerances and non-structural polish. | Collision/navmesh/door or movement model changes; invalidate LOS, audio, timing, and captures. |
| **Pursuer evidence** | State and knowledge contract for sight, sound, trace, memory, search, commitment, and reacquisition. | Every transition cites a declared observation; hidden live player position is never read accidentally. | Ranges, ageing, and animation timings within the same evidence hierarchy. | New sensor, priority, tracking rule, or memory behavior; invalidate AI traces, timing, and failure explanations. |
| **Route readability** | Landmark, affordance, lighting/audio cue, and information budget for each critical edge. | A first-time player can identify the next decision and a failure can be explained after replay. | Wording, color grade, nonessential prop dressing. | Landmark removal, contradictory cue, or route ambiguity; invalidate playtest claims and presentation evidence. |
| **Interacting mechanics** | Contract for doors, items, sound, microphone, sanity/perception, and existing systems that alter route edges. | Each mechanic changes a named edge and has fallback, permission, and reset rules. | Values within the same topology and authority. | A mechanic changes topology, evidence, or player information; invalidate dependent traces and timing. |
| **Timing and margin** | Measured path lengths, speeds, interactions, holds, acceleration, uncertainty, and success/failure margins. | Intended success has a repeatable positive window; the teaching failure is repeatable and attributable. | Fine tuning inside tested tolerance; accessibility assistance that preserves route logic. | Route, speed, animation, input assistance, sensor, or checkpoint change; discard all balance claims and captures. |
| **Checkpoint and reset** | Saved state, pursuit reset, memory cleanup, soft-lock handling, and retry placement. | Retries test the route quickly and no event/callback/door state leaks across a run. | Evidence file names and extra test coverage. | Save authority or any prior lock changes; rerun affected phases and replace stale evidence. |
| **Presentation and delivery** | Final diagram, controls, screenshot, URL/build, limitations, and source/asset ledger. | Every claim points to the build or an explicitly labeled proposal; the tested entry launches. | Copy polish and optional extra captures. | A release claim, runtime, asset, or route changes; reopen the affected lock rather than patching the report. |

## Build the architectural graph before art

### 1. Choose a route promise

Use a single sentence with the form:

> The player must **[objective]** while the pursuer can **[declared evidence]**; the main route wins by **[route idea]**, the alternative trades **[cost]** for **[benefit]**, and the first understandable failure teaches **[rule]** before **[recovery/checkpoint]**.

The encounter may be a short recurring chase or a major boss-like sequence. Its place in the campaign determines how much rehearsal, foreshadowing, and checkpoint support it needs. Do not inflate a five-minute route into a fake “large level” by adding empty corridors.

### 2. Draw a graph, not a screenshot

Author a top-down or 2.5D plan with a coordinate scale and stable landmark IDs. Start with boxes and arrows; do not let generated concept art hide the topology. Include:

- player start and objective boundary;
- pursuer start, patrol, commitment point, search points, and reacquisition lines;
- all solid boundaries, doors, shutters, stairs, lifts, drop-offs, and one-way edges;
- sight-breaking corners, transparent or slatted barriers, and vertical LOS changes;
- sound sources, acoustic zones, occlusion, and microphone/noise events if used;
- item or interaction gates and what state they modify;
- main success route, alternate success route, survivable wrong route, fatal/capture route, and retreat/recovery edge;
- checkpoint, restart, and branch-merge landmarks.

Use red for player route examples only when the legend says whether a line is main success, alternate success, or failure. Use separate colors or line styles for pursuer paths, sight cones, audio, locked edges, and uncertain proposals. The map should still be understandable when printed without color.

### 3. Keep four maps in agreement

Do not collapse these into one “level image.”

| Map | Owns | Must agree with |
| --- | --- | --- |
| Architectural plan | Intended walls, openings, scale, landmarks, and route graph | The player's mental model |
| Collision/navmesh | Legal movement and pathfinding | Every route edge and door state |
| Perception map | LOS, hearing, trace, vertical visibility, memory | Declared pursuer evidence |
| Presentation diagram | What the player can infer under pressure | Route readability, not hidden implementation trivia |

When they disagree, fix the earliest layer. A red line cannot certify a route through a wall, and a navigation path cannot justify a door the player cannot perceive.

## Optional image, browser, and API tools

An authorized image model can produce a clean architectural diagram, route overlay, or paint-over. Give it explicit requirements: scale, orthographic/top-down camera, room labels, stable IDs, legend, and no invented doors. Save the prompt, provider, date, output, and revision ID in the contract. Treat image output as a communication draft only.

If an image tool cannot preserve labels or scale, draw an SVG/Canvas diagram from the graph. Do not spend tokens iterating on a pretty image before the grey box works.

Browser automation, game-engine tools, Blender, external APIs, and MCP servers are optional dependencies. Use them only when configured or authorized in the current project. Check one minimal call before a batch. Do not install paid services, upload private footage, or send microphone data without a clear permission and a documented fallback. A missing service is a stated limitation, not a reason to claim completion.

## Route topology and player learning

### Main, alternative, wrong, and recovery edges

Every edge in the contract must answer four questions:

1. What can the player observe before committing?
2. What action or resource changes the edge?
3. What does the pursuer know and do while it changes?
4. If the edge fails, where can the player learn, retreat, or retry?

At least one route should be discoverable without a frame-perfect trick. A route may be hidden by pressure, but its landmark or consequence should have appeared during a safe beat. A good first capture teaches the next attempt; a random branch that can only be solved by a guide is not depth.

Branches should rejoin at an intentional landmark. Preserve only useful state across the merge: time lost, item spent, injury, noise level, pursuer commitment, knowledge, or a changed shortcut. If two branches require separate untestable campaigns, reduce them or move the difference into a bounded state.

### Rehearse the route before peak pressure

Every critical chase edge needs a source of prior knowledge. Let the player traverse it calmly, observe it from safety, use it during ordinary work, see a companion cross it, or test a short segment under low pressure. Record which landmark, door operation, ladder, crawl, drop, hiding pocket, or containment control the rehearsal teaches.

Rehearsal does not reveal the complete winning sequence. It establishes the spatial vocabulary and interaction cost so the chase can test memory and judgment instead of first-time camera reading. When a route cannot be visited early, provide a safe sightline or a short recoverable probe and verify that it teaches the same fact.

Do not debut a required turn during camera shake, sprint audio, or a scripted look lock. If the player must hear story information during pursuit, repeat or preserve it after recovery; a revelation that is inaudible while running cannot own the next route decision.

### Reject branches sequentially

When only one route should ultimately succeed, make wrong branches fail for different, ordered reasons. The first failure might reveal that a fire door needs pressure. A later branch might be legal but too slow while the pursuer owns the short connector. Another may work only after the player preserves a countermeasure. Each rejection adds one actionable fact.

For every branch, declare:

```text
fact known before commitment
reject cue
commit point
interaction lock and cancel time
pursuer travel time in the current state
wrong-but-useful result
recovery pocket
next-attempt change
```

Do not activate every blocker simultaneously. That makes the route look arbitrarily sealed and prevents diagnosis. One attempt may reveal more than one fact only when the cues remain separately attributable.

### Mark recovery and no-return boundaries

A recovery pocket is safe enough to orient, not necessarily a safe room. Record what can enter, what knowledge or progress persists, how long the player can plan, and which edge returns to active danger. A return-path trap is fair only if the earlier safe traversal is established and the changed obstruction, threat access, or timing is visible before commitment.

Mark the no-return line where retreat stops being legal. The player must know which preparation, item, companion action, or countermeasure becomes unavailable after it. Save/load and checkpoint behavior must preserve that boundary exactly.

### End at an escape, lure, or containment threshold

The final threshold may be an exit, but it may instead ask the player to draw the pursuer through a gate, hold it in a room, activate a relationship-owned countermeasure, or deliver it to a prepared destination. Name who owns the countermeasure, how the player learned it, which target states it affects, how long it lasts, and what happens when it is used too early or on the wrong target.

The finale cannot introduce a new combat or ritual grammar. Its decisive verb, landmark, and target compatibility must appear earlier in the route. Crossing the threshold is successful only when the authoritative world state confirms escape or containment; a cutscene trigger alone is not proof.

### Neighbor handoffs

- This Skill owns on-foot route topology, branch evidence, recovery pockets, timing margins, and the final spatial threshold.
- `/worldview-game-driving-horror-divided-attention` owns vehicle motion, road demand, mirrors or cabin view zones, safe look-away windows, collision grace, and motion comfort. Do not stretch this on-foot template over a moving vehicle.
- `/worldview-game-stranded-journey-and-lost-protections` owns progressive availability of transport, communication, shelter, legitimacy, companions, help, and safe return across a journey. A chase may consume those states but does not define them.
- `/worldview-game-roaming-stalker-pressure` owns persistent threat location, knowledge, search, withdrawal, and cooldown outside the chase.
- `/worldview-game-sound-detection-and-distraction` owns sound-event provenance, propagation, listener memory, and distraction commitment.

When a neighbor is not installed, keep the handoff fields and mark the external owner unresolved rather than copying its state into the chase controller.

### Architectural affordances

Use a small repeated vocabulary: a red stripe that survives a sanity pulse, a numbered service door, a visible pressure gauge, a sound source behind a grille, a stair with a unique handrail. The player should know which spaces are distinct even when the pursuer removes time to look around.

Do not fill every room with lore. A chase room exists to support route decisions, recovery, or pressure. Each major landmark should have a spatial function and a player-facing meaning.

## Audit every route edge as a chain of decisions

Do not approve an edge because it has a door, a corridor, or a red arrow. For every important edge, write the decision chain below in the contract. This is the smallest unit of route design that can be playtested and revised:

| Decision point | Record this | Reject the edge when |
| --- | --- | --- |
| Notice | The landmark, sound, light, object, or threat trace that reaches the player before commitment. | The player must already be running or already know the map to notice the choice. |
| Hypothesis | The two or more explanations a careful player can form. | Only one answer is visible, or the alternatives are indistinguishable random guesses. |
| Commitment | The input, item, timing, stance, door, or route turn that makes the choice costly. | The player can undo the choice without time, information, or spatial cost. |
| Pursuer response | What the pursuer can know, which edge it takes, and when that knowledge expires. | The pursuer reads the live transform or reacts in a way the player cannot cause or observe. |
| Immediate feedback | The change in sightline, sound, door state, distance, resource, or body state that confirms the choice. | Failure is communicated only by damage or a delayed cutscene. |
| Wrong but useful result | A survivable loss, detour, noise event, closed shortcut, or new clue. | The wrong branch is instant death before the player has a chance to learn the rule. |
| Recovery | The safe-enough anchor where the player can orient and choose again. | Recovery is a featureless hallway, a forced reload, or a ten-minute repeat. |
| Next-attempt delta | The one fact the player can change after failure. | The player must copy an unexplained sequence or wait for a random seed. |

Write a concrete action chain, for example:

```text
player hears a scrape behind the numbered laundry door
→ sees the service stripe continue left and the shutter control on the right
→ can close the shutter (gains distance, loses the quiet shortcut) or run left
→ the pursuer investigates the last sound, not the player's current transform
→ the closed shutter buys one measured turn but makes the next junction louder
→ a failed left turn reaches a lit washroom where the player can see the stripe again
→ the next attempt can choose the shutter earlier or preserve the shortcut
```

The nouns must come from the current map. “Nearby threat,” “alternate route,” and “tension” are placeholders, not completed design records.

## Remove the shortcuts that make a chase feel cheap

Before art polish, mark each item below as `present`, `absent`, or `intentionally accepted with reason`:

| Cheap shortcut | Why it fails the player | Required replacement |
| --- | --- | --- |
| Monster follows the player's live position through walls | Hiding and route knowledge have no value. | Last-seen, heard, trace, or declared supernatural evidence with an expiry. |
| Three hallways with different wallpaper | The player cannot learn a topology under pressure. | A repeated landmark grammar and a route trade that changes state. |
| One correct door with no rehearsal | Success depends on a guide or luck. | Preview the affordance, then test it under pressure with a recoverable first failure. |
| Key or fuse placed at the end of a detour | The chase becomes a fetch errand. | Make the object alter a route edge, sensor, sound profile, or commitment timing. |
| Random branch selection | A failed attempt gives no new knowledge. | Bound the variation and expose the cause of the selected branch. |
| Instant capture at a blind corner | The player cannot attribute the loss to a decision. | Warning distance, a visible or audible state change, and a retreat or counterplay edge. |
| Checkpoint before a long unskippable setup | Repetition replaces learning. | Preserve solved preparation and restart at the first meaningful decision. |
| Generated floor plan treated as proof | Visual polish hides impossible geometry. | Versioned graph, collision/navmesh trace, perception trace, and runtime capture. |

If a requested chase still contains three or more of these shortcuts, stop adding spectacle. Rewrite the route promise and the earliest affected lock first.

## Tune the decision, not only the speed

When a playtest fails, change one variable from the table at a time and rerun the same trace:

| Symptom | First variable to inspect | Do not “fix” it by |
| --- | --- | --- |
| Player sprints past every landmark | Cue lead time, landmark contrast, or safe rehearsal | Adding a louder monster or more damage. |
| Player waits in one corner | Pursuer search expiry, recovery edge, or cost of waiting | Teleporting the pursuer into the hiding place. |
| Player chooses correctly but feels no ownership | Alternative route cost and immediate feedback | Adding lore or a scripted camera. |
| Player dies without changing the next attempt | Failure evidence and checkpoint distance | Making the player faster. |
| Player memorizes a single line and ignores the building | Branch merge state and landmark grammar | Adding more corridors. |
| Assisted input removes all pressure | Cue timing and interaction duration | Removing the route decision from accessibility modes. |

Record the player’s observed action, the suspected cause, the one changed variable, and the resulting route decision. A timing improvement is only successful when the player can explain what they learned, not when the capture looks smoother.

## Perception, sound, microphone, and sanity

### Pursuer evidence

The renderer and simulation may know the player's transform; the pursuer may not. Use an explicit record such as:

```text
current sighting       valid while LOS, range, and declared visibility hold
last seen              frozen at the last valid sight position
last heard             source position, event type, and authoritative time
trace / disturbance   optional declared evidence, with age and confidence
search target          selected by the contract's priority rules
route commitment       path and expiry after a meaningful cue
```

Sight, sound, trace, and supernatural perception must have named priority, range, occlusion, age, and reset behavior. A sound should lead to its source, not silently reveal the player's current position. If the intended horror uses an omniscient entity, say so and design a different decision—cover timing, terrain, or resource use—instead of pretending it is a learnable evidence chase.

### Sound and microphone input

An authored footstep, thrown object, noise meter, and microphone event are different inputs. Record source, position, intensity, timestamp, radius/zone, occlusion, cost, cooldown, and deduplication. For microphone input:

- ask for or use explicit permission;
- keep raw audio out of saves and reports;
- provide a deterministic non-microphone fallback;
- expose calibration and a sensitivity range;
- test no-device, muted, noisy-room, and accessibility paths;
- never make a private recording or upload necessary for the chase to be playable.

### Sanity and perception

Sanity may distort light, audio, UI, timing estimates, or the apparent pursuer. It must not silently change collision or create an impossible route unless the contract names that as the central mechanic. Give the player a reliable anchor—floor stripe, clock, tactile door, authored sound, or map landmark—so distortion is a decision rather than arbitrary loss of control.

## Measure the route

Do not use an invented “30% chance of escape.” Measure the narrowest intended path in the actual runtime.

```text
player route time
  = movement + acceleration/turning + interactions + animation/camera locks
  + uncertainty allowance

pursuer route time
  = path traversal + door/obstacle handling + inspection/search hold
  + reacquisition delay

timing margin = pursuer route time - player route time
```

Measure ordinary input and any supported assistance. Record where the player can see the pursuer, what feedback announces commitment, and whether the margin disappears after a detour, injury, noise event, or sanity effect. A positive arithmetic margin is not sufficient if a door's collision, a turn radius, or a hidden animation consumes it.

Create at least four traces:

1. intended success at ordinary input;
2. early or incorrect decision that fails for a visible reason;
3. late decision that reaches a recovery or checkpoint where possible;
4. accessibility or reduced-speed path, preserving the same route logic.

The player may succeed on the first try, but the route should also reward the player who watches, remembers, and tests the building after a capture.

## Integrate existing mechanics without turning the chase into errands

For every item, door, environmental system, sound source, microphone signal, sanity effect, or wound state, name the route edge it changes. A key that only opens a decorative door adds workload, not depth. A bolt cutter that opens a quiet stair but makes a loud event is a route decision.

Use an interaction table:

| Mechanic | Player action | State change | Route edge affected | Pursuer consequence | Cue and fallback |
| --- | --- | --- | --- | --- | --- |
| Item | | | | | |
| Door/shutter | | | | | |
| Noise/microphone | | | | | |
| Sanity/perception | | | | | |
| Other | | | | | |

Do not add a new mechanic merely to decorate the chase. If the project already has a sound, health, or checkpoint system, reuse its authority and reset path.

## Grey-box implementation order

1. Inventory the project and place the smallest authorized map in scope.
2. Lock the route promise and architectural graph in the contract.
3. Build collision, navmesh/path nodes, doors, and player traversal with proxy geometry.
4. Validate every route edge and vertical connection before adding a pursuer.
5. Implement pursuer evidence and explicit memory; add pursuit only after an observation trace works.
6. Add landmarks and cues that communicate the route at walking speed.
7. Add items, sound, microphone fallback, sanity, and other linked mechanics one at a time.
8. Measure the successful and failing paths; tune only within the timing lock.
9. Add art, generated assets, animation, lighting, and audio without changing topology.
10. Capture the diagram and the runtime scene separately, then perform the full verification and delivery check.

If an existing runtime is unavailable, deliver the contract, diagram source, route graph, timing assumptions, and exact implementation blocker. Do not call a diagram or video “playable.”

## Assets and 3D generation

Use existing licensed assets when they satisfy the route. For a missing static prop, a generated mesh may be acceptable after collision is checked. For a pursuer or any rigged character, inspect topology, pivot, scale, skeleton, skin weights, materials, and animation deformation before relying on it in a timed route. AI-generated assets may look detailed while failing at joints or producing unusable collision; proxy geometry is safer for the first pass.

If Tripo, Blender, an image model, or another provider is used, record the provider, authorization, prompt or settings, input assets, output path, license status, and replacement plan. Never let a tool's default output change a locked route without reopening the appropriate lock.

## Checkpoints, capture, and reset

The checkpoint should preserve meaningful preparation while resetting active pursuit state. Decide explicitly whether it retains a cut chain, solved pressure valve, discovered route hint, injury, noise, item, or sanity. On restart, clear timers, route commitments, current sight, last-known positions, sound events, microphone state, navigation requests, interaction callbacks, door animations, damage/death callbacks, and transient distortion.

Test capture at every active phase: before commitment, during pursuit, after sight loss, during an interaction, in a hidden or distorted state, at the checkpoint, after success, and after failure. A retry that repeats a ten-minute fetch sequence prevents route learning and is a design defect.

## Verify and hand off

The delivery is complete only when the project supports the requested runtime evidence. Verify:

- the versioned diagram has scale, stable IDs, legend, and source metadata;
- each architectural edge is legal in collision and navigation;
- door, stair, drop, slope, and turn behavior matches the diagram;
- sight and audio boundaries use the same walls the player sees;
- the pursuer never reads undeclared live player position;
- main success, alternate/recovery route, and teaching failure were played;
- timing margins were measured and the narrowest successful input is documented;
- item, microphone, sanity, and checkpoint behavior either passed or is marked unavailable;
- capture and restart leave no stale event, callback, memory record, or soft lock;
- the running entry point, controls, screenshot, build/URL, and limitations are recorded.

Return a concise handoff with:

```text
<project route or URL>
Controls: <...>
Contract: <path>
Route diagram: <path, version, legend>
Verified: <success, teaching failure, reset, key boundary checks>
Unverified or blocked: <exact limitation>
External tools/assets: <provider, permission, license, fallback>
```

Do not describe a rendered screenshot, generated floor plan, or planned branch as a tested game behavior.
