# Original example — The Closed Platform

This fictional example demonstrates shared identity, viewpoint, route, and return-state ownership. It is not an implemented game.

## Invocation
```text
/worldview-game-horror-returning-place-escalation

Use a hill tram depot as the recurring hub in a single-ending horror game.
Keep the ticket cage, brass clock, painted safety line, parcel rack, and west
stair recognizable. Change who understands the rack, who controls the stair,
and whether the safe return path remains safe. End through an earlier landmark.
```

## Shared grammar
| ID | First function | Stable cue |
| --- | --- | --- |
| `DEPOT-CLOCK` | aligns departures and faces the west stair | brass frame, half-second mechanical pause |
| `SAFETY-LINE` | marks the public side of platform | raised paint texture and white edge |
| `PARCEL-RACK` | holds tagged deliveries | six iron bays and stamped numbers |
| `WEST-STAIR` | staff shortcut to upper road | double handrail and nine-step landing |
| `TICKET-CAGE` | grants platform access | sliding grille and bell lever |

`DepotState` owns objects/routes. `ActorSchedule` owns occupant position. `ObserverKnowledge` owns inspected facts. Lighting and audio read these owners.

## Return ledger
| Return | Entry knowledge | Exact change and comparison | Decision / recovery |
| --- | --- | --- | --- |
| R0 | Player is a substitute porter learning closing procedure. | Rack bay 4 receives parcel P-44; player stamps it and uses west stair safely. | Establishes custody, route, and clock relation. |
| R1 | Player knows P-44 is in bay 4. | Bay 4 is empty, but the dust outline and intact cage seal remain. Clock pause occurs when west-stair door opens. | Inspect seal, ask clerk, or follow stair. Wrong accusation can be recovered by checking the dust and custody ledger. |
| R2 | Second viewpoint, courier Eda, knows she never delivered P-44. | Shared rack and dust are unchanged; her route sheet names P-41. The clerk still claims P-44 arrived. | Compare physical tag impression to route sheet. Viewpoint changes meaning, not the object. |
| R3 | Porter returns knowing the tag is false. | West stair remains open but the clock no longer pauses; wet footprints cross the safety line from the stair. | Use public ramp, risk the formerly safe stair, or ring cage bell to draw a witness. Ramp is longer but recoverable. |
| R4 | Player knows the clock pause was a mechanical warning. | Clock hands now run, but the brass frame vibrates when the false tram circuit energizes. | Pull the cage bell at the half-second pause to cut platform current. |

## Safe-return corruption
The west stair is safe on R0 because it connects to a staffed road entrance. On R3 the entrance remains physically reachable, but staff authorization has been revoked and the false circuit can energize its metal rail. The missing clock pause and wet footprints foreshadow the change. The route is priced and exposed, not arbitrarily deleted.

## Wrong reading and recovery
If the player assumes the clerk stole P-44, challenging him closes cage service and reduces trust. The parcel dust and tag impression remain inspectable; Eda’s later sheet disproves delivery. Recovery uses the public ramp and a written request slot. The false accusation affects assistance but does not block the ending.

## Canonical payoff
The final return uses `DEPOT-CLOCK` and `TICKET-CAGE`, introduced on R0. The player waits for the frame vibration, then pulls the bell lever—an ordinary closing action—to isolate the false platform circuit. The safety line remains crossed, the west rail remains damaged, and Eda’s route sheet becomes public evidence. One ending, different local trust and route histories.

## Required proof
- every return loads the same shared IDs;
- observer knowledge does not transfer automatically between viewpoints;
- object, route, presentation, and social deltas remain separate;
- west-stair change is readable before commitment;
- wrong accusation preserves recovery;
- save/load at every return transition is coherent;
- clock pause has visual, audio, and vibration/text equivalents;
- final bell action uses a taught verb and persists in aftermath.
