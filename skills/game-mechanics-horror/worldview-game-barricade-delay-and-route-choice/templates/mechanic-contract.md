# <Encounter name> — Barricade mechanic contract

## Status and source boundary

- Project and runtime:
- Working path:
- Existing behavior observed:
- User-provided facts:
- New proposals in this contract:
- Untested assumptions:

## Layer lock record

Complete this record before implementation. A reopened lock invalidates the named dependent work; update the row before editing downstream values or evidence.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Delay exchange | | | | | | All later locks |
| Route mutation | | | | | | Placement, threat response, timing, persistence, route evidence |
| Placement transaction | | | | | | State, duplication, cancellation, and timing tests |
| Threat response | | | | | | Response and useful-delay traces |
| Useful interval | | | | | | Balance claims and success/failure traces |
| Lifecycle proof | | | | | | Delivery claims and captures |

## Intended decision

Owner: **Delay exchange**.

Complete this sentence:

> The player blocks `<approach>` to gain enough time to `<task>`, while giving up or worsening `<route/resource/information>`. Pressure returns through `<breach/detour/other response>`.

## Spatial contract

Owner: **Route mutation**.

| Landmark | Stable identifier or coordinate | Collision | Navigation | Sight / sound relevance |
| --- | --- | --- | --- | --- |
| Threat approach | | | | |
| Barrier source | | | | |
| Valid placement | | | | |
| Player placement position | | | | |
| Intended task | | | | |
| Remaining exit | | | | |
| Failure/contact boundary | | | | |

### Route graph before placement

```text
<nodes and reachable edges>
```

### Route graph while secured

```text
<nodes and reachable edges>
```

### Route graph after breach or dismantling

```text
<nodes and reachable edges>
```

## Player verbs

Owner: **Placement transaction**.

| Verb | Preconditions | Duration | Movement/camera | Interruptions | Result |
| --- | --- | ---: | --- | --- | --- |
| Acquire / grip | | | | | |
| Move / carry | | | | | |
| Align | | | | | |
| Secure | | | | | |
| Abandon | | | | | |
| Dismantle / recover | | | | | |

Document hold, toggle, reduced-repetition, timing-assistance, and remapping alternatives.

## Barrier state machine

```text
available -> moving -> aligning -> secured -> stressed -> breached
                   \-> abandoned
secured -> dismantling -> available or displaced
```

For every transition, record:

- authoritative owner;
- triggering input or event;
- validation and reach rule;
- collision mutation;
- navigation mutation;
- visual and audio cue;
- cancellation behavior;
- persisted fields.

## Threat response

Owner: **Threat response**.

| Observed state | Allowed response | Commitment rule | Player-readable cue |
| --- | --- | --- | --- |
| Barrier moving | | | |
| Barrier secured | | | |
| Player visible | | | |
| Player hidden or departed | | | |
| Barrier breached | | | |

### Breach phases

| Phase | Duration / condition | Damage or state change | Cue | Can cancel? |
| --- | --- | --- | --- | --- |
| Contact | | | | |
| Test | | | | |
| Commit | | | | |
| Damage cycle | | | | |
| Opening | | | | |
| Recovery | | | | |

## Timing model

Owner: **Useful interval**. Name one authoritative clock origin and express every `... at` value as a timestamp from it. Fill measured paths and transitions before target margins.

```text
authoritative time origin (t0) =
placement secured at           =
threat contacts barrier at     =
breach or detour duration      =
barrier failure at             =
travel to task                 =
task duration                  =
travel to remaining exit       =
interaction / animation locks  =
reacquisition margin           =
player safe-boundary required at =

useful interval                = barrier failure at - placement secured at
intended success margin        = barrier failure at - player safe-boundary required at
nearby failure boundary        =
```

Record how movement assistance, interaction assistance, and difficulty settings alter the relationship.

## Price and later consequence

- Material or object consumed:
- Noise or attention created:
- Route lost or worsened:
- Information lost:
- Future visit consequence:
- Recovery path:
- Softlock proof:

## Persistence and authority

Owner: **Lifecycle proof**.

| Event | Required barrier state | Required route state | Deferred work to cancel |
| --- | --- | --- | --- |
| Checkpoint | | | |
| Manual save | | | |
| Area unload/reload | | | |
| Player death | | | |
| Full restart | | | |
| Client reconnect | | | |

For multiplayer, record placement validation, material ownership, prediction, reconciliation, late join, and host migration boundaries.

## Success, failure, and recovery

- Intended successful sequence:
- Early-start or wrong-route failure:
- Overstay failure:
- Placement interruption outcome:
- Recovery after non-terminal failure:
- Restart entry and cleared state:

## Tunables

```yaml
placement:
  reach: 0
  duration_seconds: 0
  alignment_tolerance: 0
  noise_radius: 0
barrier:
  integrity: 0
  breach_phase_seconds: []
  dismantle_seconds: 0
threat:
  approach_speed: 0
  detour_recheck_seconds: 0
player:
  task_seconds: 0
  exit_grace_seconds: 0
```

Use the project's units and schema. Values above are placeholders, not defaults.

## Verification record

Before delivery, confirm that no late implementation or tuning change bypassed a reopen trigger in the layer lock record.

| Claim | Direct procedure | Expected | Observed | Evidence path | Status |
| --- | --- | --- | --- | --- | --- |
| Valid placement is reachable | | | | | |
| Invalid placement is rejected | | | | | |
| Route truly changes | | | | | |
| Useful interval supports task | | | | | |
| Nearby failure is real | | | | | |
| Threat response is stable | | | | | |
| Persistence matches contract | | | | | |
| Restart clears deferred state | | | | | |
| Supported accessibility path works | | | | | |
| Running barrier state was captured | | | | | |

## Handoff

- Playable entry point:
- Controls:
- First action:
- Proof the mechanic started:
- Verified success:
- Verified failure:
- Screenshot/capture path and tested viewport:
- Reused assets:
- Proxies:
- Untested environments:
- Known limitations:
