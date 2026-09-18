# Ashwater Substation

**Ashwater Substation** is an original fictional example written for this Skill. It is not copied from the supplied Mechanics Lab prototype and does not refer to an external game, character, or level.

## Invocation

```text
/worldview-game-restore-power-under-pressure

Build a short objective in a flooded hill-town substation. The player sees the
dead floodgate controls on entry and must recover three ceramic bridge links
from distinct service rooms. A pressure alarm forces the player off exposed
walkways at intervals. Installing the links at the switchboard should take long
enough that beginning during a warning is a real mistake. Restored power opens
the floodgate access lift. Use proxies where the project has no final assets.
```

## Source boundary

For this fictional example, the brief declares the substation, three bridge links, cyclical pressure alarm, switchboard, and access lift. It does not declare exact room dimensions, timings, control bindings, or whether interrupted installation resets or pauses. Those details remain proposals until matched to a project and tested.

No external reference is required. The names, setting, route, and values below are illustrative original material.

## Layer lock record

These locks complete the fictional design contract. They do not claim that a runtime, geometry, or timing trace was executed.

| Lock | Concrete locked content | Lock evidence / condition | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Dependency Route Lock | The unpowered access lift is the blocked consequence. Required IDs are `bridge_north` in the entry tool cage, `bridge_sump` in the pump room below the dry landing, and `bridge_gantry` in the far relay gallery. The switchboard is the repair point; crossing the lift interior is success. | The authored dependency and route graph below names every landmark. Runtime lock still requires collision and reachability checks for all three outward/return routes. | Link art, stamped labels, and interaction reach within legal collision. | Moving a link, switchboard, maintenance bay, or lift reopens this lock and invalidates reachability, softlock, pressure-route, screenshot, and success/failure evidence. |
| Objective State Lock | Proposed authority `SubstationObjective` owns `available_link_ids`, `collected_link_ids`, `installed_link_ids`, `repair_progress`, `repair_active`, `substation_restored`, restoration version, and outcome. Interruption resets only repair progress; collected IDs remain. Completion atomically moves all three required IDs from collected to installed and publishes once. Save/load restores all three ID sets and the latch before spawning props; full restart restores their authored starting ownership. | The repair transaction below supplies the transition contract. Runtime lock requires duplicate collection, interrupted repair, unload/load, and restart assertions. | Hold duration, reach tolerance, UI layout, animation, and reduced-flash presentation. | Changing ID ownership, reset/checkpoint behavior, serialization boundary, or commit authority reopens this lock and invalidates state code, save fixtures, duplicate tests, and restart evidence. |
| Pressure Window Lock | Vent state is `clear -> white_beacon -> amber_sweep -> active -> clear`. Recessed maintenance bays are recovery spaces. The safe repair relation is `clear interval after vent > switchboard repair + disengage margin`; beginning after the amber sweep is the nearby failure. | The warning and interruption rules below fix the causal sequence. Runtime lock requires the worst-route and repair timing trace; no numeric balance claim is locked by this document. | Cue intensity and timings only inside the later measured success/failure envelope. | Changing vent schedule, route length, player speed, repair duration, warning lead, or maintenance-bay access reopens this lock and invalidates both timing margins and pressure playthroughs. |
| Restoration Consequence Lock | `substation_restored=true` publishes restoration version 1 once. Lift route/collision, aisle lighting, machinery audio, socket presentation, and objective UI read that version. Success occurs at the lift interior boundary, not at repair completion. | The consequence list and atomic-event evidence below define the subscriber set. Runtime lock requires one completion event, coherent load reconstruction, and an actual boundary crossing. | Startup effects, audio mix, camera treatment, and descriptive copy. | Adding a subscriber, changing the lift route state, or moving the success boundary reopens this lock and invalidates integration, load, duplicate-event, accessibility, and end-to-end success evidence. |

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
  one continuous hold with visible three-stage progress

interruption:
  leaving the region or receiving vent damage resets repair progress
  collected bridge links remain in inventory

commit:
  verify all three required IDs are still in collected_link_ids
  atomically remove those IDs from collected_link_ids and add them to installed_link_ids
  latch substation_restored = true
  publish one restoration event
```

The reset policy makes the start time important. It does not force the player to repeat the collection route after a failed repair.

## Restored consequences

When restoration commits, the lift’s authoritative route state becomes available. White aisle lamps, a low machinery tone, the switchboard’s filled sockets, and the lift indicator communicate the change. Reduced-flash mode replaces the startup flicker with a steady fade; the lift state is unchanged.

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
| Interruption is recoverable | Progress resets while all three collected IDs remain present |
| Restoration is atomic | One state transition and one event despite repeated input |
| Consequences agree | Switchboard, lighting, audio, and lift read the same restored state |
| The loop closes | Player crosses the powered lift boundary |
| Restart is complete | Restarts during collection, repair, startup effects, success, and vent failure |

## Failure that teaches the rule

If the player begins installation when the amber sweep has already crossed the switchboard wall, the vent arrives before the hold completes. Damage forces disengagement, the three bridge links remain collected, and repair progress returns to zero. The warning, hazard, interruption, and retained inventory make the cause visible and the next attempt actionable.

## What is not claimed

This example does not claim final balance, production art, tested alarm timings, a particular engine, multiplayer support, or universal accessibility. Values become evidence only after implementation and runtime verification in the receiving project.
