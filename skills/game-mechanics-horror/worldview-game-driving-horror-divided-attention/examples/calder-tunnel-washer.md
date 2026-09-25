# Calder Tunnel Washer

**Calder Tunnel Washer** is an original fictional example written for this package. It is not an existing game, route, vehicle, or implementation.

## Invocation

```text
/worldview-game-driving-horror-divided-attention

Create a one-ending horror sequence about a municipal operator driving a slow
wash vehicle through a sealed flood tunnel. The player must steer around exposed
conduit, monitor brush pressure, inspect a chemical tank behind the seat, and
decide whether to use marked service bays. Make every cabin check fair and keep
the final control depot reachable after damage, failure, or reload.
```

## Boundary and ending

- Vehicle: low-speed three-axle tunnel washer **CW-4**.
- Route: four tunnel segments and three marked service bays.
- Obligation: flush mineral residue before the floodgate inspection.
- One ending: CW-4 or its sealed job recorder reaches Calder Control Depot, where the floodgate is locked.
- Variation: washer damage, remaining solution, recovered recorder entries, and whether the operator arrives in the cab or through the emergency walkway.

## Authoritative state

| Field | Values | Writer | Visible proof |
| --- | --- | --- | --- |
| speed band | stopped / crawl / work / unsafe | vehicle controller | speed dial, engine pitch, wall motion |
| brush pressure | retracted / stable / overloaded | brush subsystem through state owner | gauge, brush sound, wash pattern |
| tank seal | sealed / seeping / open | cabin interaction state | odor icon, floor sheen, seal indicator |
| power | main / reserve / isolated | power controller | panel lamp and available controls |
| threat zone | drainage channel / rear platform / cabin threshold / absent | threat state owner | water displacement, mirror shape, latch movement |
| route progress | segment ID plus distance band | route state owner | wall markers and job console |
| arrival commit | false / true | depot trigger after validation | depot doors close and recorder uploads |

The camera, audio, and animation systems read these values. They never advance route progress or threat position.

## Road-demand curve

| Segment | Road demand | Safe glance | Cabin event | Stop decision | Ignore outcome |
| --- | --- | ---: | --- | --- | --- |
| A: calibration lane | wide, straight, bright markers | 4.0 s | learn tank-seal check | Bay A is free and safe | none; console repeats prompt |
| B: conduit aisle | gentle bends, two fixed obstacles | 1.5 s | mirror shows rear spray interruption | Bay B costs solution pressure but permits inspection | missed check leaves ambiguous residue, not damage |
| C: split drain | narrow lane, alternating cover | 0.8 s mirror only | rear latch reports one false-open pulse, then a real pulse | no stop until striped refuge | warning escalates; automatic limiter prevents fatal turn |
| D: depot approach | straight but low visibility | 2.0 s | choose recorder isolation or cabin power | Bay C permits one repair but drains reserve | ignored choice defaults to recorder protection and reduced lights |

No event asks the player to turn behind the seat during Segment C. The full tank inspection is legal only while stopped or during Segment A.

## Cabin sight-zone graph

| Zone | Entry | Road coverage | Information | Retained control | Exit |
| --- | --- | --- | --- | --- | --- |
| forward road | neutral view | full | lane, markers, conduit | all | select another zone |
| instrument panel | short downward toggle | upper road remains visible | speed, brush pressure, power | steering and braking | release / toggle |
| left mirror | glance input | peripheral road | rear spray and platform | steering, light braking | release |
| tank seal | rotate-and-hold | none | seal ring, seep rate | brake only | release; allowed moving only in Segment A |
| rear hatch | stopped interaction | none | latch and recorder cable | none; parking interlock | cancel / complete |

Reduced-motion mode snaps among the same zones with a stable horizon. Each critical gauge also has a shaped icon and controller pulse pattern.

## Glance budget

The budget is segment-owned. At 70% consumption, lane markers brighten at the forward edge and steering vibration begins. At 90%, the operator hears one neutral road warning and the return input pulses. Exhaustion does not crash the vehicle automatically: CW-4 drifts within a recoverable lane margin for 0.6 seconds, then the speed limiter engages. The cost is time and one brush-overload step if pressure was high.

## Control interference

| ID | Symptom | Common response | Working response | Release | Failure ceiling |
| --- | --- | --- | --- | --- | --- |
| CI-1 brush drag | steering pulls left only when brush is down; pressure gauge rises | retract brush and slow | works immediately | brush retracted for 2 s | scraped wall, no hard lock |
| CI-2 false brake lamp | lamp flashes but pedal and deceleration remain normal | test brake on a straight | test clears false lamp | one controlled brake press | schedule loss only |
| CI-3 rear cable snag | speed falls and rear mirror line tightens | stop at refuge or reverse one meter | both work where marked | cable slack confirmed | stall at refuge, never in blind bend |

The hostile state may exploit a real maintenance fault, but it cannot reverse steering or disable braking without advance evidence.

## Moving and stopped threat rules

| Phase | Moving permission | Legal-stop permission | Transition evidence |
| --- | --- | --- | --- |
| channel wake | displace water beside vehicle; cannot enter cabin | approach rear axle under cover | ripple crosses two wall markers |
| platform hold | remain behind tank; disturb spray | touch hatch but not open sealed latch | left mirror loses one spray fan |
| threshold test | produce one false latch report | pull unsealed latch one step | physical latch indicator disagrees with console |
| isolated | cannot move through dry lit bay | retreats to channel | bay drain runs clear for three seconds |

Looking in the mirror reveals state; it never teleports the presence. At Bay B, stopping gives a clear hatch inspection but costs solution pressure and lets the presence reach the rear axle. Passing preserves pressure but carries uncertainty into Segment C.

## Failure and recovery

- Minor wall scrape: damage rises one step, steering remains usable, and the next bay offers realignment.
- Major conduit strike: restart at the preceding committed wall marker with the same solution and recorder state.
- Stall from cable snag: reverse or walk to the side release inside a striped refuge. If both fail, the emergency walkway opens.
- Washer disabled: the operator removes the sealed job recorder and walks the last protected service corridor. This changes the final arrival presentation, not the ending.
- Missed cabin evidence: the depot diagnostic names the unresolved discrepancy; the floodgate lock still occurs.

## Save and reload

A checkpoint commits only at segment markers or after a bay interaction closes. It stores route progress, vehicle fields, tank seal, brush pressure, solution, cabin zone `forward`, threat zone and phase, consumed repair parts, recorder integrity, and schema version. Reload constructs road and cabin state, places the threat, restores instruments, then enables input. A mid-glance save request waits for the camera to return forward.

## Accessibility and comfort

- Camera shake, blur, and head inertia can each be disabled.
- Stable-horizon snap views preserve every sight-zone choice.
- Mirror changes have visual, non-spatial audio, and controller-pattern equivalents.
- A single-stick mode holds lane center at the current safe speed while a cabin zone is open; it does not choose when or where to look.
- Extended timing adds 60% to glance allowance and warning stages without removing stop costs.
- All status colors include shapes and text labels.

## Verification sample

| Test | Expected result |
| --- | --- |
| never inspect optional mirror changes | arrival remains possible; evidence is incomplete but state stays coherent |
| stop at Bay B | hatch inspection works; solution pressure and threat access both change |
| pass Bay B | Segment C remains survivable through short warnings and limiter |
| brake during false lamp | physical braking stays correct and lamp clears |
| save after Bay C repair | no duplicated part; threat resumes from recorded channel zone |
| disable motion effects | road, gauge, and threat state remain readable |
| destroy washer in Segment D | recorder-walk fallback reaches the same floodgate-lock ending |

## Delivery tree

```text
DrivingHorrorState
├── vehicle and route ledger
├── road-demand curve
├── cabin sight-zone graph
├── glance-budget policy
├── control-interference table
├── moving/stopped threat rules
├── stop and failure recovery
├── save and accessibility contracts
└── one arrival commit
```
