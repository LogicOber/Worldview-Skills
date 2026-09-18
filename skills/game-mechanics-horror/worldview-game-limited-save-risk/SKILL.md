---
name: worldview-game-limited-save-risk
description: "Use when a survival or horror game needs a playable decision about when and where to create a durable manual save using limited opportunities or resources. Produces an implemented save-risk loop when safe persistence already exists, plus a route contract, transaction and backup plan, accessibility overrides, tunables, and fault-injection verification. Never use this Skill to justify deleting player saves, silent overwrite, unsafe writes, exit punishment, permadeath, or withholding crash recovery."
---

# Worldview Game — Limited-Save Risk

## Call this Skill

The public invocation is:

```text
/worldview-game-limited-save-risk
```

Treat everything after the Slash command as a persistence, route, and experience brief. Do not reduce it to a request for a smaller number of save slots. The Agent must audit data safety before adding scarcity.

## Companion file routing

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already has an equivalent persistence contract.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding fit, resolving risk-versus-safety tradeoffs, or tuning route pressure; skip it for a narrow implementation whose transaction is locked.
- Read [closed-observatory-record.md](examples/closed-observatory-record.md) only when a filled fictional example clarifies a field; its seal counts and placements are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate supplied facts from repository decisions, not for persistence guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the choice without making player data the stake

The useful mechanic asks: “Do I commit my current progress here, or carry the recording opportunity into the next uncertain stretch?” That decision can connect route knowledge, remaining supplies, achieved progress, and confidence. The cost of waiting is replay after an ordinary in-game failure.

The player's actual files are outside that wager. Corruption, accidental overwrite, cloud conflict, platform termination, lost accessibility support, and inability to exit are product failures, not horror mechanics. A scarce manual-save layer is acceptable only on top of a separately reliable recovery system.

Use this Skill when save timing should shape a route and the project can test persistence. Do not use it for:

- permadeath or deletion-on-failure;
- a suspend-only system whose purpose is preventing safe exit;
- unstable software where crashes are expected to erase progress;
- competitive anti-cheat or server rollback architecture;
- a checkpoint sequence with no player decision;
- restricting slots solely to reduce storage use.

Stop and report a blocker if the project cannot create, verify, load, and recover a basic snapshot reliably. Scarcity must never be used to hide that defect.

## What the user gives

Accept relevant combinations of:

- an authorized project path and runtime;
- current save/load code, schema, slot UI, test profiles, and migration logic;
- route states, stations or safe spaces, irreversible transitions, and expected session length;
- the proposed recording resource, distribution, and world explanation;
- existing checkpoints, autosaves, suspend behavior, cloud synchronization, and platform lifecycle events;
- accessibility requirements and shared-device or multiplayer topology.

Do not inspect real user profiles, credentials, or unrelated storage. Use generated test profiles or authorized fixtures. Record what the project declares, what fault tests directly demonstrate, and what remains proposed.

## What the user receives

Deliver as much as the environment permits:

1. A persistence inventory naming the existing schema, serializer, slot model, checkpoints, backups, migration, cloud behavior, and platform hooks inspected.
2. A mechanic contract covering save channels, player choice, cost, station rules, route placements, feedback, failure, restart, accessibility, and network authority.
3. A persistence plan covering snapshot boundaries, durable transaction order, verification, backup, recovery, versioning, migration, and storage failure.
4. Tunables separated from code: recording cost, initial and placed resources, station spacing, reminder policy, recovery frequency, and assist settings.
5. A working implementation only after baseline persistence passes; otherwise a blocked-state report that preserves existing saves and identifies the failed evidence.
6. Verification for manual save/load, failed writes, interrupted writes, previous-version recovery, route choices, accessibility override, migration, and any cloud or multiplayer claims.

Never present a successful UI animation as proof that bytes are durable. Never use a player's only real profile as a test fixture.

## Lock persistence safety before implementation

These locks form a safety dependency chain. No route or tuning decision may weaken an earlier persistence artifact. If a fault test or implementation detail contradicts a lock, reopen the earliest affected lock, amend it, and invalidate all dependent code, fixtures, route tests, and claims. Ask one grouped question only when the brief leaves incompatible meanings for manual saving, recovery access, or shared authority; derive storage primitives and tuning from the actual platform.

| Lock | Question resolved | Locked artifact | Lock condition | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Recovery Baseline Lock** | Which channels protect progress and safe exit independently of the scarce manual-record wager? | A channel/retention table for manual, recovery, suspend, settings, backup, migration, and cloud conflict behavior. | Disposable profiles prove basic write, verify, load, repeat load, previous-version recovery, and safe exit, or the scarcity work is explicitly blocked. | Labels, menu layout, and recovery presentation may change without reducing retention. | Reopen on serializer, storage platform, retention, lifecycle, cloud, or channel-policy changes; invalidate every later transaction, route, migration, and safety claim. |
| **Snapshot Boundary Lock** | What authoritative state forms one coherent record, and what transient state must never be serialized? | A subsystem snapshot schema, stable safe anchors, reconstruction order, validation rules, and version identifier. | Every required subsystem has one owner, a coherent capture point, and a validated restore result with no half-transaction state. | Optional diagnostic fields and compression may change if compatibility remains proven. | Reopen when an authoritative subsystem, safe anchor, schema, clock, or reconstruction dependency changes; invalidate publication fixtures, save/load traces, and route restore evidence. |
| **Durable Publication Lock** | At exactly what boundary does a manual record become authoritative without risking its effective resource cost, later live play, or the prior save? | The eight-step projected-snapshot transaction, mode-derived `effective_cost`, operation ID, integrity evidence, atomic durable-version selection, declared transaction-owned live fields, mutation guard, and prior-version rule. | Fault injection before and after durable selection proves that a pre-selection failure preserves live state and the prior selected record, while a post-selection retry commits only guarded transaction fields without applying cost twice or copying older snapshot state over later play; the same boundary is used when `effective_cost = 0`. | Storage-specific temporary names, checksum algorithm, progress presentation, and retry wording may change if ordering is unchanged. | Reopen when any mode-to-cost rule, write, validation, durable selection, transaction-owned field, mutation guard, retry, or backup order changes; invalidate all fault, stale-capture, duplicate-charge, migration, override, and durability evidence. |
| **Recording Route Lock** | Where does recording create two informed strategies, and what replay cost follows a declined opportunity? | A route-opportunity graph with stations, resource sources, known risks, irreversible transitions, replay content, and maximum supported loss window. | Two save-timing strategies remain viable, costs are visible before choice, and replay contains meaningful play rather than forced noninteractive repetition. | Seal count, station spacing, reminders, and replay compression may tune within measured bounds. | Reopen when route topology, opportunity placement, resource supply, objective order, or recovery frequency changes; invalidate strategy, cadence, and ordinary-failure traces. |
| **Access and Authority Lock** | Who may request and confirm each save, and which safety/accessibility overrides remain available without penalty? | An input and confirmation contract, scarcity-assist policy, settings ownership, safe-state/consent rule, and host/server authority record when relevant. | Every supported user can identify, create, cancel, load, and exit through the declared channels; assists work mid-run; network requests charge only after authoritative durability. | Copy, focus order, non-authoritative prediction, and assist presentation may change. | Reopen when supported inputs, assist behavior, profile ownership, consent, or network topology changes; invalidate accessibility, shared-save, disconnect, and late-join evidence. |

Implementation may begin only after the Recovery Baseline, Snapshot Boundary, and Durable Publication locks are supported by evidence; if they cannot lock, deliver the blocker without adding scarcity. The route and access layers may remain proposed but must not be represented as verified.

## Recover the existing persistence system first

This section builds the **Recovery Baseline Lock** and **Snapshot Boundary Lock** before any scarce rule is allowed to proceed.

Write an intake record before changing behavior:

```markdown
## Facts declared by the project or platform
- Current save channels:
- Snapshot ownership:
- Slot and backup policy:
- Lifecycle requirements:

## Behavior observed with disposable test profiles
- Save and load round trip:
- Interrupted-write result:
- Invalid/corrupt-data recovery:
- Migration result:

## Proposals for the limited-save layer
- Player-facing opportunity or resource:
- Route placement:
- Safety and accessibility overrides:
```

Identify every gameplay subsystem that contributes authoritative state. Typical examples include player transform at a safe anchor, progression, inventory, world objects, threats, timers, random-stream state when deterministic restoration matters, settings, and accessibility configuration. Use the project's intended snapshot boundaries; do not serialize transient references blindly.

Duplicate authorized test data before fault injection. Confirm how a save is written, when it becomes the active version, how the previous version is retained, and what validates a load. If those answers are missing, design and prove them before the scarcity layer.

## Separate save channels by responsibility

This section completes the **Recovery Baseline Lock** by assigning each channel one visible purpose and retention policy.

Define each channel explicitly. A robust project may use:

```text
manual record       chosen by the player; may consume a fictional opportunity
recovery checkpoint created by the game at safe boundaries for crash/error recovery
suspend record      supports leaving the session; never the only durable recovery
settings/profile    preferences and accessibility; independent of run scarcity
```

These names are conceptual, not required UI labels. Channels must not silently overwrite one another. The player-facing load screen identifies source, location, play time or sequence, timestamp where appropriate, and whether a record is manual or recovery.

The recovery checkpoint should not become a hidden optimization that invalidates manual choice. It may be available through a clearly labeled recovery option, restore at conservative boundaries, or activate after abnormal termination. Its purpose is protecting time and data, not offering a secret superior save route. Document the exact policy.

Suspend behavior supports real life. Do not force someone to leave a game running to preserve progress. A suspend record may be marked superseded only after a later load and subsequent durable save are verified; never delete the sole recoverable record immediately on opening it.

## Publish the projected state atomically

This section implements the **Durable Publication Lock** against the already locked snapshot boundary.

Treat every manual record as one recoverable transaction, including zero-cost station and unrestricted modes:

```text
1. validate mode, safe state or station, destination slot, and resource against effective_cost
2. copy a coherent projected snapshot and establish the declared mutation guard for every live field this transaction may later change
3. set projected resource_after = resource_before - effective_cost; do not mutate live state
4. serialize that projected snapshot to a new temporary version
5. flush, close, and validate header, version, identity, checksum, or equivalent integrity evidence
6. atomically publish the candidate and select it as the current durable version while retaining a recoverable prior version
7. commit only the declared transaction-owned live fields under that guard exactly once; never copy the whole older snapshot back into the live session
8. report success only after durable selection and the guarded field result are confirmed, then release the guard
```

Derive `effective_cost` from the active policy before copying the snapshot. Standard mode uses the configured nonnegative recording cost; zero-cost stations and unrestricted valid-state saving use `0`. Unrestricted changes where a request is legal, not whether persistence must be atomic. Every mode therefore writes and validates a projected version, retains a prior version, selects one durable version, and commits its declared guarded fields through the same operation identifier.

The precise storage primitives depend on the runtime and platform. Preserve the ordering: the temporary version already contains `resource_after`, while the transaction-owned live fields remain unchanged until one durable version has been selected. Name those fields explicitly; normally they are the recording resource and operation status, not the entire saved world. Hold their authoritative mutations from capture through step 7, or attach capture revisions and reconcile only fields that still match those revisions. Never assign an older snapshot value to a field that advanced after capture. A version mismatch follows a documented conflict path, preserves the newer live value and both valid durable versions, and cannot report transaction success until the project proves an exactly-once result.

Failure before selection discards the candidate, releases the mutation guard, and leaves the prior selected version and live resource untouched. Interruption after selection but before guarded field commit has a different result: the new selected durable version is authoritative. On retry in the same live session, read its operation identifier and absolute `resource_after`, then commit only the still-guarded or version-matched transaction fields without subtracting again. On process restart, load or reconstruct from the selected version according to the recovery-channel policy; do not describe that as rewriting a newer live session, because no later in-memory play survived the process interruption. Do not roll the selected version back merely because presentation or field commit was interrupted, and do not overwrite the only valid version in place.

Prevent duplicate costs from repeated input, callbacks, or network retries by assigning a stable operation identifier. A request matching an already selected operation returns that durable result and completes only its pending guarded field commit if necessary; it never recomputes a subtraction or restores unrelated snapshot fields. A canceled or pre-selection failed operation releases UI and mutation guards safely.

If storage is full, permission is denied, serialization fails, verification fails, or the platform interrupts before durable selection, retain the live resource and prior selected save. If interruption timing is ambiguous, inspect the selected operation ID before reporting failure: a newly selected version must finish only its guarded or version-matched field commit, not be charged again, silently rolled back, or copied wholesale over newer play. Explain the result in actionable language without exposing internal paths or secrets.

## Never destroy or silently overwrite player saves

This section enforces the **Recovery Baseline Lock** as a hard boundary on every later layer.

This Skill has a hard boundary:

- Never delete saves as an in-game failure consequence.
- Never erase a record merely because it was loaded.
- Never silently replace a selected slot.
- Never let a retention rule remove the last known-valid record.
- Never apply schema migration without preserving a recoverable pre-migration version when the platform permits.
- Never treat cloud conflict by choosing a version without showing enough information for recovery or applying a documented safe merge.

An explicit user-requested deletion belongs to account or profile management, outside the limited-save wager. It requires clear target identification and confirmation. Use platform-supported recoverability when available.

Slot limits may constrain new manual records, but they do not authorize arbitrary cleanup. When every slot is occupied, allow the player to choose a specific slot with details, cancel, or manage saves through the established safe flow.

## Connect scarcity to the route, not to repetitive punishment

This section produces the **Recording Route Lock** without treating abnormal interruption as part of the wager.

Map each recording opportunity against progression, resource replenishment, irreversible transitions, encounter difficulty, and estimated replay content. A long interval filled with unskippable narrative or already solved manipulation creates time loss without a new decision. Provide shortcuts, persistent solved-state options, or replay compression appropriate to the project.

Record the maximum supported loss window under ordinary failure and under abnormal interruption. Do not advertise a target duration until measured across actual routes and player speeds.

Failure after declining a save returns to the chosen previous manual record or the project's declared recovery policy. The result should reflect the risk the player accepted, not add unrelated inventory deletion, permanent stat damage, or humiliation.

Do not manipulate resource drops dynamically in secret merely to enforce an intended saving cadence. If adaptive support exists, declare it in the contract and verify that it cannot consume or invalidate prior choices.

## Build an informed decision around the manual record

This section uses the **Recording Route Lock** and **Access and Authority Lock**; it cannot redefine recovery availability or durable success.

At a recording opportunity, show:

- the current location or route state;
- time or meaningful progress since the selected prior record;
- the exact fictional resource cost, if any;
- remaining resource count before and after;
- which slot will be created or updated;
- whether the action is manual, recovery, or suspend;
- any overwrite consequence before confirmation.

Record the policy calculation explicitly:

```text
effective_cost = configured_recording_cost  when policy is standard
effective_cost = 0                          when policy is zero-cost or unrestricted
resource_after = resource_before - effective_cost
```

Reject a negative cost, an unknown policy, an unsafe state, or a standard-mode request whose resource is insufficient before creating the projected snapshot. Do not fork a less durable “free save” implementation for an accessibility override.

The player may decline without losing input control or consuming anything. Do not use an ambiguous close input as confirmation. Do not obscure the remaining resource count to manufacture anxiety.

Give enough route evidence to support judgment: a visible station map, a known objective, signs of a difficult stretch, or prior knowledge of station spacing. Uncertainty about the next danger is valid. Uncertainty about whether the save command worked is not.

Place resources and stations so at least two strategies remain plausible. One player may record after a major acquisition; another may carry the resource past a familiar route and record before an unknown descent. Test both rather than assuming one intended cadence.

## Work within the current Harness and tool boundary

This section limits implementation and evidence to platforms that can support the locked persistence artifacts directly.

This Skill does not bundle platform storage, cloud accounts, an engine, a browser, encryption services, or deployment access. Inspect only capabilities currently configured and authorized.

- Prefer disposable local fixtures, project tests, runtime tooling, and platform documentation already in scope.
- Browser storage tests apply only to the tested browser and storage mode.
- Cloud, console, and mobile lifecycle behavior must be tested on the claimed environment; do not infer it from desktop success.
- APIs and MCP services are used only when configured and necessary, never to upload private player data casually.
- Images or videos can illustrate UI but cannot verify durability.
- Never expose save contents, account identifiers, secrets, or filesystem paths in public evidence.

If a required platform is unavailable, say which persistence claims remain untested. Do not simulate fault results.

## Preserve success, failure, restart, and safe exit

This section derives its cases from all five locks and preserves durable records while resetting only transient state.

A complete playable slice includes:

- at least two manual recording opportunities with a meaningful route between them;
- a scarce opportunity or resource whose count is visible before confirmation;
- a decision to record now or continue;
- successful durable write, load, and repeat load;
- a refused or failed write that consumes nothing;
- an ordinary gameplay failure that restores the documented prior state;
- a safe exit or suspend path at any reasonable session boundary;
- an accessibility override that has been exercised, not merely listed;
- restart behavior that clears transient transaction and UI state without modifying durable records.

Restart from a menu or encounter must not mean “delete the run” unless the user explicitly chose a separate, clearly confirmed new-run operation. Reset pending writes, confirmation dialogs, input locks, temporary snapshots, station effects, and duplicated requests while leaving known-valid records intact.

## Make accessibility and safety overrides first-class

This section fills the accessibility half of the **Access and Authority Lock** without weakening the recovery baseline.

Provide at least one way to remove or reduce save scarcity: unrestricted manual saving at valid safe states, zero-cost station saves, more recording resources, stronger station reminders, or more frequent visible checkpoints. The project's context determines which is feasible.

Explain the option plainly before or during a run and allow it to be changed without deleting progress. Do not attach shameful language, horror-themed threats, achievement loss, story penalties, or irreversible mode locks. If a leaderboard or challenge category needs fixed rules, separate that category from ordinary play and preserve the underlying save.

Saving and loading must support scalable text, clear focus, screen-reader labels where the platform supports them, remappable controls, hold alternatives, color-independent slot states, and sufficient confirmation time. Timestamp alone is not enough to identify a record; provide location and progression context.

Settings and accessibility preferences persist independently of scarce run records so loading an older game state does not remove accommodations.

## Handle migration, cloud conflict, and multiplayer conservatively

This section applies the **Recovery Baseline**, **Durable Publication**, and **Access and Authority** locks to version and ownership boundaries.

Version every snapshot. Migrations validate source data, write a new version, verify it, and retain or expose recovery from the prior version. Unknown optional fields use documented defaults; unknown critical state stops the load with a recoverable report rather than silently resetting progress.

For cloud synchronization, preserve both divergent valid versions until conflict resolution. Show device or platform context, progression marker, and modification information without relying only on wall-clock time. Never assume the newest timestamp is always the desired run.

For multiplayer, saving is authoritative to the host or server architecture already chosen by the project. Define who may request a manual record, how other players are informed, whether consent or a safe-state quorum is required, and who owns the scarce resource. Charge only after the authoritative snapshot is durable, under a server-owned mutation guard or version-matched commit for that resource; never restore the capture-time world over a world revision that continued advancing. A disconnect or timeout cannot consume the resource or roll another player's profile backward. Late join and restoration reconstruct one shared world revision.

## Verify persistence under faults and play

This section tests each lock and reopens the earliest contradicted layer instead of patching around a failed durability invariant.

Use disposable test profiles and preserve evidence for:

1. Create, verify, load, and load again from every save channel.
2. Attempt manual recording with exact, zero, and excess resource counts, then repeat in zero-cost and unrestricted modes with `effective_cost = 0`.
3. Repeat the confirmation input and operation callback; select one durable version and apply the absolute `resource_after` value once to the declared guarded field only.
4. Inject serialization, storage-full, permission, verification, and publication failures where the Harness safely permits; retain the resource and prior save.
5. Interrupt before durable selection and confirm the old version/live state remain; interrupt after selection but before guarded field commit and confirm retry completes that field once without another subtraction.
6. Advance an unrelated authoritative field after snapshot capture where the declared guard permits it; confirm publication and cost commit do not rewrite that field from the older snapshot. If revision matching replaces a held mutation, force a mismatch and confirm the newer field is preserved and success is withheld.
7. Fill every manual slot, cancel overwrite, explicitly choose one, and confirm its recoverable prior version policy.
8. Migrate an older test schema and reject a deliberately invalid critical record without overwriting it.
9. Exercise ordinary failure after saving now and after carrying the opportunity forward.
10. Exit or suspend from supported states and verify a safe return.
11. Enable each save accessibility option, change it mid-run, and confirm progress and unrelated rewards remain.
12. Exercise lifecycle termination, cloud conflict, and multiplayer only on environments for which those claims will be made.

Screenshots document labels and state; byte-level fixtures, checksums or validation reports, logs, and reproducible load results document persistence. Redact identifiers and sensitive contents from shared evidence.

## Deliver and hand off

This section delivers all five lock records, their fault evidence, and any platform claims still blocked.

Use established project documentation when it exists. Otherwise save:

```text
gameplay/<save-loop-slug>/mechanic.md
gameplay/<save-loop-slug>/persistence-plan.md
gameplay/<save-loop-slug>/tunables.yaml
gameplay/<save-loop-slug>/verification.md
```

End with a handoff that states:

- Where and how does the player create a manual record?
- What information and cost appear before confirmation?
- Which recovery, suspend, and accessibility paths protect the player's time?
- What is the durable publish boundary, and when is the resource charged?
- Which write failures, interruptions, migrations, and loads were actually tested?
- Which platforms, cloud paths, or multiplayer cases remain unverified?

Do not call the system safe, accessible, durable, production-ready, or balanced beyond direct evidence. Under no circumstances destroy user saves as part of this Skill.
