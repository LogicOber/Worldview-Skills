# Safe-Room Pressure Reset — Mechanic Contract

Copy this template into the target project. Replace every placeholder and preserve the distinction among verified fact, user requirement, proposal, judgment, and blocker.

## Status

| Field | Value |
| --- | --- |
| Refuge | `<name>` |
| Project/scene | `<path>` |
| Runtime/version | `<...>` |
| Owner | `<...>` |
| Last verified | `<date, build, platform>` |
| State | `proposed / implemented / partially verified / verified` |

## Layer lock record

Complete these rows in order. Reopen the earliest contradicted row and invalidate its dependent work rather than hiding the conflict in a later service or timing value.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Refuge-boundary lock | `<geometry, valid/invalid predicate, commit points, attack/hazard table>` | `<door, collision, damage, authority traces>` | `<all representations agree on protection begin/end>` | `<presentation/debounce within semantics>` | `<geometry, eligibility, damage order, authority change>` | `<lifecycle, checkpoint, threat, exit, boundary evidence>` |
| Pressure-ledger lock | `<clear/pause/change/persist table across lifecycle>` | `<project facts, brief, state snapshots>` | `<every relevant pressure has behavior and signal>` | `<values within declared recovery policy>` | `<new hazard, resource, clock, objective consequence>` | `<services, persistence, accessibility, outcomes>` |
| Exterior-threat lock | `<reconciliation, anchors, exclusions, memory, relocation>` | `<navigation/director traces>` | `<each threat has reachable occupancy and fair-exit state>` | `<search duration/legal-anchor weighting>` | `<ability, navigation, director, topology change>` | `<reconciliation, exit, save/load, re-entry>` |
| Checkpoint-and-service lock | `<checkpoint order/boundary, transactions, IDs, failure gate/policy>` | `<snapshot and duplication tests>` | `<result precedes services; post-failure mutations are disabled or independently durable>` | `<service costs/capacity/UI>` | `<snapshot owner, order, failure gate, cycle, transaction change>` | `<persistence, duplication, re-entry, restart>` |
| Exit-and-reentry lock | `<preparation, information, margin equation, re-entry/reset matrix>` | `<route, timing, settings, authority evidence>` | `<all supported exits meet exclusions and margin>` | `<named timing assists>` | `<geometry, cue, speed, handoff, topology, anchor change>` | `<exit, accessibility, re-entry, authority traces>` |

## Intended pressure conversion — Pressure-ledger lock

> `<What should the player be able to rely on after valid entry?>`

| Pressure | Outside | On valid entry | During occupancy | On exit | On reload | Reason/evidence |
| --- | --- | --- | --- | --- | --- | --- |
| Current attacks | `<...>` | `<clears/changes/persists>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Confirmed pursuit | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Search/memory | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Environmental hazard | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Health | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Light/ammunition/tools | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Inventory/world pickups | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Objectives | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| External clock | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

Out of scope: `<pause/global save/general economy/fake refuge/etc.>`

## Reuse inventory

| Responsibility | Existing path/asset | Observed behavior | Decision | Evidence |
| --- | --- | --- | --- | --- |
| Room/threshold | `<...>` | `<...>` | `<...>` | `<...>` |
| Door/seal | `<...>` | `<...>` | `<...>` | `<...>` |
| Player/damage | `<...>` | `<...>` | `<...>` | `<...>` |
| Threat/pursuit | `<...>` | `<...>` | `<...>` | `<...>` |
| Director/spawn | `<...>` | `<...>` | `<...>` | `<...>` |
| Save/checkpoint | `<...>` | `<...>` | `<...>` | `<...>` |
| Inventory/resources | `<...>` | `<...>` | `<...>` | `<...>` |
| Services/UI/audio | `<...>` | `<...>` | `<...>` | `<...>` |

## Boundary contract — Refuge-boundary lock

- Stable boundary geometry/volume: `<...>`
- Legal approach side and interaction: `<...>`
- Range, line, key, power, seal, and life requirements: `<...>`
- Duplicate/debounce identity: `<...>`
- Exact protection commitment point: `<...>`
- Exact exit protection handoff: `<...>`

### Entry order

1. `<validate>`
2. `<commit entering>`
3. `<resolve player actions>`
4. `<seal/door>`
5. `<grant declared protection>`
6. `<reconcile threats/damage>`
7. `<prove stable occupancy: seal, protection, ledger, threats>`
8. `<capture and durably resolve baseline checkpoint while optional services are disabled>`
9. `<report checkpoint result and apply retry/continue policy>`
10. `<enter occupied_ready; after failure enable only read-only services unless a mutating service has independently durable ownership and tests>`

### Attack and hazard resolution

| Pending effect | Before commitment | After commitment | Evidence |
| --- | --- | --- | --- |
| Melee windup | `<...>` | `<...>` | `<...>` |
| Grab | `<...>` | `<...>` | `<...>` |
| Projectile | `<...>` | `<...>` | `<...>` |
| Damage over time | `<...>` | `<...>` | `<...>` |
| Environmental hazard | `<...>` | `<...>` | `<...>` |

## Lifecycle

| State | Entry cause | Protection | Services | Door/input | Exit causes |
| --- | --- | --- | --- | --- | --- |
| Outside danger | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Entering | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Occupied stabilizing | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Occupied ready | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Exit preparing | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Exiting | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

Threshold jitter and repeat-crossing rule: `<...>`

## Threat reconciliation — Exterior-threat lock

| Threat/hazard | Entry response | Occupancy behavior | Memory | Exit constraint | Persistence |
| --- | --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

- Exterior stopping/reroute points: `<...>`
- Refuge exclusion geometry: `<...>`
- Spawn/relocation minimum distance: `<...>`
- Visibility and reachability constraints: `<...>`
- Maximum doorway camping policy: `<...>`
- Unique threat identity policy: `<...>`

## Services and transactions — Checkpoint-and-service lock

| Service | Availability state | Requires successful baseline? | Cost/capacity | Atomic transaction | Reset cycle | Persistence ID/owner | Feedback |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Save/checkpoint | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Recovery | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Storage | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Crafting | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Route information | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

Duplication protections: `<rapid input, overlap, death, save/load, reconnect>`

## Persistence contract — Checkpoint-and-service lock

- Stable save point in lifecycle: `<...>`
- Checkpoint occurs before these optional services enable: `<...>`
- Checkpoint failure while safety remains active: `<retry / continue without new checkpoint / project rule>`
- Services allowed after checkpoint failure: `<read-only list; independently durable mutations, if any, and owner>`
- Player/load anchor: `<...>`
- Threat serialization/reconstruction: `<...>`
- Door and refuge state: `<...>`
- Resource, item, objective, and service IDs: `<...>`
- Pending transactions allowed at save: `<none or declared>`
- Version/corruption policy: `<...>`
- Application restart scope tested: `<...>`

## Fair exit — Exit-and-reentry lock

- Player-permitted exterior information: `<viewport/listening/map/cue/etc.>`
- Threat information intentionally withheld: `<...>`
- Exit capsule and door sweep exclusion: `<...>`
- Minimum threat path distance: `<...>`
- Protected threshold/control window: `<...>`
- Camera and input restoration: `<...>`
- Cancel-before-commit rule: `<...>`

```text
player control window      = <...>
required orientation time = <...>
estimated fair margin      = <...>
measured margin            = <...>
```

## Success, failure, re-entry, restart

- Dangerous approach: `<...>`
- Valid entry: `<...>`
- Rejected invalid entry: `<...>`
- Service use: `<...>`
- Exit and resumed danger: `<...>`
- Re-entry: `<...>`
- Exterior failure: `<...>`
- Persistent inside failure, if any: `<...>`

Reset/restore checklist:

- [ ] lifecycle, boundary, debouncers, door animation/collision/navigation
- [ ] protection, pending attacks, damage, hazards, and player state
- [ ] threat state, memory, paths, timers, director exclusions, unique IDs
- [ ] services, transactions, inventory, resources, objectives, world pickups
- [ ] save flags, load anchors, audio, camera, input, UI, and outcomes
- [ ] network authority and queued replication when applicable

## Accessibility

| Need | Behavior | Mechanic change? | Verified |
| --- | --- | --- | --- |
| Hold/toggle/remapping | `<...>` | `<...>` | `<...>` |
| Reduced pursuit audio | `<...>` | `<...>` | `<...>` |
| Reduced motion/flash/haptics | `<...>` | `<...>` | `<...>` |
| Boundary/ready cues | `<multi-channel>` | `<...>` | `<...>` |
| Menu readability/pause | `<...>` | `<...>` | `<...>` |
| Extended entry/exit protection | `<...>` | `<...>` | `<...>` |
| Unbounded rest | `<...>` | `<...>` | `<...>` |

## Multiplayer authority

If irrelevant: `single-player; networking not added`.

- Individual/shared occupancy: `<...>`
- Group entry conditions: `<...>`
- Authority for crossing, door, protection, threats, services, storage, save: `<...>`
- Players remaining outside: `<...>`
- Disconnect/reconnect/host migration: `<...>`
- Door blocking and hostile interaction: `<...>`

## Verification matrix

| ID | Setup/action | Expected causal result | Evidence | Status |
| --- | --- | --- | --- | --- |
| SAFE-01 | Valid pressured entry | One atomic transition to protected occupancy | `<...>` | `<...>` |
| SAFE-02 | Invalid/duplicate request | No partial safety or service | `<...>` | `<...>` |
| SAFE-03 | Attack around commit boundary | Declared resolution only | `<...>` | `<...>` |
| SAFE-04 | Each threat family | Valid exterior reconciliation | `<...>` | `<...>` |
| SAFE-05 | Each pressure dimension | Ledger behavior exactly | `<...>` | `<...>` |
| SAFE-06A | Baseline checkpoint succeeds during stable occupancy | No optional service begins before durable success is known | `<...>` | `<...>` |
| SAFE-06B | Baseline checkpoint fails, then retry or continue is chosen | Safety remains; mutating services stay disabled unless their independent durable transaction is proven | `<...>` | `<...>` |
| SAFE-06C | Repeated permitted service/save/load/death cycle | No loss, rollback mismatch, or duplication | `<...>` | `<...>` |
| SAFE-07 | Exit with outer threat | Information and control margin | `<...>` | `<...>` |
| SAFE-08 | Rapid exit/re-entry | No stale or duplicate state | `<...>` | `<...>` |
| SAFE-09 | Every lifecycle state | Correct restart/load | `<...>` | `<...>` |
| SAFE-10 | Accessibility/input modes | Refuge contract preserved | `<...>` | `<...>` |
| SAFE-11A | Players occupy opposite sides during individual/shared entry | Group rule produces one authoritative protection and threat result | `<...>` | `<... / not applicable>` |
| SAFE-11B | Simultaneous entry and exit requests near the boundary | One ordered crossing commits; no partial or duplicated protection | `<...>` | `<... / not applicable>` |
| SAFE-11C | Attack and entry reach authority under latency | Locked before/after boundary resolves damage exactly once | `<...>` | `<... / not applicable>` |
| SAFE-11D | Storage/service transaction races with disconnect or reconnect | Ownership remains singular and transaction follows the failure policy | `<...>` | `<... / not applicable>` |
| SAFE-11E | Host migration during occupancy or exit, if claimed | Lifecycle, threats, services, and protection reconstruct coherently | `<...>` | `<... / not applicable>` |

## Lock review

- [ ] Every boundary, pressure, threat, checkpoint, service, and exit rule traces to a locked artifact.
- [ ] Invalid entry was tested without partial protection, door motion, checkpoint, or service state.
- [ ] The baseline checkpoint resolved before any optional service transaction began.
- [ ] After checkpoint failure, every enabled service was read-only or proved an independently durable transaction across death, reload, and reconnect.
- [ ] Every reopened earlier layer caused the named dependent implementation and evidence to be replaced or rerun.
- [ ] No late tuning, presentation, save callback, director fallback, or network path bypassed a reopen rule.

## Handoff

- Run command and route: `<...>`
- Exact safe boundary and commitment: `<...>`
- Pressure ledger summary: `<...>`
- Threat reconciliation: `<...>`
- Services and persistence: `<...>`
- Exit information/protection: `<...>`
- Verified scenarios: `<...>`
- Reused assets/proxies: `<...>`
- Tested settings/environments: `<...>`
- Proposals, blockers, limitations: `<...>`
