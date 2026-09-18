# <Encounter name> — Asymmetric cooperation contract

## Status and source boundary

- Project/runtime:
- Working path:
- Player count and platforms:
- Existing session/authority observed:
- User-provided roles and fiction:
- New proposals:
- Untested network or device boundary:

## Layer lock record

Complete this record before puzzle implementation. Reopen the earliest contradicted lock and invalidate its dependents instead of modifying a later timer, message, or test in isolation.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Shared outcome | | | | | | All later locks |
| Role agency | | | | | | Information graph, vocabulary, timing, role tests |
| Information boundary | | | | | | Vocabulary, protocol, privacy, success traces |
| Shared vocabulary | | | | | | Teaching, timing, accessibility evidence |
| Commit protocol | | | | | | Network, failure, reconnect tests |
| Pressure and recovery | | | | | | Novice and accessibility timing claims |
| Session authority | | | | | | Degradation and reconnect evidence |
| Cross-role proof | | | | | | Delivery claims and captures |

## Shared problem

Owner: **Shared outcome**.

> Players must combine `<partial information>` and `<role-specific actions>` through `<supported communication>` before `<pressure condition>`, producing `<authoritative consequence>`.

## Role contracts

Owner: **Role agency**.

| Role | Unique perception | Unique action | Missing information | Local pressure | Feedback received |
| --- | --- | --- | --- | --- | --- |
| A | | | | | |
| B | | | | | |

For each role also record:

- input and device;
- join and assignment;
- communication channels;
- acknowledgement action;
- accessibility equivalents;
- absence/disconnect behavior;
- assistance without automatic solution.

## Information-action graph

Owner: **Information boundary**.

| Phase/version | Authoritative fact | Cue owner | Cue | Message | Acknowledgement | Actor | Action | Shared consequence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | | |

## Vocabulary

Owner: **Shared vocabulary**.

| Meaning | Spoken form | Text/ping form | Visual form | Haptic/audio form | Localization risk |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

Document teaching sequence, viewpoint-relative terms to avoid, and how players review the vocabulary.

## Commit protocol

Owner: **Commit protocol**.

```text
perceive -> interpret -> transmit -> acknowledge -> stage -> commit -> shared feedback
```

- Reversible preview:
- Irreversible boundary:
- Commit owner:
- Phase/version validation:
- Duplicate/stale input behavior:
- Outcome broadcast:

## Communication budget

Owner: **Pressure and recovery**.

```text
threat/objective window =
perception time         =
encoding time           =
channel/latency budget  =
acknowledgement time    =
action time             =
safety margin           =
remaining usable time   =
```

Measure novice and accessible-channel paths separately.

## Pressure and threat

| Role | Pressure source | Onset cue | Escalation | Can interrupt communication? | Recovery |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

## Failure and recovery

| Failure | Broken edge | Consequence | Feedback to each role | Retry state |
| --- | --- | --- | --- | --- |
| Wrong clue interpretation | | | | |
| Ambiguous message | | | | |
| Stale phase | | | | |
| Wrong control/action | | | | |
| Late commitment | | | | |
| Disconnect | | | | |
| Spoofed role request | | | | |
| Late join during active encounter | | | | |
| Host loss during active encounter | | | | |

## Absence policy

Choose and complete one or more supported paths:

- Group required:
- Pause and reconnect:
- Deliberate role reassignment:
- Authored solo role-switch mode:
- Existing AI-partner behavior:

Do not claim unsupported paths.

## Authority and networking

Owner: **Session authority**, constrained by **Commit protocol**.

- Server/host owns:
- Client-private presentation:
- Predicted actions:
- Reconciliation:
- Message idempotence:
- Latency/jitter/loss targets:
- Late join:
- Reconnect:
- Host migration:
- Private clue replay rule:
- Role-claim validation:
- Privacy/moderation boundary:

## Accessibility

- Complete non-voice path:
- Required audio alternatives:
- Required visual alternatives:
- Non-color encodings:
- Text scale/localization:
- Input remapping and hold/toggle:
- Reduced motion:
- Timing assistance:
- Vocabulary review:

## Tunables

```yaml
session:
  required_players: 0
  reconnect_grace_seconds: 0
communication:
  acknowledgement_seconds: 0
  message_cooldown_seconds: 0
  history_entries: 0
encounter:
  decision_window_seconds: 0
  commit_grace_seconds: 0
  retry_delay_seconds: 0
network:
  supported_latency_ms: 0
  supported_jitter_ms: 0
  simulated_loss_percent: 0
```

Values are placeholders, not defaults.

## Verification

Before delivery, confirm that no late role, clue, channel, commit, pressure, or authority change bypassed a reopen trigger in the layer lock record.

| Claim | Procedure and role | Network condition | Expected | Observed | Evidence | Status |
| --- | --- | --- | --- | --- | --- | --- |
| Role assignment is stable | | | | | | |
| Each role has necessary agency | | | | | | |
| Non-voice route is complete | | | | | | |
| Shared commit occurs once | | | | | | |
| Failure identifies the broken edge | | | | | | |
| Reconnect restores current phase | | | | | | |
| Every role completes the teaching and pressured loop | | | | | | |
| Delay, jitter, and loss remain inside supported budget | | | | | | |
| Duplicate and reordered messages cannot duplicate a commit | | | | | | |
| Late join follows the declared rejection or reconstruction policy | | | | | | |
| Spoofed role request cannot reveal a cue or accept a commit | | | | | | |
| Unsupported host migration follows the declared protected fallback | | | | | | |
| Reconnect returns private cues only to their owning role | | | | | | |
| Disconnect during commit follows the declared acceptance boundary | | | | | | |
| Evidence from every client agrees with authoritative state | | | | | | |
| Restart clears stale messages/events | | | | | | |

## Handoff

- Join instructions:
- Supported player count:
- Role assignment:
- Controls per role:
- Communication paths:
- Teaching step:
- Verified success/failure:
- Network conditions tested:
- Disconnect policy:
- Late-join policy:
- Evidence paths for every role/client and authority:
- Reused assets/proxies:
- Untested infrastructure:
