# <Loop name> — Death loop and persistence contract

## Status and source boundary

- Project/runtime:
- Working path:
- Existing save/death/checkpoint behavior observed:
- User-provided loop fiction:
- New proposals:
- Test profile or slot:
- Untested storage/platform boundaries:

## Layer lock record

Complete this record before reset code or clue content changes. Reopen the earliest contradicted lock and invalidate its dependents instead of patching a later timer or save field in isolation.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Loop promise | | | | | | All later locks |
| Loop boundary | | | | | | Ledger, coordinator, save cases, loop traces |
| State ledger | | | | | | Migration, restore, and restart tests |
| Clue dependency | | | | | | Sequence-break, journal, and two-pass traces |
| Schedule and replay | | | | | | Timing and reproduction evidence |
| Storage transaction | | | | | | Fault, resume, reconnect, and migration tests |
| Multi-pass proof | | | | | | Delivery claims and captures |

## Loop promise

Owner: **Loop promise**.

> At `<reset trigger>`, the world returns to `<entry snapshot>`. The player retains `<knowledge/mark/state>` learned through `<event>`, enabling `<different action>` and causing `<changed consequence>` on a later pass.

## Boundary and transaction

Owner: **Loop boundary**.

```text
outside -> entering -> active -> resolving/failing
        -> snapshot locked -> world reset -> persistence restored
        -> validation -> active or exiting
```

For every transition, record:

- authoritative owner;
- accepted inputs;
- paused or cancelled systems;
- state written/read;
- visible transition;
- failure recovery;
- autosave eligibility.

## Entry snapshot

Owner: **Loop boundary** and **State ledger**.

| State owner | Field or object | Entry value | How captured | Validation |
| --- | --- | --- | --- | --- |
| World | | | | |
| Threat | | | | |
| Player | | | | |
| Inventory | | | | |
| Quest/dialogue | | | | |
| Clock/schedule | | | | |
| Random seed | | | | |
| Camera/audio/UI | | | | |

## State ledger

Owner: **State ledger**.

Use `reset`, `persist`, `transform`, `external`, or `ephemeral`.

| Owner | Field/event | Class | Reset/derivation rule | Serialized? | Reason |
| --- | --- | --- | --- | --- | --- |
| | | | | | |
| Achievement/platform authority | achievements and platform progress | | | | |
| Analytics/telemetry authority | analytics and diagnostic events | | | | |
| Profile/settings authority | accessibility, input, language, audio, display, and profile data | | | | |
| Network/session authority | membership, replication, reconnect, and host state, or an explicit unsupported boundary | | | | |
| Deferred-work owner | damage, timers, audio, particles, navigation, queued input, autosave callbacks, and network messages | | | | |

Explicitly include deferred damage, timers, audio, particles, navigation, queued input, network messages, achievements, analytics, settings, and profile data.

## Clue dependency graph

Owner: **Clue dependency**, constrained by **Loop promise**.

| Pass | Observable event | Clue/evidence | Persistence representation | Later action | Changed consequence | Confirmation |
| ---: | --- | --- | --- | --- | --- | --- |
| 1 | | | | | | |
| 2 | | | | | | |

### Knowledge policy

- Can a player demonstrate knowledge before an explicit flag?
- If not, what in-world prerequisite explains the gate?
- How is the clue reviewed?
- What interpretation remains for the player?
- How does sequence breaking resolve?

## Threat and schedule

Owner: **Schedule and replay**.

- Schedule owner:
- Time basis:
- Action-driven changes:
- Randomness/seed rule:
- Resume behavior:
- Full-loop-reset behavior:
- Readable timing cues:

## Replay compression

Owner: **Schedule and replay**. Do not skip an action that still carries an unresolved choice or clue.

| Solved action | First-pass form | Later-pass shortcut | What must not be skipped |
| --- | --- | --- | --- |
| | | | |

- Dialogue acceleration:
- Traversal shortcut:
- Tutorial suppression:
- Reduced-repetition option:
- Clue review access:

## Pass learning and actor memory

| Pass | `pass_objective` | `reset_scope` | `persisted_fact` | `actor_memory` | `transformed_state` | `mastered_labor` | `compression_rule` | `new_information` | `actionable_difference` |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | | | | | | | | | |
| 2 | | | | | | | | | |

| Actor | Fact | Observation provenance | Confidence | Acquired pass | Persistence rule | Action enabled | Transmission required? |
| --- | --- | --- | --- | ---: | --- | --- | --- |
| | | | | | | | |

- Bounded counterfactual, if used:
- Single declared difference:
- Interpretation or action changed:
- Why this is not a full controlled-experiment matrix:

## Quit, crash, reload, and testing

| Transition | `quit_crash_reload_result` | Reset scope | Persistent scope | Player-facing label | Verified evidence |
| --- | --- | --- | --- | --- | --- |
| quit during active pass | | | | | |
| crash during active pass | | | | | |
| reload after committed clue | | | | | |
| interruption during reset | | | | | |

- `tester_bypass` entry:
- State it may set:
- State it must never modify:
- Cleanup and disposable-profile rule:

## Save and user-facing actions

| Action | Scope affected | Confirmation | Result | Must never affect |
| --- | --- | --- | --- | --- |
| Resume current pass | | | | |
| Restart current loop | | | | |
| Discard uncommitted pass | | | | |
| Leave loop in fiction | | | | |
| Start new profile | | | | |
| Delete selected save | | | | |

- Save schema/version:
- Migration:
- Atomic/recoverable write strategy:
- Half-reset detection:
- Last-valid recovery:

## Accessibility and content

- Reduced repetition:
- Timing assistance:
- Pause:
- Input alternatives:
- Subtitle/no-audio path:
- Reduced motion/flashes:
- Less-graphic death transition:
- Content warning:
- Equal progression under assistance:

## Multiplayer, if applicable

- Shared/per-player knowledge:
- Server-owned phase and snapshot:
- Loop identifier on delayed work:
- Reset synchronization:
- Disconnect/reconnect:
- Late join:
- Host migration:

## Tunables

```yaml
loop:
  duration_seconds: 0
  reset_transition_seconds: 0
  post_reset_control_delay_seconds: 0
replay:
  routine_action_speed_multiplier: 1
  dialogue_skip_after_seen: false
  clue_review_pause_enabled: true
assistance:
  timing_multiplier: 1
  persistent_route_markers: false
```

Values are placeholders. Preserve project schema and measured context.

## Verification

Before delivery, confirm that no late boundary, ledger, clue, schedule, or storage change bypassed a reopen trigger in the layer lock record.

| Claim | Procedure | Expected ledger delta | Observed | Evidence | Status |
| --- | --- | --- | --- | --- | --- |
| Entry snapshot is coherent | | | | | |
| Reset fields restore | | | | | |
| Persistent clue survives | | | | | |
| Ephemeral work is cancelled | | | | | |
| Clue enables changed action | | | | | |
| Sequence break follows policy | | | | | |
| Save/load rejects half-reset state | | | | | |
| Interrupted write recovers the last known-valid version | | | | | |
| Full restart cancels every old-pass callback and message | | | | | |
| Network reset produces one authoritative loop state, if claimed | | | | | |
| New profile receives no leaked clue | | | | | |
| Accessibility path preserves progression | | | | | |

## Handoff

- Entry point:
- Controls:
- Reset trigger:
- First actionable clue:
- Reset fields:
- Persistent fields:
- Clue review:
- Quit/resume:
- Safe start-over action:
- Verified pass sequence:
- Restart/no-stale-pass evidence:
- Interrupted-write and last-valid recovery evidence:
- Network reset/reconnect evidence, if claimed:
- Storage versions/platforms tested:
- Reused assets/proxies:
- Untested boundaries:
