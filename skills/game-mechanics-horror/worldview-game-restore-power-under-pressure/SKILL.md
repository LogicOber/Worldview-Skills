---
name: worldview-game-restore-power-under-pressure
description: "Use when a game needs a playable find-components, restore-system, unlock-route objective in which unique pickups, an interruptible repair, persistent world state, and a real pressure source form one causal loop. Works with an existing project or a small authored prototype. Produces an implemented objective when a runtime is available, plus a mechanic contract, tunables, evidence, and handoff. Do not use for a decorative blackout, a one-switch cutscene, or a game-wide inventory framework."
---

# Worldview Game — Restore Power Under Pressure

## Call this Skill

The public invocation is:

```text
/worldview-game-restore-power-under-pressure
```

Treat the text after the Slash command as the creative and project brief. Do not require the user to translate the objective into engine architecture or arbitrary timer values.

## Route companion files as needed

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same responsibilities.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether this mechanic fits, resolving a dependency or pressure tradeoff, or tuning the exposed repair. A narrow implementation task with locked contract artifacts does not require it.
- Read [ashwater-substation.md](examples/ashwater-substation.md) only when a filled fictional example would clarify an unfamiliar contract field. Its routes and values are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to distinguish the user-supplied source commitments from repository-authored decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

Do not require another Skill to be installed.

## Restore the problem before choosing the parts

Use this Skill when the intended experience is not merely “find three things.” The meaningful problem is that a disabled system blocks a route, the pieces needed to restore it are distributed through a dangerous space, and every outward and return trip changes the player’s exposure. Repair then asks the player to remain committed long enough for the pressure to matter. Completion changes the world in a persistent, testable way.

The number and appearance of the pieces are secondary. Three identical glowing keys can satisfy an inventory counter while producing no understandable objective. Conversely, two pressure regulators in different hazard zones may create the full mechanic if their identities, routes, repair consequence, and interruption rules are clear.

Use the Skill when the objective needs all of these responsibilities:

- unique, reachable dependencies that cannot be collected twice;
- a truthful inventory or shared objective record;
- an exposed repair interaction with declared interruption behavior;
- a latched restoration state owned by gameplay, not by effects;
- a route or capability that is genuinely unavailable before restoration;
- pressure that changes decisions without secretly rewriting the rules.

Do not use it for a cinematic repair, a universal crafting or quest system, a single lever, or an objective whose route is already open. If the request is primarily about designing the pursuer, puzzle, or cutscene rather than this dependency chain, use the narrower applicable method instead.

## What the user gives

Accept any combination of:

- an authorized project path and its current playable entry;
- a map, collision layout, screenshot, sketch, or verbal route;
- an existing inventory, interaction, objective, door, lighting, or threat system;
- world and story constraints for the disabled device and its components;
- target input families, platforms, and network model;
- the desired pressure curve and one important player-facing moment.

Inspect only the project and paths placed in scope. Do not crawl unrelated directories or download assets merely because the scene lacks final art. If one ambiguity would lead to incompatible mechanics—such as whether interrupted repair preserves progress—ask one grouped question. Derive spatial and timing values from the actual map whenever possible.

If no runnable project exists, author the smallest test space that can prove the dependency: a visible disabled device, a visibly blocked route, distinct reachable component locations, a return path affected by pressure, an exposed repair zone, and the route beyond it. Labeled proxy geometry is sufficient.

## What the user receives

Complete as much of this result as the environment permits:

1. An inventory of reused map, controller, interaction, threat, component, device, door, lighting, audio, and UI assets, with gaps separated from proposed additions.
2. A mechanic contract recording the dependency graph, unique identities, player verbs, state ownership, collection rules, repair interruption, pressure, success, failure, restart, accessibility, and network authority.
3. Tunable data outside control flow: reach, repair duration, interruption grace, component count, feedback thresholds, pressure timings, and route timings.
4. A working objective in the project’s current runtime when available. A browser prototype is a fallback for a new project, not a substitute for an existing engine project.
5. A playable entry, controls, and one screenshot from the running objective.
6. Direct evidence for the intended completion, at least one meaningful failure, duplicate prevention, interruption, restart, and the environments actually tested.

When implementation cannot run, deliver the contract and a precise blocked-state report. Do not call documents, mockups, generated images, or videos playable.

## Lock the power objective before implementation

Resolve these locks in order. A later lock may tune within an earlier artifact but may not redefine it. If implementation exposes a contradiction, reopen the earliest affected lock, amend its artifact, and invalidate every dependent implementation, test, timing trace, and claim named below. Ask one grouped question only when the brief still supports two incompatible objective structures; derive ordinary values from the project.

### 1. Dependency Route Lock

- **Question resolved:** Which disabled consequence matters, which stable component IDs are required, where can each be reached, and which post-restoration route closes the loop?
- **Locked artifact:** The dependency graph plus before-restoration map graph, including the disabled system, component locations, recovery spaces, blocked route, and destination boundary.
- **Lock condition:** Project geometry or an authored prototype proves that the route is genuinely blocked, every dependency is reachable under the declared initial state, and the player can understand the relationship before collecting blindly.
- **Still mutable:** Prop art, labels, optional route dressing, and exact interaction ranges within verified collision and reachability bounds.
- **Reopen trigger and fallout:** Moving a component, repair point, hazard boundary, blocked route, or destination reopens this lock and invalidates pressure timings, softlock proof, navigation checks, screenshots, and success/failure traces.

### 2. Objective State Lock

- **Question resolved:** Who owns each component, the collected set, repair progress, interruption result, restored latch, save/load reconstruction, and full restart?
- **Locked artifact:** The authoritative state table and transition transaction for collection, repair, restoration, persistence, and restart.
- **Lock condition:** Stable IDs, duplicate rules, interruption policy, atomic commit, serialization owner, load order, and restart clearing behavior are explicit and mutually consistent.
- **Still mutable:** Durations, reach tolerances, UI layout, animation, and feedback that do not change transition meaning or durable ownership.
- **Reopen trigger and fallout:** Changing component identity, inventory ownership, interruption semantics, save boundary, or completion authority invalidates schemas, collection and repair code, network reconciliation, persistence fixtures, and restart evidence.

### 3. Pressure Window Lock

- **Question resolved:** Can the player collect, return, begin repair, disengage, and recover under the worst supported pressure timing without guaranteed success or unavoidable failure?
- **Locked artifact:** The pressure-interruption table and measured route/timing budget for component trips, warning, exposed repair, recovery, and the nearby failing attempt.
- **Lock condition:** The actual runtime or labeled prototype demonstrates a repeatable intended success and a readable pressure-caused failure while all required dependencies remain reachable.
- **Still mutable:** Values inside the tested envelope, presentation intensity, and optional assistance that preserves the declared decision.
- **Reopen trigger and fallout:** A map edit, pressure schedule, warning cue, player speed, repair duration, animation lock, or assistance change outside the tested envelope invalidates margins, play traces, failure claims, and balance judgments.

### 4. Restoration Consequence Lock

- **Question resolved:** Which systems consume the one restored transition, how do they reconstruct after load, and what concrete action proves the unlocked consequence works?
- **Locked artifact:** The restoration subscriber matrix, versioned completion event, idempotent load behavior, and success boundary.
- **Lock condition:** Collision, navigation, lighting, audio, UI, and the usable route all read one authoritative restored version; repeated input and reload cannot duplicate the transaction.
- **Still mutable:** Effects, mix, camera treatment, and descriptive copy that do not change route state or success authority.
- **Reopen trigger and fallout:** Adding or changing a subscriber, route mutation, completion boundary, or restoration version invalidates integration, reload, duplicate-event, accessibility, and end-to-end success evidence.

## Recover project truth before adding a system

This recovery work supplies evidence for the Dependency Route Lock and Objective State Lock. First determine what is already true in the project. A door may already subscribe to a global power service. Inventory may be player-owned, team-owned, or absent. A supposed enemy may currently be only an animation. These observations constrain the implementation; they must not be silently replaced with assumptions.

Record a short intake note:

```markdown
## Verified project facts
- Existing playable entry: <path or route and how it was verified>
- Interaction/inventory: <path and observed behavior>
- Disabled system and blocked consequence: <path and observed behavior>
- Pressure source: <path and observed behavior>

## Gaps
- <required responsibility not found>

## Proposed additions
- <new state, interaction, proxy, or rule>
- Reason: <why the objective needs it>
```

Keep three categories separate throughout the work:

- **Fact:** declared by the user, present in source, or observed in a running build.
- **Proposal:** a new design or implementation choice needed to complete the mechanic.
- **Judgment:** an evaluation such as “the return is readable” supported by recorded evidence.

Do not generate a replacement environment, threat, or prop when a suitable project asset already exists. Do not claim that a source file’s presence proves runtime behavior.

## Make the dependency visible before it becomes bookkeeping

Use the dependency graph fixed by the Dependency Route Lock. The player needs to understand the blocked consequence, not necessarily every solution detail, before collecting parts becomes meaningful. Establish a readable relationship among:

```text
disabled system -> unavailable route or capability
missing components -> system cannot be restored
restored system -> persistent world change -> route becomes usable
```

Show or communicate the disabled system early enough that the first component is recognized as useful. This can be done through spatial framing, a failed interaction, an objective note, environmental feedback, or world-specific dialogue. Avoid a detached counter whose meaning arrives only after the final pickup.

The route must actually reject completion before restoration. A closed-door animation is insufficient if the player can cross its trigger, interact through the wall, or enter the destination another unintended way. Conversely, do not place the player in a softlock when the objective begins; every required component and the repair point must remain reachable under the declared pressure rules.

## Give every component a stable identity

Implement the stable IDs and ownership fixed by the Objective State Lock. Model each required piece with a stable identifier independent of its visual instance:

```text
component definition:
  id
  authored spawn or owning container
  collected state
  collector or team owner when relevant
  presentation reference

objective state:
  required IDs or accepted type/count rule
  collected ID set
  repair progress
  restoration latched
  completion time
```

One interaction may add an ID only if the piece is still available, the player is within legal range, and any required line of access succeeds. The visible mesh, prompt, sound, and counter read the accepted state change; they do not each mutate inventory.

Prefer authored unique IDs when each location matters. A simple quantity may be appropriate when parts are intentionally interchangeable, but duplicate interactions still need idempotency. A held button, two clients, a collision callback, and a delayed animation must not award the same piece several times.

Place components so their routes do different work. One may teach collection, one may require a detour or observation, and one may expose the player to the strongest pressure. Different work does not require different art. Reusing one clear prop design with distinct IDs is often more legible and cheaper than generating bespoke objects.

## Make pressure alter plans rather than invalidate rules

Use the Pressure Window Lock without changing the route or state artifacts beneath it. Pressure earns its place when it changes when, how, or by which route the player acts. It must not covertly make a required component unreachable, cancel inventory without explanation, or produce unavoidable damage during a locked interaction.

Define the pressure source separately from the objective:

- what state or schedule makes it dangerous;
- what cues precede danger;
- what spaces, actions, or timings let the player respond;
- whether it can interrupt pickup or repair;
- what happens when it reaches the player;
- how it returns to a recoverable state after failure or evasion.

Do not invent random arrival solely to create fear. Variation is acceptable when its bounds are declared and every required route remains possible. Test the worst supported pressure timing, not only the favorable one.

If the project already owns a pursuer or hazard, integrate through its public state or events. Do not duplicate its state machine inside the objective. The objective may ask “is repair currently interrupted?” but should not secretly teleport or retarget the threat to force drama.

## Make every component trip earn a decision

The player should never collect a part simply because the counter is short by one. For each component, write a trip card before placing the mesh:

```text
component ID and visible identity:
blocked consequence it explains:
route taken from the last recovery anchor:
what the player must notice before leaving:
ordinary route cost:
pressure change on the outward trip:
pressure change on the return trip:
safe alternative or information trade:
what can be abandoned without losing the component:
what failure teaches:
what state survives the return:
```

Use the following judgment table to review the cards:

| Design question | A strong answer | A weak answer that needs rewriting |
| --- | --- | --- |
| Why is this part here? | Its location teaches a route, a hazard, an authority boundary, or a consequence of restoring the system. | “It fills the required count.” |
| Why does the player carry it back? | Carrying changes speed, visibility, sound, access, or the player's willingness to take a route. | The player carries an invisible number with no changed risk. |
| Why can the player not repair immediately? | The repair point is exposed and the missing part or route must be understood first. | A door is arbitrarily locked until the counter reaches three. |
| What can the player decide? | Search now, return, hide, redirect pressure, spend a resource, or accept a longer route. | Walk to the glowing object and press the same button three times. |
| What does interruption mean? | The player loses exposed repair progress while keeping understandable preparation. | The game silently deletes parts or resets an unrelated puzzle. |
| What proves restoration? | A route, machine, hazard boundary, or capability changes and can be used. | Lights brighten and the objective text changes. |

Reject the design when two component trips have the same route, risk, information, and consequence. Reuse art when useful, but make the player-facing work differ. One part may require observing a patrol gap, another may expose a noisy shortcut, and another may force the player to decide whether to repair while the threat is nearby.

## Remove the common fuse-objective failures

Mark each pattern in the contract before implementation:

| Failure pattern | Player experience | Repair |
| --- | --- | --- |
| Three identical glowing fuses | The objective is a counter disguised as exploration. | Give each part a stable identity and a distinct route question. |
| Arbitrary locked repair door | The player cannot form a causal model. | Show the disabled consequence and let the player inspect why repair is required. |
| Full progress reset after one hit | The pressure punishes preparation instead of creating a decision. | Preserve collected parts; reset only the declared exposed transaction. |
| Monster teleports to the repair point | The player cannot plan or redirect danger. | Use the existing threat authority, bounded evidence, and a recoverable interruption edge. |
| Power restoration only changes lighting | The objective ends as decoration. | Unlock a route or capability and require the player to use it. |
| Component can be collected through a wall | The map and interaction rules disagree. | Validate reach, line of access, collision, and the prompt against one spatial authority. |
| Save/load duplicates a part or restoration event | The objective becomes exploitable or contradictory. | Serialize stable IDs and publish one idempotent restoration transition. |
| Repair requires a long unskippable animation | Repeated attempts become chores. | Expose progress, allow a declared interruption, and place the retry near the decision. |

If the only reason to keep the objective is “players expect a fuse hunt,” remove it or combine it with a stronger route, social, or procedural decision.

## Treat repair as an exposed transaction

Implement the repair transitions from the Objective State Lock and the safe/failing intervals from the Pressure Window Lock. Repair is a commitment with preconditions, progress, interruption, and one authoritative commit. Define all four.

Typical preconditions are:

```text
required component IDs are present
player is inside the interaction region
line of access is unobstructed when the project uses one
objective is not already restored
player is allowed to act
```

Start progress only after the preconditions succeed. Specify whether input is held, repeated, sequenced, or automatic. While repair runs, communicate progress without relying on sound alone.

For a new objective with no contrary project rule, use the source-derived default: declared interruption resets the current repair progress while collected components remain available. This makes the exposed interval real without forcing the collection route to be repeated. Use another policy only when the user or existing project establishes a different experience, and record that departure explicitly.

Choose one interruption policy and preserve it consistently:

- **reset:** leaving reach, releasing input, taking a hit, or another declared event returns progress to zero;
- **checkpoint:** only authored milestones persist;
- **pause:** progress freezes and resumes, appropriate when retreat rather than exposure is the main decision and the departure from the default is intentional.

The policy is a design proposal unless already established by the project. Explain why it fits the pressure. Do not consume components on interruption unless loss is an explicit, recoverable mechanic.

On completion, perform one authoritative transaction:

```text
validate preconditions again
consume or mark installed components once
latch restoration = true
record completion time/event
publish one restoration event
```

Effects subscribe to that accepted transition. Repeated input, reconnects, and late callbacks must not consume again or publish duplicate completion.

## Let restored power have concrete consequences

Use the subscriber matrix fixed by the Restoration Consequence Lock. The renderer does not own power. Keep an authoritative restoration state from which systems derive their behavior. Depending on the project, subscribers may include:

- the blocked door or lift;
- room and emergency lighting;
- machinery animation and sound;
- navigation links or hazard controls;
- objective text and map markers;
- the pressure source, if the user’s world rules connect it to power.

Separate guaranteed mechanical consequences from presentation. The route unlocking is a gameplay fact. Lights brightening, fans spinning, and music changing communicate it. If lighting deliberately remains unreliable after repair, the route must still expose some accessible confirmation.

Crossing the actual destination boundary, activating the powered device, or completing another explicit post-repair action should produce success. Repair completion alone is not automatically level completion unless the brief says it is. This final step proves the unlocked consequence is usable rather than cosmetic.

## Keep geometry and state consistent

Preserve the map graph from the Dependency Route Lock and the route mutations from the Restoration Consequence Lock. Collection reach, repair reach, collision, line of access, navigation, and rendered obstacles must describe the same space. Do not accept pickups through solid walls or allow a repair prompt from a floor above because Euclidean distance happens to be short.

Record stable world locations for the system, components, pressure boundaries, recovery spaces, and exit. Screen-relative labels are not map facts. If power changes navigation or collision, apply those changes from the same restoration transition and verify them in the runtime.

## Work with the current Harness instead of assuming tools

Choose implementation tools only after the Dependency Route Lock, Objective State Lock, Pressure Window Lock, and Restoration Consequence Lock artifacts exist; tool availability may change how evidence is gathered but cannot silently rewrite them. This Skill bundles no engine, browser, asset generator, model provider, server, or deployment account. Inspect the current Harness and project for available capabilities.

- Use local code, engine tooling, tests, and licensed project assets first.
- Browser automation can verify a web build when it actually runs the mechanic; it cannot prove behavior in another engine.
- Image, audio, video, and 3D generation are optional dependencies. State the gap before any paid call and use labeled proxies when they prove the mechanic.
- An API or MCP server is available only when configured in the present environment.
- Never replace implementation with a generated trailer or illustrated design board.

Stay inside the project paths and services authorized by the user. Record tools actually used and environments actually run.

## Preserve success, failure, and recovery

Evaluate the complete loop against the Dependency Route Lock, Objective State Lock, Pressure Window Lock, and Restoration Consequence Lock. A complete objective contains:

- a reachable start and a readable blocked consequence;
- every required component reachable before restoration;
- truthful collection feedback and count;
- pressure with a perceivable response window;
- interruptible repair governed by the stated policy;
- one atomic restoration transition;
- a newly usable route or capability;
- a meaningful failure and immediate restart.

Failure should follow the model. The player may be caught while taking a risky route, interrupted while repairing, or attempt the exit before restoration. A random instant death unrelated to the dependency does not verify this mechanic.

Avoid irreversible softlocks. If a component can be dropped, consumed, moved by physics, or held by a disconnecting client, define recovery. If the threat can occupy the repair point forever, define how it leaves or how the player can redirect it. If repair interruption resets progress, components remain collected unless the design explicitly provides a fair way to reacquire them.

Restart must clear component ownership, spawned or hidden presentation, repair progress, callbacks, restoration events, route state, lighting, navigation changes, threat integration state owned by this objective, UI, success, and failure. Cancel deferred actions before spawning the new attempt.

## Persist collection and restoration deliberately

Use the durable ownership and reconstruction rules in the Objective State Lock together with the subscriber version in the Restoration Consequence Lock. Persistence across an ordinary scene unload, checkpoint, or save/load is different from a full encounter restart. Recover the project's existing save owner and declare which transitions it supports. Do not call collection or restoration persistent merely because values survive while one scene remains in memory.

When the project supports persistence, serialize stable component IDs, the authoritative collected-ID set, current component ownership, committed repair milestones under the selected interruption policy, the one-way restored latch, and the version of every route or world subscriber that consumes restoration. Ephemeral interaction progress, animation, sound, particles, input locks, and deferred callbacks are reconstructed or cancelled rather than serialized as durable facts.

On load, restore objective authority before spawning collectible presentation or publishing route state. Reconcile each component from its stable ID: collected parts do not respawn, uncollected parts appear once, installed parts cannot return to inventory, and a restored system republishes its latched consequence idempotently. Collision, navigation, lighting, exits, and UI must read the same restored version before control returns.

Test at minimum a scene unload/reload and supported save/load after partial collection, during or immediately after an allowed repair milestone, after restoration but before crossing the exit, and after objective completion. A full restart may intentionally clear those values; document that separate path rather than using restart as persistence evidence.

## Make the mechanic accessible without removing its decision

Express the Pressure Window Lock and Restoration Consequence Lock through supported modalities without changing their state or timing meaning. Every essential cue needs at least one non-audio path. Component availability, legal interaction range, repair progress, interruption, restoration, and exit state should be perceivable through compatible combinations of shape, motion, contrast, text, controller response, or spatial indicators.

Support remappable interaction and avoid requiring an unbroken rapid press unless that physical demand is intentional and alternatives are supplied. A hold interaction should expose adjustable duration or a toggle alternative where the project’s accessibility policy supports it. Reduced motion may simplify flicker, shake, and camera effects without changing authoritative timers.

Do not solve accessibility by removing the pressure in one mode without documenting the rule change. Prefer tunable cue lead time, interaction duration, contrast, subtitle/caption support, and threat intensity while preserving the dependency.

## Define multiplayer authority when relevant

Apply the Objective State Lock's ownership and Restoration Consequence Lock's versioned event to the actual network model. Skip this section for a genuinely single-player project. In networked play, the authoritative host or server owns:

- component availability and the collected ID set;
- team or player inventory according to the contract;
- repair preconditions, progress, interruption, and completion;
- restoration, route state, and objective outcome.

Clients request collection or repair actions with an ID and sequence or timestamp appropriate to the project. Authority rechecks reach, obstruction, availability, and current state. Two simultaneous pickup requests yield one accepted collection. Team inventory remains with the session when a collecting client disconnects unless the game deliberately uses personal ownership and defines a recoverable drop.

Replicate the minimum state needed for consistent presentation. Test at least two clients, interruption by a remote threat or player event, late join after partial collection and after restoration, disconnect while carrying a unique part, and restart. Do not call the mechanic networked because the scene happens to open in two clients.

## Verify causality rather than atmosphere

Attach each result to the Dependency Route Lock, Objective State Lock, Pressure Window Lock, or Restoration Consequence Lock artifact it tests; a late change that reopens a lock makes its dependent result stale. Run and record these checks:

1. Approach the blocked route before restoration and confirm it rejects completion.
2. Reach every component through legal collision and interaction paths.
3. Trigger repeated, held, overlapping, or networked collection attempts and confirm each unique ID counts once.
4. Confirm the displayed count reads the authoritative collection state.
5. Attempt repair with insufficient components, outside reach, and through an obstruction; each must be rejected clearly.
6. Begin valid repair, interrupt it through every declared event, and confirm progress and inventory follow the chosen policy.
7. Complete repair and confirm components commit once, restoration latches once, and duplicate input cannot re-complete it.
8. Verify every promised world consequence, including the route’s collision or navigation change.
9. Cross or operate the newly enabled route and reach success.
10. Exercise at least one pressure-caused failure whose cause is perceivable.
11. Unload/reload and save/load at every supported persistent boundary; verify collected IDs, repair policy, restored latch, and route subscribers reconstruct coherently.
12. Restart during collection, repair, restoration effects, success, and failure; no state or callback may survive.
13. Check supported controls, narrow viewport behavior, non-audio cues, and reduced-motion presentation.

For fixed-step simulations, repeat a deterministic trace under more than one render schedule. For networked projects, verify authority and replication with actual multiple clients. A screenshot proves rendering only; pair it with tests, logs, state captures, or reproducible playthrough steps.

Record facts and judgments separately. “The exit unlocked at state `restored=true`” is an observation. “The pressure felt fair” is a judgment and needs supporting playtest conditions; one developer run cannot establish broad balance.

## Deliver and hand off

Deliver the current Dependency Route Lock, Objective State Lock, Pressure Window Lock, and Restoration Consequence Lock artifacts and identify any reopened or unverified layer. Use the project’s established documentation location. If none exists, save:

```text
gameplay/<objective-slug>/mechanic.md
gameplay/<objective-slug>/tunables.yaml
gameplay/<objective-slug>/verification.md
```

The final handoff answers:

- Where and how does the user launch the objective?
- What disabled consequence should they inspect first?
- Which components are required, and how are they identified?
- What pressure and repair-interruption rule should they expect?
- What proves restoration occurred, and what action completes the objective?
- Which success, failure, duplicate, interruption, and restart cases were run?
- Which unload/save/load boundaries were run, and what persisted at each one?
- Which existing assets were reused?
- What remains a proxy, proposal, unsupported platform, or untested claim?

Do not describe a verified prototype as balanced, production-ready, fully accessible, or portable to engines and platforms that were not run.
