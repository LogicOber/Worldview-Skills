# The Bellhouse Interval

This original fictional example demonstrates the method. It is not an implemented, network-tested, or playtested encounter.

## Invocation

```text
/worldview-game-asymmetric-information-cooperation

Build a two-player sequence in the Drowned Bellhouse. The Surveyor above can see
which bell ropes carry the creature's wet handprint through a viewing lens, but
cannot touch the machinery. The Keeper below can rotate three counterweights but
cannot see the ropes. They need three safe moves before the creature arrives.
```

## Source boundary

- **Invocation facts:** the authored fictional brief specifies two roles, an upper lens, lower machinery, marked ropes, three safe moves, and an approaching creature.
- **Proposed here:** vocabulary, role agency, sequence, pressure, consequences, reconnect, and accessibility paths.
- **Unverified:** engine, network backend, actual latency, devices, player timing, and final content.

## Layer lock record

| Lock | Concrete decision | Status | Reopen trigger and fallout |
| --- | --- | --- | --- |
| Shared outcome | The encounter starts once with the creature three landings, or an illustrative 72 active seconds, away. That remaining distance persists across all phases. Three correct commits seal the bell and open the escape stair; authoritative elapsed time or accumulated wrong commits can exhaust the remaining distance. | Locked for this fictional contract | Changing player count, required commits, starting distance, or failure boundary invalidates every later row. |
| Role agency | The Surveyor chooses and clears lens stations, interprets the private mark, sends a term, and confirms the staged pair. The Keeper chooses a counterweight, stages it, requests confirmation, commits, and manages the pressure valve. | Locked as distinct decisions | Moving lens access or counterweight control between roles invalidates the information graph, timing, and all role traces. |
| Information boundary | The host owns pair map, active mark, phase version, weight position, threat distance, and seal. Only the Surveyor receives the mark; only the Keeper can stage and commit; both receive the shared outcome. | Locked as the authoritative graph | Showing the mark below or allowing an upper-room commit invalidates privacy and success evidence. |
| Shared vocabulary | `CROWN↔DRAIN`, `WINDOW↔WELL`, and `NAVE↔DOOR` remain stable. Voice, radial phrase board, text log, symbol ping, and raised-shape icons carry the same meanings without color dependence. | Locked as six taught meanings | Renaming a rope, rotating pair definitions, or adding a required meaning invalidates teaching, localization, and timing evidence. |
| Commit protocol | Surveyor sends `MARK`, Keeper stages the paired control with current phase, Surveyor sends `PAIR CONFIRMED`, and the host accepts one idempotent commit and broadcasts its result. | Locked as the irreversible boundary | Allowing commit before acknowledgement or changing version/idempotence invalidates duplicate, reorder, and disconnect tests. |
| Pressure and recovery | Remaining approach time is `72 s - authoritative active elapsed time - (24 s × accepted wrong commits)`. It never resets between correct phases. Local moth and water tasks divide attention without disabling communication. The provisional correct-phase communication budget is 18 seconds, but novice, localization, non-voice, and accessibility runtime proof remains open. | Proposed contract; runtime proof open | Changing local tasks, channel availability, starting distance, landing cost, or communication budget invalidates the usable-window and retry claims. |
| Session authority | Pause-and-reconnect applies before accepted commit. An accepted in-flight commit resolves once, then pauses before the next clue. Reconnect restores shared state to both roles and the active private mark only to the Surveyor. New late joiners are rejected while the encounter is active. Host migration is unsupported and uses the protected-abort policy below. No solo or AI partner is claimed. | Locked proposed policy; network behavior untested | Backend ownership, private-cue routing, absence policy, late join, or host migration changes invalidate session and reconnect evidence. |
| Cross-role proof | Required evidence covers both private views, both role decisions, non-voice play, duplicate/delay/reorder, forced error, disconnect at each protocol phase, authoritative agreement, and clean restart. | Evidence plan only | Any earlier lock change requires the affected two-client and authority captures to be replaced. |

If any rope-pair mapping changes after players learn it, reopen **Shared vocabulary**, **Commit protocol**, and **Pressure and recovery**; discard the teaching capture, every timed exchange, and all reconnect snapshots containing the old phase vocabulary.

## Shared truth

Six ropes form three opposing pairs: crown/drain, window/well, and nave/door. In each phase, one rope bears a wet handprint visible only through the Surveyor's lens. The paired rope is the safe counterweight. Turning the marked rope invites the creature closer. Turning the paired rope advances the bell seal.

The host owns the current pair, mark, phase version, counterweight position, threat distance, and seal progress.

## Role agency

### Surveyor

The Surveyor must move among three narrow lens stations while a smaller moth swarm obscures unused lenses. They decide which station to clear, identify the marked rope, translate it to the shared pair vocabulary, and confirm the Keeper's staged selection.

### Keeper

The Keeper moves among three heavy counterweights while the lower machinery leaks black water. They decide which control matches the message, stage it to reveal an engraved preview, request confirmation, then commit while managing a local pressure valve.

Neither role can complete the loop alone. Neither merely reads or types an answer.

## Task, possession, and last-known state

| Participant | Current task and reason | Last verified location/state | Physical possession | Knowledge held | Failure/fallback |
| --- | --- | --- | --- | --- | --- |
| Surveyor | clear the correct lens station, identify the wet mark, and verify the Keeper's staged pair | last acknowledged lens station; `clear`, `moths_obscuring`, or `injured` | viewing lens handle | private active mark and visible socket etching | if a lens path is blocked, report `LENS BLOCKED` and move to the named central fallback lens; no mark is fabricated |
| Keeper | keep the pressure valve stable, stage the paired counterweight, and commit only after acknowledgement | last acknowledged lower control bay; `clear`, `water_rising`, or `injured` | counterweight controls and one loose brass clapper pin | pair vocabulary and staged control, but not the active mark until told | if the route to a control floods, clear the stage, report `CONTROL BLOCKED`, and return to the valve platform |

The Keeper finds the clapper pin in the lower toolbox and physically owns it. They do not know its significance. Through the upper lens, the Surveyor can read an etching showing that the pin locks the unused third rope during the final phase, but cannot reach the pin or socket. The Surveyor must transmit the meaning; the Keeper must choose when to install it while maintaining the valve. Possession does not grant knowledge, and knowledge does not grant the ability to act.

Last-known state updates only through direct authoritative room events or an acknowledged role message. When contact is lost, neither player receives a live marker for the other. The UI shows the last acknowledged task, location, condition, and timestamp.

## Vocabulary and acknowledgement

The entry landing displays the three paired symbols with words and raised shapes:

```text
CROWN ↔ DRAIN
WINDOW ↔ WELL
NAVE ↔ DOOR
```

The Surveyor sends `MARK: CROWN`. The Keeper stages `DRAIN`; both displays show `STAGED: DRAIN — PHASE 2`. The Surveyor acknowledges with `PAIR CONFIRMED`, after which the Keeper may commit.

Voice is optional. A radial phrase board, text log, symbol ping, and raised-shape icon express the same meanings. Symbols never depend on color alone.

## Missed handoff and deterministic recovery

In phase two, the Surveyor sends `MARK: WINDOW` while the Keeper is responding to the water alarm. The server records the message as delivered, but the Keeper does not send an acknowledgement before the five-second stage-confirmation window expires. Delivery therefore does not become shared understanding.

The Keeper may stage `WELL`, but the authoritative commit remains disabled. At expiry, the stage returns to neutral, both roles receive `CONFIRMATION MISSING — STAGE CLEARED` through text, symbol, and haptic feedback, and the threat clock continues. No wrong commit is charged, no clue is changed, and no role is blamed. The Surveyor can resend the same observation version or move to the fallback lens if the original view has become blocked.

Transmission history retains separate `sent`, `delivered`, and `acknowledged` values. A save made after delivery but before acknowledgement reloads with the stage still reversible and commit disabled. It cannot convert the missing acknowledgement into consent or apply the action twice.

## Pressure

The encounter, not each phase, begins with the creature three landings below. For this provisional timing model, those landings equal 72 active seconds. The authority carries one continuous value across phase changes:

```text
remaining approach seconds
  = 72
  - authoritative active elapsed seconds
  - (24 * accepted wrong commits)
```

A correct commit advances the seal but does not restore distance. A wrong commit removes one landing, accumulates in the same encounter, and selects a different active marked rope for the next version; the taught CROWN↔DRAIN, WINDOW↔WELL, and NAVE↔DOOR pair definitions never change. Three accepted wrong commits therefore exhaust the starting distance even if little active time has passed. Active elapsed time may cause failure earlier. The error does not kill a remote player without explanation.

One correct phase has this concrete provisional communication budget:

```text
perceive private mark             3 s
encode and transmit              4 s
channel delivery allowance       1 s
acknowledge staged pair          3 s
perform authoritative commit     3 s
safety margin                    4 s
total                           18 s
```

Three ideal phases consume 54 of the illustrative 72 seconds, leaving an 18-second encounter reserve. These are proposed values, not evidence that unfamiliar players can meet them. The pressure lock remains open for novice pairs, supported languages, non-voice play, timing assistance, and realistic network conditions.

The Surveyor's moth swarm and the Keeper's water valve consume attention locally. Neither effect disables the communication channel.

## Success and failure

Three correct paired commits seal the bell and open the shared escape stair. Both roles see the seal state, hear or read the final bell cue, and receive the same completion version.

Three accumulated wrong commits let the creature reach the lower machinery; elapsed time can reach it sooner. Before failure, both players see a recap containing only their transmitted mark, staged control, acknowledgement, committed control, remaining distance, and phase result. It does not reveal future sequences.

## Disconnect policy

This example chooses pause-and-reconnect. If either role disconnects before the authoritative commit is accepted, threat movement and phase timers enter a protected pause for 45 seconds. The connected player may review vocabulary but cannot commit. A returning player must present the same authenticated session identity and role assignment. Both roles then receive the current phase version, staged selection, seal result, remaining distance, and protected countdown. Only the Surveyor receives the active private mark; the Keeper never receives that cue.

If the server has already accepted an idempotent commit when disconnection occurs, that commit resolves exactly once, the resulting seal and threat state become the next authoritative version, and the encounter pauses before issuing a new private clue. On reconnect, both clients load the committed control, outcome, new phase version, remaining distance, and protected countdown. The next private mark is sent only to the Surveyor. Retrying the old operation identifier returns that result rather than turning another weight.

Late join is rejected once the encounter starts. A new identity may wait in the lobby and join only before a fresh encounter or after a full reset; it cannot inherit an absent role during a protected pause. Host migration is also unsupported. Host loss enters the same protected pause, allows the original authenticated host to return within 45 seconds, and otherwise aborts both clients to the pre-encounter checkpoint and lobby without committing partial seal progress. No client is promoted from a partial replica.

The authority validates role ownership independently of every request. A Keeper request for the Surveyor's mark is rejected and logged without returning a placeholder that leaks the clue shape. A Surveyor request to stage or commit a counterweight is likewise rejected and logged. These rules are proposed and still require two-client tests.

No AI partner or solo mode is claimed.

Save/load restores the shared phase, both current tasks, last verified locations and conditions, the Keeper as sole physical holder of the clapper pin, the Surveyor as the only role that initially knows its use, transmission and acknowledgement history, staged input, remaining distance, and protected-pause state. Death/retry follows the declared checkpoint: encounter-local messages, marks, and staged actions clear; the pin returns to its authored toolbox owner unless the checkpoint explicitly follows its accepted installation. Reload never grants the pin to the Surveyor, teaches the Keeper its meaning before transmission, heals an injured role, or advances a task twice.

## Evidence an implementation would need

| Claim | Required evidence |
| --- | --- |
| Roles see only their declared information | Two-client capture plus private-state assertions |
| Both roles make necessary decisions | Complete traces from Surveyor and Keeper viewpoints |
| Possession differs from knowledge | Keeper holds the clapper pin; Surveyor knows its socket; only an acknowledged exchange enables correct installation |
| A non-voice route works | Fresh-pair playthrough using only phrase board and pings |
| Commit is authoritative and singular | Duplicate, delayed, and reordered input tests |
| Wrong action updates both clients coherently | Shared phase and threat assertions after forced error |
| Remaining distance persists | Authority trace across three correct phases and accumulated wrong commits, with no phase reset |
| Provisional timing is usable | Fresh novice pairs through voice and every supported non-voice or localized path; status remains open until measured |
| Reconnect restores one version without leaking the clue | Disconnect during clue, stage, acknowledgement, and commit; Keeper capture contains no private mark |
| Missed handoff is recoverable | Delivered-but-unacknowledged phase clears the reversible stage, keeps commit disabled, and preserves the threat clock |
| Last-known state is honest | Contact loss freezes the other role's last acknowledged task/location/condition instead of exposing a live marker |
| Save/load preserves ownership and knowledge | Reload at claim, delivery, acknowledgement, pin transfer/use, injury, and fallback states without merging roles or duplicating the pin |
| Spoofed role requests fail closed | Keeper requests Surveyor mark and Surveyor submits Keeper commit; authority rejects and logs both |
| Late join follows the rejection policy | New identity attempts to join during clue, stage, protected pause, and accepted commit, then reaches lobby only |
| Unsupported host migration has a deterministic fallback | Host loss, protected return, and grace-expiry abort traces with no client promotion or partial seal commit |
| Restart is clean | Clear private cues, staged input, messages, threat callbacks, and completion |

## Limits

This example does not claim matchmaking, internet deployment, voice transcription, moderation, solo support, host migration support, final accessibility, novice timing success, or production balance. Those require real project capability and direct testing.
