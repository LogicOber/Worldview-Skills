# Roaming Stalker Pressure — Mechanic Contract

Copy this template into the project and replace every placeholder. Mark each record as verified fact, user requirement, proposal, judgment, or blocker.

## Status

| Field | Value |
| --- | --- |
| Stalker/route | `<name>` |
| Project/scenes | `<paths>` |
| Runtime/version | `<...>` |
| Owner | `<...>` |
| Last verified | `<date, build, platform>` |
| State | `proposed / implemented / partially verified / verified` |

## Layer lock record

Complete these rows in order. Reopen the earliest contradicted row and replace or rerun all dependent work.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| World-route-and-identity lock | `<zone/connectors, owner, abstract travel, loaded materialization predicate, recovery>` | `<map, streaming, navigation, identity traces>` | `<all travel/handoffs have state, time, ownership, reconstruction>` | `<travel time/legal-anchor weighting>` | `<zone, connector, owner, ability, streaming change>` | `<materialization, encounters, save/load, instance evidence>` |
| Stalker-knowledge lock | `<evidence table, memory, precedence, search bounds>` | `<perception and state traces>` | `<every transition cites evidence; hidden movement cannot drag target>` | `<lifetimes/search breadth>` | `<sense, signal, field, precedence change>` | `<behavior, weighting, search, failure evidence>` |
| Pressure-eligibility lock | `<exact predicate, threshold, gain/spend, cooldown, seed/ties, rejections>` | `<director traces and candidate logs>` | `<all comparisons filled; no-candidate result works>` | `<values inside tested ranges>` | `<input, comparator, threshold model, exclusion, debt rule change>` | `<selection, frequency, cooldown, pressure traces>` |
| Encounter-and-warning lock | `<grammar, approaches, warning budget, counterplay, objective route>` | `<route and outcome traces>` | `<two shapes meet all upstream locks>` | `<warning/search/contact timing>` | `<anchor, objective, cue, counterplay, route, contact change>` | `<outcomes and accessibility timing>` |
| Persistence-and-authority lock | `<authority, snapshot, reconstruction, restart, evidence paths>` | `<save/load/restart/topology traces>` | `<owners and stable boundaries explicit and exercised>` | `<evidence/presentation format>` | `<save, host, player set, replication, setting change>` | `<persistence, authority, accessibility, restart>` |

## Experience contract

> `<What should the player learn to infer and do across the route?>`

- Persistent threat identity: `<...>`
- Sources of uncertainty: `<...>`
- Information the player can infer: `<...>`
- Counterplay choices: `<...>`
- Pressure and recovery promise: `<...>`
- Out of scope: `<...>`

## Reuse inventory

| Responsibility | Existing path/system | Observed behavior | Decision | Evidence |
| --- | --- | --- | --- | --- |
| Maps/streaming | `<...>` | `<...>` | `<...>` | `<...>` |
| Navigation/connectors | `<...>` | `<...>` | `<...>` | `<...>` |
| Stalker/controller | `<...>` | `<...>` | `<...>` | `<...>` |
| Perception/knowledge | `<...>` | `<...>` | `<...>` | `<...>` |
| Objectives/world events | `<...>` | `<...>` | `<...>` | `<...>` |
| Counterplay | `<...>` | `<...>` | `<...>` | `<...>` |
| Director/spawns | `<...>` | `<...>` | `<...>` | `<...>` |
| Save/restart | `<...>` | `<...>` | `<...>` | `<...>` |
| Presentation/input | `<...>` | `<...>` | `<...>` | `<...>` |

## Zone graph — World-route-and-identity lock

### Zones

| Zone ID | Player entries/exits | Stalker entries/exits | Objectives | Warning/trace sites | Counterplay | Exclusions | Streaming owner |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

### Connectors

| Connector ID | From/to | Direction | Player? | Stalker? | Current condition | Travel time | Presentation | Streaming/navigation evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

### Candidate anchors

| Anchor | Zone | Role | Reachable route | Visibility constraints | Occupancy/exclusion | Minimum distance | Evidence |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<stage/trace/withdraw>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

## Territory grammar — World-route-and-identity lock

| Territory cue | Connector/boundary implied | First safe observation | Local claim and claimant | Observed behavior | Confirms or contradicts | Player prediction/decision | Save/load owner |
| --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |

- Territory fact taught before first contact:
- Territory change unlocked by objective/world state:
- How that change is communicated before it can cause contact:
- Decorative cue rejected because it teaches no reachability rule:
- Evidence-system handoff for claims versus observed behavior:

### Territory and recovery state fields

```text
territory_cue: <stable cue and the boundary/connector it predicts>
first_safe_observation: <behavior, viewpoint, and why contact cannot occur>
knowledge_source: <sense/event/world fact that legally updates stalker knowledge>
search_commitment: <sites, breadth, duration, and cancellation rule>
route_mutation: <world change, affected connectors, and prior warning>
release_condition: <knowledge/search/world condition; never timer alone>
capture_modifier: <declared help, cost, or none on the next attempt>
post_capture_location: <player node and stalker physical/abstract state>
folklore_claim: <claimant, context, statement, and confidence>
observed_behavior: <event ID, actual behavior, and confirm/contradict result>
```

## Persistent stalker record — World-route-and-identity lock

```text
stalker_id:                    <...>
physical_or_abstract_zone:     <...>
position_or_connector_progress:<...>
behavior_state:                <...>
knowledge_state/evidence:      <...>
route/target reason:           <...>
last_player_contact:           <...>
last_pressure_end:             <...>
encounter_history:             <...>
altered abilities/status:      <...>
materialization state:         <...>
choice seed/state:             <...>
```

- Single-instance owner: `<...>`
- Streaming handoff: `<...>`
- Abstract-travel advancement: `<...>`
- Unloaded-zone abstract route policy: `<what may advance without a scene instance>`
- Loaded physical materialization predicate: `<destination loaded plus visibility, occupancy, reachability, distance, exclusion>`
- Invalid-state recovery/relocation: `<...>`
- Save/load reconstruction: `<...>`

## Knowledge contract — Stalker-knowledge lock

| Evidence | Information granted | Lifetime | May cause | Explicitly does not reveal |
| --- | --- | --- | --- | --- |
| Current sight | `<...>` | `<...>` | `<...>` | `<...>` |
| Sound event | `<...>` | `<...>` | `<...>` | `<...>` |
| Trace | `<...>` | `<...>` | `<...>` | `<...>` |
| Objective/world signal | `<...>` | `<...>` | `<...>` | `<...>` |
| Damage/counterplay | `<...>` | `<...>` | `<...>` | `<...>` |

Knowledge states and transitions: `<unaware / suspicious / investigating / confirmed / searching / project equivalents>`

## Behavior state model — World-route-and-identity lock and Stalker-knowledge lock

| State | Entry cause | Route/knowledge used | Permissions | Player feedback | Exit cause |
| --- | --- | --- | --- | --- | --- |
| Roaming | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Staging | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Foreshadow | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Approach | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Confirmed pursuit | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Search | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Countered/withdraw | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Recovery | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

## Search release and withdrawal — Stalker-knowledge and Encounter-and-warning locks

| Encounter shape | Confirmation-loss cause | Last-known evidence retained | Search sites / maximum breadth | Release condition | Withdrawal connector | End cue in supported modes | Reacquisition during release | Cooldown begins when |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |

- Why timer expiry alone cannot release the stalker:
- Proof the stalker actually left contact:
- Persistent consequence after withdrawal:

## Pressure director — Pressure-eligibility lock

### Inputs allowed

- Objective progress: `<...>`
- Time and route exposure: `<...>`
- Player/stalker zones: `<...>`
- Stalker knowledge: `<...>`
- Available counterplay/exits: `<...>`
- Encounter history: `<...>`
- Difficulty/accessibility: `<...>`
- Inputs forbidden: `<hidden/private state the design rejects>`

### Budget or phase rule

```text
gain = <...>
eligibility threshold/phase = <...>
episode spend = <...>
cooldown start/end = <...>
safe/menu/accessibility debt policy = <...>
```

### Exact full-episode eligibility

```text
eligible =
  budget <comparison> <exact threshold or named phase>
  AND <cooldown/recovery condition>
  AND <allowed stalker state>
  AND <global exclusions false>
  AND <at least one candidate passes every hard rejection>
```

- Result when threshold passes but no candidate is legal: `<...>`
- Whether budget is retained, capped, or spent on defer: `<...>`

### Selection

- Deterministic/seeded rule: `<...>`
- Weighting: `<...>`
- Repetition protection: `<...>`
- Tie order: `<...>`
- `no legal encounter` behavior: `<...>`

## Hard candidate rejections — Pressure-eligibility lock

- [ ] no continuous physical or declared abstract route
- [ ] visible to any relevant active player camera
- [ ] meaningfully inspected within `<interval>`
- [ ] occupied or overlapping player/collision
- [ ] mandatory door, ladder, lift, checkpoint, or only first step
- [ ] safe/tutorial/cinematic/menu/loading exclusion
- [ ] physical staging/materialization zone is not loaded; abstract route progress may continue only under its locked unloaded-zone policy
- [ ] locked, unreachable, broken, or incompatible connector
- [ ] no supported counterplay or escape route
- [ ] minimum warning cannot be delivered
- [ ] another episode or non-interruptible action conflicts

Additional project rejection: `<...>`

## Warning contract — Encounter-and-warning lock

| Encounter | Actual approach route | Warning site | Channels | Information revealed | Minimum time/distance | Cancellation |
| --- | --- | --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

Accessibility equivalence: `<...>`

## Encounter grammar — Encounter-and-warning lock

### Encounter A — `<name/type>`

- Eligibility: `<...>`
- Legal start and warning: `<...>`
- Approach: `<...>`
- Escalation: `<...>`
- Counterplay and cost: `<...>`
- Success/disengagement: `<...>`
- Failure: `<...>`
- Withdrawal and recovery: `<...>`

### Encounter B — `<name/type>`

- Eligibility: `<...>`
- Legal start and warning: `<...>`
- Approach: `<...>`
- Escalation: `<...>`
- Counterplay and cost: `<...>`
- Success/disengagement: `<...>`
- Failure: `<...>`
- Withdrawal and recovery: `<...>`

## Objective pressure route — Pressure-eligibility lock and Encounter-and-warning lock

| Beat | Objective/world state | Intended pressure | Eligible encounters | Required recovery | New rule communicated |
| --- | --- | --- | --- | --- | --- |
| Orientation | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| First evidence | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| First contact | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Route choice | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Escalation | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Success | `<...>` | `<...>` | `none after lock` | `<...>` | `<...>` |

## Tunables by owning lock

| Name | Owning lock | Proposal | Tested range | Purpose | Difficulty/accessibility effect |
| --- | --- | --- | --- | --- | --- |
| `min_warning_time` | Encounter-and-warning lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `recent_visibility_interval` | Pressure-eligibility lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `min_materialize_distance` | World-route-and-identity lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `pressure_gain` | Pressure-eligibility lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `episode_cost` | Pressure-eligibility lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `recovery_cooldown` | Pressure-eligibility lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `search_duration/breadth` | Stalker-knowledge lock | `<...>` | `<...>` | `<...>` | `<...>` |
| `repetition_window` | Pressure-eligibility lock | `<...>` | `<...>` | `<...>` | `<...>` |

## Save, success, failure, restart — Persistence-and-authority lock

- Stable save points: `<...>`
- Persistent stalker/director/world fields: `<...>`
- Reconstruction order: `<...>`
- Route success lock: `<...>`
- Diagnostic failure A: `<...>`
- Diagnostic failure B: `<...>`
- Capture checkpoint: `<...>`
- Route knowledge retained after capture: `<...>`
- Objective progress retained/reset: `<...>`
- Counterplay resource retained/restored/spent: `<...>`
- Stalker zone and knowledge after capture: `<...>`
- Pressure budget/cooldown after capture: `<...>`
- Repeated encounter/connector exclusion: `<...>`
- Capture recovery modifier and player-facing cue: `<...>`

Reset checklist:

- [ ] single stalker identity, instance, transform/zone, path, state, knowledge
- [ ] abstract connector progress and materialization transactions
- [ ] pressure budget/phase, selection, seed, history, cooldown, pending opportunity
- [ ] warnings, searches, attacks, audio, effects, camera, UI
- [ ] objectives, doors, connectors, counterplay resources, safe exclusions
- [ ] saves/checkpoints, outcomes, replicated messages
- [ ] territory cue and safe-observation history
- [ ] local claims remain distinct from observed behavior
- [ ] search release progress and withdrawal connector
- [ ] capture recovery modifier and repeated-encounter exclusion

## Accessibility

| Need | Support | Changes mechanic? | Verification |
| --- | --- | --- | --- |
| Directional warning alternatives | `<...>` | `<...>` | `<...>` |
| Reduced shake/flash/volume/haptics | `<...>` | `<...>` | `<...>` |
| Remap/hold/toggle | `<...>` | `<...>` | `<...>` |
| Longer warning/action window | `<...>` | `<...>` | `<...>` |
| Difficulty adjustments | `<...>` | `<...>` | `<...>` |
| Pause/menu/refuge debt policy | `<...>` | `<...>` | `<...>` |

## Multiplayer authority — Persistence-and-authority lock

If irrelevant: `single-player; networking not added`.

- Relevant player set: `<...>`
- Authority for identity, knowledge, route, director, selection, attacks, objectives: `<...>`
- All-camera visibility rejection: `<...>`
- Players in separate/safe zones: `<...>`
- Disconnect/reconnect/host migration: `<...>`
- Hidden information replication: `<...>`

## Verification matrix

| ID | Setup/action | Expected causal result | Evidence | Status |
| --- | --- | --- | --- | --- |
| ROAM-01 | Stream/travel all zones | One persistent stalker ID | `<...>` | `<...>` |
| ROAM-02 | Each connector/state | Legal traversal only | `<...>` | `<...>` |
| ROAM-03 | Abstract travel enters an unloaded destination, then save/load and destination load occur | Progress survives without a scene instance; physical materialization waits for load and then uses one legal point | `<...>` | `<...>` |
| ROAM-04 | Each hard exclusion, including a physically unloaded staging zone | Candidate rejected; abstract travel is not incorrectly rejected when its separate policy permits it | `<...>` | `<...>` |
| ROAM-05 | No legal candidate | No unfair fallback; locked retain/cap/spend/defer result applies | `<...>` | `<...>` |
| ROAM-05A | One legal candidate; budget just below, exactly at, and above threshold; then begin an episode | Comparator is exact, start spends once, and recovery/cooldown begins under the declared rule | `<...>` | `<...>` |
| ROAM-06 | Each encounter warning | Minimum usable lead | `<...>` | `<...>` |
| ROAM-07 | Hidden player moves | Knowledge does not cheat | `<...>` | `<...>` |
| ROAM-08 | Each counterplay boundary | State changes correctly | `<...>` | `<...>` |
| ROAM-09 | Encounter close | Withdrawal and recovery | `<...>` | `<...>` |
| ROAM-10 | Bounded objective route | Intended pressure and success | `<...>` | `<...>` |
| ROAM-11 | Save/load/restart | Identity/history/world coherent | `<...>` | `<...>` |
| ROAM-12 | Seed replay | Reproducible legal selection | `<...>` | `<...>` |
| ROAM-13A | Supported accessibility/input configurations | Warning and outcome preserve the declared rule | `<...>` | `<...>` |
| ROAM-13B | Relevant players occupy different zones, including one safe zone | Eligibility and target policy use the declared relevant-player set | `<...>` | `<... / not applicable>` |
| ROAM-13C | Relevant cameras have contradictory visibility of one candidate | Any-camera rejection prevents materialization at that point | `<...>` | `<... / not applicable>` |
| ROAM-13D | Simultaneous objective signals arrive from different players | Authority records evidence and chooses one legal pressure result deterministically | `<...>` | `<... / not applicable>` |
| ROAM-13E | Disconnect during staging, then reconnect | Candidate, budget, warning, and single stalker identity follow the declared policy | `<...>` | `<... / not applicable>` |
| ROAM-13F | Latency at warning/contact and host migration, if claimed | No hidden early contact, duplicate stalker, or lost authoritative episode | `<...>` | `<... / not applicable>` |
| ROAM-14 | Territory cues and first safe observation | Player can predict one legal/illegal stalker route before contact | `<...>` | `<...>` |
| ROAM-15 | Local claim conflicts with behavior | Claim provenance remains; controller follows world rule; evidence records contradiction | `<...>` | `<...>` |
| ROAM-16 | Confirmation breaks in each encounter shape | Bounded search completes only through declared release and withdrawal | `<...>` | `<...>` |
| ROAM-17 | Capture in warning, pursuit, search, and release | Checkpoint, retained knowledge, stalker state, budget, resources, and modifier match contract | `<...>` | `<...>` |
| ROAM-18 | Save/load during release and capture recovery | End cue, withdrawal route, history exclusion, and one stalker identity reproduce exactly | `<...>` | `<...>` |

## Lock review

- [ ] Every route, knowledge change, eligibility result, encounter, and save traces to a locked artifact.
- [ ] The exact eligibility comparison and threshold are filled; `no legal encounter` has a declared budget result.
- [ ] Just-below, exact-threshold, and just-above eligibility plus one-time spend and cooldown start were exercised with a legal candidate held constant.
- [ ] Abstract travel through an unloaded zone is distinct from physical staging/materialization in an unloaded zone.
- [ ] Every reopened earlier layer caused the named dependent implementation and evidence to be replaced or rerun.
- [ ] No late tuning, director fallback, streaming callback, or network path bypassed a reopen rule.
- [ ] Territory cues teach reachability before first contact rather than only decorating the map.
- [ ] Local claims and observed behavior remain separate through save/load and contradiction.
- [ ] Release requires actual knowledge/search/route state; cooldown never ends contact by itself.
- [ ] Capture recovery produces the declared retry state without punitive hidden escalation.

## Handoff

- Run command, route, controls, objectives: `<...>`
- Zone graph/connectors: `<...>`
- Stalker identity/knowledge: `<...>`
- Director/budget/exclusions/seed: `<...>`
- Encounters/counterplay/recovery: `<...>`
- Success/failures/save/restart verified: `<...>`
- Reused assets/proxies: `<...>`
- Tested environments/settings: `<...>`
- Inferences/proposals/blockers: `<...>`
