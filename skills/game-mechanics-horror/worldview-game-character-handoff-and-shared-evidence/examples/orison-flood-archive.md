# Orison Flood Archive

**Orison Flood Archive** is an original fictional example written for this Skill. It is not an existing game, level, story, or implementation.

## Invocation

```text
/worldview-game-character-handoff-and-shared-evidence

Design a single-ending horror investigation in a municipal archive beneath a
reservoir. The pump mechanic acts before evacuation, a records examiner enters
after the first flood pulse, and an emergency diver enters at dawn. Make the
mechanic's choices become physical evidence for the examiner and a route state
for the diver. Nobody may know facts they did not observe or receive. The one
ending is opening the eastern spill channel.
```

## Boundary

This example is an implementation-ready contract, not a claim that a runtime exists. Timings, names, and values are fictional proposals.

## Viewpoints

| Character | Time | Exclusive access | Blind spot | Motive |
| --- | ---: | --- | --- | --- |
| `mechanic_ila` | 22:10 | pump gallery controls | cannot read historical notation | prevent the first flood pulse |
| `examiner_tovan` | 02:30 | sealed record stacks | cannot operate submerged machinery | determine why the archive map is false |
| `diver_sen` | 05:40 | flooded eastern service route | arrives after records begin dissolving | open the spill channel and recover both workers |

## Shared IDs

| ID | Type | Owner |
| --- | --- | --- |
| `place_pump_gallery` | place | `ArchiveWorldState` |
| `place_map_room` | place | `ArchiveWorldState` |
| `object_brass_shim` | object | `ArchiveObjectState` |
| `object_gate_register` | object | `ArchiveObjectState` |
| `event_manual_bypass` | event | `ArchiveEventLedger` |
| `fact_map_hides_east_channel` | fact | `ArchiveKnowledgeLedger` |
| `event_east_channel_open` | event | `ArchiveEventLedger` |

## Locks

### Shared Truth Lock

The reservoir pressure crosses the first limit at 22:18. Ila can either complete the documented shutdown or use an unauthorized shim to hold the west gate partly open. The shim does not stop the pulse; it prevents the west actuator from sealing completely. This event is immutable after Ila's chapter commits.

The official archive map omits the east spill channel. A damaged register proves that the omission was deliberate. Opening the eastern channel is the one ending action.

### Physical Ownership Lock

- The brass shim begins in Ila's tool roll.
- Installing it moves it to `west_actuator_socket`; it cannot remain in inventory.
- Removing it after the pulse bends it and returns a damaged item.
- Leaving it installed produces a visible tool mark and a stable partial gap.
- Tovan can observe but not safely remove it.
- Sen can remove it underwater only after isolating the actuator.

### Knowledge Ownership Lock

| Fact | Ila | Tovan | Sen |
| --- | --- | --- | --- |
| West actuator was manually altered | confirmed if she acts | observed from mark; actor unknown until log found | learned from Tovan's tagged note or direct inspection |
| Official map omits a channel | unknown | confirmed from register comparison | unknown until transmission or map inspection |
| Partial west gap slows archive flooding | believed from gauge | inferred from waterline residue | confirmed by route pressure |
| East channel opening ends the crisis | unknown | inferred but cannot operate | confirmed after comparing Tovan's note with underwater mechanism |

No chapter-completion flag grants these facts.

## Action-to-residue rules

| Ila action | Persistent world result | Tovan observation | Sen route consequence |
| --- | --- | --- | --- |
| Leave shim installed | west gate remains 11% open; diagonal tool mark; lower waterline in map room | can record the mark and infer manual intervention | west current remains dangerous, east corridor remains passable |
| Remove bent shim | west gate seals; bent shim in tool roll; higher waterline | finds no actuator tool, but sees fresh abrasion and flood line | west current weakens; east corridor contains more debris |
| Never attempt bypass | no mark, no shim residue, official shutdown log only | cannot infer manual intervention | default high-water route requires ceiling tether |

The later game never fabricates the tool mark when Ila did not create it.

## Indirect knowledge transfer

Tovan can attach one waterproof tag to the east-channel register or keep the tag for another clue. If tagged, Sen receives `fact_map_hides_east_channel` on inspection. If not tagged, Sen must compare two submerged map plates. Both routes reach the same conclusion; the optional tag changes procedure time and exposure.

Ila's radio message is truncated by the flood pulse. It guarantees only `west actuator irregular`. It does not transmit the shim, actor, or east-channel facts.

## Switch transaction

At each chapter handoff:

1. active interactions close or cancel;
2. `ArchiveEventLedger` commits completed mutations;
3. object holder/location and condition commit;
4. character observations commit;
5. queued radio/tag transmissions commit;
6. save version `orison_ownership_v1` writes;
7. the next viewpoint loads shared IDs;
8. inspect text derives from that character's knowledge;
9. input enables;
10. debug view prints truth, holder, knowledge, and presentation.

## Failure behavior

- Ila death before chapter commit rewinds to the pump-gallery checkpoint and clears uncommitted shim movement.
- Tovan failure rewinds Tovan only; Ila's committed event remains.
- Sen failure rewinds the current underwater segment; the tag, map state, and prior knowledge persist.
- “Replay chapter” is review-only after a later chapter begins and cannot rewrite canon.

## Single-ending convergence

Mandatory:

- Sen reaches the east valve.
- The player has acquired the east-channel fact through Tovan's tag or Sen's comparison.
- The east valve is physically operable.

Optional state changes the procedure:

- Installed shim: Sen first isolates the west actuator; Tovan's evidence remains dry.
- Removed shim: Sen clears extra debris; the bent shim supports accountability.
- No bypass: Sen uses a tether route; fewer paper records survive.

All viable paths end with Sen opening the eastern channel. The final report differs in evidence provenance and recovered material, not canonical outcome.

## Implementation ownership

```text
ArchiveWorldState
  shared places, water phase, gate state
ArchiveEventLedger
  bypass, pulse, register comparison, east-channel opening
ArchiveObjectState
  shim holder/location/condition, tag location
ArchiveKnowledgeLedger
  character-fact status and source
ArchiveViewPresentation
  labels, inspect text, available actions
ArchiveSwitchCoordinator
  atomic transitions, rollback, save version
```

## Verification

1. Run all three Ila outcomes and verify Tovan's residue and Sen's route.
2. Skip Tovan's optional tag and confirm Sen can learn the fact independently.
3. Save during shim insertion; load must restore either pre-action or committed state, never duplicate the shim.
4. Skip the radio cutscene; Sen receives only its guaranteed truncated fact if delivered.
5. Kill Tovan after finding the register; retry retains Ila state but restores Tovan to the checkpoint's knowledge.
6. Enter review mode after Sen starts; Ila's replay cannot mutate the active campaign.
7. Verify critical marks through visual description, focus speech, and high-contrast inspect outline.
8. Reach the ending with minimum mandatory knowledge in all valid routes.

## Expected delivery

```text
gameplay/orison-flood-archive/
├── handoff-evidence-contract.md
├── shared-ids.yaml
├── viewpoint-transitions.yaml
└── verification.md
```

The example proves a proposed causal contract. Runtime performance, balance, art, and engine integration remain unverified until implemented.
