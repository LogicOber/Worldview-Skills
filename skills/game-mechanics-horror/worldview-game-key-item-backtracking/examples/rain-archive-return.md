# The Rain Archive Return

## Source boundary

This is a newly authored fictional example for `worldview-game-key-item-backtracking`. It is not derived from a named game, published level, external Skill, or recognizable character.

## Invocation

```text
/worldview-game-key-item-backtracking

Use a compact municipal archive during a storm. The freight lift beside the
entrance is missing its counterweight spindle. Put the spindle in the catalog
annex, then change the return route when flood shutters close. Give the player
an earned shortcut and make every save state recoverable.
```

## Fictional setup

The archive has four stable landmarks: the public gallery and stalled freight lift near the entrance, a central map room, a narrow pump passage, and the lower catalog annex. On the first visit, the lift housing visibly lacks a keyed metal spindle. Its inspection text records the missing component and marks the lift on the map without revealing where the component is.

The player reaches the annex through the gallery and map room. There, the matching spindle is mounted in a manual drainage rack. Removing it secures the item in protected objective state and releases an emergency counterweight: flood shutters close across the gallery, the far-side maintenance-stair latch becomes operable, and lowered water exposes a service ladder from the pump passage to the entrance alcove. Sound, gauge movement, and a view through wired glass establish the shared cause before the return begins.

Before acquisition, a calm maintenance bench lets the player fit a fixed practice spindle into a `counterweight_socket` and turn it one indexed quarter-turn. The bench cannot be removed or used for progression. It teaches the same align-insert-turn verb, positive lock tooth, duration, and rejection feedback used later under pressure.

## Layer lock record

These rows lock the fictional proposal; their evidence paths are the records a later implementation must produce rather than claims that a build was run.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Progression Relationship Lock | `freight_lift_01` accepts only `counterweight_spindle_01`; S0 = uninspected/locked, S1 = inspected/locked, S2 = `protected_objective_storage` owns the spindle and the return event is active, S3 = `freight_lift_01.spindle_socket` owns the installed spindle and the lift is unlocked. | Fictional setup and invocation; planned `gameplay/rain-archive-return/route-states.md#progression`. | Inspection, acquisition, ownership conversion, installation, and success each have one state transition and stable identifier. | Inspection wording, animation, and sound. | The lift accepts another capability, spindle ownership changes, or installation stops being the success transition. | Invalidate S0–S3 graphs, saves, and completion traces. |
| State-Aligned Route Lock | Nodes `entrance`, `gallery`, `map_room`, `pump_passage`, `pump_service_ladder`, `annex`, `maintenance_stair`, and `freight_lift`; S0/S1 use the outbound graph, S2 removes the gallery cross-route but provides two complete returns—stair to entrance or pump ladder to entrance—and S3 adds the lift edge. Safe anchors are `entrance_dry_desk` (S0), `map_room_chart_table` (S1), `annex_drainage_rack` (S2), and `freight_lift_landing` (S3). | Route proposal below; planned `gameplay/rain-archive-return/route-states.md#reachability`. | Each S-state has one directed edge set, its named safe anchor, and a tested path to completion; both S2 returns independently reach the lift. | Traversal costs and threat position on an existing edge. | A shutter, stair, pump-ladder, lift edge, or safe anchor changes direction or state ownership. | Invalidate every timing, wrong-turn, save-location, alternate-route, and shortcut trace. |
| Return Transformation Lock | Acquiring the spindle fires `counterweight_released_v1`: visible shutters close the gallery cross-route, the previously seen maintenance frame becomes an operable far-side shortcut, and receding pump water exposes the longer `pump_service_ladder -> entrance` completion path; map-room geometry stays stable. | Wired-glass view, gauge, and sound described in the setup; planned `gameplay/rain-archive-return/verification.md#return-event`. | The cause, changed edges, stable landmarks, two complete returns, and turn-back recovery to `map_room` are all recorded. | Shutter sound level, cue duration, and floodwater threat tuning. | The event no longer visibly causes all three route changes or either return stops reaching `entrance`. | Invalidate recognition, alternate-route, and return-choice evidence. |
| Atomic Application Lock | Single-player `ProgressionAuthority` commits operation `install:counterweight_spindle_01:freight_lift_01`: S2 owns the spindle in `protected_objective_storage`; S3 atomically removes that ownership, assigns it to `freight_lift_01.spindle_socket`, sets `spindle_installed=true`, and unlocks the lift. | Protected-application transaction below; planned `gameplay/rain-archive-return/verification.md#atomic-install`. | Interruption, duplicate callback, save/load, and restart prove only the S2 protected-owner/locked tuple or S3 installed-owner/unlocked tuple, never two spindle owners or none. | Post-commit animation, client-side anticipation if networking is later added, and retry text. | Save schema, ownership conversion, installation semantics, or authority changes. | Invalidate interruption, migration, ownership, and idempotency evidence. |
| Navigation Pressure Lock | Proposed timing budget: `shortcut_time <= 0.60 * pump_completion_time`; missing the stair commits the player only to the longer pump service path, not a dead end; cues are spindle description, lift map mark, stair frame, falling pump gauge, exposed ladder, and optional reminder. | Route design judgment; planned `gameplay/rain-archive-return/verification.md#route-measurements`. | Measured or proposed values are labeled, both returns independently complete under supported cues, and assistance reveals no unexplored solution. | Threat speed, reminder delay, prompt time, and timing values within the two-route contract. | Any required cue or return edge changes, or measured timing breaks the ratio/completion bound. | Invalidate timing, reminder, difficulty, and accessibility traces. |

> If the maintenance stair stops returning directly to `entrance`, or `pump_service_ladder` stops providing an independent route there, reopen the State-Aligned Route Lock, the Return Transformation Lock, and the Navigation Pressure Lock; discard the S2 reachability snapshot, shortcut timing comparison, and both return-choice traces.

## Route states

```text
S0: safe anchor entrance_dry_desk
    entrance -> gallery -> map room -> pump passage -> annex
    freight lift has not yet been inspected and remains physically locked

S1: safe anchor map_room_chart_table
    freight lift inspected; missing spindle is recorded; key not acquired
    outbound graph remains entrance -> gallery -> map room -> pump passage -> annex

S2: safe anchor annex_drainage_rack
    spindle acquired in protected_objective_storage; return change becomes active
    gallery cross-route closes; annex -> pump passage -> map room remains valid
    short completion: annex -> pump passage -> map room -> maintenance stair -> entrance -> freight lift
    long completion: annex -> pump passage -> pump service ladder -> entrance -> freight lift

S3: safe anchor freight_lift_landing
    spindle owned by freight_lift_01.spindle_socket; freight lift becomes the downstream route
    maintenance stair and any other committed return changes remain coherent
```

The archive does not rearrange. The shutters remove one previously known connection, while the far-side stair latch turns another visible but unusable boundary into a shortcut. Familiar landmarks retain their shape and map positions.

## Recognition and return choice

During the return through the pump passage, the player can climb the newly exposed service ladder into the entrance alcove, accepting the slow floodwater crossing, or continue to the map room, open the maintenance stair, and return directly to the lift. Both paths reach the lift without requiring the other. The stair is not a surprise teleporter: its door and entrance-side frame were visible on the outbound route. The pump alternative is signaled by the falling gauge and exposed ladder hatching.

If the player enters the pump passage and turns back before the ladder, the passage returns to the map room rather than ending in a trap; continuing reaches the entrance and completes the return. An optional objective reminder says that the spindle matches the lift housing already marked on the map. It does not direct the player to the shortcut.

## Compatibility, ownership, and handoff

| Verb | Valid target | Effect | Invalid target and feedback |
| --- | --- | --- | --- |
| align / insert / quarter-turn | `counterweight_socket` | engages a compatible mechanical counterweight | ordinary keyhole: spindle collar cannot enter and no state changes |
| mount / turn | `freight_lift_01.spindle_socket` | installs spindle and unlocks lift atomically | pump-valve square: tooth pattern visibly disagrees before insertion |
| probe | `inspection_recess` | reveals matching tooth spacing without consuming or moving item | flat wall seam: no indexed contact and a neutral refusal cue |

The spindle cannot open every mechanical target. Invalid use charges no cost, changes no holder, and leaves no progression event.

Archivist Neme knows the lift socket's orientation from a diagram but cannot leave the map room after shutters close. The player physically holds the spindle but may not know which stamped tooth faces upward. If the player inspected the diagram, they retain that knowledge. Otherwise Neme can transmit one bounded orientation cue over the speaking tube. This transfers knowledge, not the object. If a later playable handoff is supported, the transaction records prior/new holder, retained knowledge, acknowledgement, world location, and recovery; this example keeps physical custody with the player.

The lift socket is visible during S0 inspection, so the final target class and quarter-turn consequence are previewed before acquisition. The pressured use changes surroundings—floodwater and route exposure—not the verb or compatibility.

## Protected application

The spindle cannot be discarded, consumed as crafting material, or lost to ordinary inventory overflow. Installing it uses a durable transaction:

```text
validate spindle ownership and lift state
commit spindle owner protected_objective_storage -> freight_lift_01.spindle_socket
commit spindle-installed + lift-unlocked in that same durable operation
rebuild lift collision, navigation, prompt and map state
play installation and movement feedback
```

If presentation is interrupted after the commit, loading reconstructs the spindle in the installed socket and the lift as unlocked. If interruption occurs before the commit, protected objective storage still owns the spindle and the lift remains locked. No supported state retains a storage copy after installation or loses the spindle between owners.

## Success, failure, and restart

Success occurs when the lift carries the player to the next archive tier. A plausible failure comes from entering the pump passage while its floodwater threat is active without using the safe ledges; restart returns the player to the latest safe anchor with the correct S0–S3 progression state.

No failure removes the spindle or seals both routes. Restart clears door animation, shutter sound, threat path, prompts, and input locks before rebuilding the saved graph.

## Expected saved output

```text
gameplay/rain-archive-return/
├── mechanic.md
├── route-states.md
├── tunables.yaml
└── verification.md
```

## Evidence required before handoff

| Claim | Evidence |
| --- | --- |
| The first gate is recognizable | First-visit capture and inspection-state assertion |
| Acquisition causes the route change | Single event trace linking removal to shutter state |
| Both return choices are coherent | Traversal traces and measured costs for stair and pump routes |
| The pump path is an alternate completion | Full S2 traversal from `annex_drainage_rack` through `pump_service_ladder` to the lift without using the stair |
| A turned-back pump attempt is recoverable | Wrong-turn trace returning to the map room |
| The spindle cannot be lost | Full inventory, discard, death, scene unload, and save/load checks |
| Unlock and spindle ownership are atomic | Interruption tests proving only protected-storage/locked or installed-socket/unlocked tuples |
| Every snapshot has a safe anchor | S0–S3 load traces from the four named anchors to completion |
| Navigation is not color-dependent | Shape/text/map cue and selected assist checks |
| Compatibility is bounded | Valid socket, ordinary keyhole, pump valve, and inspection recess tests; invalid uses consume nothing |
| Calm use teaches pressured use | Practice-bench and final-lift traces use the same align/insert/turn contract |
| Ownership and knowledge stay separate | Spindle custody, diagram inspection, speaking-tube cue, save/load, and final installed socket records |
| Final use is previewed | First lift inspection exposes socket class and orientation relationship before acquisition |

All timings and threat placements remain proposals until run in the actual project. The example specifies relationships, not a claim of finished balance.
