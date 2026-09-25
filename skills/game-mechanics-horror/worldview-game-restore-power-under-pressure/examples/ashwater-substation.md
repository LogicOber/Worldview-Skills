# Ashwater Substation

**Ashwater Substation** is an original fictional example written for this Skill. It is not copied from the supplied Mechanics Lab prototype and does not refer to an external game, character, or level.

## Invocation

```text
/worldview-game-restore-power-under-pressure

Build a short objective in a flooded hill-town substation. The player sees the
dead floodgate controls on entry and must recover three ceramic bridge links
from distinct service rooms. A pressure alarm forces the player off exposed
walkways at intervals. Installing the links at the switchboard should take long
enough that beginning during a warning is a real mistake. Rerouted power opens
the floodgate access lift without re-energizing the hazardous vent branch.
Use proxies where the project has no final assets.
```

## Source boundary

For this fictional example, the brief declares the substation, three bridge links, cyclical pressure alarm, switchboard, and access lift. It does not declare exact room dimensions, timings, control bindings, or whether interrupted installation resets or pauses. Those details remain proposals until matched to a project and tested.

No external reference is required. The names, setting, route, and values below are illustrative original material.

## Layer lock record

These locks complete the fictional design contract. They do not claim that a runtime, geometry, or timing trace was executed.

| Lock | Concrete locked content | Lock evidence / condition | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Dependency Route Lock | The unpowered access lift is the blocked consequence. Required IDs are `bridge_north` in the entry tool cage, `bridge_sump` in the pump room below the dry landing, and `bridge_gantry` in the far relay gallery. The switchboard is the repair point; crossing the lift interior is success. | The authored dependency and route graph below names every landmark. Runtime lock still requires collision and reachability checks for all three outward/return routes. | Link art, stamped labels, and interaction reach within legal collision. | Moving a link, switchboard, maintenance bay, or lift reopens this lock and invalidates reachability, softlock, pressure-route, screenshot, and success/failure evidence. |
| Objective State Lock | Proposed authority `SubstationObjective` owns available, collected, and installed link IDs; active stage; stable stage commits; selector state; partial outputs; `route_power_plan_v2`; version; and outcome. Interruption reverts only active alignment; installed stages persist. Each stage atomically converts one link from collected to its socket. Final commit validates all stages and isolation selector, then publishes once. Save/load restores custody, partial outputs, selector, and final latch before presentation. | The staged transaction below supplies the transition contract. Runtime lock requires duplicate collection, interruption before/after each stage, unload/load, rollback, and restart assertions. | Alignment duration, reach tolerance, UI, animation, and reduced-flash presentation. | Changing ID ownership, stage rollback, selector operation, serialization, or authority reopens this lock and invalidates state code, save fixtures, partial-effect tests, and restart evidence. |
| Pressure Window Lock | Vent state is `clear -> white_beacon -> amber_sweep -> active -> clear`. Recessed maintenance bays are recovery spaces. The safe repair relation is `clear interval after vent > switchboard repair + disengage margin`; beginning after the amber sweep is the nearby failure. | The warning and interruption rules below fix the causal sequence. Runtime lock requires the worst-route and repair timing trace; no numeric balance claim is locked by this document. | Cue intensity and timings only inside the later measured success/failure envelope. | Changing vent schedule, route length, player speed, repair duration, warning lead, or maintenance-bay access reopens this lock and invalidates both timing margins and pressure playthroughs. |
| Restoration Consequence Lock | North stage powers only the gauge; Sump stage isolates the vent; Gantry plus selector commit `route_power_plan_v2=lift_rerouted_vent_isolated`. The lift route, vent feed, gauges, lighting, audio, sockets, and UI read their specific state. Success occurs at the lift interior boundary. | The operation matrix and evidence below define subscriber and beneficiary effects. Runtime lock requires each partial proof, explicit full-grid rejection, one final event, coherent load reconstruction, and boundary crossing. | Startup effects, audio mix, camera treatment, and copy. | Adding a subscriber, changing beneficiary or threat effects, lift route, isolation state, or success boundary reopens this lock and invalidates integration, load, partial, accessibility, and end-to-end evidence. |

If `bridge_gantry` moves out of the far relay gallery or the vent route to it changes, reopen the Dependency Route Lock and Pressure Window Lock; discard the reachability proof, measured repair margin, and both successful and interrupted pressure traces before continuing.

## Intended dependency

The player enters beside an unpowered access lift. Its floor indicator is dark, its gate rejects interaction, and a diagram on the switchboard shows three empty bridge sockets. This establishes the consequence before the first collectible appears.

```text
lift unavailable
  <- switchboard unpowered
      <- bridge links North, Sump and Gantry missing
          <- three service routes exposed to the alarm cycle
```

## Authored route

| Link ID | Location | What the route teaches or tests |
| --- | --- | --- |
| `bridge_north` | Tool cage beside the entry hall | Teaches legal reach, collection feedback, and the three-socket display. |
| `bridge_sump` | Pump room below the dry landing | Requires watching the alarm lamp before crossing an exposed stair. |
| `bridge_gantry` | Far relay gallery | Requires a full outward-and-return commitment through the longest warning interval. |

The same ceramic-link model may represent all three pieces. A stamped letter and socket position distinguish them without creating three unrelated asset requests.

## Pressure model

The substation periodically vents hot pressure across red-marked walkways. A white beacon, then an amber sweep, gives advance notice before the vent becomes hazardous. Recessed maintenance bays remain safe. The cycle never makes a component permanently unreachable.

The switchboard stands beside one exposed lane. Repair is safe only when begun soon after a vent passes. Entering the interaction during the amber warning is a legible risk, not a random failure.

This pressure system is a proposal. In an existing project, its timing must be derived from real route lengths and the established hazard implementation.

## Repair contract

```text
preconditions:
  all three unique bridge IDs collected
  player within switchboard interaction region
  direct access to the open switchboard
  objective not already restored

interaction:
  three socket stages, each with an align action and stable commit

interruption:
  leaving the region or receiving vent damage reverts only active alignment
  installed links and their bounded effects persist
  collected but uninstalled links remain in inventory

final commit:
  verify all three stage commits and the vent-isolation selector
  latch route_power_plan_v2 = lift_rerouted_vent_isolated
  publish one final route-power event
```

The rollback policy makes each alignment window important without erasing physical installation. It does not force the player to repeat collection or earlier committed stages.

## Staged operation, beneficiaries, and proof

| Stage | Stable commit and custody | Partial effect | Beneficiary / threat effect | Visible proof | Active-stage rollback |
| --- | --- | --- | --- | --- | --- |
| North link | moves to `bus_north.socket` | energizes switchboard gauge only | gives the player readable load; vent unchanged | gauge reaches first indexed band | uncommitted rotation returns link to inventory |
| Sump link | moves to `bus_sump.socket` on `ISOLATE` | closes vent feed and stops the next sweep | protects walkway; removes vent capability | valve closes, gauge falls, beacon gains barred shape | active selector returns neutral; North persists |
| Gantry link | moves to `bus_lift.socket` | reroutes remaining capacity to lift | enables route; vent remains isolated | counterweight moves and interlock releases | uncommitted alignment returns link to inventory |

The unsupported `FULL GRID` position rejects because a missing transformer cannot accept total load. The selector blocks mechanically before any component or state changes.

## Restored consequences

When rerouting commits, the lift route becomes available while the vent branch remains isolated. The moving counterweight, closed feed valve, falling gauge, filled sockets, and released interlock prove mechanical state. White aisle lamps and a low tone communicate but do not own it. Reduced-flash mode uses a steady fade.

Success occurs only after the player opens the now-powered lift gate and crosses its interior destination boundary. This proves the consequence is usable.

## Expected saved output

```text
gameplay/ashwater-substation/
├── mechanic.md
├── tunables.yaml
└── verification.md
```

## Verification evidence expected

| Claim | Direct evidence |
| --- | --- |
| The lift is genuinely blocked | Pre-restoration interaction and collision check |
| Links are unique | Repeated and overlapping pickup attempts leave the set at three unique IDs |
| Pressure changes repair timing | One successful repair after a vent and one interruption begun during warning |
| Staged work is recoverable | Active alignment rolls back while installed stages, custody, and partial effects remain |
| Operation is selective | North gauge, Sump isolation, Gantry reroute, and unsupported full-grid rejection match the matrix |
| Final reroute is atomic | One route-power transition and event despite repeated input |
| Consequences agree | Switchboard, lighting, audio, and lift read the same restored state |
| The loop closes | Player crosses the powered lift boundary |
| Restart is complete | Restarts during collection, repair, startup effects, success, and vent failure |

## Failure that teaches the rule

If the player begins Sump alignment after the amber sweep crosses the wall, the vent arrives before its stable notch. Damage disengages the player, Sump returns to collected inventory, and installed North keeps the gauge alive. The first-band load and fallen-back selector show what persisted and rolled back. The next attempt waits for a clear interval and isolates the vent; no collection route repeats.

## What is not claimed

This example does not claim final balance, production art, tested alarm timings, a particular engine, multiplayer support, or universal accessibility. Values become evidence only after implementation and runtime verification in the receiving project.
