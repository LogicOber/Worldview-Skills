# Tidewheel Console

**Tidewheel Console** is an original fictional example authored for this Skill. It is not based on an external game, published puzzle, recognizable level, character, or third-party Skill.

## Invocation

```text
/worldview-game-threat-interrupted-puzzle

In the existing storm-drain gallery, make the tidewheel console a three-stage
world-space puzzle while the gallery stalker follows its established patrol.
Locked rings should persist, an unfinished rotation should revert to its last
stable notch, and the player must be able to leave immediately when the lane
beacon warns that the stalker is approaching. Solving opens the sluice bridge.
```

## Source boundary

The fictional brief declares a gallery, a three-stage tidewheel, a patrolling threat, a warning beacon, persistence for locked rings, reversion for unfinished rotation, and a sluice bridge. It does not establish actual project systems, dimensions, timings, controls, or assets. Those remain to be recovered or proposed.

## Layer lock record

These locks complete the fictional encounter contract. They do not claim that puzzle logic, threat navigation, timing, saving, or accessibility was run in an engine.

| Lock | Concrete locked content | Lock evidence / condition | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Puzzle State Lock | Proposed `TidewheelPuzzleAuthority` owns ring A/B/C committed notches, active ring and preview angle, locked milestones, `tidewheel_solved`, completion version, and bridge state. Legal marks are `CROWN`, `FORK`, `WAVE`, and `BAR`; a ring commits only at a stable notch. The sole solution is `A: WAVE`, `B: FORK`, `C: BAR`, which forms the continuous named channel from upper inlet to lower spillway. | The state schema and puzzle model below define legal transitions. Runtime lock requires transition tests independent of ring animation, rejection of every other final combination, and exact final-state validation. | Mark art, camera, animation, and rotation duration without changing transitions or the solution. | Changing a mark, ring count, stable notch, commit boundary, solution, or authority reopens this lock and invalidates interaction code, persistence tiers, save schema, UI, and every downstream trace. |
| Interruption Policy Lock | Locked ring notches persist through voluntary exit, threat exit, capture checkpoint, and supported save/load. An unconfirmed rotation reverts to its last committed notch. Ephemeral cursor/camera/input clears. Capture returns to gallery entry with committed notches; full restart restores all initial notches. Saving a working rotation stores the stable notch, and load restores state before control. | The persistence table, save paragraph, return display, interruption matrix, and load evidence below define every supported lifecycle. Runtime lock requires interruption and load at initial, working, committed, solved, and bridge-open states. | Transition presentation and release/reconstruction duration inside the tested envelope. | Changing capture persistence, working-state reversion, save point, restore order, disconnect policy, or full restart reopens this lock and invalidates state code, save fixtures, return context, retry, and interruption evidence. |
| Threat Window Lock | The gallery stalker crosses the far pump arch to start the descending-bracket warning. It follows its normal route to the console. Safety is the maintenance recess or return corridor. The required relation is `arch-to-contact > interaction release + movement + recess entry + recognition allowance`; an unfinished final-ring turn after warning is the nearby overstay failure. | The threat boundary and timing relation below fix the route and events. Runtime lock requires fastest approach, slowest supported controls, camera release, collision, and cover-entry traces. | Threat/action values and cue presentation only inside the measured margin; declared timing assistance. | Moving the arch, console, recess, corridor, or threat route—or changing speed, warning lead, camera release, or cover entry—reopens this lock and invalidates margins, fairness, overstay, and return-opportunity traces. |
| Completion Consequence Lock | Final validation latches `tidewheel_solved=true`, increments completion version once, releases interaction, lowers the sluice bridge, and updates bridge collision/navigation. Save/load or reconnect republishes the bridge state idempotently. Crossing the bridge destination boundary completes the encounter. | The completion section and evidence rows below define the subscribers and proof. Runtime lock requires repeated-confirm, interrupted-effect, load, reconnect, and actual crossing checks. | Water, sound, camera, and bridge animation that do not alter authority or route state. | Changing validation, completion version, bridge subscribers, saved solved state, or destination boundary reopens this lock and invalidates integration, save/load, duplicate completion, accessibility, and end-to-end success evidence. |

If the far pump arch warning boundary or the maintenance recess moves, reopen the Threat Window Lock; discard the measured decision margin, the warned overstay failure, and every successful disengage-and-return trace before continuing.

## Puzzle model

The console has three concentric rings. Each ring carries four named channel marks—`CROWN`, `FORK`, `WAVE`, and `BAR`—encoded by both silhouette and raised groove. Focus text and optional spoken labels expose the same names. A wall diagram shows the required named connection from the upper inlet to the lower spillway as shapes, large text, and an optional ordered spoken description. The player rotates one ring at a time and can lock it only at a stable notch; each notch produces a distinct indexed detent pulse as well as visible alignment.

```text
ring A committed notch
ring B committed notch
ring C committed notch
active ring and preview angle
locked milestone count
solved state
sluice bridge state
```

The only solved configuration is `A: WAVE`, `B: FORK`, and `C: BAR`. Every other final combination remains unsolved and leaves all committed notches available for deliberate correction. The visual rings read these values. Animation does not own them.

## Persistence policy

| State | On voluntary or threat disengagement | On capture and checkpoint retry | On full restart |
| --- | --- | --- | --- |
| A ring already locked at the correct notch | Persists as committed state | Persists for this authored encounter retry | Returns to initial notch |
| A ring locked at an incorrect notch | Persists; the player can unlock it on return | Persists so the error remains readable and correctable | Returns to initial notch |
| Current unconfirmed rotation | Reverts to that ring’s last committed notch | Reverts to its last committed notch | Clears |
| Cursor, highlight, camera push, held input | Clears immediately | Clears immediately | Clears |
| Solved latch and bridge | Persists for the completed attempt | Persists; capture is no longer scheduled after completion | Returns to initial state |

This example explicitly uses checkpointed encounter failure: capture returns the player to the gallery entry while preserving committed ring notches. Full restart is a separate user action that restores all initial notches. This policy lets danger interrupt manipulation without forcing the player to repeat reasoning already committed.

If saving is supported, the snapshot stores committed notches, last stable values, solved version, and bridge state. Saving during a working rotation records the last stable notch rather than an animation angle. Loading rebuilds ring presentation and threat state before control returns and publishes the bridge consequence at most once.

## Task ownership, handoff, and partial effects

The player owns rings A and C. Ring B may be assigned to a mechanical counterweight after the player inserts a timing pin and demonstrates the target notch once. The counterweight can operate but does not know the solution; the player retains solution knowledge. Assignment records task `ring_b`, operator `counterweight_02`, last stable notch, pin custody, start event, and acknowledgement bell.

If interrupted, the counterweight continues only to the next stable notch. A jam pauses the task and raises a striped flag. The player can reclaim it by removing the pin; removal reverts uncommitted motion while preserving the last notch.

| Ring | Compatible subscriber | Effect and proof | Invalid feedback |
| --- | --- | --- | --- |
| A `WAVE` | west spill channel | lowers water to expose one recovery ledge; gauge and waterline agree | other channels pulse and reject |
| B `FORK` | gallery counterweight | stops one ceiling sweep arm; brake and lock tooth become visible | wrong notch rings without stopping arm |
| C `BAR` | sluice bridge latch | primes, but does not open, the bridge latch | unprimed latch remains blocked |

All three rings and final validation remain required. Save/load reconstructs waterline, arm, latch, ring commits, task owner, and pin custody before control returns.

## Threat boundary

The gallery stalker follows its existing navigation and perception system. When it crosses the far pump arch, the console-lane beacon changes from a steady vertical bar to a descending bracket. A captioned metal-strain cue and supported haptic pattern provide equivalent warning.

The puzzle does not teleport, accelerate, or retarget the stalker. Console rotation may emit a normal world sound if the project’s perception system already supports it; that rule must be visible in the mechanic contract.

The player can disengage, regain full locomotion, and enter either a maintenance recess or a return corridor. After inspecting the console lane, the stalker continues its route, creating another valid attempt.

## Proposed timing relationship

Exact values must come from the receiving project. The target relationship is:

```text
time from pump-arch warning to console contact
  > interaction release + player movement to recess + recess entry

time from warning to contact
  may be < remaining full ring rotation + lock + route to recess
```

This creates a fair warning while leaving a risky “finish the ring” choice in some states. The encounter must be measured with actual camera release, acceleration, collision, cover entry, and threat speed.

## Return context

On return, locked rings remain physically recessed and display a wide notch marker independent of color. The active ring is back at its last stable orientation. The wall diagram remains visible from the interaction position. A compact status panel reports each ring rather than only a count—for example, `A: WAVE LOCKED`, `B: FORK LOCKED`, `C: BAR PREVIEW`—through scalable text, focus speech, and indexed haptic detents. It reports state the player already established without revealing whether the chosen combination is correct.

Reduced-motion mode removes the camera push and rapid water shake. It does not alter ring state or threat timing unless the player separately selects a declared timing accommodation.

## Completion

When all three ring channels form a continuous path and the player confirms the final lock, authority validates the configuration and latches `tidewheel_solved`. One completion event lowers the sluice bridge and updates collision and navigation. The player must cross the bridge destination boundary to finish the encounter.

Repeated confirm, interrupted animation, or reconnect cannot lower the bridge twice or grant duplicate outcome state.

Final completion closes the counterweight lease, preserves the lowered channel and stopped arm as solved-state effects, and opens the primed bridge. If ring B remains assigned, its acknowledgement resolves before the bridge event publishes.

## Failure that teaches the rule

After the warning bracket begins descending, the player starts a nearly full turn of the last ring instead of disengaging. The rotation does not reach its stable notch before the stalker arrives. The player is caught under the project’s normal threat rule. On checkpoint retry, the first two committed rings remain and the unfinished third rotation returns to its last stable notch. On full restart, all rings return to initial state exactly as declared.

The failure is valid only if the warning, cancel input, camera release, and safety route were available with the measured margin.

## Expected saved output

```text
gameplay/tidewheel-console/
├── mechanic.md
├── tunables.yaml
└── verification.md
```

## Evidence expected

| Claim | Direct evidence |
| --- | --- |
| Puzzle state is independent of animation | State trace compared with ring presentation before and after cancellation |
| Persistence is predictable | Voluntary and threat interruptions on every ring before and after lock |
| Disengagement is fair | Measured warning, release, movement, recess entry, and arrival times |
| Threat remains a real system | Navigation/state trace showing normal approach rather than puzzle teleport |
| Return preserves context | Screenshots/state checks after each persistence outcome |
| Overstay can fail | Reproducible warned failure during an unfinished rotation |
| Completion changes the world | One solved event, bridge collision/navigation change, and boundary crossing |
| Puzzle state is available without color or vision alone | Shape/text/focus-speech/haptic checks for marks, orientations, locks, and return context |
| Save/load follows stable-state policy | Loads from working, committed, solved, and bridge-open snapshots without mid-animation state or duplicate completion |
| Restart is complete | Restarts from every action, interruption, solve effect, opened bridge, and failure |
| Handoff is coherent | Counterweight success, jam, reclaim, interruption, save/load, and final completion retain one owner and one pin |
| Partial effects are causal | Each ring changes only its declared subscriber; invalid notches affect no unrelated system |

## What is not claimed

This example does not claim tested puzzle difficulty, final timings, production assets, an implemented threat, multiplayer support, specific engine compatibility, or universal accessibility. Those claims require direct evidence from the receiving project.
