# <Tracking encounter name>

## Purpose

What unseen condition should the player infer? Which advance, wait, divert, search, or retreat decision should the signal make possible without revealing the exact answer?

## Source boundary

### Declared by the user or project

- World rule:
- Existing map and playable entry:
- Existing threat/source:
- Existing detector or player sense:
- Supported input and presentation modes:

### Observed in a running build

- Observation:
- Evidence location:

### Proposed for this mechanic

- Rule or asset:
- Why it is needed:
- What would make it change:

## Layer lock record

Complete the locks in order. Reopen the earliest affected lock when later work contradicts an artifact, and invalidate the dependent work before proceeding.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Source Observation Lock |  |  |  |  |  |  |
| Spatial Propagation Lock |  |  |  |  |  |  |
| Reading Vocabulary Lock |  |  |  |  |  |  |
| Response Window Lock |  |  |  |  |  |  |

## Information boundary — Source Observation Lock

| Layer | Owner | Records | May expose to next layer |
| --- | --- | --- | --- |
| World/source truth |  |  |  |
| Allowed sample |  |  |  |
| Spatial/interference transform |  |  |  |
| Filtered reading |  |  |  |
| Player-facing band/cue |  |  |  |

List debug-only values that must not appear in player presentation.

## Player verbs and decisions

| Verb | Input | Preconditions | State change | Information or cost |
| --- | --- | --- | --- | --- |
| Equip/read receiver |  |  |  |  |
| Sample or scan, if active |  |  |  |  |
| Move/turn |  |  |  |  |
| Advance/wait/divert/retreat |  |  |  |  |

## Eligible sources — Source Observation Lock

| Source type/ID | Active condition | Intensity | Exclusion rule | Identity visible? |
| --- | --- | ---: | --- | --- |
|  |  |  |  |  |

- Multiple-source aggregation:
- Dormant/destroyed source behavior:
- Source ownership:

## Spatial model — Spatial Propagation Lock

- Metric: Euclidean / path / portal / authored zone / hybrid
- Why it matches the world and decision:
- Occluding materials or boundaries:
- Door and moving-boundary behavior:
- Vertical-layer behavior:
- Maximum useful range:

```text
conceptual raw signal =
```

## Signal bands — Reading Vocabulary Lock

| Band | Enter threshold | Exit threshold | Minimum dwell/response | Meaning | Cannot reveal |
| --- | ---: | ---: | ---: | --- | --- |
| Baseline |  |  |  |  |  |
| Trace |  |  |  |  |  |
| Near |  |  |  |  |  |
| Critical |  |  |  |  |  |
| Saturated, if used |  |  |  |  |  |

- Sample/update rate:
- Attack smoothing:
- Release smoothing:
- Hysteresis implementation:
- Fastest supported source approach:

## Presentation — Reading Vocabulary Lock

| State change | Audio | Visual/text | Haptic | World cue |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

State which two or more channels carry each essential distinction and what happens when one is unavailable.

## Calibration and interference — Spatial Propagation and Reading Vocabulary Locks

- Calibration encounter or self-test:
- What confirms the source/readout relationship:
- Interference sources:
- Distinguishing signature:
- Bounds:
- Countermeasure or second observation:
- False-positive rule:
- False-negative rule, if any:

## Tool cost and lifecycle — Response Window Lock

- Always available, equipped, placed, or sampled:
- Attention/hand/time/charge/noise cost:
- Equip and unequip transitions:
- Timers/subscriptions owned by the tool:
- Behavior during another interaction:

## Map and response contract — Response Window Lock

| Landmark or situation | Expected band | Available decision | Response path/time | Evidence |
| --- | --- | --- | ---: | --- |
|  |  |  |  |  |

```text
warning time =
player response time =
measured margin =
```

## Tunables

| Name | Value | Unit | Why this value | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success and failure

- Successful decision made from the signal:
- Completion condition:

| Decision/event | Available evidence | Outcome | What the player can learn |
| --- | --- | --- | --- |
|  |  |  |  |

## Restart

List samples, filter history, current band, hysteresis, timers, subscriptions, equip state, active cues, haptics, captions, interference, source references, debug trails, and outcome that reset clears.

## Accessibility and input

- Supported input families and remapping:
- Audio-independent band and interference cues:
- Color-independent distinctions:
- Haptic-independent distinctions:
- Reduced-motion behavior:
- UI scale and narrow-viewport behavior:

## Network authority

Complete only when actually networked.

- Authoritative source owner:
- Per-player or shared receiver:
- Replicated limited observation:
- Exact data intentionally withheld from clients:
- Prediction/correction rule:
- Late-join and disconnect behavior:
- Delay and restart behavior:

## Verification

- [ ] Baseline with no eligible source is correct.
- [ ] Both sides of every band threshold were tested.
- [ ] Hysteresis prevents boundary chatter.
- [ ] Approach, retreat, and fastest supported approach preserve useful response.
- [ ] Walls, doors, floors, zones, or path rules match the contract.
- [ ] Interference is bounded, distinguishable, and recoverable.
- [ ] Multiple and ineligible sources follow the aggregation filter.
- [ ] One player decision using the signal succeeds.
- [ ] One comprehensible decision fails without violating the signal promise.
- [ ] Repeated equip/sample actions do not multiply updates.
- [ ] Restart clears all accumulated signal state.
- [ ] Supported presentation, input, viewport, and network paths were tested.
- [ ] Screenshot and behavioral trace were captured separately.
- [ ] Untested conditions and limitations are recorded.
- [ ] No late implementation or tuning change bypassed a lock's reopen rule; invalidated dependent evidence was rerun.
