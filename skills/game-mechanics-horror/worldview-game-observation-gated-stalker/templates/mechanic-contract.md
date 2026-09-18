# Observation-Gated Stalker — Mechanic Contract

Copy this template into the target project's established design location. Replace every placeholder. Keep observed facts, requested facts, proposals, and judgments visibly distinct.

## Status

| Field | Value |
| --- | --- |
| Encounter | `<name>` |
| Project and scene | `<path>` |
| Runtime and version | `<runtime>` |
| Contract owner | `<name or role>` |
| Last verified | `<date and environment>` |
| Implementation state | `proposed / implemented / partially verified / verified` |

## Evidence key

- **Verified fact:** observed in the named project or runtime.
- **User requirement:** binding statement from the brief.
- **Proposal:** intended addition not yet verified.
- **Judgment:** chosen interpretation among viable alternatives.
- **Blocked:** cannot be resolved with the current project or Harness.

## Layer lock record

Complete the rows in order. A changed earlier row reopens the named dependent work; do not edit a later table to conceal the contradiction.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Observer and occlusion lock | `<predicate, camera list, sample map, occluder table>` | `<paths, runtime queries, or proposal record>` | `<evidence/decision that closes it>` | `<margins or thresholds within the same semantics>` | `<new view, sample, or blocker category>` | `<permission tests, route timing, camera aggregation evidence>` |
| Permission-order lock | `<state graph, update order, displacement/harm ownership>` | `<code paths and step traces>` | `<all movement and harm sources assigned>` | `<grace, speed, windup values>` | `<new owner, displacement, attack, or update phase>` | `<state code, contact, restart, timing evidence>` |
| Attention-route lock | `<landmark and reachability graph>` | `<map, collision, navigation, sight evidence>` | `<attention task and reacquisition route are reachable>` | `<presentation that preserves geometry>` | `<objective, occluder, exit, or route moves>` | `<pressure calculation and route traces>` |
| Contact-timing lock | `<distance/time budget and resolution boundaries>` | `<measurements and authoritative clock trace>` | `<success and failure boundaries both reproduced>` | `<named tunables inside tested ranges>` | `<distance, speed, reach, interaction, or clock changes>` | `<balance claims and boundary traces>` |
| Authority-and-evidence lock | `<observer aggregation, authority table, verification matrix>` | `<topology/configuration and evidence paths>` | `<owners, settings, restart, and conditional network cases declared>` | `<capture/log format>` | `<topology, aggregation, supported view/input, or save boundary changes>` | `<authority, accessibility, determinism, restart evidence>` |

## Experience contract

### Intended player statement

> `<In one sentence, what should the player understand they did to survive?>`

### Attention trade

- What watching the stalker protects: `<...>`
- What the player cannot inspect or perform while watching: `<...>`
- How the player estimates safety while looking elsewhere: `<...>`
- What prevents constant backward walking from solving the route: `<...>`

### Out of scope

- `<ordinary chase behavior not included>`
- `<cinematic or art deliverable not included>`
- `<framework/generalization deferred>`

## Reuse inventory

| Responsibility | Existing path or asset | Observed behavior | Reuse decision | Evidence |
| --- | --- | --- | --- | --- |
| Player controller | `<...>` | `<...>` | `<...>` | `<...>` |
| Active camera | `<...>` | `<...>` | `<...>` | `<...>` |
| Map and collision | `<...>` | `<...>` | `<...>` | `<...>` |
| Navigation | `<...>` | `<...>` | `<...>` | `<...>` |
| Stalker | `<...>` | `<...>` | `<...>` | `<...>` |
| Objective and exit | `<...>` | `<...>` | `<...>` | `<...>` |
| Audio and animation | `<...>` | `<...>` | `<...>` | `<...>` |
| Restart/save flow | `<...>` | `<...>` | `<...>` | `<...>` |

## Observation definition — Observer and occlusion lock

### Observer

- Authoritative camera or view: `<...>`
- Supported view modes: `<...>`
- Do mirrors, portals, monitors, spectators, or minimaps count: `<yes/no and why>`
- Multiplayer aggregation, if any: `<any / all / designated / not applicable>`

### Stalker samples

| Sample | Body-relative location | Counts toward observation | Reason |
| --- | --- | --- | --- |
| `<head>` | `<...>` | `<...>` | `<...>` |
| `<torso>` | `<...>` | `<...>` | `<...>` |
| `<pelvis>` | `<...>` | `<...>` | `<...>` |
| `<additional>` | `<...>` | `<...>` | `<...>` |

- Required visible samples: `<...>`
- Frustum margin: `<...>`
- Observation enter threshold: `<...>`
- Observation exit/release grace: `<...>`
- Sampling frequency and authoritative step: `<...>`

### Occlusion

| Surface or layer | Blocks observation? | Blocks movement? | Visual behavior | Judgment |
| --- | --- | --- | --- | --- |
| `<solid wall>` | `<...>` | `<...>` | `<...>` | `<...>` |
| `<glass>` | `<...>` | `<...>` | `<...>` | `<...>` |
| `<foliage or grate>` | `<...>` | `<...>` | `<...>` | `<...>` |
| `<moving door>` | `<...>` | `<...>` | `<...>` | `<...>` |

Ray origin, target, masks, ignored bodies, and first-hit rule: `<...>`

### Plain-language predicate

```text
observed = <write the complete rule without code syntax>
```

## State and permission model — Permission-order lock

| State | Entry cause | Movement permission | Harm permission | Feedback | Exit causes |
| --- | --- | --- | --- | --- | --- |
| Dormant | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Frozen observed | `<...>` | `none` | `none` | `<...>` | `<...>` |
| Release grace | `<...>` | `none` | `none` | `<...>` | `<...>` |
| Pursuing unobserved | `<...>` | `<...>` | `none until windup` | `<...>` | `<...>` |
| Attack windup | `<...>` | `<...>` | `<resolution rule>` | `<...>` | `<...>` |
| Caught | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Success | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

### Simulation order

1. `<consume input>`
2. `<resolve camera>`
3. `<evaluate observation>`
4. `<update permission>`
5. `<move>`
6. `<resolve windup/contact>`
7. `<present>`

List every displacement source and how it is frozen: navigation `<...>`, physics `<...>`, root motion `<...>`, scripted correction `<...>`, replication `<...>`.

## Spatial contract — Attention-route lock

| Landmark | World location or stable identifier | Mechanical purpose | Reachability evidence |
| --- | --- | --- | --- |
| Start | `<...>` | `<safe teaching view>` | `<...>` |
| First attention task | `<...>` | `<...>` | `<...>` |
| Broad occluder | `<...>` | `<...>` | `<...>` |
| Reacquisition line | `<...>` | `<...>` | `<...>` |
| Objective | `<...>` | `<...>` | `<...>` |
| Exit | `<...>` | `<...>` | `<...>` |

### Pressure estimate

```text
attention-away interval = <... seconds>
effective stalker speed = <... units/second>
closing distance        = <... units>
initial path distance   = <... units>
attack reach            = <... units>
estimated safety margin = <... units>
```

Record acceleration, turns, interaction locks, and other reasons the measured result may differ: `<...>`

## Tunables by owning lock

| Name | Owning lock | Initial proposal | Verified range | Why it exists | Accessibility effect |
| --- | --- | --- | --- | --- | --- |
| `release_grace` | Permission-order lock | `<...>` | `<...>` | `<edge stability>` | `<...>` |
| `move_speed` | Contact-timing lock | `<...>` | `<...>` | `<pressure>` | `<...>` |
| `stop_distance` | Contact-timing lock | `<...>` | `<...>` | `<collision/readability>` | `<...>` |
| `attack_reach` | Contact-timing lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `attack_windup` | Permission-order lock | `<...>` | `<...>` | `<final response window>` | `<...>` |
| `sample_threshold` | Observer and occlusion lock | `<...>` | `<...>` | `<partial visibility rule>` | `<...>` |

A value change inside its declared mutable range still invalidates dependent Contact-timing evidence. A change to what the value means reopens its owning lock.

## Objective, success, and failure

- Activation: `<...>`
- Objective legal range, line, and state: `<...>`
- Success boundary and lock: `<...>`
- Failure A and causal lesson: `<...>`
- Failure B and causal lesson: `<...>`
- Impossible or rejected interactions: `<...>`

## Restart inventory

Confirm reset of:

- [ ] stalker transform, path, velocity, state, and observation history
- [ ] grace and attack timers
- [ ] animation, root motion, audio loops, and presentation events
- [ ] player transform, camera, input locks, and health/outcome
- [ ] objective, inventory, doors, moving occluders, and exit
- [ ] network authority, replicated state, and pending messages when relevant

## Accessibility and input

| Need or setting | Supported behavior | Rule preserved or changed? | Verification |
| --- | --- | --- | --- |
| Camera sensitivity/inversion | `<...>` | `<...>` | `<...>` |
| Reduced motion/flash | `<...>` | `<...>` | `<...>` |
| State cue redundancy | `<...>` | `<...>` | `<...>` |
| Keyboard and mouse | `<...>` | `<...>` | `<...>` |
| Controller | `<...>` | `<...>` | `<...>` |
| Touch | `<...>` | `<...>` | `<...>` |
| Timing assist | `<...>` | `<...>` | `<...>` |

## Multiplayer authority — Authority-and-evidence lock

If not applicable, write `single-player; no networking added`.

- Authoritative observer test: `<...>`
- Camera aggregation: `<...>`
- Owner of movement, windup, damage, objective, and outcome: `<...>`
- Prediction and correction policy: `<...>`
- Join, leave, and disconnect behavior: `<...>`

## Verification matrix

| ID | Setup | Action | Expected causal result | Evidence | Status |
| --- | --- | --- | --- | --- | --- |
| OBS-01 | Clear full view | Hold view | No displacement or harm | `<...>` | `<...>` |
| OBS-02 | Solid wall between | Face wall/stalker direction | Release after grace | `<...>` | `<...>` |
| OBS-03 | Edge/partial samples | Sweep camera slowly | Declared threshold only | `<...>` | `<...>` |
| OBS-04 | Unobserved pursuit | Reacquire | Immediate freeze | `<...>` | `<...>` |
| OBS-05 | Attack windup | Reacquire before resolution | Harm canceled | `<...>` | `<...>` |
| OBS-06 | Ignore threat | Continue objective | Real failure | `<...>` | `<...>` |
| OBS-07 | Complete route | Use intended glances | Success | `<...>` | `<...>` |
| OBS-08 | Every active state | Restart | Clean initial state | `<...>` | `<...>` |
| OBS-09 | Supported viewport/input extremes | Replay route | Same rule | `<...>` | `<...>` |
| OBS-10 | Alternate render schedule | Replay fixed-step trace | Same authoritative outcome | `<...>` | `<...>` |
| OBS-11 | Two clients; only one has a clear sample ray | Apply declared camera aggregation | Observed result matches `any/all/designated` rule on authority | `<...>` | `<... / not applicable>` |
| OBS-12 | Two clients on contradictory sides of one occluder | Cross observation threshold | One authoritative state and reason replicate to both clients | `<...>` | `<... / not applicable>` |
| OBS-13 | Reacquisition reaches host near attack resolution under latency | Repeat before/after boundary | Host cancels or resolves exactly once at the locked boundary | `<...>` | `<... / not applicable>` |
| OBS-14 | Join, disconnect, and restart while observation or windup is active | Change participant set | Aggregation, state, timers, and pending harm reconstruct without stale observers | `<...>` | `<... / not applicable>` |

## Lock review

- [ ] Every implementation rule traces to one locked artifact.
- [ ] Any changed early layer was explicitly reopened and all named dependent checks were rerun.
- [ ] No late tuning, presentation, engine workaround, or network path bypassed a reopen rule.

## Handoff

- Run command and scene: `<...>`
- Controls: `<...>`
- First proof of activation: `<...>`
- Successful route verified: `<...>`
- Diagnostic failures verified: `<...>`
- Reused assets: `<...>`
- Proxies: `<...>`
- Tested environments: `<...>`
- Inferred or proposed behavior: `<...>`
- Blockers and known edge cases: `<...>`
