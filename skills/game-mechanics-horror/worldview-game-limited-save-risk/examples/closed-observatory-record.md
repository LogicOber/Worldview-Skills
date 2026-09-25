# The Closed Observatory Record

## Source boundary

This is a newly authored fictional example for `worldview-game-limited-save-risk`. It is not copied from a named game, external Skill, published location, or distinctive character.

## Invocation

```text
/worldview-game-limited-save-risk

Build limited manual recording across the abandoned mountain observatory. Use
three witness desks and record seals, but keep crash recovery and a safe suspend
channel outside the resource cost. Let players disable the cost at any point,
and prove that failed writes never consume a seal or overwrite the prior record.
```

## Fictional setup

The player crosses three connected areas: an entry office, a rotating instrument hall, and an exposed upper dome. One witness desk stands in the office, the second stands at the instrument hall's near-side threshold before the rotating-floor crossing, and the final desk stands in the dome before a one-way objective transition.

The route contains four record seals: one already carried, one visible behind an optional detour, one rewarded after aligning the instrument floor, and one in the dome. The player can record at a witness desk for one seal or continue carrying it. These counts are test proposals rather than balance claims.

## Layer lock record

These rows describe the fictional contract and planned evidence. They do not claim that a storage platform or build has been tested.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Recovery Baseline Lock | Four channels remain separate: seal-cost manual desks, no-cost transition recovery, no-cost safe-boundary suspend, and independent settings/profile; every publication retains at least one prior known-valid version. | Example policy below; planned disposable-profile report at `gameplay/closed-observatory-record/verification.md#baseline`. | Write/verify/load/reload, interrupted-write recovery, and safe suspend pass on the claimed platform. Until then implementation is blocked and the row remains proposed. | Labels, load-screen layout, and recovery presentation. | Serializer, retention, lifecycle, cloud, or suspend policy changes. | Invalidate every transaction fault result and safety claim. |
| Snapshot Boundary Lock | Snapshot `observatory_run_v1` contains safe-anchor area, objective pattern/alignment, inventory including post-charge seals, desk/world/threat state, and deterministic state used by restoration; desk animation, confirmation UI, and open handles are excluded. | Fictional subsystem proposal; planned `gameplay/closed-observatory-record/persistence-plan.md#snapshot-boundary`. | Every listed subsystem has one owner and restores coherently at office, hall, and dome safe anchors. | Optional diagnostic fields and compression may change if compatibility remains proven. | A new authoritative subsystem or unsafe anchor is introduced. | Invalidate save/load fixtures, publication checksums, and both route restores. |
| Durable Publication Lock | Operation ID `witness-desk:<slot-id>:<sequence>` derives `effective_cost` as `1` in standard mode and `0` in zero-cost or unrestricted mode, writes the absolute resulting seal count, verifies the candidate, atomically selects it as the durable version while retaining the prior version, then commits only `SaveAuthority.seal_count` under `recording_resource_lease`. Other captured fields are never written back into the live session. | Transaction boundary below and repository method; planned `gameplay/closed-observatory-record/verification.md#publication-faults`. | Pre-selection faults preserve the old selected version and live count; an in-session post-selection interruption resumes while the resource lease remains authoritative, whereas process restart reconstructs the selected record. Both paths commit the selected count without a second subtraction and never roll an unrelated field back to its capture value; duplicate callbacks and all three modes produce one durable result. | Temporary filename, integrity algorithm, progress UI, and retry copy. | Mode-to-cost, verification, durable selection, transaction-owned field, mutation lease, or backup order changes. | Invalidate every fault, stale-capture, duplicate-cost, override, migration, and durability result. |
| Recording Route Lock | Three desks span `entry_office -> instrument_hall -> upper_dome`; four seals are distributed `carried + detour + alignment_reward + dome`; risk compares office replay with recording before the rotating floor. Loss window is measured as `replayed traversal + replayable interaction - persistent replay compression`. | Invocation and route proposal; planned `gameplay/closed-observatory-record/verification.md#strategy-traces`. | Both named timing strategies restore correctly and all cost/supply information is visible before confirmation. | Seal count, desk spacing, reminder delay, and replay compression within measured two-strategy bounds. | A desk/resource/objective moves across the one-way dome transition or replay becomes noninteractive padding. | Invalidate strategy, cadence, and loss-window evidence. |
| Access and Authority Lock | Single-player `SaveAuthority` owns durability; the player may cancel, explicitly select a slot, suspend safely, or choose standard cost, zero-cost desks, or unrestricted valid-state saves mid-run without losing rewards; settings persist outside run snapshots. | Accessibility proposal below; planned `gameplay/closed-observatory-record/verification.md#access-options`. | Every supported input completes create/cancel/load/suspend flows and each option survives change, save, load, and completion. | Wording, focus presentation, and non-authoritative animation. | Input support, option behavior, profile ownership, or network mode changes. | Invalidate accessibility, shared-profile, disconnect, and authority evidence. |

> If the second witness desk moves beyond the upper dome's one-way objective transition, reopen the Recording Route Lock and the Access and Authority Lock; discard both save-timing traces, the ordinary-loss-window measurement, and the desk-accessibility run.

## Separate channels

| Channel | Example policy |
| --- | --- |
| Manual record | Chosen at a witness desk or, in unrestricted mode, another valid safe state; standard mode costs one seal after durable selection, while override modes use `effective_cost = 0`. |
| Recovery checkpoint | Captured after a safe area transition; offered after abnormal termination at no cost. |
| Suspend record | Available from the pause flow at safe simulation boundaries; costs nothing. |
| Settings/profile | Accessibility and save-scarcity preferences persist separately from the run. |

Loading a manual or suspend record does not delete it. A suspend version may be superseded only after a later durable record succeeds, and at least one known-valid recovery version remains.

## Two player strategies

One player records in the entry office after acquiring the dome access pattern, then carries the remaining seals past the now-familiar instrument hall. Another accepts replay of the office and saves at the second desk before the unfamiliar rotating-floor crossing. Both choices are visible in advance; neither changes hidden enemy values or secretly creates more seals.

Repeated narrative presentation on the office route is skippable after first completion, and the solved alignment remains compact to replay. The consequence of waiting is gameplay, not forced repetition of noninteractive material.

## Transaction boundary

At confirmation, the UI names the selected slot, current route state, existing record, active save policy, `effective_cost`, and post-save count. Standard mode sets `effective_cost = 1`; zero-cost desks and unrestricted valid-state records set `effective_cost = 0`. All three use the same transaction:

```text
validate policy, safe state, slot, and seals
acquire recording_resource_lease for SaveAuthority.seal_count; copy observatory_run_v1 at capture revision R
set projected seal_count = live seal_count - effective_cost; leave live seal_count unchanged
write, flush, close, and verify a candidate version tagged with the operation ID
atomically select that candidate as the current durable version; retain the prior version
commit only live SaveAuthority.seal_count to the selected absolute seal_count once under recording_resource_lease
release recording_resource_lease and report success; never copy any other field from revision R back into live play
```

The lease prevents other systems from changing `SaveAuthority.seal_count` until commit or abort, but it does not freeze unrelated authoritative play after the coherent capture. For example, an observatory mechanism may advance from revision R to R+1 while the candidate is written. Publication changes only the held seal count; it never restores that mechanism to revision R. Failure before durable selection discards or ignores the candidate, releases the lease, and leaves the prior selected version and live seal count unchanged. If interruption occurs after selection but before the guarded seal commit, retry reads the selected operation ID and seal count, commits that held field, and does not subtract again. If the process terminated, restoration starts from the selected record; there is no surviving later live session to overwrite. A zero-cost record still crosses this publication and retry boundary; it is not a direct or less durable write.

Storage-full, permission, serialization, or validation failures before selection leave the seal count and previous records untouched. Repeating a selected operation identifier returns that durable result and completes only its pending guarded seal commit without applying cost again.

## Accessibility and agency

The Save Opportunity setting offers:

- standard seal cost;
- zero-cost witness desks;
- unrestricted manual records at valid safe states.

It can change mid-run and does not remove story, completion records, or unrelated rewards. Slot details use text and icons rather than color alone. The project also supports remapped confirmation, scalable labels, and safe suspend.

## Success, failure, and restart

Mechanic success is demonstrated when the player makes either save-timing choice, fails during the rotating-floor crossing, and restores the correct declared record. A gameplay restart clears desk animation, pending confirmation, operation lock, temporary snapshot, and inputs while leaving every known-valid durable record untouched.

No death, capture, timeout, or restart operation deletes saves. Starting a separate new run does not overwrite this one without explicit slot selection and confirmation.

## Lifecycle traces

1. **Failed write before acceptance:** at the second desk, a disposable-profile fault rejects the candidate during integrity verification. The prior office record remains selected, the seal remains carried, and the UI reports that no new record was accepted.
2. **Successful durable record:** retry under a new operation ID verifies and selects the instrument-hall record, retains the office recovery version, then commits the absolute post-save seal count once.
3. **Reload after route transition:** the player crosses onto the rotating floor, changes its alignment, then reloads the accepted instrument-hall record. The player returns to the near-side safe anchor with the recorded pre-crossing alignment, threat, inventory, and route state; no transition callback survives.
4. **Authorized reset:** `Reset Closed Observatory test profile` is visible only in the test Harness, names the disposable slot, requires confirmation, and cannot touch settings, another profile, or production records.

Normal quit creates or updates the no-cost suspend channel at a safe boundary. Crash recovery offers the conservative recovery checkpoint. Relaunch labels manual, recovery, and suspend sources. Post-ending load restores the declared observatory aftermath record rather than silently returning to a pre-ending world. Reinstall recovery is claimed only on environments where platform backup was directly tested.

## Expected saved output

```text
gameplay/closed-observatory-record/
├── mechanic.md
├── persistence-plan.md
├── tunables.yaml
└── verification.md
```

## Evidence required before handoff

| Claim | Evidence |
| --- | --- |
| Save timing creates two viable strategies | Reproducible route and restore trace for each choice |
| Effective cost is applied once | Snapshot comparison plus repeated-input and callback tests in standard, zero-cost, and unrestricted modes |
| Failed writes are safe | Fault-injection result preserving seal and prior-version identifiers |
| Interruption is recoverable | Pre-selection test retaining old state and post-selection/pre-commit test adopting the selected absolute seal count under the same lease |
| A copied snapshot cannot roll back ongoing play | Trace that advances an unrelated observatory mechanism from capture revision R to R+1 before publication and proves it remains at R+1 after seal commit |
| Suspend supports exit | Close-and-resume trace from each supported route state |
| Accessibility overrides preserve progress | Mid-run option changes followed by save, load, and completion |
| Existing records are never silently replaced | Full-slot cancel and explicit-target confirmation tests |

The example makes no claim about a specific platform, cloud provider, or storage system until those environments are tested directly.
