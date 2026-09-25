# <Save-risk loop name>

## Intended decision

What current progress, known route, remaining resources, and future uncertainty should the player compare before recording?

## Safety statement

State explicitly how the design avoids save deletion, silent overwrite, corruption-as-difficulty, exit punishment, and accessibility penalties.

## Source boundary

### Declared by the project or platform

- Save schema and channels:
- Slot and backup policy:
- Lifecycle requirements:
- Cloud or multiplayer architecture:

### Observed with disposable test profiles

- Save/load round trip:
- Interrupted-write recovery:
- Invalid-data recovery:
- Migration behavior:

### Proposed for this mechanic

- Manual opportunity/resource:
- Placement and route cadence:
- Recovery and accessibility overrides:
- Evidence that would revise them:

## Layer lock record

Fill these rows in order. Scarcity work stops if the first three locks cannot be supported safely.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Recovery Baseline Lock |  |  |  |  |  |  |
| Snapshot Boundary Lock |  |  |  |  |  |  |
| Durable Publication Lock |  |  |  |  |  |  |
| Recording Route Lock |  |  |  |  |  |  |
| Access and Authority Lock |  |  |  |  |  |  |

## Save channels — Recovery Baseline Lock

| Channel | Trigger | Purpose | Visible to player | Cost | Retention and recovery |
| --- | --- | --- | --- | --- | --- |
| Manual record |  | Player-chosen commitment |  |  |  |
| Recovery checkpoint |  | Crash/error protection |  | None |  |
| Suspend record |  | Safe session exit |  | None |  |
| Settings/profile |  | Preferences/accessibility |  | None |  |

## Persistence scope and lifecycle policy

- `persistence_scope` by subsystem:
- `save_opportunity_owner`:
- `durable_acceptance_point`:
- `crash_recovery`:
- `quit_result`:
- `relaunch_result`:
- Reinstall / local-data-loss limitation:
- `profile_reset_authority` and confirmation:
- `post_ending_state`:
- `tester_bypass` scope and disposable-data rule:
- `accessibility_override`:
- Truthful warning before irreversible persistence change:

| Transition | Expected durable record | Expected live/resource state | Player-facing explanation | Test evidence |
| --- | --- | --- | --- | --- |
| normal quit | | | | |
| crash before acceptance | | | | |
| crash after acceptance | | | | |
| relaunch | | | | |
| reinstall / local-data loss | | | | |
| authorized profile reset | | | | |
| post-ending load | | | | |
| tester bypass enter / exit | | | | |

## Snapshot boundary — Snapshot Boundary Lock

| Subsystem | Authoritative state saved | Transient state excluded | Restore validation |
| --- | --- | --- | --- |
| Player |  |  |  |
| Progression |  |  |  |
| Inventory |  |  |  |
| World |  |  |  |
| Threats |  |  |  |
| Settings |  |  |  |

## Manual-record transaction — Durable Publication Lock

1. Mode, safe-state/station, slot, and resource validation:
2. Coherent projected snapshot copied from live state and mutation guard established:
3. `effective_cost` and projected absolute `resource_after` value:
4. Temporary version write:
5. Durable flush/close and integrity verification:
6. Atomic publication and selection as current durable version, with prior-version retention:
7. Declared transaction-owned live fields committed under the guard exactly once, without rewriting unrelated snapshot fields:
8. Success feedback after durable selection and guarded field confirmation:

- Standard configured cost:
- Zero-cost policy (`effective_cost = 0`):
- Unrestricted valid-state policy (`effective_cost = 0`):
- Stable operation identifier:
- Transaction-owned live fields, normally only resource and operation status:
- Mutation guard: held mutation lease or capture revision per owned field:
- Version-mismatch behavior, if revisions replace a held lease:
- Retry before durable selection:
- Retry after durable selection but before guarded field commit:
- Cancellation boundary:

## Route placement — Recording Route Lock

| Opportunity | Known progress | Signaled next risk | Resource count expected | Replay content | Recovery checkpoint |
| --- | --- | --- | ---: | --- | --- |
|  |  |  |  |  |  |

## Player-facing confirmation — Access and Authority Lock

- Current location/progression:
- Selected destination slot:
- Existing record details:
- Cost and remaining count:
- Manual/recovery/suspend label:
- Cancel and overwrite language:

## Failure handling

| Failure | Resource result | New version result | Prior version result | Player message | Recovery action |
| --- | --- | --- | --- | --- | --- |
| Serialization | Not charged |  | Preserved |  |  |
| Storage full | Not charged |  | Preserved |  |  |
| Permission | Not charged |  | Preserved |  |  |
| Integrity check | Not charged |  | Preserved |  |  |
| Interruption before durable selection | Live count unchanged | Candidate discarded or ignored | Remains selected and preserved |  | Release locks and retry as a new or retained operation, per contract |
| Interruption after durable selection, before guarded field commit | Commit the selected snapshot's absolute `resource_after` only to the held or version-matched resource field; never subtract again or rewrite unrelated live fields | Remains selected | Preserved as recovery version |  | Resume the same operation ID under its guard; on revision mismatch preserve newer live state and follow the declared conflict path without reporting success |

## Tunables

| Name | Value | Unit | Reason | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Accessibility and safe exit — Access and Authority Lock

- Unlimited or reduced-scarcity option:
- Recovery frequency option:
- Reminder option:
- Mid-run change behavior:
- Unrelated reward policy:
- Text, focus, screen-reader and color-independent states:
- Suspend/exit behavior:

## Migration and cloud

- Schema version:
- Pre-migration recovery copy:
- Critical-field rejection behavior:
- Cloud divergence policy:
- Conflict information shown:

## Multiplayer authority

Complete only if saves cover shared play.

- Authoritative snapshot owner:
- Who can request:
- Consent or safe-state rule:
- Resource owner:
- Duplicate request behavior:
- Disconnect behavior:
- Late-join reconstruction:

## Restart

List every temporary snapshot, open handle, operation lock, confirmation, station effect, input lock, and request cleared. State explicitly that restart does not alter known-valid durable records.

## Verification

- [ ] Every channel saves, verifies, loads, and loads again.
- [ ] Every scarcity mode uses the same transaction; standard mode publishes the configured cost and zero-cost/unrestricted modes publish `effective_cost = 0`.
- [ ] The selected durable snapshot contains the absolute `resource_after`, and only the declared held or version-matched resource field is committed to that value exactly once without retry subtraction.
- [ ] Pre-selection failures preserve live resource and the prior selected record.
- [ ] Post-selection interruption preserves the new selected record plus its prior recovery version and completes only the guarded field commit without another cost application.
- [ ] A live field allowed to advance after capture is never rewritten from the older snapshot; forced revision mismatch preserves the newer value and withholds success.
- [ ] Full slots require explicit selection and can be canceled.
- [ ] No ordinary failure deletes a save.
- [ ] Suspend permits safe exit and recovery.
- [ ] Accessibility options work mid-run without deleting progress or rewards.
- [ ] Migration preserves a recoverable original.
- [ ] Cloud/platform/multiplayer claims were tested only where available.
- [ ] Evidence is redacted and limitations are stated.
- [ ] No late storage, route, or UI change bypassed a reopen trigger; every dependent fault fixture and gameplay check was invalidated and rerun.
