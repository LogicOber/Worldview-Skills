# Glasswater Courier

**Glasswater Courier** is an original fictional example written for this package. It is not derived from an existing game or route.

## Invocation

```text
/worldview-game-stranded-journey-and-lost-protections

Design a one-ending horror route in a storm-evacuated river district. A bicycle
courier must deliver refrigerated antitoxin to Glasswater Clinic. Establish a
working checkpoint, repair kiosk, public shelter, phone, and familiar footbridge
before corrupting them. Help may cost time or custody, but refusal must work.
```

## Locked obligation

- Origin: municipal dispensary.
- Destination: Glasswater Clinic cold room.
- Cargo: three antitoxin vials in a powered carrier.
- One ending: the carrier reaches the clinic and is accepted.
- Local variation: vial temperature margin, courier injury, surviving evidence, and which contact remains trusted.

## Safety-resource ledger

| Resource | Baseline | Degradation/loss | Fallback | Restoration |
| --- | --- | --- | --- | --- |
| Mobility | bicycle demonstrated on dry west road | chain bends after flood debris | walk while carrying carrier; slower warming | repair at kiosk or accept patrol cart |
| Communication | phone call to clinic acknowledged | relay congestion, then no data | text queue shows unsent state; wired shelter terminal | rooftop relay can send one message |
| Navigation | route card and visible blue markers | lower district markers rotate in wind | paper flood map at shelter | compare two fixed pump numbers |
| Shelter | shelter admits courier during first drizzle | later attendant locks inner hall after alarm | exterior awning with poor cooling access | prove medical cargo at side intake |
| Credibility | courier badge accepted at checkpoint | damaged badge photo is unreadable | sealed dispatch token | clinic confirms token over wired terminal |
| Cargo integrity | powered carrier at 3°C | battery drains faster when walking in rain | coolant sleeve buys twelve minutes | kiosk battery swap, if not surrendered |
| Human assistance | checkpoint worker and kiosk mechanic observed helping residents | checkpoint evacuated; mechanic missing | patrol driver offer; clinic contact | no full restoration after lower district |

## Journey segments

### Segment A — Dispensary to checkpoint

The player rides a readable road, calls the clinic, and passes the badge check. This establishes mobility, communication, navigation markers, credibility, and an institutional promise: the public shelter will remain open until midnight.

### Segment B — Checkpoint to repair kiosk

Flood debris bends the chain after a visible warning and a choice of two lanes. The carrier begins warming only while movement is slow. At the kiosk, the mechanic is absent but a repair stand works. The player may spend four minutes repairing or walk immediately with the coolant sleeve.

### Segment C — Shelter and help offer

The shelter's wired terminal can verify the dispatch token. A patrol driver offers a ride but requires placing the carrier in a locked rear compartment. Known cost: the player yields route and cargo access for eight minutes. Hidden risk, fairly hinted by a mismatched route placard: the driver intends to stop at the depot first.

Accepting preserves battery but spends time and removes immediate cargo custody. Refusing keeps custody; the player uses the footbridge on foot. Both routes reconverge at the east pump.

### Segment D — Corrupted footbridge return

The player crossed the bridge safely during the tutorial delivery earlier that day. On return, a pump-number sign is tilted, fresh water crosses the first landing, and the suspension cable emits a captioned strain cue. This is the preparation point. The player can return to the shelter awning, use a maintenance ledge found on the map, or commit to the bridge. The no-return line is the second tower after a span collapses behind it.

### Segment E — Clinic approach

The clinic appears open but the main intake no longer accepts the damaged badge. Evidence of the earlier checkpoint verification plus the dispatch token opens the side cold-room hatch. If the token was left at the shelter terminal, the clinic can recognize the carrier's sealed serial after a ninety-second exposure sequence. No path creates another ending.

## Help and credibility

| Helper | Supplied | Yielded control | Refusal fallback | Local consequence |
| --- | --- | --- | --- | --- |
| kiosk repair stand | mobility restored | four minutes and carrier battery | walk with sleeve | arrival battery differs |
| shelter attendant | wired verification and brief shelter | shows cargo/token | remain outside and use awning | later side-entry proof differs |
| patrol driver | fast movement and dry carrier | destination and cargo custody | footbridge/ledge | driver trust and evidence differ |
| clinic operator | final intake | identity verification | sealed-serial procedure | same acceptance ending |

## Resource coupling rules

- Walking changes travel time and carrier battery; it does not delete communication.
- Phone loss does not erase the route card already read.
- Credibility changes only when an actor accepts or rejects evidence.
- Shelter lock does not prevent use of the exterior terminal cable unless the alarm phase severs it.
- The patrol cart cannot steal or destroy the carrier; the risk is delay and loss of immediate custody.

## Failure and save behavior

Checkpoints occur at the kiosk exit, shelter decision, and footbridge preparation point. Active help, cargo holder, battery, coolant sleeve, credibility, bridge phase, and messages persist atomically. A failed bridge crossing restores the preparation-point state and does not recharge the carrier. After three failures, a previously noticed maintenance ledge is highlighted through an optional navigation aid; it is not spawned as a new route.

## Single-ending convergence

Required:

- carrier reaches the clinic;
- at least one vial remains below the declared acceptance temperature;
- side intake receives badge, dispatch token, wired confirmation, or sealed serial proof.

Variations:

- all vials cold: rapid handoff;
- one vial valid: technician performs a slower inspection;
- patrol accepted: driver testimony becomes part of the incident record;
- patrol refused: courier retains a route photo that proves the bridge warning was late.

The clinic accepts the antitoxin in every viable conclusion.

## Verification

1. Accept and refuse the patrol offer.
2. Repair and skip repair.
3. Lose phone before and after reading the route card.
4. Enter the shelter normally and prove access at the side intake.
5. Commit to the bridge and choose the ledge.
6. Save/load while the patrol controls movement and while the carrier changes custody.
7. Fail the bridge repeatedly; resource state must remain declared.
8. Use captioned strain, high-contrast waterline, and non-spatial navigation cues.
9. Record continuous route and waiting time.
10. Reach the same clinic ending with each viable proof path.

## Expected output

```text
gameplay/glasswater-courier/
├── dependency-contract.md
├── route-segments.yaml
├── resources.yaml
└── verification.md
```

No runtime or balance claim is made until implemented and tested.
