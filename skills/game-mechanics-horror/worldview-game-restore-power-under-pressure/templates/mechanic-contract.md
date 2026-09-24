# <Objective name>

## Purpose

What should the player understand about the disabled system? Which decisions should the outward trips, return, and exposed repair create?

## Source boundary

### Declared by the user or project

- World rule:
- Existing map and playable entry:
- Existing interaction/inventory:
- Existing pressure source:
- Existing disabled system and blocked consequence:

### Observed in a running build

- Observation:
- Evidence location:

### Proposed for this objective

- New rule or asset:
- Why it is needed:
- What evidence or user choice could change it:

## Layer lock record

Complete the locks in order. If a later discovery changes an earlier artifact, mark that lock reopened and invalidate the dependent work before continuing.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Dependency Route Lock |  |  |  |  |  |  |
| Objective State Lock |  |  |  |  |  |  |
| Pressure Window Lock |  |  |  |  |  |  |
| Restoration Consequence Lock |  |  |  |  |  |  |

## Dependency graph — Dependency Route Lock

```text
blocked consequence:
  requires restoration:
    requires dependencies:
      reached through routes:
        affected by pressure:
```

State how the player learns this relationship before collection becomes a detached counter.

## Player verbs

| Verb | Input | Preconditions | Authoritative change | Feedback |
| --- | --- | --- | --- | --- |
| Move |  |  |  |  |
| Inspect disabled system |  |  |  |  |
| Collect component |  |  |  |  |
| Begin/continue repair |  |  |  |  |
| Disengage |  |  |  |  |
| Use restored route |  |  |  |  |

## Components — Objective State Lock

| Stable ID | World presentation | Authored location | Route purpose | Recovery rule |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

- Required IDs or accepted type/count:
- Inventory owner:
- Duplicate request rule:
- Drop/disconnect rule:

## Component trip cards — Dependency Route and Pressure Window Locks

Complete one card per required component. Two cards may share art, but they must not silently share the same player-facing decision.

| Stable ID | What it teaches | Outward route decision | Return route decision | Pressure change | Safe alternative or information trade | Failure teaches | State carried home |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |

Reject a card that only says “find the part” or “return to the machine.” Name the landmark, cue, route edge, risk, and recovery behavior.

## Authoritative state — Objective State Lock

```text
available component IDs =
collected component IDs =
repair progress =
repair active =
restoration latched =
completion time/event =
route state =
outcome =
```

Name the single owner for each record. List presentation systems that read it but may not mutate it.

## Repair contract — Objective State and Pressure Window Locks

For a newly authored objective, default to resetting only current repair progress on interruption while retaining collected components. Record why an existing project or user brief requires checkpoint or pause behavior instead.

| Responsibility | Decision | Reason |
| --- | --- | --- |
| Legal interaction region |  |  |
| Obstruction or line-of-access test |  |  |
| Input mode |  |  |
| Duration |  |  |
| Interruption events |  |  |
| Interruption policy: reset/checkpoint/pause |  |  |
| Inventory behavior on interruption |  |  |
| Atomic completion actions |  |  |

## Pressure contract — Pressure Window Lock

- Pressure source:
- State or schedule:
- Warning cues:
- Player responses:
- How it can interrupt collection or repair:
- Worst supported timing:
- Recovery after evasion or failure:
- Why every dependency remains reachable:

## Map contract — Dependency Route Lock

| Landmark | Stable location | Collision/reach | Navigation role | Power-state change |
| --- | --- | --- | --- | --- |
| Player entry |  |  |  |  |
| Disabled system |  |  |  |  |
| Component A |  |  |  |  |
| Component B |  |  |  |  |
| Component C, if used |  |  |  |  |
| Recovery space |  |  |  |  |
| Blocked route |  |  |  |  |
| Destination boundary |  |  |  |  |

## Tunables

| Name | Value | Unit | Why this value | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Restoration consequences — Restoration Consequence Lock

| Subscriber | Mechanical consequence | Presentation | Verification |
| --- | --- | --- | --- |
| Blocked route |  |  |  |
| Lighting |  |  |  |
| Audio |  |  |  |
| Navigation/hazard |  |  |  |
| Objective UI |  |  |  |

## Success

- Exact restoration transition:
- Exact post-restoration action or boundary that completes the objective:
- Evidence:

## Failure and recovery

| Player decision or event | Observable cause | Outcome | Recovery | What the player can learn |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

List every possible softlock involving missing, dropped, unreachable, or client-owned components and its recovery.

## Persistence across unload and save/load — Objective State and Restoration Consequence Locks

| Durable field | Owner | Scene unload/reload | Save/load | Full restart | Reconstruction rule |
| --- | --- | --- | --- | --- | --- |
| Component stable IDs and collected set | | | | | |
| Component ownership or installation | | | | | |
| Committed repair milestone | | | | | |
| Restored latch and version | | | | | |
| Route, collision, and navigation consequence | | | | | |
| Completion outcome | | | | | |

- Existing save/checkpoint owner:
- Serialization version and migration behavior:
- Load order before player control:
- Idempotent restoration publication:
- Ephemeral work cancelled rather than serialized:
- Missing or duplicate component recovery:

## Restart

List every component spawn, collected ID, inventory record, repair timer, pending callback, restoration event, route/collision state, lighting/navigation subscriber, pressure integration record, UI element, and outcome that reset clears or restores.

## Accessibility and input

- Supported input families:
- Remapping/toggle/hold alternatives:
- Non-audio component and interruption cues:
- Repair-progress alternatives:
- Reduced-flash and reduced-motion behavior:
- Narrow viewport behavior:

## Network authority

Complete only when the objective is actually networked.

- Authoritative owner:
- Client requests and validation:
- Replicated state:
- Duplicate/stale request rule:
- Team versus personal inventory:
- Disconnect and late-join behavior:
- Restart behavior:

## Verification

- [ ] Blocked consequence rejects completion before restoration.
- [ ] Every dependency is reachable under the worst supported pressure timing.
- [ ] Each stable component ID can be collected exactly once.
- [ ] Inventory and displayed count agree.
- [ ] Invalid repair attempts are rejected for the correct reason.
- [ ] Every declared interruption follows the chosen progress and inventory policy.
- [ ] Completion consumes/installs once and latches restoration once.
- [ ] Every promised world consequence reads the restored state.
- [ ] The newly available route can actually be used to complete the objective.
- [ ] At least one pressure-caused failure and recovery were exercised.
- [ ] Partial collection survives every declared unload/save/load boundary without duplication.
- [ ] Restoration and every route subscriber reconstruct coherently after load.
- [ ] Full restart follows its separate reset policy rather than masquerading as persistence evidence.
- [ ] Restart clears partial, pending, completed, success, and failure states.
- [ ] Supported input, viewport, accessibility, and network paths were checked.
- [ ] Screenshot and behavioral evidence were captured separately.
- [ ] Untested environments and limitations are recorded.
- [ ] No implementation, tuning, or evidence change bypassed a lock's reopen rule; invalidated dependent work was rerun.
