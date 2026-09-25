---
name: worldview-game-driving-horror-divided-attention
description: "Use when a playable horror sequence requires the player to control a moving vehicle while dividing attention among the road, mirrors or cabin zones, instruments, equipment, passengers, or cargo. Produces and, when possible, implements a vehicle-state ledger, road-demand curve, glance budget, stop-node graph, control interference, moving/stopped threat logic, persistence, comfort options, recovery, and single-ending arrival tests. Do not use for a passive ride, ordinary racing, or an on-foot chase."
---

# Worldview Game — Driving Horror and Divided Attention

## Call this Skill

```text
/worldview-game-driving-horror-divided-attention
```

Treat the text after the Slash command as the vehicle, journey, and horror brief. The user may provide only a destination and a disturbing cabin idea. Inspect the playable project, input model, camera, physics, save authority, and existing route before asking the user to invent technical values.

## Route companion files as needed

- Fill [`driving-horror-contract.md`](templates/driving-horror-contract.md) before implementation unless the project already records equivalent state and tests.
- Read [`why-driving-horror-fails.md`](references/why-driving-horror-fails.md) when scares require forced crashes, cabin checks feel random, or the player cannot tell whether stopping is allowed.
- Read [`calder-tunnel-washer.md`](examples/calder-tunnel-washer.md) only when a complete original contract would clarify the method. Do not reuse its fiction or values.
- Read [`SOURCE.md`](SOURCE.md) for provenance review.

## What this Skill owns

This Skill is the sole owner of the contract among:

1. **vehicle motion state** — speed band, steering authority, traction, damage, power, and stopped reason;
2. **road demand** — visibility, lane precision, obstacle density, turn load, braking distance, and safe look-away window;
3. **cabin sight zones** — forward road, instruments, mirrors, passenger area, rear equipment, and blind zones;
4. **glance budget** — how long attention may leave the road, what warns of exhaustion, and how it resets;
5. **stop nodes** — where stopping is legal, what stopping costs, and whether restart is possible;
6. **control interference** — which input is reduced, delayed, stuck, reversed, or falsely reported;
7. **occupant, cargo, and equipment state** — presence, restraint, integrity, access, noise, and consequences;
8. **threat phase** — what the threat can do while moving, slowing, stopped, or outside the cabin;
9. **feedback attribution** — how the player distinguishes road impact, vehicle fault, and hostile interference;
10. **failure and recovery** — collision, stall, missed stop, invalid inspection, abandoned vehicle, reload, and retry;
11. **comfort and access equivalence** — motion, camera, sound, timing, and input alternatives without removing decisions;
12. **arrival convergence** — the mandatory state delivered to one campaign ending.

Do not let the camera controller silently own glance timing, the threat script directly set vehicle speed, or a cinematic skip bypass mandatory arrival state.

## Route neighboring concerns

Hand off without duplicating ownership:

- on-foot pursuit geometry after the player exits: chase-route architecture;
- whether a sound reveals the player: sound-detection threat;
- whether a sensory channel lies outside vehicle instrumentation: perception distortion and trust;
- the meaning and order of a job task: procedural duty or mundane routine corruption;
- campaign-wide outcome and release path: single-ending campaign;
- progressive loss of transport, shelter, communication, or public help across the larger trip: stranded journey and lost protections.

Exchange explicit fields. For example, a sound system may return `threat_alert_delta`; this Skill decides whether the player had to honk, brake, or operate rear equipment and records the vehicle consequence.

### Neighbor handoff contract

| Neighbor | This Skill sends | This Skill accepts | The neighbor must not write |
| --- | --- | --- | --- |
| chase-route architecture | exit point, vehicle stop reason, exterior threat entry | exterior chase result and return eligibility | vehicle transform, cabin state, arrival commit |
| sound-detection threat | cabin action noise, engine band, enclosure state | alert delta and source-readable cue | control interference, road progress |
| perception distortion and trust | instrument channel and current truth | reliability modifier and repair condition | authoritative vehicle state |
| procedural duty | completed vehicle actions and equipment availability | task requirement and accepted completion | glance budget, threat position |
| stranded journey and lost protections | transport availability and failure reason | journey protection state and permitted fallback | cabin zones, vehicle damage |
| single-ending campaign | validated arrival vector | ending acceptance or explicit missing prerequisite | road, vehicle, cargo, or threat history |

Reject any integration that introduces a second writer for a forbidden field. Log each accepted handoff with source owner, transition ID, and committed state so save/load and failure tests can reproduce it.

## Inspect before proposing

1. Find the playable entry, vehicle actor, camera rigs, input actions, collision layers, route data, threat controllers, save schema, accessibility settings, and ending gate.
2. Run the current sequence. Record observed speed, stopping distance, camera freedom, interaction reach, and checkpoint behavior as observations rather than assumptions.
3. Separate existing capabilities from proposed systems.
4. Identify the authoritative owner of transform, speed, damage, route progress, and cabin interactables. Create one owner for any orphaned state.
5. Preserve working project conventions unless they prevent deterministic ownership or testing.

## Six locks

Do not implement until each lock has an owner and acceptance evidence.

### 1. Vehicle Control Lock

Define speed bands, steering authority, braking response, collision response, stall causes, restart requirements, and input modes. Horror may pressure a control; it may not make ordinary control response unknowable.

For every interference, record:

| Field | Required answer |
| --- | --- |
| affected control | exact action or subsystem |
| visible symptom | what changes before danger |
| cause evidence | physical, instrumental, or hostile cue |
| common-sense response | what a real driver would try |
| safe response | playable action that can work |
| duration / release | state or action that ends it |
| failure ceiling | maximum consequence before recovery |

### 2. Road Demand Lock

Author a demand curve per route segment. A cabin event is legal only if the road grants a compatible look-away window.

```text
glance_allowance = visibility_margin - turn_load - obstacle_load - speed_pressure
```

This is a design relation, not a universal physics formula. Validate values in the actual build. Never demand a long cabin interaction during an untelegraphed precision turn. If the player ignores an optional glance, advance the threat by another readable route rather than forcing a crash.

### 3. Cabin Information Lock

Create a sight-zone graph. Each zone records entry input, camera transition, maximum comfortable dwell, information gained, controls retained, exit input, and road coverage. Critical information needs an accessible non-visual equivalent where feasible.

The forward road remains a state, not an empty default. Returning forward must show enough context to recover: lane relation, speed cue, and immediate obstacle warning.

### 4. Moving/Stopped Threat Lock

Define separate permissions for `moving`, `slowing`, `legal_stop`, `unsafe_stop`, and `disabled`. A threat must not teleport between those modes merely because the player looked away. Record its last valid zone, transition cause, travel time or cover rule, and evidence.

Stopping should change the problem. It can improve inspection and repair while increasing exposure, losing schedule margin, reducing escape options, or altering cabin access. If stopping is always correct or always fatal, it is not a decision.

### 5. Failure, Persistence, and Access Lock

Define the smallest recovery unit. Save enough state to reproduce the same road condition, vehicle state, cabin state, threat phase, consumed resources, and arrival obligation. Never save during an uncommitted camera or control transition.

Offer equivalents for:

- camera shake, head bob, field of view, motion blur, and horizon stabilization;
- hold versus toggle cabin views and interactions;
- simultaneous steering and inspection inputs;
- color-only instrument warnings;
- directional audio cues;
- reaction windows and repeated failure assistance.

Assistance may extend time, clarify cues, or reduce motion. It must not silently solve which zone to inspect or whether to stop.

### 6. Single-Ending Arrival Lock

One ending means one required arrival condition, not one exact micro-state. Define:

- mandatory arrival fact;
- minimum viable vehicle state;
- allowed passenger, cargo, evidence, and damage variation;
- substitute path after an irreversible vehicle failure;
- canonical commit point;
- ending handler that reads variation without branching into separate endings.

## Build the route as decision windows

For each segment, write:

```text
segment_id
entry_state
road_demand
available_sight_zones
glance_allowance
cabin_event
ignore_outcome
stop_options
threat_permissions
failure_floor
exit_state
checkpoint_policy
```

Use a readable cadence:

1. teach normal steering and one safe stop;
2. teach one cabin glance on a forgiving straight;
3. establish normal equipment or passenger behavior;
4. introduce a discrepancy that does not require an immediate response;
5. combine moderate road demand with a short check;
6. offer a meaningful stop-or-continue decision;
7. reuse known controls under changed conditions;
8. converge at the arrival gate.

Do not increase intensity by merely stacking shake, darkness, noise, and tighter steering. Increase the conflict between two understood obligations, then preserve a readable response.

## Implementation requirements

Use one authoritative `DrivingHorrorState` or equivalent with stable IDs and explicit transitions. At minimum persist:

```text
route_segment_id
route_progress
vehicle_speed_band
vehicle_control_state
vehicle_damage
power_state
camera_zone
glance_budget
stop_node_id
stop_reason
occupant_states
cargo_states
equipment_states
threat_zone
threat_phase
interference_state
consumed_resources
arrival_commit
schema_version
```

Recommended event boundaries:

- `segment_entered`
- `camera_zone_changed`
- `glance_budget_warning`
- `stop_state_changed`
- `control_interference_started`
- `control_interference_resolved`
- `vehicle_failure_committed`
- `checkpoint_committed`
- `arrival_committed`

Events request transitions; the state owner validates and commits them. Presentation systems subscribe after commit.

## Failure and recovery rules

- A minor collision spends a known margin or changes handling; it does not secretly rewrite threat state.
- A major collision restarts from a committed segment boundary with the cause legible.
- A stall exposes a bounded repair or fallback; it cannot become an unwinnable waiting state.
- Missing an optional cabin cue changes later evidence, never the sole path to the ending.
- Missing a mandatory route action receives a staged warning and a recoverable turnaround or controlled restart.
- Exiting the vehicle commits an explicit mode change and hands exterior space to its owner.
- Reload reconstructs all cabin and road state before control returns.
- Skip and reduced-intensity modes commit the same mandatory state as full play.

## Verification matrix

### State and implementation

- Every mutable field has one writer.
- Vehicle physics and horror state agree after pause, reload, and checkpoint restart.
- A cabin interaction cannot run after its zone becomes invalid.
- Threat movement obeys the moving/stopped permission table.
- No presentation callback writes authoritative progress.

### Runtime routes

- Ignore every optional cabin event and still reach the ending.
- Inspect at the earliest and latest legal window.
- Stop at every legal node; pass every optional node.
- Attempt a common-sense emergency stop during each interference.
- Trigger minor and major collisions before, during, and after a cabin check.
- Stall, repair, abandon, and resume through every supported fallback.
- Reach the arrival with minimum vehicle integrity and maximum allowed variation.

### Save and recovery

- Save and load in every segment and legal stop mode.
- Reload after a camera transition, warning, collision, stall, and threat change.
- Restart a checkpoint after consuming a resource.
- Migrate an older save or fail with an explicit supported-version message.
- Confirm the one ending cannot fire twice or be skipped by stale progress.

### Comfort and accessibility

- Complete with motion effects minimized and horizon stabilization enabled.
- Complete without directional audio.
- Complete with remapped controls, toggle views, and extended timing.
- Confirm non-color warnings for all critical instruments.
- Confirm assistance preserves the stop, glance, and response decisions.

## Deliver

Return:

1. observed project facts and unresolved assumptions;
2. vehicle and route state ledgers;
3. cabin sight-zone graph and glance budgets;
4. control-interference and moving/stopped threat tables;
5. stop, failure, fallback, save, and accessibility contracts;
6. single-ending arrival contract;
7. files changed and implementation notes;
8. test evidence, failures, and remaining risks.

Do not call the work complete because the vehicle moved once. Completion requires deterministic state, fair divided-attention decisions, recoverable failure, accessible equivalents, persistence, and verified arrival.
