# <Encounter name>

## Purpose

What should the player understand, decide, and feel during this encounter?

## Source boundary

### Declared by the user or project

- World rule:
- Existing map:
- Existing player behavior:
- Existing pursuer behavior:

### Observed in a running build

- Observation:
- Evidence location:

### Proposed for this mechanic

- New rule:
- Why it is needed:
- What would make it change:

## Layer lock record

Complete these rows before implementation. Use the same lock names as the Skill. If a later discovery hits a reopen trigger, mark the lock open and invalidate every dependent item rather than editing the result in place.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Encounter promise | | | | | | All later locks |
| Shared room | | | | | | Perception, cover, timing, route evidence |
| Pursuer evidence | | | | | | AI states, lure comparison, search tests, timing |
| Lure event | | | | | | Investigation and encounter traces |
| Cover transition | | | | | | Cover, contact, and escape tests |
| Escape margin | | | | | | Balance claims and success/failure traces |
| Reset proof | | | | | | Delivery claims and captures |

## Player verbs

Owner: **Encounter promise**, **Lure event**, and **Cover transition**.

| Verb | Input | Preconditions | State change | Feedback |
| --- | --- | --- | --- | --- |
| Move |  |  |  |  |
| Place or activate lure |  |  |  |  |
| Enter cover |  |  |  |  |
| Leave cover |  |  |  |  |
| Use exit |  |  |  |  |

## Pursuer knowledge

Owner: **Pursuer evidence**.

| Record | Updated when | Cleared or aged when | May drive |
| --- | --- | --- | --- |
| Current sighting |  |  | Chase, windup |
| Last seen position |  |  | Search |
| Last heard position |  |  | Investigate |
| Search target |  |  | Navigation |

## Lure event contract

Owner: **Lure event**. Do not treat presentation audio as an AI event schema.

| Field | Concrete rule | Authority / source evidence | Mutable only if | Reopen consequence |
| --- | --- | --- | --- | --- |
| Stable event identifier | | | | |
| Immutable origin | | | | |
| Propagation and occlusion | | | | |
| Authoritative timestamp | | | | |
| Evidence type and source type | | | | |
| Material cost and cooldown | | | | |
| Duplicate/stale-operation rule | | | | |
| Priority and exact-tie rule | | | | |
| Route commitment and expiry | | | | |

## State machine

Owner: **Pursuer evidence**, constrained by **Lure event** and **Cover transition**.

| State | Entry | Update | Exit | Interruption |
| --- | --- | --- | --- | --- |
| Patrol |  |  |  |  |
| Investigate |  |  |  |  |
| Chase |  |  |  |  |
| Search |  |  |  |  |
| Attack windup |  |  |  |  |
| Return |  |  |  |  |

## Map contract

Owner: **Shared room**.

| Landmark | Stable location | Collision | Sight effect | Navigation role |
| --- | --- | --- | --- | --- |
| Player entry |  |  |  |  |
| Lure destination |  |  |  |  |
| Sight-breaking boundary |  |  |  |  |
| Hiding place |  |  |  |  |
| Cover exit A |  |  |  |  |
| Cover exit B |  |  |  |  |
| Inspection point |  |  |  |  |
| Escape boundary |  |  |  |  |

## Timing

Owner: **Escape margin**. Do not enter target values until the path and transitions above are locked.

```text
pursuer commitment time =

player exit time =

measured escape margin =
```

List the real path lengths, speeds, transitions, holds, and interaction times used. Do not replace them with an unsupported success percentage.

## Tunables

| Name | Value | Unit | Why this value | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success

What exact state and boundary produce completion?

## Failure

| Player decision | Observable cause | Outcome | What the player can learn |
| --- | --- | --- | --- |
|  |  |  |  |

## Restart

List every timer, observation, remembered position, navigation request, hidden flag, deferred action, cooldown, and outcome that reset must clear.

| Restart phase | State and deferred work to clear | Fresh-entry assertion | Direct evidence | Status |
| --- | --- | --- | --- | --- |
| Lure accepted / investigate | | | | |
| Current-sight chase | | | | |
| Sight loss / search | | | | |
| Entering cover | | | | |
| Hidden wait | | | | |
| Leaving cover / reacquisition | | | | |
| Attack windup | | | | |
| Success | | | | |
| Failure | | | | |

## Accessibility and input

- Supported input families:
- Reduced-motion behavior:
- Sound-independent cue:
- Narrow viewport behavior:

## Network authority

Complete only when the encounter is actually networked.

- Authoritative owner:
- Client commands:
- Replicated state:
- Duplicate/stale command rule:
- Disconnect and restart behavior:

## Verification

Before delivery, confirm that no late map, sensor, lure, cover, timing, or lifecycle change bypassed a reopen trigger in the layer lock record.

- [ ] Intended escape path completed.
- [ ] At least one early/late/observed failure completed.
- [ ] Sight overrides sound.
- [ ] Lost sight freezes the remembered target.
- [ ] Cover entry respects reach and collision.
- [ ] Exit cannot be used through a wall.
- [ ] Every row in the per-phase restart matrix has direct residue-free evidence.
- [ ] Supported viewport and input paths checked.
- [ ] Screenshot captured from the running encounter.
- [ ] Untested environments and limitations recorded.
