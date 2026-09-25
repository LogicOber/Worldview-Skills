---
name: worldview-game-observation-gated-stalker
description: "Use when a game needs a playable stalker that advances only while genuinely unobserved, with camera-frustum and occlusion tests, readable frozen and released states, attention-based navigation, valid contact, a complete objective, and verified restart behavior. Produces an implementation in an available game project plus a mechanic contract, tunables, and evidence. Do not use for ordinary pursuit, a cinematic scare, a timer-only freeze, or a universal perception framework."
---

# Worldview Game — Observation-Gated Stalker

## Call this Skill

The public invocation is:

```text
/worldview-game-observation-gated-stalker
```

Treat the remaining text as the world and project brief.

## Route the companion files

- Fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same decisions.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when checking fit, resolving an observation tradeoff, or tuning pressure. A narrow implementation task with a locked contract does not need it.
- Read [the-rotating-archive.md](examples/the-rotating-archive.md) only when a filled fictional example clarifies an unfamiliar field. Its values are not portable defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to distinguish supplied facts from repository decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the problem before selecting the rule

The frightening premise is simple: the threat moves when the player is not looking. The implementation problem is not simple. The renderer always knows the stalker's transform, a camera can point toward an object that is hidden behind a wall, and an enemy can cross into attack range between two frames. If those different facts are compressed into one Boolean, the player cannot form a trustworthy mental model.

The mechanic works only when three layers agree:

1. **Observation:** the game determines whether a meaningful part of the stalker is genuinely visible under declared rules.
2. **Permission:** movement and unresolved harm are permitted only after observation has failed for the required interval.
3. **Communication:** pose, sound, spacing, and level layout let the player infer what permission the stalker currently has.

Keep those layers separate in code and in the mechanic contract. A bug in observation must not be disguised with animation, and a strong animation does not excuse a movement rule that the player cannot predict.

## Use and routing boundaries

Use this Skill when observation itself is the primary player verb, even if the verb has no button. The player repeatedly chooses between restraining the threat and looking at the route, objective, inventory, or second danger.

Do not use it when:

- the intended enemy should chase continuously once alerted;
- “freeze” is a periodic status effect unrelated to the camera;
- the deliverable is only concept art, prose, a trailer, or a rendered scare;
- the game needs a general visibility library without a complete encounter;
- every enemy and every camera must be supported before one route is proved;
- the player's live view is unavailable, as in a purely server-side simulation with no declared observing camera.

If the request combines this rule with sound distraction, safe rooms, or a roaming director, keep the observation gate independently testable. Add the other system only after the smallest complete observation encounter passes.

## What the user can give

Accept a complete repository, a single scene, a grey-box, a map image, or a verbal brief. Useful inputs include:

- engine, version, launch command, and authorized project path;
- the player controller, camera stack, view modes, and input families;
- collision layers, navigation representation, doors, lifts, and moving occluders;
- an existing stalker model, rig, controller, or audio set;
- the intended objective and exit;
- supported viewport ranges, field-of-view settings, camera effects, and multiplayer mode;
- fiction that changes observation, such as mirrors, magical sight, remote cameras, or darkness.

Do not force the user to answer engine-level questions that inspection can settle. Ask one grouped question only when an unresolved creative choice would yield incompatible mechanics—for example, whether a security monitor counts as observation or whether two players share the restraining effect.

## What the user receives

Complete as much of the following as the available project and Harness permit:

1. A reuse inventory identifying inspected camera, map, enemy, input, collision, navigation, animation, and audio assets.
2. A mechanic contract that distinguishes verified project facts, requested facts, implementation proposals, and unresolved judgments.
3. Tunable data for observation sampling, enter and exit thresholds, grace, movement, stopping distance, attack windup, reach, and objective timing.
4. A working encounter in the project's actual runtime when that runtime is available.
5. A reachable objective, a real success, at least two diagnostic failures, and a full restart.
6. A runnable entry point, controls, one screenshot, and behavioral evidence such as deterministic traces, logs, or recorded test steps.
7. A handoff that names proxies, untested environments, accessibility behavior, and multiplayer authority rather than implying them.

A document is not a playable implementation. A screenshot is not evidence that observation changes movement. State the achieved level honestly.

## Lock the observation problem before implementation

Lock these layers in order. A later lock may tune only the fields listed as mutable; it cannot quietly redefine an earlier artifact. When implementation contradicts a lock, reopen the earliest affected row and invalidate every dependent implementation, trace, calculation, and claim. Ask one grouped question only when inspection cannot resolve two incompatible creative interpretations.

| Lock | Question resolved | Locked artifact | Locked when | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Observer and occlusion lock** | Which active views, body samples, and world surfaces make the stalker genuinely observed? | Observation predicate, camera list, sample map, and occluder table | Camera ownership and first-hit geometry are verified or explicitly marked proposals, and mirrors, monitors, transparency, and partial visibility have decisions | Frustum margin and sample threshold inside the recorded semantic rule | A new camera mode, sample body, or blocker category reopens this lock; discard permission tests, route timing, and multiplayer camera evidence |
| **Permission-order lock** | What exactly may move or harm, and on which authoritative step does observation revoke it? | State graph, simulation order, and displacement/harm ownership table | Every movement source and unresolved attack maps to one permission and update phase | Grace, speeds, and windup values without changing transition meaning | Root motion, physics, damage, or update ownership changes; invalidate state code, contact traces, restart tests, and dependent timing |
| **Attention-route lock** | Where must the player look away, what occludes the stalker, and how can the player reacquire it? | Landmark graph containing start, attention task, broad occluders, reacquisition lines, objective, and exit | Collision, navigation, sight blockers, reachability, and the required attention trade agree | Presentation, landmarks, and optional route dressing that preserve geometry | Moving an objective, occluder, exit, or mandatory route reopens it; discard pressure calculations and successful/failing route traces |
| **Contact-timing lock** | How much unobserved time produces travel, windup, cancellation, success, and failure? | Timing budget and boundary table derived from the locked route and permission order | Measured path distances and authoritative clocks yield both a viable check interval and a real failure | Named timing assists and tunables within verified ranges | Any route distance, movement model, reach, or interaction duration leaves its tested range; invalidate balance language and all boundary evidence |
| **Authority-and-evidence lock** | Who owns observation and outcomes, and what proof is required for each claim? | Single-player or multiplayer authority rule plus verification matrix and evidence paths | Camera aggregation, host ownership, restart scope, supported settings, and conditional network cases are declared | Log format, capture tooling, and presentation-only evidence | Network topology, observer aggregation, supported input/view, or save boundary changes; rerun affected authority, accessibility, determinism, and restart checks |

## Recover the project and separate kinds of truth

This recovery work supplies the facts needed to close the **Observer and occlusion lock** and identifies anything that must remain a proposal.

Inspect only paths the user placed in scope. Find local instruction files first, then the normal run and test commands, scene ownership, input bindings, camera update order, physics step, collision layers, and existing save or restart flow. Do not scan unrelated personal directories or replace a working project with a fresh prototype.

Before editing, write an intake note with these headings:

```markdown
## Verified project facts
- <path, behavior, and how it was observed>

## User-declared requirements
- <fact that the brief makes binding>

## Proposed implementation
- <new rule, asset, or value not yet proven>

## Open judgments
- <choice whose consequence must be made visible>
```

“The current camera updates after physics” is a verified fact only if the project or runtime establishes it. “The stalker should have a 0.12-second release delay” is a proposal until measured. “Partial visibility should count” is a design judgment, not a technical inevitability. This separation prevents convenient assumptions from becoming invisible rules.

If no project exists, create the smallest runnable proof in an available local runtime: a route, two true occluders, an objective, an exit, a player camera, and one stalker. Proxy materials must be labeled as proxies. Do not generate decorative assets before the mechanic works.

## Define observation as a contract

Implement this section only from the **Observer and occlusion lock**. Do not add a convenient renderer callback or collision exception that is absent from its predicate and tables.

Write the observation predicate in plain language before code. A useful default is:

```text
observed =
  observer camera is active
  AND at least the required number of stalker sample points are inside the
      camera frustum with the declared margin
  AND an allowed sight ray from the camera to one of those points reaches the
      stalker before it reaches an observation-blocking surface
  AND the result has satisfied the enter threshold
```

This is a proposal, not a universal formula. Adapt it to the project, but record every change.

### Choose meaningful sample points

A single center point can sit behind a railing while half the body is visible. A renderer-bounds corner can remain “visible” after the meaningful silhouette has left the screen. Use stable body-relative points such as head, upper torso, pelvis, and shoulder extremities, or a project-specific visible volume. Do not sample weapon tips, particle effects, shadows, or invisible collision padding unless the fiction explicitly treats them as the entity.

Declare how many points establish observation. One unobstructed point is readable and conservative. Requiring several points reduces edge catches but can allow visible partial movement. Whichever judgment is chosen must appear in both tunables and tests.

### Use the active view, not an assumed camera

Recover the camera that actually produces player decisions. Account for first- or third-person view, camera lag, head bob, aim offsets, split screen, spectator cameras, portals, mirrors, and remote monitors only when the project contains them. A minimap icon is not visual observation unless the design declares it to be.

Field of view, aspect ratio, and viewport safe area affect the frustum. Test the narrowest and widest supported configurations. Do not hard-code a screen resolution as a visibility rule.

### Treat occlusion as world geometry

Ray tests must use the project's declared observation blockers. A solid column should block; transparent glass, foliage, grates, smoke, and one-way surfaces require explicit judgments. Renderer visibility flags and collision layers often disagree, so inventory both.

The ray result must identify what it hit first. “There was a hit” is not enough: a ray that hits the stalker proves a clear line, while one that hits a wall first proves occlusion. Ignore the observer's own collision and irrelevant trigger volumes deliberately, not by disabling broad categories without inspection.

Moving doors and platforms must update the same spatial representation used by sight. A door that looks closed but has already stopped blocking the ray creates an unreadable release.

### Stabilize boundary changes without hiding them

At screen edges or thin occluders, numerical jitter can alternate observed and unobserved every step. Use separate thresholds or a short release grace:

```text
observation enter: immediate or very short confirmation
observation exit: require continuous failure for release_grace
```

Do not add symmetric delay by habit. Delaying the freeze after the stalker becomes visible can permit visible motion and contact. If performance requires sampling less often, movement and attack permission must remain conservative between samples.

## Order the simulation so the rule cannot cheat

Use the **Permission-order lock** as the ownership record for every step and displacement source.

Observation must be resolved before stalker movement and contact on the same authoritative simulation step. A robust order is:

1. Consume player and camera input for the step.
2. Resolve the authoritative camera pose.
3. Evaluate frustum and occlusion samples.
4. Update observation hysteresis and state transitions.
5. Grant or revoke movement and attack permission.
6. Move the stalker through navigation and collision.
7. Resolve attack windup and contact only if permission remains valid.
8. Emit presentation events and render interpolation.

If observation happens after movement, the stalker can advance or hit during the very step in which the player saw it. If animation drives collision independently, freezing the navigation agent may still let root motion drift forward. Audit every source of displacement: navigation, physics, root motion, scripted correction, parenting, network reconciliation, and teleport recovery.

Never repair penetration by secretly teleporting the stalker closer. If a stuck recovery is required, constrain it to an unobserved, unreachable region, log it, and make it a declared exception. Prefer correcting navigation and map geometry.

## Own permission, not a second threat controller

This Skill is the single writer for the observation predicate and the movement-and-harm permission derived from it. Its public handoff is:

```text
observation_permission_changed(
  threat_id,
  observed,
  movement_permitted,
  harm_permitted,
  authoritative_step,
  predicate_version
)
```

When `/worldview-game-roaming-stalker-pressure` is present, that Skill remains the single writer for durable identity, knowledge, route, movement, search, and attack intent/commitment. The project combat or pursuit contract owns reach, hit, damage, capture, and contact result. When `/worldview-game-lure-hide-escape` provides the bounded encounter, it owns cover, the escape boundary, lifecycle, and escape-success/reset aggregation. This Skill must never pick a search target, remember sound or sight evidence, select a route, translate the stalker, or resolve damage independently; it only grants or revokes permission before the designated behavior owner acts.

The update transaction is observation samples, predicate and hysteresis, permission event, behavior-owner movement decision, then contact resolution under the same permission version. The behavior owner must reject a stale permission version. Save the predicate configuration and current hysteresis state with the shared `threat_id`; the behavior owner saves the threat. During reset or load, reconstruct the threat first without movement, rebuild active cameras and occluders, evaluate observation, publish permission, and only then resume behavior.

If there is no other behavior owner, a proof scene may include one minimal local executor solely to demonstrate the predicate. Label it as fallback, keep it free of durable knowledge or world routing, and ensure only one package supplies such a fallback. Adding a roaming or encounter owner removes this executor rather than layering another controller on top.

## Build a state model the player can read

The state family is the readable form of the **Permission-order lock**; feedback may elaborate it but cannot grant movement or harm.

Use an explicit state family or map equivalent project states to these responsibilities:

```text
dormant
  -> frozen_observed, after activation while visible
  -> release_grace, when observation fails

release_grace
  -> frozen_observed, on reacquisition
  -> pursuing_unobserved, when grace completes

pursuing_unobserved
  -> frozen_observed, on reacquisition
  -> attack_windup, in valid reach while still unobserved

attack_windup
  -> frozen_observed, on reacquisition before resolution
  -> caught, only if unobserved permission and reach remain valid
```

Add recover, disabled, success, or scripted transition states only when the encounter needs them. Do not overload the observed flag to mean “AI inactive,” “animation paused,” “not alerted,” and “cannot deal damage.” Those permissions have different causes and should be inspectable.

The frozen state needs immediate feedback: a halted footstep sequence, a held pose, a material or sound detail, or another world-consistent cue. The hunting state needs different feedback the player can perceive without staring at a debug UI. Avoid a loud global sting on every edge transition; hysteresis should prevent chatter, and presentation should communicate state rather than cover instability.

## Make looking away a real trade

Use the **Attention-route lock** for geometry and the **Contact-timing lock** for every claimed opportunity margin.

A flat empty hallway reduces the mechanic to alternating forward and backward input. Construct a route that requires attention elsewhere:

- a turn, door, narrow crossing, or objective interaction the player must face;
- at least one broad line where reacquisition is possible;
- occluders thick enough to create deliberate release, not pixel hunting;
- landmarks that let the player estimate distance while moving backward;
- an objective and exit that cannot be triggered through walls or from arbitrary range.

Measure the pressure interval:

```text
unobserved travel opportunity
  = navigation-or-interaction attention time
  + unavoidable full-occlusion time

stalker closing distance
  = unobserved travel opportunity * effective stalker speed

remaining safety margin
  = initial path distance - closing distance - valid attack reach
```

This calculation frames the first proposal; it does not prove playability. Acceleration, path bends, camera turn rate, controller sensitivity, door animation, and player error consume margin. Test the actual route at supported input settings.

Do not use arbitrary random advances to manufacture uncertainty. If uncertainty is desired, vary a telegraphed route choice, patrol origin, or recovery behavior inside declared bounds, then verify every permitted result remains fair.

## Define contact without frame traps

Contact follows the **Permission-order lock** and **Contact-timing lock** together. A later animation choice cannot move their resolution boundary.

Being close is not automatically a hit. Require:

- the stalker is in a state permitted to attack;
- the observation gate is continuously open;
- navigation or collision established valid reach without passing through a wall;
- a readable windup began;
- reacquisition before the resolution point cancels the unresolved attack;
- success or invulnerability has not already locked the outcome.

The windup exists so the player's final glance can matter. It must be long enough to perceive at the supported frame and input conditions, but not so long that proximity has no consequence. Store it as a tunable and test immediately before and after the cancellation boundary.

When the stalker is re-observed, freeze locomotion and unresolved harm. Decide explicitly whether a completed hit animation may finish cosmetically after the outcome; presentation must not apply a second hit.

## Complete success, failure, and restart

Use the **Attention-route lock**, **Permission-order lock**, **Contact-timing lock**, and **Authority-and-evidence lock** to define the complete slice and its reset inventory.

Build one bounded encounter before generalizing the controller. It needs:

- a reachable start that teaches the frozen response safely;
- an objective that forces at least one attention trade;
- a route whose occluders visibly affect observation;
- a success boundary beyond the final pressure decision;
- a failure for ignoring the stalker;
- a failure or correction for assuming a wall does not occlude;
- an immediate restart from every active state.

This Skill's restart clears observation samples and history, hysteresis and grace timers, predicate state, permission versions, and observation presentation. It then issues the declared reset handoff and waits for acknowledgements from the behavior, combat, objective, camera/input, audio, replication, and outcome owners; those owners clear navigation, velocity, attack resolution, objectives, doors, camera pose, input locks, audio loops, replicated state, and UI. Test restart during grace, pursuit, attack windup, caught, and success, and verify that no behavior resumes before a fresh permission event. Reconstructing the scene is acceptable only when it deterministically clears every owner and matches project conventions.

## Accessibility without erasing the decision

Accessibility changes must name which fields in the **Contact-timing lock** they tune and must preserve the semantic observation and permission locks unless explicitly documented as a rule-changing assist.

Preserve the attention trade while offering alternatives:

- expose camera sensitivity, inversion, field of view, and aim acceleration where supported;
- provide hold and toggle variants for sustained interaction that competes with camera control;
- communicate frozen and released states through at least two suitable channels, such as motion plus sound;
- provide reduced camera shake, flash, and abrupt audio settings;
- allow difficulty to adjust stalker speed, release grace, attack windup, or checkpoint distance as named values;
- avoid color-only visibility or state indicators;
- ensure keyboard, controller, and touch layouts can turn and move without impossible finger overlap.

An assist that permanently reveals or freezes the stalker may be valid, but label it as a rule-changing assist rather than pretending the original decision is unchanged. Verify completion with each supported assist that changes timing.

## Multiplayer authority when relevant

Use the **Authority-and-evidence lock**. Multiplayer support is withheld until its camera aggregation and authoritative ownership rows are filled and exercised.

Do not add networking to a single-player project. When multiplayer is already required, define:

- which cameras count as observers;
- whether any player, every player, or a designated player restrains the stalker;
- which host owns observation samples, grace, and permission; which behavior host owns movement and attack commitment; which combat, objective, and encounter owners resolve their respective contact, objective, and lifecycle results;
- how late camera poses and prediction are handled without visible cheating;
- what a joining or disconnected player contributes to observation.

The authoritative simulation owns the rule. Clients may predict presentation, but a local client must not decide damage. Replicate the reason for the state—observed, released, attacking—not only a transform, so clients can present consistent feedback. Test two clients looking from contradictory angles, one client behind an occluder, latency near the attack boundary, and restart after disconnect.

## Work within the available Harness and tools

The Harness constrains what evidence can close the **Authority-and-evidence lock**; tool availability never relaxes an earlier mechanic lock.

This Skill contains instructions and supporting documents, not a game engine, browser, asset generator, model provider, deployment service, or network backend. Inspect the current Harness before assuming a capability.

- Prefer the project's existing runtime, tests, assets, and local build tools.
- Browser automation verifies only a web build that it actually runs.
- Image, audio, video, and 3D generation are optional external capabilities; do not invoke them merely to decorate a mechanical proof.
- Use licensed existing assets or clearly labeled proxies when appearance is not blocking verification.
- A configured API or MCP service may be used only within the user's scope and its actual authorization.
- Never substitute a rendered video for requested interactive behavior.

If the runtime cannot launch, keep inspecting safe local evidence, provide exact commands attempted and errors observed, and deliver an implementation-ready contract. Do not claim behavioral verification.

## Verify causes, not just outcomes

Execute the matrix saved by the **Authority-and-evidence lock** against the **Observer and occlusion lock**, **Permission-order lock**, **Attention-route lock**, and **Contact-timing lock**, including every check invalidated by a reopened layer.

Run and record at least these checks:

1. With a clear line and required sample visibility, observation becomes true and all stalker displacement stops.
2. Camera direction alone does not count through a declared solid occluder.
3. Partial visibility follows the documented sample threshold at head, body, and screen edges.
4. Continuous observation failure shorter than release grace does not cause movement.
5. Failure longer than grace permits movement on the correct simulation step.
6. Reacquisition during travel stops every displacement source before contact.
7. Reacquisition during unresolved attack windup cancels harm.
8. Looking away long enough permits a real, reachable failure.
9. The objective and exit require legal range, line, state, and ownership.
10. Doors and moving occluders update visual, collision, navigation, and sight representations consistently.
11. Narrow and wide viewports, supported field-of-view extremes, and every supported input family preserve the rule.
12. Restart from every state clears all stateful evidence of the prior run.

For fixed-step logic, replay a deterministic input trace under at least two rendering schedules. The authoritative outcome must match. For multiplayer, add contradictory-camera and latency-boundary tests. Capture a screenshot for scene evidence, but pair it with logs, tests, or reproducible play steps that identify why the stalker did or did not move.

Classify results:

```text
verified     observed in the named environment with saved evidence
inferred     supported by code or configuration but not run
proposed     a design or value awaiting implementation or measurement
blocked      prevented by a named missing capability or failure
```

## Hand off without overstating readiness

Hand off the current **Observer and occlusion lock**, **Permission-order lock**, **Attention-route lock**, **Contact-timing lock**, and **Authority-and-evidence lock** artifacts. Save the contract and verification in the project's established location. If none exists, use:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

End with:

- the exact run command and scene or route;
- the first action and the feedback that proves activation;
- the observation definition and important tunables;
- the successful route and diagnostic failures verified;
- reused assets and all labeled proxies;
- supported inputs, accessibility settings, and network mode actually tested;
- remaining proposals, inferred behavior, blockers, and known edge cases.

Do not call the encounter balanced, production-ready, accessible, network-safe, or engine-portable unless the corresponding evidence exists.
