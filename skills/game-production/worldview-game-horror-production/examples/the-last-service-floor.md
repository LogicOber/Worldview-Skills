# Original example — The Last Service Floor

This fictional example shows the expected production-contract depth. It is not an implemented game, timing claim, visual preset, or source-derived story.

## Invocation
```text
/worldview-game-horror-production

Build an English-language single-ending first-person horror game about a night
courier stranded at a reservoir settlement after the bridge closes. I want a
memorable connected place, investigation before pursuit, meaningful companions
and items, and a browser build. Fill in the complete design and tests.
```

## Product lock
- Platform: desktop browser, keyboard/mouse and controller.
- Scope: estimated 55–75 novice minutes; one settlement, three connected chapters.
- Ending: one canonical evacuation signal; death/capture are retry states.
- Visual target: original damp industrial realism with restrained UI, waist-height practical lights, readable silhouette landmarks, and reduced-motion option.
- No runtime exists; every timing and performance value remains estimated.

## Promise and ending
Courier Ren carries medicine records to the reservoir settlement. The ordinary verb is matching a sealed crate to a brass route plate before handing it over. The central question is why valid route plates now direct supplies toward a drained lower district. Pressure comes from a caller that can repeat confirmed delivery phrases but does not know facts learned off the radio. The final action reuses crate matching: Ren mounts the real upland plate in the emergency signal frame, redirecting a rescue convoy to the ridge road. The false route remains printed in public records, the bridge remains closed, and companion Sela’s injured state persists in aftermath.

## Chapters and clocks
| Chapter | Estimated novice time | Job, change, decision | Protection lost / recovery |
| --- | ---: | --- | --- |
| 1. Intake house | 16–21 min | Match two crates normally; third plate names the drained district. Inspect, quarantine, ask Sela, or accept. | Institutional certainty is lost. Recovery compares seal depth and opens ridge map. |
| 2. Service road | 20–27 min | Travel with Sela, lose bridge mobility, transfer map knowledge and flare custody after a slope collapse. Choose exposed pump path or longer orchard path. | Vehicle, group proximity, and radio credibility are lost in sequence. A valve shed provides semi-safe reorganization. |
| 3. Last service floor | 19–27 min | Test caller claims, traverse a rehearsed route under pressure, recover the real plate, and operate signal frame. | Short stair becomes contaminated; recovery uses learned maintenance loop and Sela’s remote observations. |
| Aftermath | 4–6 min | Inspect convoy route, Sela’s treatment, retained records, and closed bridge. | No reset; evidence and injury persist. |

## World graph
`INTAKE` teaches crate/plate/seal. `BRIDGE-YARD` establishes closed bridge and van. `ORCHARD-BEND` is a long protected path with weak radio. `PUMP-WALK` is short and exposed. `VALVE-SHED` is a selective refuge. `SERVICE-LOBBY` teaches the final floor’s red pipe and split stair. `SIGNAL-GALLERY` pays the plate verb.

Each node has an obligation and protection. The service road is not travel filler: Ren must keep medicine cool, Sela owns local route knowledge, the van provides mobility/light, and the radio provides authority. The collapse removes mobility; separation removes shared knowledge; the false caller compromises authority. Those states drive route choices.

## Actors and custody
| Actor/item | State and ownership |
| --- | --- |
| Ren | physically holds records and later the plate; knows crate procedure; cannot read old maintenance shorthand |
| Sela | knows routes and shorthand; initially holds flare; last verified state saved after every route transition |
| Caller | knows radio-confirmed phrases and accepted route IDs; cannot know silent crate inspections |
| Crate C3 | `CrateState` owns seal/temperature; inventory owns holder; evidence ledger owns inspected facts |
| Upland plate | route system owns valid destination; physical custody changes from rack to Sela to Ren through explicit handoffs |

After the collapse, Sela gives the plate to Ren but retains knowledge of its mounting direction. If communication fails, the player can infer orientation from the intake demonstration at a time cost. No journal magically transfers knowledge.

## Selected mechanic handoffs
| Skill | Job in this game |
| --- | --- |
| `/worldview-game-horror-mundane-routine-corruption` | establishes crate/plate/seal before one destination changes |
| `/worldview-game-stranded-journey-and-lost-protections` | owns progressive loss of vehicle, group proximity, shelter, and credible radio help |
| `/worldview-game-character-handoff-and-shared-evidence` | owns Sela/Ren plate custody, route knowledge, last-known state, and consequence |
| `/worldview-game-horror-returning-place-escalation` | changes service lobby from orientation hub to compromised return path |
| `/worldview-game-chase-route-architecture` | owns red-pipe main route, risky stair, failed branch, recovery pocket, and timing |
| `/worldview-game-sound-detection-and-distraction` | caller audio is presentation; one placed pump knock creates a real listener event |
| `/worldview-game-safe-room-pressure-reset` | valve shed converts pursuit into treatment, map comparison, and save without deleting exterior state |

No driving-specific or relief-resource Skill is selected because the van fails before a designed driving encounter and no immediate-relief/hidden-cost transaction belongs to this premise.

## Master ownership examples
| State | Owner | Forbidden inference |
| --- | --- | --- |
| Valid destination | `RoutePlateRegistry` | printed UI label |
| Crate custody/temperature | `Inventory` / `CrateState` | who understands the seal |
| Sela knowledge | `ObserverKnowledge:Sela` | Ren’s quest progress |
| Caller knowledge | `CallerMemory` from radio events | player position or silent inspection |
| Lobby route legality | `RouteState` | lighting color |
| Pursuit eligibility | `ThreatState` | chapter timer alone |

## Likely failure and recovery
The likely first failure is taking the familiar short stair after return. A stopped ventilation fan, missing pipe knock, and moved maintenance cart warn that protection changed. Capture reloads at the valve shed with inspected seal facts, plate custody, Sela state, and route warning retained. The player can use the orchard-derived maintenance loop instead of repeating Chapter 1.

## Asset plan
High-importance original assets are the three readable route plates, crate seal states, reservoir skyline, red-pipe landmark kit, Sela’s practical silhouette, signal frame, and caller radio state. Grey-box geometry proves routes first. If an authorized model generator is used for background machinery, outputs require topology, scale, UV, normals, collision, LOD, and license validation; character and interactive plate assets remain manually controlled.

## Verification matrix
- first-time player completes two normal deliveries and spots the changed destination;
- optional-intake skipper receives a low-cost comparison before consequence;
- plate custody and route knowledge remain separate through handoff and reload;
- both service-road routes remain viable with different costs;
- short-stair failure is attributable and recovery avoids full replay;
- caller acts only on radio evidence;
- muted audio, subtitles, non-color plate marks, reduced motion, assisted timing, and controller path preserve decisions;
- ending uses the taught plate-matching verb from two local histories;
- aftermath preserves bridge, records, convoy route, Sela condition, and evidence;
- browser performance, loading, memory, and build URL are measured before any playable claim.

## Delivery boundary
At this stage the example is a design contract only. It cannot claim a browser build, performance, comprehension, or measured duration.
