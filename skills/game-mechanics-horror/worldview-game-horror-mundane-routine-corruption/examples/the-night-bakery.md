# Original example — The Night Bakery

This fictional example demonstrates the contract shape. It does not describe an existing game or claim runtime verification.

## Invocation

```text
/worldview-game-horror-mundane-routine-corruption

Build an opening loop in a hilltown bakery where the player weighs flour jars,
stamps route tags, and places night loaves in three street lockers. Establish
the normal process before one locker requests a loaf for a street removed from
the town register. Keep one ending and make every response matter locally.
```

## Baseline and owners

`BatchLedger` owns batch ID, weight, tag, and accepted locker. `LockerState` owns door and receipt. `CourierSchedule` owns legitimate route assignments. `EvidenceLedger` records only facts the player inspects. Light, sound, printed text, and animations read those states but do not define them.

| Cycle | Player action | Expected result | Later purpose |
| --- | --- | --- | --- |
| Guided | Weigh batch B14, stamp copper route, place it in Locker 2 | Scale settles at target; locker returns a dry embossed receipt | teaches scale, stamp, Locker 2, and receipt depth |
| Independent | Prepare B15 for blue route and use Locker 1 | Same transaction with different known route | proves player can predict confirmation |
| Variation | Correct an overweight B16 before stamping | rejected stamp becomes valid after weight correction | teaches that legitimate failures explain themselves |

Mastery is reached when the player corrects B16 and chooses Locker 1 without a route marker. A player who skips the variation sees the morning clerk demonstrate one rejected tag before the first dangerous commitment.

## Attention coverage

Stamping holds the hands near the press for 3.5 estimated seconds but does not lock the camera. The alley window is behind the player. During the first two cycles nothing changes there. During the first exception, a figure may cross only after the press begins; a wet flour footprint remains outside, and no attack is permitted. The batch timer continues, but the receipt deadline pauses while the object is in the press.

## Exception ladder

| ID | One changed field | Anchors retained | Verification |
| --- | --- | --- | --- |
| E1 | destination reads “Cinder Row,” absent from register | batch weight, courier seal, press, and locker grammar remain normal | compare wall register and route-tag index |
| E2 | legitimate blue route produces a receipt with no embossing | route, batch, locker, and receipt paper remain familiar | tilt receipt under work lamp and compare B15 |
| E3 | Cinder Row appears in the register under the player’s handwriting | register location and other routes remain stable | compare pencil pressure with the player’s logged corrections |

## First exception responses

| Response | Local consequence |
| --- | --- |
| Inspect | Costs 70 estimated seconds and misses one ordinary delivery window, but records the absent street and unlocks receipt comparison early. |
| Accept | Locker 3 consumes the loaf and opens a service passage later; the player loses the sealed loaf as evidence. |
| Quarantine | Places the loaf in the cooling cage; preserves it but blocks the fastest back-room route until the cage is reopened. |
| Delay | Calls the courier desk; the voice confirms the seal but not the street, creating a testimony/evidence conflict. |
| Leave | Closes the storefront and moves the exception to the dawn audit; it does not erase the altered register. |

All paths converge when the bakery’s vent begins carrying flour inward instead of outward. The route and evidence available at convergence remain different.

## Failure and recovery

The likely wrong reading is that an overweight batch caused the strange receipt. If the player reweighs it, the correct weight is visible and the receipt remains flat. The failed explanation costs time but produces a useful fact. If the player overstays at Locker 3 after its second knock, capture reloads at the cooling bench with the last committed batch, inspected evidence, and response consequence intact.

## Canonical ending

The player uses the ordinary press—the first learned verb—to stamp the vent-control plate with the bakery’s real route seal. This closes the false inward route and opens the roof exhaust. Accepting E1 makes the service passage the fastest approach; quarantining preserves the loaf needed to prove the false route at dawn; delaying preserves the courier recording. These are different local histories, not different endings.

The aftermath lets the player inspect the altered register, remaining loaf or empty seal, damaged vent, and dawn clerk’s reaction. The ordinary opening checklist now includes a route that no longer exists, so the shift cannot return to its untouched state.

## Verification required

- mastery without text-only tutorial;
- skip-safe demonstration;
- authoritative transaction independent of animations;
- blind interval residue and no unfair attack;
- every response persists through save/load;
- capture restores one coherent batch/locker/evidence state;
- ending reachable from accept and quarantine histories;
- non-color receipt depth cue, subtitles, reduced intensity, and input assistance;
- measured times replace all estimates.
