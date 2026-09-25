---
name: worldview-game-threat-interrupted-puzzle
description: "Use when a game needs a world-space puzzle repeatedly interrupted by a real threat. Defines task ownership, bounded cancel/resume, committed and working progress, partial world effects, ally or system handoff, fair warning, recovery, completion consequences, save/load, accessibility, and rigorous runtime verification."
---

# Worldview Game — Threat-Interrupted Puzzle

## Call this Skill

The public invocation is:

```text
/worldview-game-threat-interrupted-puzzle
```

Treat everything after the Slash command as the world, puzzle, threat, and project brief. Do not ask the user to invent internal state names or arbitrary countdown values before inspecting the actual interaction, map, and threat approach.

## Route companion files as needed

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same responsibilities.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether this interruption pattern fits, choosing a persistence policy, or resolving a warning/recovery tradeoff. A narrow implementation task with locked artifacts does not require it.
- Read [tidewheel-console.md](examples/tidewheel-console.md) only when a filled fictional example would clarify action, persistence, save/load, or timing fields. Its ring logic and route are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate project facts from repository-authored decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

This Skill is self-contained.

## Restore the attention problem before designing interruption

Use this Skill when solving requires sustained attention inside a world that does not pause. The player needs to manipulate, compare, align, remember, route, or sequence something while also monitoring danger. A warning creates a choice: finish the current bounded action, abandon it, or disengage now and preserve safety.

Simply spawning an enemy after a timer is not enough. The puzzle and threat become one mechanic when:

- the puzzle occupies a location and has inspectable authoritative state;
- the threat approaches through the same playable world or a declared hazard system;
- warning and travel time create a measurable disengagement window;
- leaving the interaction changes only the state named by the persistence policy;
- the player can recover, re-read the state, and continue;
- completion changes a real world dependency or route.

Do not use this Skill for a menu that pauses the simulation, a cutscene that depicts an interruption, a generic puzzle library, or a threat that begins only after all reasoning is finished. If the core work is threat AI or an elaborate standalone puzzle with no interruption loop, scope that system separately.

## What the user gives

Accept any combination of:

- an authorized project path and playable entry;
- an existing puzzle, device, door, code, mechanism, or partial interaction;
- a map showing the puzzle location, threat routes, warning boundary, cover, and destination;
- an existing threat, hazard cycle, perception system, and warning language;
- intended puzzle logic, stable milestones, completion consequence, and failure tone;
- input, camera, platform, accessibility, and multiplayer requirements;
- one desired moment, such as abandoning the final rotation when the threat enters the gallery.

Inspect only in-scope files and runtime paths. Reuse established interaction, camera, threat, UI, save, and objective systems. Do not replace a working puzzle or enemy with a parallel prototype simply because it is easier.

If no project exists, create a compact world-space test: a puzzle with at least three bounded actions, one stable committed milestone, a visible or multimodal state, a threat approach with warning, a reachable recovery space, a real completion consequence, failure, and reset.

## What the user receives

Complete as much as the environment supports:

1. A reuse inventory for puzzle logic, world device, threat, map, interaction, camera, UI, audio, save, input, and networking.
2. A mechanic contract recording puzzle state, action transactions, persistence tiers, interruption events, threat warnings, spatial timing, recovery, outcome, accessibility, authority, and reset.
3. Tunables separated from control flow: action durations, warning lead, approach speed, interaction reach, disengage time, grace, checkpoint behavior, and feedback timing.
4. A working encounter in the project’s actual runtime when available. A new web prototype is not a replacement for an existing engine project.
5. A playable entry, controls, and one screenshot showing the puzzle in its world context.
6. An interruption matrix tested at every meaningful puzzle state, plus success, at least one fair failure, restart, accessibility, and multiplayer evidence where applicable.

If the project cannot be executed, deliver the contract and exact blocker. Do not describe wireframes, logic diagrams, or a rendered cinematic as playable.

## Lock the interrupted puzzle before implementation

Resolve these locks in order. Each later artifact depends on the earlier ones and cannot redefine them silently. If implementation or play reveals a contradiction, reopen the earliest affected lock, amend it, and invalidate all dependent code, timing, save fixtures, and evidence. Ask one grouped question only when the brief still supports incompatible puzzle rules, failure persistence, or threat relationships.

### 1. Puzzle State Lock

- **Question resolved:** What configuration constitutes the puzzle, which bounded actions are legal, where each action commits or cancels, who owns state, and what exact configuration solves it?
- **Locked artifact:** The authoritative puzzle state schema, legal-transition table, bounded-action list, solution validation, interaction ownership, and initial presentation mapping.
- **Lock condition:** Every action can be simulated without animation, illegal transitions are rejected, the solution is unambiguous, and presentation reconstructs from authoritative values.
- **Still mutable:** Art, labels, camera framing, animation, and action duration that do not change legal transitions or the solution.
- **Reopen trigger and fallout:** Adding a control, changing a commit boundary, state field, solution, or authority reopens this lock and invalidates interaction code, persistence classification, UI/camera behavior, save schema, and all downstream tests.

### 2. Interruption Policy Lock

- **Question resolved:** Which committed, working, ephemeral, and attempt records persist, pause, revert, checkpoint, serialize, or clear for voluntary exit, warning exit, contact, capture retry, save/load, disconnect, and full restart?
- **Locked artifact:** The persistence-tier table, interruption matrix, disengagement transaction, save/load reconstruction order, retry policy, and callback-cancellation list.
- **Lock condition:** Every meaningful puzzle state has one deterministic result for every supported interruption; load and retry reconstruct the last stable state without duplicate completion; player control returns within the declared boundary.
- **Still mutable:** Transition presentation and timings inside the verified release/reconstruction envelope.
- **Reopen trigger and fallout:** Changing a persistence class, capture/checkpoint policy, save point, cancel/commit conflict, disconnect rule, or restore order reopens this lock and invalidates state code, saves, return context, interruption coverage, and restart evidence.

### 3. Threat Window Lock

- **Question resolved:** Which real threat event warns the player, how long disengagement and escape require, where recovery is legal, and how another puzzle opportunity appears?
- **Locked artifact:** The threat-integration boundary, map/route graph, multimodal warning event, measured arrival-versus-safety budget, and overstay failure trace.
- **Lock condition:** The fastest supported approach leaves a positive response margin for the slowest supported control mode, one near-boundary overstay fails legibly, and the threat cannot occupy the required puzzle forever.
- **Still mutable:** Threat and action values within the measured envelope, cue presentation, and declared timing assistance that preserves the decision.
- **Reopen trigger and fallout:** Moving the puzzle, warning boundary, recovery space, or threat route—or changing speed, warning lead, camera release, cover entry, or assistance outside the envelope—invalidates margins, failure fairness, return-opportunity proof, and playthroughs.

### 4. Completion Consequence Lock

- **Question resolved:** How final puzzle state becomes one idempotent solved transition, which world systems consume it, what survives save/load or reconnect, and what action proves the consequence is usable?
- **Locked artifact:** The solved transaction, completion version, subscriber matrix, duplicate rule, reconstruction behavior, and follow-through success boundary.
- **Lock condition:** Final validation publishes once, all subscribers agree, reload cannot duplicate effects or rewards, and the player can use the changed route or device.
- **Still mutable:** Completion effects, sound, camera, and copy that do not alter authority or the world consequence.
- **Reopen trigger and fallout:** Changing final validation, subscriber set, completion version, consequence, persistence, or success boundary reopens this lock and invalidates integration, save/load, reconnect, duplicate-event, accessibility, and end-to-end success evidence.

## Recover existing puzzle and threat truth

This recovery work supplies evidence for the Puzzle State Lock and Threat Window Lock. First locate who owns puzzle state, who owns the threat, and how the current interaction captures player control. An animated dial may not own its selected value. A threat model visible in the scene may not be the authoritative agent. A full-screen UI may currently pause the game despite the desired brief.

Record:

```markdown
## Verified project facts
- Playable entry and map: <path and observed behavior>
- Puzzle state and interaction: <path and observed behavior>
- Threat/hazard state and route: <path and observed behavior>
- Current camera, input, save, and restart: <path and observed behavior>

## Gaps
- <required responsibility not found>

## Proposed additions
- <state, action, cue, route, proxy, or integration>
- Reason: <decision or failure it makes possible>
```

Keep facts, proposals, observations, and judgments separate. “The source has a `solved` flag” does not prove the door opens. “The warning gives enough time” is a judgment that needs measured approach and disengage evidence.

## Model the puzzle independently from its interface

Create the schema and transitions required by the Puzzle State Lock. Represent the puzzle as authoritative data whose legal transitions can be tested without animation or UI. The exact schema varies, but it should answer:

```text
current configuration
committed milestones
active uncommitted action
action initiator or lease, if relevant
solved state
completion event/version
world consequence state
```

For each player action, define preconditions, proposed change, duration if any, interruption behavior, commit point, and feedback. A dial rotation can preview intermediate angles but commit only at stable notches. A placed piece may commit immediately. A memorized pattern may not change world state until submitted.

Do not let animation callbacks be the sole owner of logic. Presentation reflects accepted transitions and can be canceled or reconciled. Do not let closing the UI silently solve, reset, or advance a step unless that behavior is an explicit action.

## Divide progress into declared persistence tiers

Implement the lifecycle table fixed by the Interruption Policy Lock. Interruption is only understandable when the player can predict what survives. Classify state rather than applying one vague reset:

- **committed state:** stable progress that persists through ordinary disengagement and threat evasion;
- **working state:** an in-progress manipulation that may revert, pause, or commit under a named boundary;
- **ephemeral presentation:** hover, camera, highlighted options, held input, and animation that clears on exit;
- **attempt state:** progress intentionally cleared only by full failure or restart, if the contract requires it.

For every transition, choose one policy:

- **revert:** return working state to its last committed value;
- **pause:** preserve working progress and resume;
- **checkpoint:** preserve completed internal stages but revert the current stage;
- **commit:** accept the action immediately before disengagement only if its preconditions and commit boundary were reached.

Do not select a policy merely to lengthen the encounter. Repeating solved reasoning after every patrol creates labor, not tension. Reverting a physical wheel to a stable notch may be legible; erasing a correctly installed component without cause may not be.

Save/load is not interchangeable with walking away and returning in the same scene. When the project supports saving, serialize authoritative configuration, committed milestones, the last stable value for every working action, solve/completion version, and the world consequence already published. Do not serialize camera capture, held input, temporary highlights, warning audio, active threat callbacks, or an interaction lease as if they were durable puzzle progress.

On load, restore authoritative puzzle and threat state first, rebuild presentation from it, then return input. A working action follows its declared policy: it resumes from an explicitly supported checkpoint or reverts to the last stable committed value. It must not resume halfway through an animation merely because a transform was serialized. Re-publishing a solved consequence must be idempotent so a bridge, reward, or route cannot complete twice.

## Keep puzzle actions bounded and cancelable

Use action boundaries from the Puzzle State Lock and cancellation results from the Interruption Policy Lock. A bounded action has a start, a period of control, a commit or cancellation boundary, and a known maximum time. Long sequences should be divided into milestones so the player can assess risk between them.

On disengagement:

1. stop accepting puzzle-specific input;
2. resolve the active action under its declared policy;
3. restore locomotion, camera, and other player capabilities within the measured disengage time;
4. cancel or reconcile pending animation, audio, haptic, and UI callbacks;
5. leave the committed puzzle state readable on return.

Never trap the player in a long interaction while the threat can attack unless that irreversible commitment is explicitly warned and central to the design. Avoid “fake exit” inputs that close a panel visually while movement remains disabled.

If the puzzle uses a close camera, retain enough threat warning through peripheral world cues, interface indicators, subtitles, controller feedback, or a quick-look action. Do not require players to monitor information the interaction has physically hidden without an alternative.

## Assign task ownership and handoff explicitly

A puzzle step is not ownerless because several actors can touch it. For every bounded action record:

```text
task ID → eligible operators → current owner or lease → last stable commit
→ knowledge required → physical object required → cancel/resume policy
→ handoff event → attribution → failure fallback
```

Separate who can operate from who understands the step and who holds its object. A helper, companion, or world machine may complete a subtask only when the player initiates or authorizes a declared handoff and receives readable confirmation. Do not let an ally silently solve the puzzle off-screen because danger arrived.

Preserve task, operator, start state, commit boundary, last-known location, communication, completion or failure, and result recipient. If pathing or communication fails, follow a declared pause, revert, or reclaim rule. Use `/worldview-game-character-handoff-and-shared-evidence` when the main design problem spans playable viewpoints or long-lived physical and knowledge custody.

## Give committed subparts partial world effects

A milestone should do more than fill a progress bar. Name one bounded subscriber and visible proof for each committed subpart: reduce one hazard lane, unlock one recovery pocket, stop one threat capability, power one route light, expose one clue, or change one machine state.

| Completed subpart | Valid target | Effect | Invalid-target feedback | Threat/route consequence | Rollback rule |
| --- | --- | --- | --- | --- | --- |

The effect must be authoritative, idempotent, reconstruct after load, and remain too narrow to bypass the final solve. If one coupling stops a sweep arm, show that arm stop while other threat behavior remains.

## Integrate a real threat at a narrow boundary

Use the integration events fixed by the Threat Window Lock without moving threat authority into the puzzle. The threat system owns movement, perception, attack, and recovery. The puzzle owns puzzle state and interaction. Connect them through declared observations and events:

- the puzzle may query whether interaction is currently legal;
- threat cues may cause the player to choose disengagement;
- contact, damage, forced movement, or loss of control may interrupt an active action;
- puzzle noise or light may publish a world event the threat can perceive if the project already supports it;
- solving may change a route or threat condition only when the world contract says so.

Do not duplicate threat logic inside the puzzle. Do not teleport the threat based solely on puzzle progress to guarantee a scare. If solving a milestone deliberately changes patrol behavior, state that rule, cue the consequence, and verify it.

For a cyclical hazard rather than an agent, the same boundary applies: the hazard owns its schedule and effects; the puzzle responds to declared warnings and interruption events.

## Derive the interruption window from space and actions

Use the route and timing artifact fixed by the Threat Window Lock. Measure the relevant timing:

```text
threat arrival time
  = path time from warning boundary to dangerous contact
  + any declared windup

player disengage-and-reach-safety time
  = interaction release/cancel time
  + movement time to recovery space
  + door/cover interaction time

decision margin
  = threat arrival time - player disengage-and-reach-safety time
```

Recognition and input latency consume part of the margin. Test with actual acceleration, collision, camera transition, animation locks, network delay, and the slowest supported interaction configuration. A warning that looks early in a cinematic camera may be too late in play.

The player may choose to finish a nearly complete bounded action before leaving. That risk is meaningful only when action commit time and threat arrival remain stable enough to estimate. Do not secretly accelerate the threat because the player is close to solving.

Provide at least one reachable recovery space or evasion route under the supported warning condition. The threat must eventually leave, become redirectable, or create another valid return opportunity; permanent occupation of the console is a softlock.

## Preserve context when the player returns

Reconstruct the state fixed by the Interruption Policy Lock and never infer it from abandoned animation. After danger passes, the player should not need to reverse-engineer what survived. Restore world-space presentation from authoritative state and show:

- committed milestones;
- the reverted, paused, or checkpointed current action;
- the next legal action or available relationships;
- completion state and consequence when solved.

Use state-readable shapes, positions, lights, labels, sound, or tactile feedback appropriate to the world. A journal hint can assist, but the physical puzzle should not contradict it.

If the puzzle depends on memory, interruption may intentionally challenge recall. That must be the designed problem, not a side effect of clearing all visual context. Provide accessibility support for recording or revisiting necessary information without auto-solving the puzzle.

## Make completion a world transition

Implement the transaction and subscriber set fixed by the Completion Consequence Lock. One authoritative solved transition should:

```text
validate the final state
latch solved = true
end active interaction safely
publish one completion event/version
change the declared world dependency
```

Subscribers may open a route, restore a machine, disable a hazard, expose an item, or alter the threat. Presentation reads the same transition. Repeated input, delayed callbacks, and reconnects may not solve twice.

Require a concrete follow-through when appropriate. Crossing the opened route or using the activated machine proves the puzzle consequence is functional. A success overlay alone does not.

Completion reconciles every task lease, handed-off subtask, partial subscriber, and installed object. It either preserves valid partial effects in solved state or replaces them through an explicit versioned transition. It may not leave a helper active, replay a subtask reward, or restore a capability that a committed milestone removed.

## Work with the current Harness instead of assuming tools

Choose tools only after the Puzzle State Lock, Interruption Policy Lock, Threat Window Lock, and Completion Consequence Lock artifacts exist; Harness limitations may withhold a verification claim but cannot silently rewrite the design. This Skill bundles no engine, browser, asset generator, AI service, backend, or deployment account. Inspect what the current Harness and project expose.

- Prefer local engine tooling, code, tests, and licensed assets.
- Browser automation can verify a web implementation but not behavior in another engine.
- Images, audio, video, and 3D generation are optional. State gaps before any paid call and use labeled proxies when adequate.
- APIs and MCP services are available only when configured in the current environment.
- A generated puzzle animation or horror video is not a playable interrupted encounter.

Record which runtime, input, viewports, clients, and tools were actually used.

## Preserve success, failure, recovery, and restart

Evaluate the encounter against the Puzzle State Lock, Interruption Policy Lock, Threat Window Lock, and Completion Consequence Lock. A complete encounter has a readable initial puzzle, at least two bounded actions or milestones, a real warning, immediate disengagement, a declared persistence result, a reachable recovery path, a repeat opportunity, one authoritative solve, a usable consequence, a fair failure, and restart.

Failure should arise from a readable choice: continuing a long action after the warning, choosing an unsafe recovery route, returning before the threat clears, or making an incorrect puzzle state when the puzzle supports such failure. An unavoidable attack during a locked camera is not evidence of tension.

Restart clears puzzle configuration, milestones according to initial state, active action, ownership/lease, pending commits, camera and input capture, threat-puzzle integration events, warning cues, completion event/version, world consequence, success, and failure. Cancel delayed callbacks before reconstructing initial presentation.

Test restart from mid-action, during disengagement, during threat contact, at a milestone, during final completion effects, after the route opens, and after failure.

## Preserve the decision across accessibility modes

Express the Puzzle State Lock and Threat Window Lock through supported modalities without changing solution information or warning time. Essential puzzle state and threat warning must not rely on one modality. Use compatible combinations of visual shape, contrast, captions, spatial indicators, audio, haptics, and world motion. Do not encode a sequence only in color or pitch.

Support remappable puzzle navigation, confirm, cancel, and quick-exit actions. Avoid rapid repeated input without alternatives. Provide scalable and reflowing UI if any overlay is used. Reduced motion may shorten or replace camera pushes, shake, flicker, and animated transitions without changing authoritative action or threat timers.

Timing accommodations may lengthen warning lead, shorten bounded actions, pause working progress, or reduce threat speed according to project policy. Record which rule changes, then verify that interruption and failure remain coherent. A “pause while reading” option is a legitimate mode when declared; do not pretend it is the same timing contract as the unpaused encounter.

## Define multiplayer authority when relevant

Apply the ownership, cancel/commit, and completion versions from the Puzzle State Lock, Interruption Policy Lock, and Completion Consequence Lock. Skip networking for a single-player project. In multiplayer, the authoritative host or server owns puzzle state, active action, milestone commits, solved version, threat-caused interruptions, and world consequence.

Define whether one player holds an interaction lease, whether several players can manipulate independent controls, or whether actions queue. Clients submit proposed actions with puzzle version and stable control ID. Authority rechecks reach, legal state, lease, and threat interruption before commit.

Two clients must not commit contradictory dial positions or publish completion twice. A disconnect releases or resolves its working action under the same interruption policy. Late join reconstructs committed state and current active action without receiving hidden solution data beyond normal presentation.

Test simultaneous interaction, remote threat interruption, latency during cancel and commit, disconnect mid-action, late join at each milestone, completion race, and restart. Network delay must not leave a player visually trapped at the console after authority has interrupted them.

## Verify every interruption boundary

Use the Puzzle State Lock, Interruption Policy Lock, Threat Window Lock, and Completion Consequence Lock artifacts to build the matrix, and mark dependent results stale whenever a lock reopens. Create an interruption matrix whose rows are every meaningful puzzle state and whose columns are interruption events. Run and record:

1. Verify initial presentation matches authoritative initial state.
2. Start and cancel every bounded action before its commit; confirm revert, pause, checkpoint, or commit exactly as declared.
3. Interrupt every action through voluntary exit, threat warning response, actual contact/forced movement, damage where applicable, and network/disconnect events where relevant.
4. Confirm committed milestones persist through ordinary disengagement and only clear under declared failure or restart.
5. Return after each interruption and confirm presentation reconstructs state and next actions correctly.
6. Measure warning, disengage, movement, cover interaction, and threat arrival at the fastest supported approach and slowest supported control configuration.
7. Choose to overstay and reach one fair failure with all promised cues present.
8. Solve the puzzle, confirm one completion event, and use the changed world consequence.
9. Repeat final input and delayed callbacks; completion and rewards remain idempotent.
10. Confirm the threat eventually permits another attempt and cannot permanently occupy required space.
11. Save/load at initial, working, committed, interrupted, solved, and world-consequence states; verify declared reconstruction and no duplicated completion.
12. Restart from every action, milestone, interruption, completion, route, success, and failure state.
13. Test supported input, viewport, non-audio warning, color-independent puzzle state, reduced motion, timing modes, and network paths.
14. Transfer each handoff-capable task; test success, delay, interruption, failure, disconnect, pathing fallback, and player reclamation without duplicate commits.
15. Verify every committed subpart changes exactly its compatible subscriber, rejects invalid targets legibly, and reconstructs after save/load and final completion.

Save state/event traces beside reproducible playthrough steps. A screenshot proves the device rendered, not that interruption preserved the correct state.

## Deliver and hand off

Deliver the current Puzzle State Lock, Interruption Policy Lock, Threat Window Lock, and Completion Consequence Lock artifacts and identify any reopened or unverified layer. Use the project’s documentation location. If none exists, save:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

The handoff answers:

- Where is the encounter launched and how is the puzzle entered and exited?
- What is the puzzle’s authoritative state and what are its bounded actions?
- What persists, pauses, checkpoints, or reverts under each interruption?
- What warns of the threat, where can the player recover, and what timing was measured?
- How does the player re-read context on return?
- What concrete world consequence proves completion?
- Which interruption, failure, restart, accessibility, and network cases were actually run?
- Which scene-unload and save/load states were reconstructed, and which working-state policy was applied?
- What was reused, what remains proxy content, and what remains untested?

Do not claim final puzzle difficulty, horror effectiveness, production readiness, broad accessibility, or engine/platform support beyond direct evidence.
