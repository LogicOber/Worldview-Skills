# Why observation-gated pursuit works

## The player controls danger with a scarce resource

The resource is attention. Watching the stalker protects the player, but the same view cannot simultaneously inspect the route behind them, align a key, read a dial, or notice a second change in the room. The mechanic creates pressure without requiring the enemy to move quickly because safety has an opportunity cost.

That cost must be real. If the player can walk backward through an empty corridor with perfect information, watching becomes a dominant solution rather than a decision. If the route demands blind turning but supplies no landmarks or recovery room, looking away becomes a guess. Good spatial design sits between those failures: the player can plan, take a measured visual risk, check the result, and correct.

## Observation is a causal rule, not a camera trick

The game simulation knows where the stalker is at all times. The character is not entitled to move merely because the renderer could hide that movement. It moves because a declared observation test failed and permission remained open through the relevant simulation step.

This distinction explains several rules:

- Camera direction is insufficient because a wall can block sight.
- A shadow or sound is insufficient because it is evidence of the stalker, not the declared sight of its body.
- Reacquisition must revoke unresolved movement and harm because the player spent attention to regain control.
- Observation must be evaluated before movement and contact because reversing that order creates visible rule violations.

The rule feels supernatural in fiction but should be unusually literal in implementation. The more surprising the premise, the more dependable its boundaries need to be.

## Occlusion turns level geometry into a verb

A column is not merely cover. It is a switch that releases the threat. A doorway can be both the route to safety and a period of forced blindness. The map therefore participates in the state machine.

Thin props and noisy foliage rarely make good first occluders because they produce ambiguous edge cases. Broad surfaces teach the rule more clearly. Once the player understands the relationship, later spaces can introduce moving doors, layered sightlines, partial visibility, or multiple observers as deliberate variations.

Renderer, collision, navigation, and sight testing must agree about those surfaces. When a visible wall does not block observation, the player is reasoning about a different world from the simulation.

## Grace and hysteresis protect intention

The edge of a viewport is numerically unstable. Tiny camera changes can alternate a sample point between inside and outside, and a narrow pole can flicker between blocking and revealing a ray. Immediate release on every failed sample would convert hand tremor and floating-point noise into enemy motion.

A short continuous-failure requirement protects the player's intention. It is not free reaction time added for generosity; it distinguishes a meaningful look away from an unstable boundary. Re-observation should usually freeze promptly because delay in that direction allows visible cheating.

The appropriate value depends on input, frame rate, field of view, stalker speed, and route geometry. It must be tuned in the actual project and exposed as data.

## A cancellable windup completes the contract

Without a windup, crossing the reach threshold while unobserved can create an instantaneous failure that no final glance can answer. With an indefinitely cancellable threat, proximity has no cost. A brief, legible attack preparation supplies a final boundary: the player can still reclaim safety by observing before resolution, but cannot ignore accumulated distance forever.

The windup is only fair when collision and reach are real. It cannot begin through a wall, across an unreachable ledge, or from a transform obtained by teleporting into range.

## Communication should reveal state, not hidden math

The player does not need a debug label reading `release_grace = 0.083`. They need consistent signs:

- footsteps cease when observation takes hold;
- pose or silhouette changes between restrained and hunting states;
- proximity can be estimated from sound or landmarks while looking elsewhere;
- a contact windup is distinct from ordinary travel;
- objective and exit feedback make legal interactions clear.

Two-channel communication supports more players and makes the mechanic robust when one signal is obscured. It should not reveal information the rule intends to withhold—for example, a permanent outline through every wall would remove uncertainty about distance and route.

## Common counterexamples

### “The camera faces it, so it is observed”

This ignores occlusion. It freezes a stalker behind a wall and teaches the player that geometry has no causal meaning.

### “The renderer says it was visible last frame”

Renderer callbacks may be delayed, include shadow passes or other cameras, and disagree with the authoritative movement step. They can support presentation but should not silently own gameplay permission.

### “Pausing the animation freezes the enemy”

Navigation, root motion, physics, and attack timers may continue. Every displacement and harm path must obey the same permission.

### “Random teleports keep it scary”

Unbounded relocation breaks route reasoning and makes success depend on hidden selection rather than attention. A constrained, telegraphed relocation can be a different mechanic, but it should not be smuggled into this one as a repair.

### “A screenshot proves the encounter works”

It proves only that a frame rendered. The claim requires temporal evidence: controlled observation changes, measured displacement, contact cancellation, objective completion, and clean restart.

## What a successful implementation lets the player say

After a fair failure, the player should be able to explain it: “I kept working the lock too long,” “the column fully hid it,” or “I turned back after the windup finished.” After success, the explanation should also be causal: “I checked it before crossing the last mark, then used the door frame to time the second look.”

That ability to explain the outcome is stronger evidence of the mechanic than surprise alone.
