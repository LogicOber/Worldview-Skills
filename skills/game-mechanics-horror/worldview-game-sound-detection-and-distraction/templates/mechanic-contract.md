# Sound Detection and Distraction — Mechanic Contract

Copy this template into the project's design location and replace every placeholder. Preserve the evidence labels; do not let a proposed value appear as a verified fact.

## Status

| Field | Value |
| --- | --- |
| Encounter | `<name>` |
| Project/scene | `<path>` |
| Runtime/version | `<...>` |
| Owner | `<...>` |
| Last verified | `<date, build, platform>` |
| State | `proposed / implemented / partially verified / verified` |

Evidence labels: **fact**, **user requirement**, **proposal**, **judgment**, **blocked**.

## Layer lock record

Complete these rows in order. If an earlier artifact changes, reopen it and rerun the dependent work instead of retuning a later row around the contradiction.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Emission-event lock | `<event schema, emitter table, debounce and sequence rules>` | `<code paths, source data, event trace>` | `<one causal boundary per included action>` | `<intensities/cadence within source roles>` | `<new emitter, moving source, or ownership>` | `<propagation, priority, persistence, duplicate tests>` |
| Propagation-map lock | `<model, zone/link graph, barrier table, received equation>` | `<map, door, collision, query evidence>` | `<world representations agree and boundary query reproduces>` | `<attenuation/falloff within topology>` | `<connector, barrier, door owner, or method changes>` | `<thresholds, redirect scores, opportunity traces>` |
| Listener-decision lock | `<predicate, memory, score formula, comparator, margin, tie order, state graph>` | `<below/above and competing-event traces>` | `<every competition resolves deterministically>` | `<threshold/weights/age/margin in tested ranges>` | `<knowledge, override, score term, comparator, tie changes>` | `<response code, competition tests, timing>` |
| Distraction-opportunity lock | `<landmarks, device constraint, commitment/player equations>` | `<navigation, placement, interaction, timing traces>` | `<success and failure boundaries reproduced>` | `<resource/timing values in tested ranges>` | `<source, junction, route, objective, duration changes>` | `<outcome and balance evidence>` |
| Hearing-authority proof lock | `<authority, restart, accessibility information map, verification matrix>` | `<topology/config and evidence paths>` | `<owners, channels, reset, conditional network cases declared>` | `<presentation/evidence format>` | `<topology, channel, save boundary, device owner changes>` | `<authority, accessibility, persistence, restart evidence>` |

## Intended player reasoning

> `<What sound decision should the player be able to explain after success?>`

- Risky noise: `<...>`
- Deliberate distraction: `<...>`
- Opportunity created: `<...>`
- Information intentionally withheld: `<...>`
- Out of scope: `<...>`

## Reuse inventory

| Responsibility | Existing path/asset | Observed behavior | Decision | Evidence |
| --- | --- | --- | --- | --- |
| Player locomotion | `<...>` | `<...>` | `<...>` | `<...>` |
| Interactions | `<...>` | `<...>` | `<...>` | `<...>` |
| Surface/material data | `<...>` | `<...>` | `<...>` | `<...>` |
| Listener AI | `<...>` | `<...>` | `<...>` | `<...>` |
| Navigation/collision | `<...>` | `<...>` | `<...>` | `<...>` |
| Doors/zones | `<...>` | `<...>` | `<...>` | `<...>` |
| Audio and captions | `<...>` | `<...>` | `<...>` | `<...>` |
| Objective/restart | `<...>` | `<...>` | `<...>` | `<...>` |

## Authoritative sound event — Emission-event lock

```text
event_id:        <...>
emitter_id:      <...>
source_kind:     <...>
origin:          <captured how and when>
base_intensity:  <units and range>
profile:         <...>
started_at:      <clock>
duration:        <impulse or sustained rule>
sequence:        <duplicate protection>
tags:            <...>
```

- Causal emission boundary: `<...>`
- Duplicate/debounce rule: `<...>`
- Sustained-event cadence: `<...>`
- Relationship to audio playback: `<...>`

## Source table

| Action/source | Base intensity | Profile | Cadence | Player feedback | Why included |
| --- | --- | --- | --- | --- | --- |
| Walk | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Sprint | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Crouch | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Interaction | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Distraction | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Environment | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

### Surface modifiers

| Surface | Multiplier or rule | Identification source | Feedback | Evidence |
| --- | --- | --- | --- | --- |
| `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

## Propagation — Propagation-map lock

Selected model: `distance+obstruction / portal graph / navigation approximation / project-native`

Why it matches the map: `<...>`

```text
received_intensity = <plain-language or mathematical rule>
```

| Barrier/link | State | Effect | Visual/audio agreement | Evidence |
| --- | --- | --- | --- | --- |
| Wall | `<...>` | `<...>` | `<...>` | `<...>` |
| Door | Open | `<...>` | `<...>` | `<...>` |
| Door | Closed | `<...>` | `<...>` | `<...>` |
| Vent/stair/link | `<...>` | `<...>` | `<...>` | `<...>` |
| Masking machine | `<...>` | `<threshold effect>` | `<...>` | `<...>` |

Debug data retained per event: `<path/links, modifiers, final value>`

## Listener hearing and knowledge — Listener-decision lock

- Listener ID/profile: `<...>`
- Base threshold: `<...>`
- State/category threshold changes: `<...>`
- Deterministic tie rule: `<...>`
- Current sight priority: `<...>`

```text
received = <complete declared predicate>
```

Stored knowledge:

```text
heard_event_id:      <...>
last_heard_origin:   <...>
last_heard_at:       <...>
received_intensity:  <...>
source_kind:         <...>
priority/confidence: <...>
```

Explicitly forbidden knowledge: `<for example, hidden live player transform>`

## Priority and state model — Listener-decision lock

Priority score with named units and every term filled: `<candidate_score = ...>`

Redirect comparator and commitment/switch margin: `<candidate_score > current_score + margin, or another exact rule>`

Exact-equality behavior: `<retain current target or another declared result>`

Idle equal-score tie order: `<ordered stable fields ending in event ID/sequence>`

Same-emitter/same-origin refresh or coalescing rule: `<...>`

| State | Entry | Knowledge used | Movement/response | Feedback | Exit |
| --- | --- | --- | --- | --- | --- |
| Unaware/patrol | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Notice/orient | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |
| Investigate | `<...>` | `<stored event origin>` | `<...>` | `<...>` | `<...>` |
| Search | `<...>` | `<bounded region>` | `<...>` | `<...>` | `<...>` |
| Confirmed pursuit | `<...>` | `<current perception>` | `<...>` | `<...>` | `<...>` |
| Resume/escalated patrol | `<...>` | `<...>` | `<...>` | `<...>` | `<...>` |

## Distraction contract — Distraction-opportunity lock

- Object or environmental source: `<...>`
- Placement/activation rule: `<...>`
- Resource constraint: `<retrieval, charge, cooldown, wind-up, risk>`
- Legal and rejected placements: `<...>`
- Event sequence: `<...>`
- Listener commitment created: `<...>`
- Conditions that correctly defeat the distraction: `<...>`

## Spatial and timing contract — Distraction-opportunity lock

| Landmark | Stable location | Mechanical role | Reachability/line evidence |
| --- | --- | --- | --- |
| Start | `<...>` | `<...>` | `<...>` |
| Distraction origin | `<...>` | `<...>` | `<...>` |
| Listener route | `<...>` | `<...>` | `<...>` |
| Player crossing | `<...>` | `<...>` | `<...>` |
| Objective | `<...>` | `<...>` | `<...>` |
| Safety/exit | `<...>` | `<...>` | `<...>` |

```text
listener commitment = orient + path + minimum inspection = <...>
player opportunity   = clear delay + traversal + interaction + buffer = <...>
estimated margin     = <...>
measured margins     = <earliest, nominal, latest>
```

## Success, failures, and restart

- Activation/tutorial: `<...>`
- Intended success: `<...>`
- Failure from noisy movement: `<...>`
- Failure from poor distraction placement/timing: `<...>`
- Failure or escalation from visual confirmation: `<...>`
- Restart entry points: `<...>`

Reset checklist:

- [ ] event queue, sustained events, IDs, sequences, and debouncers
- [ ] listener memory, priority, state, path, alertness, and timers
- [ ] distraction placement, ownership, charge, cooldown, and audio
- [ ] player, inventory, doors, surfaces, machines, and objective
- [ ] captions, indicators, haptics, audio loops, outcomes, and UI
- [ ] authoritative/replicated messages when networked

## Accessibility

| Information or action | Primary channel | Alternative channel | Extra knowledge introduced? | Verified |
| --- | --- | --- | --- | --- |
| Player emitted sound | `<...>` | `<...>` | `<...>` | `<...>` |
| Approximate intensity | `<...>` | `<...>` | `<...>` | `<...>` |
| Listener received it | `<...>` | `<...>` | `<...>` | `<...>` |
| Relative source direction | `<...>` | `<...>` | `<...>` | `<...>` |
| Device activation | `<...>` | `<...>` | `<...>` | `<...>` |
| Reduced transients/vibration | `<...>` | `<...>` | `<...>` | `<...>` |

## Multiplayer authority — Hearing-authority proof lock

If irrelevant, state `single-player; networking not added`.

- Event authority and sequence: `<...>`
- Propagation and reception owner: `<...>`
- Listener state/navigation owner: `<...>`
- Device ownership and disconnect rule: `<...>`
- Client presentation/prediction: `<...>`
- Hidden information policy: `<...>`

## Verification matrix

| ID | Setup/action | Expected causal result | Evidence | Status |
| --- | --- | --- | --- | --- |
| SND-01 | One causal action | Exactly one event ID | `<...>` | `<...>` |
| SND-02 | Below/above threshold | Stable different reception | `<...>` | `<...>` |
| SND-03 | Open/closed barrier | Documented propagation change | `<...>` | `<...>` |
| SND-04 | Player moves after event | Target remains emission origin | `<...>` | `<...>` |
| SND-05 | Routine decoy during sight | Declared priority wins | `<...>` | `<...>` |
| SND-06A | Candidate score just below, exactly at, and just above the committed score plus switch margin | Below/equal retain; above redirects exactly once | `<...>` | `<...>` |
| SND-06B | No current commitment; equal candidate scores | Recorded stable tie order selects one target reproducibly | `<...>` | `<...>` |
| SND-06C | Repeated accepted events from the same emitter and origin during travel and inspection | Declared refresh/coalescing rule updates memory without route churn or duplicate investigation | `<...>` | `<...>` |
| SND-07 | Intended distraction/crossing | Objective succeeds | `<...>` | `<...>` |
| SND-08 | Noisy or mistimed action | Diagnostic failure | `<...>` | `<...>` |
| SND-09 | Every active state | Complete restart | `<...>` | `<...>` |
| SND-10 | Accessibility/input modes | Equivalent intended information | `<...>` | `<...>` |
| SND-11 | Alternate render schedule | Same authoritative trace | `<...>` | `<...>` |
| SND-12A | Two clients emit simultaneous or equal-priority events | Authority assigns unique identities and resolves one stable order | `<...>` | `<... / not applicable>` |
| SND-12B | Device activation reaches authority near a latency boundary | Activation, resource spend, and emitted sequence commit exactly once | `<...>` | `<... / not applicable>` |
| SND-12C | Door authority changes while an event propagates | The locked sampling-time rule yields one shared propagation result | `<...>` | `<... / not applicable>` |
| SND-12D | Device owner disconnects with a sustained or placed source active | Source follows the declared transfer, stop, or persistence rule | `<...>` | `<... / not applicable>` |
| SND-12E | Restart occurs with queued or retried sound messages | Stale sequences are rejected and no prior listener memory survives | `<...>` | `<... / not applicable>` |

## Lock review

- [ ] Every event, propagation result, redirect, and opportunity traces to a locked artifact.
- [ ] Switch-margin sides, exact equality, idle tie order, and same-origin refresh/coalescing were tested separately.
- [ ] Every reopened earlier layer caused its named dependent implementation and evidence to be replaced or rerun.
- [ ] No late tuning, one-off trigger, presentation callback, or network path bypassed the reopen rule.

## Handoff

- Run command and scene: `<...>`
- Controls: `<...>`
- Sound sources and propagation summary: `<...>`
- Successful route: `<...>`
- Failures verified: `<...>`
- Reused assets and proxies: `<...>`
- Environments/settings tested: `<...>`
- Proposals and inferences: `<...>`
- Blockers and known limitations: `<...>`
