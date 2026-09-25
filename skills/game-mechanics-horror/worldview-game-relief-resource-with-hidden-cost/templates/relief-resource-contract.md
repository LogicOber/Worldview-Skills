# Relief resource with hidden cost contract

## Project boundary

- Project / playable entry:
- Immediate pressure:
- Resource, provider, or relief action:
- Required single ending:
- Existing inventory / body / permission / threat / save owners:
- Content and accessibility limits:
- Out of scope:

## Ownership and handoffs

| Concern | Authoritative owner | State read | Transaction sent | Acknowledgement returned | Forbidden duplicate |
| --- | --- | --- | --- | --- | --- |
| availability / count | | | | | relief or cost |
| immediate pressure | | | | | quantity |
| bodily condition | | | | | use history |
| permission / debt | | | | | ending commit |
| detection | | | | | relief state |
| ending / aftermath | | | | | transaction history |

## Two-axis state ledger

| Field | Type / values | Writer | Visible proof | Save rule | Recovery |
| --- | --- | --- | --- | --- | --- |
| use_event_id | | relief ledger | | | |
| pressure_before | | pressure owner | | | |
| relief_delta | | relief ledger / receiving owner | | | |
| relief duration / decay | | | | | |
| downstream cost axis | | receiving owner | | | |
| downstream cost delta | | | | | |
| knowledge stage | | relief ledger | | | |
| thresholds crossed | | relief ledger | | | |
| alternatives learned | | relief ledger | | | |
| handoff acknowledgements | | relief ledger | | | |

## Use-event ledger

| Event ID | Context / pressure | Resource or provider | Immediate delta | Cost delta / owner | Knowledge before | Cue produced | Threshold | Alternative available | Save result | Aftermath |
| --- | --- | --- | ---: | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | | | | |

## Relief curve

- Maximum benefit:
- Onset:
- Duration:
- Decay:
- Diminishing return:
- Interruption behavior:
- What relief cannot change:

## Disclosure schedule

| Stage | Player knowledge | Cue / evidence | Competing explanation | Test available | Action unlocked | Must occur before |
| --- | --- | --- | --- | --- | --- | --- |
| before first use | | | | | | |
| first trace | | | | | | |
| repeat confirmation | | | | | | |
| risky threshold warning | | | | | | |
| irreversible disclosure | | | | | | |

## Alternatives

| Alternative | Availability | Relief supplied | Cost / tradeoff | Failure / recovery | Ending route |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

## Thresholds

| Threshold | Condition | Advance cue | Result / receiving owner | Reversible? | Fallback | Ending remains reachable? |
| --- | --- | --- | --- | --- | --- | --- |
| safe | | | | | | |
| risky | | | | | | |
| irreversible | | | | | | |

## Use under pressure

- Validation:
- Quantity or access reservation:
- Last cancel point:
- Commit point:
- Threat / timed-task behavior:
- Partial-use behavior:
- Simultaneous request behavior:
- Duplicate callback behavior:
- Exhausted / unavailable behavior:

## Persistence

- Schema version:
- Atomic fields:
- Safe save boundaries:
- Restore order:
- Crash before commit:
- Crash after commit:
- Death / retry:
- New game / profile reset authority:
- Migration or unsupported-save policy:

## Accessibility and content safety

| Need | Default presentation | Equivalent | Knowledge stage preserved | Test |
| --- | --- | --- | --- | --- |
| reduced intensity | | | | |
| no directional audio | | | | |
| non-color cue | | | | |
| reduced motion | | | | |
| remapped / simplified input | | | | |
| extended decision window | | | | |

- Fictional / non-medical framing:
- Content warning or opt-down behavior:
- Assistance must not reveal:

## Single-ending history handoff

| History | Uses | Highest threshold | Alternatives used | Final pressure | Final cost state | Procedure change | Local aftermath |
| --- | ---: | --- | --- | --- | --- | --- | --- |
| never use | 0 | none | | | | | |
| cautious | | | | | | | |
| compulsive | | | | | | | |
| mixed | | | | | | | |

- Required ending fact:
- Fallback after exhaustion:
- Fallback after irreversible threshold:
- Ending commit owner:

## Verification

| Test | Setup | Expected ledger / visible result | Observed | Pass / fail | Evidence |
| --- | --- | --- | --- | --- | --- |
| never-use route | | | | | |
| cautious history | | | | | |
| compulsive history | | | | | |
| mixed history | | | | | |
| cancel before commit | | | | | |
| interrupt after commit | | | | | |
| rapid duplicate request | | | | | |
| exhaust / lose access | | | | | |
| save/load every disclosure and threshold | | | | | |
| reduced-intensity / no-audio / non-color | | | | | |
