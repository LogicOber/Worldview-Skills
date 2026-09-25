# Character handoff and shared evidence contract

Fill this before implementation. Replace every placeholder. Mark proposals as proposals until direct runtime evidence validates them.

## Project and boundary

- Project path / playable entry:
- Required single ending:
- Playable protagonists:
- Supported viewpoint order:
- Existing world-state owner:
- Existing inventory owner:
- Existing knowledge/journal owner:
- Existing save/checkpoint owner:
- Out of scope:

## Neighbor handoffs

| Concern | Owning Skill/system | State read from this contract | State returned |
| --- | --- | --- | --- |
| Live co-op information/action | | | |
| Entity identification | | | |
| Perception distortion | | | |
| Campaign convergence | | | |

## Shared-ID registry

| Stable ID | Type | Authoritative owner | Runtime instances | Creation | Terminal state | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| | place/object/actor/event/fact | | | | | |

## Event-owner pointer and transition index

| Event ID | Preconditions | Actor | World time | Mutations | Immutable result | Dependent events |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Physical-custody pointer and transition index

| Object ID | Initial location/holder | Condition | Operability rule | Transfer events | Destruction/unavailable rule | Authority |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Knowledge-access pointer and transmission index

| Fact ID | Character | Initial status | Observation/transmission source | Confidence | Interpretation | Mandatory? | Later action enabled |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | unknown/observed/believed/doubted/contradicted/confirmed | | | | yes/no | |

## Presentation mapping

| Shared ID | Viewpoint | Required knowledge | Visible model/state | Inspect text | Available action | Accessibility equivalent |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Action-to-residue matrix

| Earlier viewpoint/action | Authoritative mutation | Persistent residue | Absence/default state | Later observer | Knowledge gained | Later decision |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Indirect transmission

| Transmission ID | Sender | Receiver | Channel | Fact content | Delay | Corruption/loss rule | Acknowledgement |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

## Viewpoint switch transaction

1. Input suspension:
2. Active-action completion/cancellation:
3. World mutation commit:
4. Physical ownership commit:
5. Knowledge/transmission commit:
6. Save/version write:
7. Incoming viewpoint creation:
8. Presentation derivation:
9. Input restore:
10. Debug snapshot:

Rollback boundary:

## Persistence and failure matrix

| Transition | Truth retained | Physical state retained | Knowledge retained | Presentation cleared | Pending work cleared | Recovery evidence |
| --- | --- | --- | --- | --- | --- | --- |
| Save/load before switch | | | | | | |
| Save/load during switch | | | | | | |
| Death before commit | | | | | | |
| Death after commit | | | | | | |
| Cutscene skipped | | | | | | |
| Chapter replay/review | | | | | | |

## Single-ending convergence

- Mandatory facts:
- Mandatory physical resources:
- Mandatory world mutations:
- Optional facts and their local effects:
- Final action:
- Allowed procedure variation:
- Allowed aftermath variation:
- States explicitly forbidden from creating another ending:

## Implementation plan

| Order | Change | Existing system reused | New owner/data | Migration | Proof |
| ---: | --- | --- | --- | --- | --- |
| 1 | | | | | |

## Runtime verification

- [ ] Every supported viewpoint order.
- [ ] Earlier action present and absent.
- [ ] Object transferred at every switch boundary.
- [ ] Knowledge without possession and possession without knowledge.
- [ ] Optional evidence skipped.
- [ ] Mandatory transition skipped.
- [ ] Save/load before, during, and after switch.
- [ ] Death before and after transaction commit.
- [ ] Duplicate and stale event rejection.
- [ ] Replay mode cannot mutate canon.
- [ ] Accessible equivalents preserve knowledge ownership.
- [ ] Minimum-state convergence reaches the single ending.
- [ ] Debug comparison resolves truth, holder, knowledge, and presentation through their declared domain-owner pointers.

## Delivery evidence

- Changed files:
- Playable entry:
- Automated tests:
- Runtime journeys:
- Screenshots/logs:
- Known limitations:
- Unverified proposals:
