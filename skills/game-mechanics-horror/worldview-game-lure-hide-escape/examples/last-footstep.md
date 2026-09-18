# Last Footstep

This is the recorded example that accompanied the source Skill in `mechanics-pack-2026-09-11.tar.gz`. It shows the expected shape of a run; it is not a claim that the Mechanics Lab source has already been copied into this clean repository.

## Invocation

```text
/worldview-game-lure-hide-escape

Use the existing room layout. Give the player a reusable sound lure, let them
hide beneath the bed, and make the sentinel search the far side before the
player slips out through the second route. I need a real success and a real
failure, not a chase video.
```

## Source state

The supplied Mechanics Lab names this scene **Last Footstep** and exposes it as mode `chase`. Its map contains a partition, screen, bed, wardrobe, lure point, player entry, pursuer start, hiding point, second cover exit, and final escape. The shared project separates simulation, rendering, controls, and room infrastructure.

The archive's verification report records 28 passing automated checks across all seven lab scenes, plus desktop and mobile browser checks. During this pilot rewrite, `npm ci && npm test` was run again against the supplied Mechanics Lab and all 28 automated checks passed, including `lure, hidden wait and far-side exit are a complete escape`. That broader run does not provide a separate pass count for Last Footstep alone, and the browser checks recorded by the source were not repeated here.

## Layer lock record

| Lock | Concrete decision and evidence | Status | Reopen trigger and fallout |
| --- | --- | --- | --- |
| Encounter promise | In mode `chase`, activate one reusable sound lure, break sight at the partition, enter the bed, wait for far-side inspection, and leave by the second cover exit. The nearby failure is precise: leave the bed before the sentinel reaches the far-side inspection point, cross back into its current sight at the screen edge, and let its attack windup finish before the player reaches the escape boundary. The named automated test covers the complete escape; this exact failure still needs a direct run. | Contract locked; success has source automation, nearby failure evidence open | Removing the far-side inspection, screen-edge reacquisition, attack windup, or second exit invalidates the scene promise and every later row. |
| Shared room | The supplied map names the player entry, lure point, partition, screen, bed, wardrobe, pursuer start, hiding point, second cover exit, and final escape. Collision, rendering, controls, and room infrastructure are separate source systems. | Locked to archived project structure; not re-inspected in a browser during this rewrite | Moving the partition, bed, lure point, or exit reopens this row and invalidates sight, cover, timing, and screenshot evidence. |
| Pursuer evidence | Current sight outranks sound; sight loss freezes the remembered target; sound supplies its own origin; search does not follow the hidden live transform. The automated chase test exercises this relationship. | Locked for the tested simulation path | Adding a tracking sense or changing priority invalidates the AI state assertions and escape trace. |
| Lure event | The proposed `decoy_sound/player_lure` schema below fixes the far-side origin, chase-room propagation, authoritative timestamp, zero material cost plus 6-second cooldown, operation-id deduplication, and evidence priority. | Proposed contract; direct source trace open | Any different source behavior or change to origin, propagation, timestamp, type, cost, deduplication, or priority reopens this row and invalidates investigation and timing results. |
| Cover transition | Bed entry requires the authored interaction point; hidden posture and the declared far-side walkable exit form separate states. Reach-through-wall and exact emergence checks still require a fresh direct run for this handoff. | State relationship locked; boundary evidence open | Moving the bed or emergence point invalidates collision, contact, and escape tests. |
| Escape margin | The source establishes a passing complete path but this rewrite has no fresh path lengths, transition times, or measured margin. No balance number is claimed. | Open until a timed run | Any measured margin must be discarded after a route, speed, animation, input-assistance, or reacquisition change. |
| Reset proof | The supplied shared suite passed 28 tests, including the named complete-escape chase test, but it does not prove restart cleanup at each active chase phase. The phase matrix below remains open; desktop/mobile browser checks and a new scene capture were not rerun here. | Open until direct per-phase restart traces exist | Runtime, save ownership, or earlier lock changes require the phase matrix, relevant tests, and captures to be rerun. |

If the second cover exit or the partition geometry moves, reopen **Shared room** and **Escape margin**; discard the complete-escape trace, any later timing measurement, and the prior scene capture before making a new delivery claim.

## Mechanic contract

### Player verbs

| Verb | Result |
| --- | --- |
| Move | Cross the authored room while respecting solid walls. |
| Activate lure | Create one cooldown-limited sound event at the far-side lure point. |
| Enter cover | Move into the bed's hidden posture when within interaction reach. |
| Leave cover | Emerge at the declared far-side walkable point. |
| Escape | Cross the exit only after using the room and pursuit state successfully. |

### Lure event contract

The following is a concrete proposal for the next implementation or source comparison. It is not presented as behavior already proven by the archived test:

| Field | Proposed value and rule |
| --- | --- |
| Event identifier | `chase:lure:<encounter_generation>:<activation_sequence>`; the authority increments the sequence once per accepted rising-edge activation |
| Origin | The immutable center of the authored far-side `lure_point`, sampled when the authority accepts activation; later player movement never changes it |
| Propagation | Publish for one authoritative simulation tick within the authored `chase_room` acoustic zone. The room partition does not block that zone; a closed portal marked `sound_blocking` or any different zone rejects delivery. A qualifying event writes its origin and timestamp into pursuer memory. |
| Timestamp | Authoritative fixed-simulation tick and monotonic encounter time at acceptance, never the client input or animation time |
| Type and source | Evidence type `decoy_sound`, source type `player_lure`; presentation audio is not itself the AI stimulus |
| Cost and reuse | Zero inventory or material consumption. Acceptance starts a 6.0-second authoritative cooldown. Rejected, duplicate, or stale requests cost nothing. The lure may be used again after cooldown; tuning this value later reopens **Lure event** and **Escape margin**. |
| Deduplication | One event per rising input edge and operation identifier. Replaying the same operation returns the original accepted event; a held input creates no additional event. Stale encounter generations are rejected. |
| Priority and ties | Current sight and an already-valid attack windup outrank every sound. With no current sight, compare lure sound and last-seen evidence by authoritative timestamp; the newer record wins, and last-seen wins an exact-timestamp tie because it is stronger evidence. Among equal-time sound events, the higher authoritative activation sequence wins. |
| Route commitment and expiry | An accepted winning sound enters `investigate(lure_point)` and keeps that target until arrival, a blocked-route result, or stronger/newer evidence. The one-tick event then expires, but `last_heard` persists until investigation resolves. |

### Pursuer state

```text
patrol
  -> investigate(lure point)
  -> chase(visible player)
  -> search(last seen position)
  -> return
```

Sight outranks sound. After sight breaks, the destination stops following the player's hidden transform. The player can see the pursuer search the wrong side of the room and decide when to leave.

### Map relationship

```text
player entry
  -> lure line
  -> sight-breaking partition
  -> bed / cover entry
  -> pursuer's far-side search
  -> second cover exit
  -> escape boundary
```

The near-miss is produced by travel and search time. It is not a random success roll.

The nearby failure uses the same geometry: leaving the bed before the sentinel reaches the far-side inspection point exposes the player at the screen edge. Current sight overrides the lure memory, the sentinel enters chase and attack windup, and the windup completes before the player crosses the escape boundary. Whether the current source actually reaches every named state in that order remains open until captured in a fresh run.

## Expected saved output

```text
gameplay/last-footstep/
├── mechanic.md
├── tunables.yaml
└── verification.md
```

The implementation itself remains in the project's normal source tree. The handoff names the route or URL that launches mode `chase`, its controls, and the screenshot captured from that running scene.

## Evidence expected from a new run

| Claim | Direct evidence |
| --- | --- |
| Lure changes the pursuer's route | One activation log and a playthrough showing investigation of the sound origin |
| Hidden movement is not leaked | State/log assertion that the remembered target remains fixed after sight breaks |
| Cover is physical | Reach and wall checks for entry; declared walkable emergence point |
| The exit window exists | Named automated success plus a fresh direct trace of the precise early-bed-exit reacquisition and attack-windup failure |
| Restart is complete | Direct evidence for every row in the phase matrix below; the generic 28-test suite is not sufficient |
| The scene rendered | Screenshot from the actual playable scene, labeled with tested viewport |

### Open per-phase restart matrix

Every row is intentionally open until a fresh run proves both the entry state and residue-free restart.

| Restart point | State that must be cleared | Required post-restart observation | Status |
| --- | --- | --- | --- |
| Lure accepted / investigate begins | Sound event, cooldown, `last_heard`, navigation request, activation sequence callbacks | Fresh start has no old sound or route commitment; the new generation accepts its first legal lure once | Open — direct run required |
| Current-sight chase | Sighting, chase target, path, acceleration, animation callbacks | Sentinel starts at authored position with no remembered player transform | Open — direct run required |
| Sight loss / search | Frozen last-seen target, search timer, search route | No old search resumes and no hidden live transform is queried | Open — direct run required |
| Entering cover | Interaction hold, transition animation, collision override, pending hidden flag | Player starts visible and outside cover with ordinary collision | Open — direct run required |
| Hidden wait | Hidden flag, cover occupant, observation timers, far-side inspection route | Bed is unoccupied and sentinel has no cover knowledge | Open — direct run required |
| Leaving cover / reacquisition | Emergence transition, temporary collision, sight sample, route request | No stale sighting or emergence callback fires | Open — direct run required |
| Attack windup | Windup timer, hit callback, damage event, target | No old damage lands after the fresh scene begins | Open — direct run required |
| Success | Completion flag, exit trigger, input lock, deferred transition | Encounter is playable from entry and exit is not pre-completed | Open — direct run required |
| Failure | Failure flag, damage/death callback, retry transition, pursuer memory | Encounter is playable once with no duplicate failure | Open — direct run required |

## What is not claimed

Last Footstep is a small authored encounter, not a universal stealth AI framework. The supplied package does not claim human success probabilities, production art, hostile-network testing, gamepad support, or export to every game engine. Those limitations must remain visible when the example is reused.
