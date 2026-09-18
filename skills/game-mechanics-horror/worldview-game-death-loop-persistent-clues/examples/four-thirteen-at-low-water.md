# 4:13 at Low Water

This original fictional example demonstrates the method. It is not an implemented level, tested save system, or finished narrative.

## Invocation

```text
/worldview-game-death-loop-persistent-clues

Use the Low-Water Observatory. Every death returns the player to 4:13 before the
tide enters the lower instruments. Hand-written chart marks and learned signal
phrases persist. Build two passes: the first teaches when the lower door seals;
the second lets the player redirect the beacon before entering that corridor.
```

## Source boundary

- **Invocation facts:** the authored fictional brief specifies an observatory, 4:13 reset, flood, persistent marks and phrases, lower door, and beacon redirection.
- **Proposed here:** exact state ledger, first observation, chart mark, schedule, second-pass route, and outcomes.
- **Unverified:** runtime, save schema, platform storage, timing, accessibility, and player comprehension.

## Layer lock record

| Lock | Concrete decision | Status | Reopen trigger and fallout |
| --- | --- | --- | --- |
| Loop promise | Pass one establishes that the gauge turns black at 4:17:40 and its calibrated 20-second tide interval ends at the 4:18 pulse, then reveals the complete `LONG — SHORT — HOLD` phrase. Those records establish the deadline that lets the player redirect the beacon at 4:14, hold the warden outside at 4:18, and open the upper maintenance route. | Locked for this fictional contract | Changing the clue, deadline, redirect action, or maintenance outcome invalidates every later row. |
| Loop boundary | Entry is the dry chart table at 4:13. Death, drowning, or the return bell locks the pass; input, AI, damage, tide, audio, and autosave pause before world reset; validation precedes control. Exiting occurs through the upper maintenance route. | Locked as contract; unimplemented | Adding a reset trigger or moving entry/exit invalidates the ledger, coordinator, save cases, and both pass traces. |
| State ledger | Named owners classify and derive every touched category below: world, inventory, clue ledger, profile/settings, achievements, analytics, network/session, and queued/deferred work. The ledger states what is serialized, derived, external, or cancelled. | Locked as authored classification | Adding an owner, persisting a physical tool, resetting a mark, or changing a derivation/storage rule invalidates restore and sequence tests. |
| Clue dependency | The wall chronometer and calibrated black-gauge interval establish the 4:18 deadline; the complete multimodal phrase supplies the beacon command. Together they inform a pre-descent action at 4:14. Any supported complete expression accepts; an interrupted phrase does not. Correct early demonstration is honored without a hidden second-loop flag. | Locked as the two-pass inference | Gating by loop count or changing the clock, gauge calibration, phrase, or console invalidates journal, accessibility, and sequence-break traces. |
| Schedule and replay | Clock starts at 4:13; the gauge changes at 4:17:40 and tide pulse occurs twenty illustrative seconds later at 4:18. Beacon redirection before the pulse changes warden access. Later runs may accelerate waking and travel to the chart but restore control before the new choice. | Illustrative schedule; runtime timing open | Clock, tide trigger, warden rule, or skipped interaction changes invalidate all timing and reproduction evidence. |
| Storage transaction | `Resume at 4:13` loads the last valid pass and ledger; `Restart this recurrence` preserves committed clues; `Begin a new logbook` creates a separately confirmed profile. Fault recovery, platform sync, and networking remain unimplemented. | User-facing policy locked; storage evidence open | Schema, cloud conflict, profile ownership, or authority changes invalidate save/fault claims. |
| Multi-pass proof | Required evidence covers three reset triggers, earned versus interrupted clues, stale-work cancellation, changed second pass, early knowledge, last-valid recovery, and no-audio/reduced-repetition/timing-assistance paths. | Evidence plan only | Any earlier lock change requires fresh state diffs, pass traces, and captures. |

If the tide pulse moves away from 4:18 or the beacon no longer blocks the service lock, reopen **Schedule and replay**, **Clue dependency**, and **Multi-pass proof**; discard both pass traces, the early-knowledge test, and every timing claim.

## Loop boundary

At 4:13, the player wakes beside the dry chart table. At 4:18, a tide pulse reaches the lower instrument corridor. The pressure door seals from the outside, and a light-sensitive warden enters through the service lock. Death, drowning, or manually ringing the return bell locks the pass and initiates reset.

Reset restores the observatory only after input, AI, damage, tide simulation, audio, and autosave are paused. The next pass begins after world validation.

## Illustrative ledger

| Owner | State or event | Class | Reset or derivation rule | Storage / serialization |
| --- | --- | --- | --- | --- |
| `LoopCoordinator` | Tide, clock, loop generation | reset | Restore 4:13 and the dry entry snapshot; increment the generation only after old work is cancelled | Serialized atomically in the current recurrence slot |
| `WorldStateAuthority` | Doors, beacon, warden position, memory, routes, timers | reset | Restore from the validated entry snapshot, not from whatever happened to remain in the scene | Snapshot identifiers and authoritative values live in the recurrence slot |
| `InventoryAuthority` | Physical tools found inside the recurrence | reset | Rebuild from authored 4:13 locations and remove pass-local instances | Derived from the entry snapshot; pass-local object identifiers are not retained |
| `LoopLedgerAuthority` | Deliberate player chart marks | persist | Preserve only marks accepted at a chart station before the snapshot locks | Serialized atomically in the current logbook ledger |
| `LoopLedgerAuthority` | Complete signal phrase | transform | Derive one reviewable `LONG — SHORT — HOLD` entry only after an accepted complete pattern; incomplete fragments remain incomplete | Serialized with acquisition version in the current logbook ledger |
| `ProfileSettingsAuthority` | Accessibility, input, language, audio, and display settings | external | Never read from or written by recurrence reset | Separate profile/settings store owned outside the logbook |
| `AchievementAuthority` | Platform achievements and profile progression | external | Reset never revokes or fabricates them; only an authoritative completion event may unlock one, once | Platform/profile store, outside the recurrence transaction |
| `TelemetryAuthority` | Analytics and diagnostics | external | Append a privacy-compliant event keyed by logbook, loop generation, and event identifier; never replay it into gameplay state | External telemetry queue/store with idempotent event keys |
| `NetworkSessionAuthority` | Session membership, replication, reconnect state | external | Networking is unsupported in this example; no recurrence field is derived from or advertised as network state | Nothing serialized by this mechanic; adding network play reopens Storage transaction |
| `DeferredWorkRegistry` | Audio, camera impulses, damage, navigation, timers, autosave callbacks, queued input, particles, and network messages | ephemeral | Tag with loop generation, cancel before restore, and reject any callback bearing an old generation | Never serialized as live work; reconstruct only from the validated new pass |

## Pass one

The player descends immediately. A wall chronometer remains readable beside the gauge, whose plate labels the black band `TIDE IN 00:20`. At 4:17:40, the gauge moves from white to that black band. When the chronometer reaches 4:18, exactly twenty illustrative seconds later, the visible tide pulse seals the outer pressure door. This observed gauge-clock-pulse sequence establishes 4:18 as the deadline; it is not inferred later from an unexplained number. Through the wired port, the player sees the beacon rotate away while the signal console presents `LONG — SHORT — HOLD` through three synchronized expressions: a captioned phrase, a lamp that illuminates for matching long/short/held intervals, and an optional haptic pulse using the same timing. The audible tone is a fourth expression, not the only route to the clue.

Before death, the player can scratch `BLACK 4:17:40 → TIDE 4:18` on a waterproof chart after observing the full relationship. Perceiving the complete three-part pattern through any enabled supported expression adds its rhythm and text label to the signal ledger. An interrupted pattern is marked incomplete and is not accepted. The fixed failure still contains choices: the player may prioritize the gauge deadline, phrase, warden route, or an optional instrument note.

## Reset

The lower corridor, tide, door, beacon, and warden reset. The chart retains the deliberate gauge mark and signal ledger retains the complete phrase. A concise waking variation replaces repeated tutorial dialogue. The route from bed to chart table can be accelerated, but the player retains control before choosing the new action.

## Pass two

At 4:14, the player consults the recorded `TIDE 4:18` deadline, decides that descent leaves too little time, and enters the beacon room instead. They reproduce `LONG — SHORT — HOLD` on three resonator paddles. The game accepts the demonstrated phrase even if they reach the room through an unexpected shortcut; no hidden “second loop” flag is required.

The beacon rotates toward the service lock before the 4:18 pulse. When the lower door seals, light holds the warden outside long enough for the player to open an upper maintenance route. The changed consequence confirms that the first pass supplied actionable knowledge.

Entering the wrong rhythm turns the beacon toward the chart room and advances the warden schedule. The phrase remains reviewable, so the failure diagnoses execution or interpretation rather than erasing the clue.

## User-facing save actions

- `Resume at 4:13` loads the last validated pass and persistent ledger.
- `Restart this recurrence` resets the current observatory pass while preserving prior committed marks and phrases.
- `Begin a new logbook` creates a separate profile after explicit confirmation.
- No in-fiction action imitates deletion or corruption.

## Evidence an implementation would need

| Claim | Required evidence |
| --- | --- |
| World resets completely | Ledger comparison after death, drowning, and return bell |
| Marks and phrase persist only when earned | Positive and interrupted-acquisition tests |
| Old-pass work cannot leak | Reset during attack, tide callback, audio, navigation, and autosave boundaries |
| Knowledge changes the second pass | Trace redirecting the beacon before descent and observing the maintenance route |
| The recorded clue establishes the deadline | First-pass trace showing black at 4:17:40, the 20-second calibration, the 4:18 pulse, the accepted chart mark, and its consultation at 4:14 |
| Early demonstrated knowledge is respected | Fresh test profile using the correct phrase through a legal sequence-break route |
| Save operations are safe | Disposable-profile tests for each transaction phase and last-valid recovery |
| Accessibility does not block progression | Reduced repetition, no-audio phrase, timing assistance, and reduced-effects traces |

## Limits

This example does not claim a finished save implementation, fault-tolerant storage on any platform, measured loop length, human comprehension, final narrative, network support, or production balance. Those require the actual project and direct testing with disposable data.
