# Original example — The Rotating Archive

This fictional example was created for this repository. It is not a copied level, character, or scene, and it is not evidence that an implementation already exists. It demonstrates the decisions the Skill should make visible.

## Invocation

```text
/worldview-game-observation-gated-stalker

Use the existing circular night archive and its rotating shelves. The brass
attendant must remain still while the active camera can see a meaningful body
sample, advance only after solid occlusion, and give the player just enough time
to work the lens drawer before looking back. Include one canceled attack and one
fair failure, then prove restart clears every observation and contact state.
```

## Brief

The player enters a circular night archive to recover a glass index lens. A tall brass attendant stands beneath the central lantern. It cannot change position while the player's active camera sees any of three meaningful body samples. When fully hidden by one of the archive's broad rotating shelves, it advances along the ring. The lens sits inside a drawer that takes 1.4 seconds of uninterrupted, forward-facing interaction to open. The exit is behind the player's entry point.

The intended emotion comes from choosing when to look at the drawer, not from a surprise teleport.

## Facts available in the fictional project

- The existing first-person controller uses a fixed simulation step and interpolated rendering.
- Four curved shelves are solid to collision, navigation, and sight rays.
- Shelf rotation already updates those representations together.
- The drawer interaction and exit trigger already validate distance and line of sight.
- The brass attendant has separate held and walking poses but no controller.
- The project is single-player and supports keyboard/mouse plus controller.

These are example project facts. They are not universal recommendations.

## Layer lock record

These rows are a filled design proposal, not runtime evidence. Each named evidence path must be produced before its row can be reported as verified.

| Lock | Concrete locked content | Lock condition and evidence path | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Observer and occlusion lock | Active first-person camera; head, upper-torso, and pelvis samples; one clear in-frustum first-hit sample observes; four curved shelves block all three rays | Close after sample/first-hit traces at `gameplay/rotating-archive/verification.md#obs-01-to-03` | Frustum margin within the tested edge range | A second camera or a shelf material that no longer blocks rays invalidates observation, state, route, and edge traces |
| Permission-order lock | Fixed step resolves camera, observation, permission, navigation, then reach; states are `frozen_observed`, `release_grace`, `pursuing_unobserved`, `attack_windup`, `caught` | Close after displacement-source audit and `#obs-04-to-05` traces | Release grace, travel speed, and windup within tested ranges | Adding root motion or moving damage before observation invalidates movement, contact, restart, and timing evidence |
| Attention-route lock | Entry view -> rotating shelf occlusion -> lens drawer -> two shelf-gap reacquisition lines -> entry-side exit | Close after collision/navigation/sight agreement and route traces at `#obs-06-to-07` | Non-blocking dressing and feedback | Moving the drawer, either gap, a shelf, or the exit invalidates route and timing traces |
| Contact-timing lock | At drawer activation: 3.6 m path distance, 2.0 m/s travel, 1.1 m reach, 0.14 s release grace, 0.45 s windup; earliest windup is `0.14 + (3.6 - 1.1) / 2.0 = 1.39 s`, earliest uncanceled hit is `1.84 s` | Close only after just-before/after traces at `#obs-05-to-07`; values remain proposals here | Named timing assist within its separately verified range | A distance, drawer duration, speed, reach, or clock change invalidates the 1.39/1.84-second boundaries and both outcome traces |
| Authority-and-evidence lock | Single-player fixed-step authority owns camera test, movement, windup, objective, and outcome; multiplayer rows OBS-11–14 are `not applicable` | Close after two render-schedule traces, restart matrix, and settings evidence at `#obs-08-to-10` | Trace/capture format | Adding network play or another observing camera invalidates authority, timing, accessibility, and restart evidence |

If the lens drawer moves beyond the second shelf gap, reopen the **Attention-route lock** and **Contact-timing lock**; discard the 1.39-second windup boundary, the 1.84-second hit boundary, and both successful and failing route traces.

## Proposed contract

Observation uses head, upper-torso, and pelvis samples. One sample inside the camera frustum with a clear first-hit ray is enough to restrain the attendant. The entry into `frozen_observed` is immediate. Release requires 0.14 seconds of continuous observation failure so a shelf edge cannot create single-step advances.

At drawer activation, the attendant is 3.6 meters away along the navigable ring. It moves at a proposed 2.0 meters per second while released. At 1.1 meters of valid path distance it begins a 0.45-second metallic reach. Reacquisition before the reach resolves cancels it and returns to the held pose.

Those values are starting proposals. The route must be run before any is labeled balanced.

## Spatial sequence

1. The entry door frames the attendant in full view, teaching that its footsteps stop when seen.
2. The player turns toward the lens drawer. The first shelf fully occludes all three samples, opening release after grace.
3. A brass reflection crosses a marked tile beside the drawer. This is presentation evidence of proximity, not observation.
4. The player can interrupt the drawer, turn, and reacquire the attendant through the shelf opening.
5. Opening the drawer transfers one `index_lens` objective ID exactly once.
6. The return route crosses two shelf gaps. Looking through either gap can freeze the attendant; staring at the wooden shelf cannot.
7. The exit accepts the lens only within range and ends the encounter before disabling the controller.

## Diagnostic outcomes

### Successful outcome

The player opens the drawer in two attempts, checking the attendant between them, then alternates route navigation with two deliberate backward views. The attendant remains outside attack reach until the lens is accepted at the exit.

### Failure: treating direction as sight

The player faces the attendant's direction while an entire shelf blocks it and continues the drawer interaction. The attendant advances and begins its reach. This teaches that solid occlusion releases it; the camera's compass direction is not enough.

### Failure: spending too long on the objective

The player holds the drawer for its full 1.4 seconds and keeps facing its completion feedback instead of checking again. The reach begins at approximately 1.39 seconds and resolves at approximately 1.84 seconds. This teaches that objective attention has a measurable cost while preserving a just-before boundary for a successful glance.

### Recovery at the boundary

The player turns during the reach windup. A torso sample becomes visible with a clear ray, the reach is canceled, locomotion remains frozen, and no delayed damage event fires.

## Accessibility behavior

- Frozen and released states use pose plus distinct, non-spatially-essential mechanical sounds.
- Camera sensitivity, inversion, and field of view use the project's existing settings.
- Reduced-motion mode removes the lens shimmer and reach camera impulse without changing the observation predicate.
- A timing assist may raise release grace and reach windup through named tunables; the verification report identifies it as a timing change.
- Controller interaction uses toggle or hold according to the project's global interaction setting.

## Evidence the implementation would need

- a trace of sample/frustum/first-hit results and authorized state per fixed step;
- displacement measurements while fully seen, edge-visible, and fully occluded;
- a recorded cancellation immediately before reach resolution;
- legal and rejected drawer/exit interactions;
- deterministic successful and failing input traces under two render schedules;
- restart from release grace, travel, reach, caught, and success;
- one screenshot showing the actual route, labeled only as scene evidence.

Until those checks run in the named environment, **The Rotating Archive** remains an implementation example rather than a verified build.
