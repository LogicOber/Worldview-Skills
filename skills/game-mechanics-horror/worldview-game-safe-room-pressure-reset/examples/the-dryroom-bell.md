# Original example — The Dryroom Bell

This fictional example was created for this repository. It demonstrates a safe-room contract; it does not claim that a game or test build already exists.

## Invocation

```text
/worldview-game-safe-room-pressure-reset

Turn the existing dehumidification chamber into a dependable safe room between
the archive wings. Its copper-door interlock must stop the wick tender only after
the inner seal commits, preserve health, inventory, objectives, and threat
identity, resolve the baseline checkpoint before mutable services, and leave both
exits readable without letting the tender camp on an exit capsule.
```

## Brief

The player explores a flooded municipal archive beneath a drained canal. A heavy wick tender follows heat and wet footprints through the stacks. Between the east and west archive wings is a dehumidification chamber called the Dryroom. Closing its paired copper doors draws moisture from the player and breaks the tender's trail. Inside, the player can save, restore one lamp segment from a wall capacitor, review pipe-pressure gauges, and choose which wing to enter next.

The Dryroom must be genuinely dependable. The wick tender may remain active outside, but cannot enter, hit through the seal, or wait on the exact exit capsule.

## Fictional project facts

- Player movement, wetness, lamp charge, inventory, and health already serialize.
- The two copper doors share an interlock: only one may be open.
- The wick tender follows current sight, recent heat, and a decaying wet-footprint trail.
- The tender has exterior patrol anchors in both archive wings.
- A checkpoint service exists but currently saves immediately on trigger overlap.
- The project is single-player with keyboard/mouse and controller support.

## Layer lock record

These rows are filled proposals. Their evidence paths describe required output; they are not claims that the fictional project was run.

| Lock | Concrete locked content | Lock condition and evidence path | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Refuge-boundary lock | Legal request comes from inside the outer vestibule at its console while alive and the interlock is idle; protection begins only when the inner copper door seals; exit protection ends at the selected outer-threshold crossing | Close after valid, out-of-range, duplicate, and before/after-grab traces at `gameplay/dryroom-bell/verification.md#safe-01-to-03` | Door presentation and debounce inside the same commit rule | Moving either threshold or changing grab/damage order invalidates lifecycle, checkpoint, threat, and exit evidence |
| Pressure-ledger lock | The ten-row ledger below: immediate grab and pursuit clear, wet trail clears, identity/health/inventory/objectives persist, one capacitor use changes lamp state, no campaign clock | Close after entry/occupancy/exit/reload snapshots at `#safe-05` | Capacitor capacity within its declared cycle | A new hazard, resource, objective clock, or inside failure invalidates service, persistence, accessibility, and outcome claims |
| Exterior-threat lock | One wick tender ID; inspection then deterministic reachable anchor in its current wing, at least 14 m path distance from either exit and outside both sight cones; Dryroom, vestibules, sweeps, and first 6 m of exit path excluded | Close after path, anchor-rejection, identity, and reload traces at `#safe-04` | Weighting among legal anchors | New tender traversal ability, wing connection, or director owner invalidates reconciliation, checkpoint reconstruction, and fair-exit traces |
| Checkpoint-and-service lock | In `occupied_stabilizing`, reconcile seal/pressure/tender, then durably resolve the automatic baseline checkpoint. Success enables capacitor, gauges, inventory, and exit. Failure preserves safety and offers retry or continue; continue enables only read-only gauges and exit, while capacitor and inventory mutation remain disabled until a retry succeeds. | Close after success order, failure gate, reload, and capacitor-cycle traces at `#safe-06a-to-06c` | Optional service UI and capacitor value within one persistent cycle | Moving checkpoint after capacitor use or changing snapshot, failure gate, or resource ownership invalidates persistence, duplication, re-entry, and restart evidence |
| Exit-and-reentry lock | East/west selection, frosted-window coarse cue, 6 m exclusion, 1.0 s proposed minimum control margin, protection through outer-threshold handoff, rapid re-entry debounce | Close after both exits, assist, re-entry, and restart traces at `#safe-07-to-10`; network rows SAFE-11A–11E are `not applicable` | Named extended-protection assist inside verified range | Changing exit geometry, cue timing, tender speed, handoff, load anchor, or adding network play invalidates exit, accessibility, re-entry, and authority traces |

If the west outer threshold moves inside the first 6 meters of the tender's legal path, reopen the **Exterior-threat lock** and **Exit-and-reentry lock**; discard the 14-meter anchor qualification, 1.0-second control margin, and both west-exit and rapid-reentry traces.

## Pressure ledger

| Pressure | Dryroom behavior |
| --- | --- |
| Current attack or grab | cancels only after the inner door commits closed and protection begins |
| Confirmed pursuit | breaks because both copper doors block sight and navigation |
| Wet-footprint trail | drains during stabilization and is absent inside |
| Tender identity | persists; it reroutes to a legal exterior anchor |
| Health | persists unchanged |
| Lamp charge | one segment can be restored once per capacitor cycle |
| Inventory and world pickups | persist exactly |
| Pipe objectives | persist and remain inspectable at the gauges |
| Campaign time | no campaign clock exists; occupancy is unlimited |
| Save state | commits after stabilization, before optional capacitor use |

## Lifecycle proposal

The player enters the outer vestibule and requests the Dryroom. The outer door closes before the inner door opens. Safety has **not** committed merely because the player touched the vestibule. When the inner threshold is crossed and that door seals, the authoritative state becomes `occupied_stabilizing`: unresolved external grabs are canceled, the footprint trail is cleared, the tender loses confirmed pursuit, and both services remain disabled for a short system check.

After pressure, door, and tender state agree, the room remains `occupied_stabilizing` while the automatic baseline checkpoint is written and its success or failure is resolved. The capacitor, gauges, inventory, and exit controls remain disabled during that transaction. On success, the room enters `occupied_ready` with every declared service. On failure, protection remains, the room reports that no new record exists, and the player may retry or continue with only the read-only gauges and exit; capacitor use and inventory mutation remain disabled until a retry succeeds. Loading the successful baseline therefore cannot repeatedly grant charge.

## Threat reconciliation

The wick tender is not destroyed. If it is visible through the outer vestibule window during entry, it performs a brief door inspection, then selects a reachable patrol anchor in its current wing that is at least 14 meters of path distance from either exit and outside both door sight cones. The choice is deterministic for the current route seed and logged.

The director cannot spawn or relocate the tender inside the Dryroom, vestibules, door sweeps, or the first 6 meters of mandatory exit path. If no legal anchor exists, exit preparation remains available but reports the blocked-state error in development builds; it does not choose an illegal doorway position.

## Services

- **Checkpoint:** automatic once per stable entry identity. It stores the load anchor inside the Dryroom, doors closed, no pending attack, and the tender at its reconciled exterior state. A failed write keeps mutating services disabled until retry succeeds.
- **Capacitor:** grants at most one lamp segment if charge is missing and the capacitor's persistent cycle ID is unused. Use is atomic.
- **Pressure gauges:** show which wing's pumps remain unresolved. They reveal objective state, not the tender's location.
- **Inventory:** existing reorganization UI; no new storage system is invented.

## Exit

The player selects east or west. A frosted pressure window and directional mechanical caption indicate whether heavy movement is close to that wing, without displaying exact distance. Exit preparation confirms a legal exterior route, restores camera control, opens the inner door into the chosen vestibule, and retains protection until the player has control on the outer side of the inner threshold.

The outer door then opens. Protection ends at the declared crossing, with a proposed minimum control margin of 1.0 second before the tender can reach an attack line under worst verified path speed. The door may be closed manually, but cannot damage or clip the player.

## Diagnostic outcomes

### Success

The player reaches the west vestibule under active pursuit, completes the two-door entry, hears pursuit decay outside, observes the baseline checkpoint complete, reviews the east gauge, uses the single capacitor charge, exits east, and later re-enters without another charge appearing.

### Failure before commitment

The player begins outer-door closure too late while the tender's grab has already resolved. The player is caught in the vestibule. The failure occurs before the documented safety boundary.

### Rejected invalid entry

From the flooded aisle, 2.4 meters outside the console's legal interaction range, the player sends an entry request. Authority rejects it while remaining in `outside_danger`: neither door moves, protection remains false, pursuit is unchanged, no checkpoint begins, and no service reserves a transaction. Repeating the request after a valid entry has already reached `entering` returns that operation's current state without creating a second transition.

### Rejected stale hit

The tender begins a grab outside, but it remains unresolved when the inner door seals and protection commits. The pending grab is canceled. Its animation may finish outside, but it cannot deliver delayed damage.

### Rejected exploit

The player repeatedly crosses the service trigger and reloads the stable checkpoint. The capacitor cycle ID remains used, lamp charge is not duplicated, and entry audio does not replay indefinitely. In a separate failed-checkpoint trace, the player continues to the gauges but cannot reserve or use the capacitor before a successful retry.

### Fair exit

The tender initially wants an east anchor inside the exclusion area. That candidate is rejected; the next legal, reachable, non-visible anchor is selected before the east outer door can open.

## Accessibility behavior

- Boundary commitment, stable occupancy, and exit readiness use door state, lamp state, and captioned mechanical tones.
- Pursuit camera shake and intense low-frequency presentation stop when protection commits; gameplay threat state changes through the same transaction, not the setting.
- Door interactions support hold or toggle and do not require rapid input.
- The player may remain in `occupied_ready` indefinitely.
- A longer protected exit threshold is a named timing assist and is included in route verification.
- No hostile startle can trigger during stable occupancy.

## Required evidence

- step traces around the exact entry and damage boundary;
- an out-of-range and duplicate entry trace proving no partial door, protection, checkpoint, or service state;
- tender state, path, identity, and legal-anchor selection before and after entry;
- pressure-ledger state snapshots;
- order traces proving checkpoint resolution precedes optional services, a failed-checkpoint continue trace proving mutating services remain disabled, plus repeated checkpoint/load and capacitor transaction tests;
- exits through both wings with minimum control margin measured;
- rapid exit/re-entry, death before entry, death after exit, and application restart;
- supported input and timing-assist runs;
- one scene capture labeled as spatial evidence, not persistence evidence.

Until those checks run in the fictional target environment, the lifecycle and numeric values remain proposals.
