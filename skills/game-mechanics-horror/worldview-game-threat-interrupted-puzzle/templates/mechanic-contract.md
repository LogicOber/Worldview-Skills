# <Encounter name>

## Purpose

Which reasoning or manipulation demands attention? What threat cue should force the player to decide between finishing a bounded action and disengaging?

## Source boundary

### Declared by the user or project

- World rule:
- Existing map and playable entry:
- Existing puzzle/device:
- Existing threat/hazard:
- Existing interaction, camera, save, and input:

### Observed in a running build

- Observation:
- Evidence location:

### Proposed for this encounter

- Rule, state, cue, route, or proxy:
- Why it is needed:
- What could change it:

## Layer lock record

Complete the locks in order. If later implementation contradicts a lock, reopen the earliest affected artifact and invalidate all dependent work before proceeding.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Puzzle State Lock |  |  |  |  |  |  |
| Interruption Policy Lock |  |  |  |  |  |  |
| Threat Window Lock |  |  |  |  |  |  |
| Completion Consequence Lock |  |  |  |  |  |  |

## Puzzle state — Puzzle State Lock

```text
initial configuration =
current configuration =
committed milestones =
working action =
interaction owner/lease =
solved =
completion version =
world consequence =
```

Name the authoritative owner and presentation subscribers.

## Player verbs — Puzzle State Lock

| Verb | Input | Preconditions | Proposed change | Commit/cancel boundary | Feedback |
| --- | --- | --- | --- | --- | --- |
| Enter puzzle |  |  |  |  |  |
| Inspect/compare |  |  |  |  |  |
| Manipulate control |  |  |  |  |  |
| Confirm/lock milestone |  |  |  |  |  |
| Quick-look, if used |  |  |  |  |  |
| Disengage |  |  |  |  |  |
| Use solved consequence |  |  |  |  |  |

## Persistence tiers — Interruption Policy Lock

| State record | Tier: committed/working/ephemeral/attempt | Voluntary exit | Threat interruption | Failure | Save/load | Restart |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |

For each working action, choose and explain revert, pause, checkpoint, or commit.

### Save/load reconstruction

- Existing save/checkpoint owner:
- Authoritative configuration and milestone fields:
- Last stable value for working actions:
- Solve/completion version:
- Published world consequence:
- Ephemeral input, camera, warning, and threat work to cancel:
- Restore order before control returns:
- Idempotent consequence publication:

## Bounded actions — Puzzle State and Interruption Policy Locks

| Action | Start | Maximum duration | Commit point | Cancellation result | Next decision |
| --- | --- | ---: | --- | --- | --- |
|  |  |  |  |  |  |

## Disengagement sequence — Interruption Policy Lock

1. Stop puzzle input:
2. Resolve working state:
3. Restore locomotion/camera/abilities:
4. Cancel or reconcile callbacks:
5. Reconstruct readable committed state:

- Measured disengage duration:
- Behavior if contact occurs during disengagement:

## Threat boundary — Threat Window Lock

- Threat owner and states used:
- Warning boundary/event:
- Multimodal warning cues:
- Contact/interruption events:
- Puzzle outputs the threat may perceive:
- Puzzle milestones that affect threat, if any:
- How the threat creates another return opportunity:

## Map and timing — Threat Window Lock

| Landmark | Stable position | Puzzle/threat role | Collision/navigation | Recovery relationship |
| --- | --- | --- | --- | --- |
| Puzzle |  |  |  |  |
| Warning boundary |  |  |  |  |
| Threat entry |  |  |  |  |
| Recovery space A |  |  |  |  |
| Alternate recovery, if used |  |  |  |  |
| Solved consequence |  |  |  |  |

```text
threat arrival time =
interaction disengage time =
movement and cover time =
recognition/input allowance =
measured decision margin =
```

## Return context — Interruption Policy Lock

- How committed progress is visible:
- How reverted/paused/checkpointed working state is visible:
- How the next legal action is communicated:
- Memory assistance, if relevant:
- What must not be auto-solved or leaked:

## Completion transaction — Completion Consequence Lock

- Final validation:
- Solved latch:
- Interaction release:
- Completion event/version:
- World consequence:
- Duplicate completion rule:
- Concrete follow-through action:

## Tunables

| Name | Value | Unit | Why this value | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success, failure, and recovery

| Decision/event | Available cue | State result | Player outcome | Recovery/lesson |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

List every possible softlock and how another valid puzzle opportunity appears.

## Restart

List configuration, milestones, working actions, interaction lease, input/camera capture, pending callbacks, threat integration events, warning cues, completion/version, world consequence, UI, success, and failure that reset restores or clears.

## Accessibility and input

- Supported input families and remapping:
- Puzzle-state cues independent of color/audio/fine motion:
- Threat warnings independent of audio:
- Quick exit and alternatives to rapid input:
- Reduced-motion/camera behavior:
- Timing assistance and declared rule changes:
- Narrow viewport and scalable UI:

## Network authority

Complete only when actually networked.

- Authoritative puzzle/threat owners:
- Lease or simultaneous-control rule:
- Client action request and version validation:
- Replicated committed/working state:
- Cancel/commit conflict rule:
- Disconnect and late-join behavior:
- Completion race and restart behavior:

## Interruption matrix — Interruption Policy Lock

| Puzzle state/action | Voluntary exit | Warning exit | Contact/damage | Failure | Disconnect | Restart |
| --- | --- | --- | --- | --- | --- | --- |
| Initial/idle |  |  |  |  |  |  |
| Working action A |  |  |  |  |  |  |
| Committed milestone A |  |  |  |  |  |  |
| Working action B |  |  |  |  |  |  |
| Final commit |  |  |  |  |  |  |
| Solved consequence |  |  |  |  |  |  |

## Save/load matrix — Interruption Policy and Completion Consequence Locks

| Save point | Serialized puzzle state | Working-action policy | Threat state | Expected reconstruction | Evidence |
| --- | --- | --- | --- | --- | --- |
| Initial/idle | | | | | |
| Working action | | | | | |
| Committed milestone | | | | | |
| Threat interruption | | | | | |
| Solved before consequence settles | | | | | |
| World consequence usable | | | | | |

## Verification

- [ ] Initial presentation equals authoritative state.
- [ ] Every bounded action follows its declared commit and cancellation rules.
- [ ] Every interruption-matrix cell in scope was exercised.
- [ ] Committed state persists and working state resolves correctly.
- [ ] Returning reconstructs readable state and legal next actions.
- [ ] Warning and safety timing were measured in the actual map.
- [ ] One overstay produces a fair, cued failure.
- [ ] The threat or hazard always creates another valid return opportunity.
- [ ] Solve publishes once and its world consequence is usable.
- [ ] Repeated input/callbacks cannot duplicate completion.
- [ ] Save/load reconstructs every declared state and never duplicates the solved consequence.
- [ ] Restart clears every transitional state.
- [ ] Supported input, viewport, accessibility, timing, and network modes were checked.
- [ ] Screenshot, state trace, timing data, and playthrough evidence are separate.
- [ ] Untested environments and limitations are recorded.
- [ ] No late state, persistence, timing, or completion change bypassed a lock's reopen rule; invalidated dependent evidence was rerun.
