# The Red Service Corridor

This is an original fictional example. It is a filled contract shape, not a reusable map or a claim about an existing game.

## Invocation

```text
/worldview-game-chase-route-architecture

Make the hospital's service wing the first major chase. The player has a weak
flashlight, a noise meter, and one bolt cutter. The pursuer follows sight and
sound, not a supernatural GPS signal. I want a route that can be learned after
one capture: a red-lit laundry loop, a silent records stair, and a shutter that
opens only after the player restores pressure. Build the grey box before art.
```

## Route promise

Reach the pressure-room lift while the “porter” searches the service wing. The main route uses a laundry loop to make the porter commit to the wrong wing, then draws it across the red-lit loading bay into a sterilization cage before the player crosses the lift threshold. The records stair is a slower, quieter alternate exit. A player who runs straight down the visible corridor is caught at a locked fire door; the failed attempt reveals the pressure valve and the side loop.

## Calm rehearsal and learned countermeasure

Before the porter becomes hostile, the player completes one linen delivery through `A01`, the laundry loop, the red loading bay, and the pressure-room lift. This calm pass teaches the uninterrupted floor stripe, the inspection clang at the far laundry alcove, the shutter's 1.1-second hold, the lit washroom recovery pocket, and the lift threshold. The records stair is visible through a wired gate, but its chain is not yet cut.

An injured maintenance orderly named Ivo demonstrates the sterilization cage from behind safety glass. Ivo knows that the porter will follow the inspection clang through the red bay and provides the pressure key only after the player restores his wash station. The player physically carries the key; Ivo remains the knowledge source. Using the key closes the cage gate for six illustrative seconds. It works only after the porter crosses the painted pressure line. Using it early vents the stored pressure and removes containment from the main route until the player reaches the records stair.

The calm pass does not reveal the full chase sequence. It lets the player recognize the building and understand the final verb before pressure makes reading difficult.

## Diagram notes

The plan is a top-down 2D drawing at 1 square = 1 metre. Red solid arrows are player success routes; red dashed arrows are player failure routes; black arrows are pursuer paths; blue wedges are sight; dotted amber arcs are sound; grey blocks are solid walls; a white ring is the checkpoint. The diagram has IDs `A01`–`A07` matching the contract. It is stored beside the implementation as `docs/chases/red-service-corridor-v03.svg`; v03 is not accepted until collision and navmesh tests agree.

```text
 A01 entry ── red loading bay ── A07 pressure lift
    │               ▲                 ▲
    │               │ shutter (A05)   │
    ├─ laundry loop─┘                 │
    │   (sound lure)                   │
    └─ records stair ── A06 checkpoint┘

 Porter patrol → commitment at laundry → search / regain sight
```

## Route graph

| Edge | Player action | Pursuer response | Cost / teaching |
| --- | --- | --- | --- |
| `R01 A01→laundry` | Throw a bolt against a pipe or sprint | Sound commits the porter to laundry if sight is broken | Noise exposes the rule; bolt is consumed only when thrown |
| `R02 laundry→loading` | Wait for the inspection clang, then cross | Porter searches the far laundry alcove | Main route; red lights and a moving shadow teach the window |
| `R03 A01→records` | Cut the chain and descend quietly | Porter keeps the last sound target; longer path | Alternate success; costs time and bolt |
| `R04 loading→fire door` | Run straight without pressure | Fire door remains shut; porter regains sight | Survivable once only if player retreats to A06 |
| `R05 records→A06` | Use the stair and checkpoint | Sound reduced; sanity pulse masks one visual cue | Recovery edge, not a free safe room |
| `R06 A06→A07` | Restore pressure and pass shutter | Shutter noise creates a new search target | Finale edge; state is carried, not a second chase |
| `R07 red bay→A07 cage threshold` | Trigger the inspection clang, let the porter cross the painted line, then use Ivo's pressure key | Porter commits through the bay; valid key use closes the cage while the player reaches the lift | Containment finish; early use loses pressure and routes the player to the records exit |

## Sequential branch rejection and recovery

The chase rejects routes in an attributable order:

1. Running straight reaches the fire door. Its visible low-pressure gauge and failed handle reveal that pressure—not an arbitrary lock—blocks it. The player can still reach the lit washroom pocket before the porter closes distance.
2. The washroom pocket gives four illustrative seconds to see the stripe continue toward laundry and the wired records stair. It preserves the discovered gauge state and allows retreat through one of two edges; it is not permanently safe.
3. Cutting the records chain creates a legal quiet alternative but consumes the bolt cutter and takes longer. It proves that the porter follows the last evidence rather than selecting the player's new route.
4. Reaching the red bay without Ivo's pressure key leaves only the alternate exit. Reaching it with the key exposes the painted line and cage control learned during the calm pass.
5. Using the key before the porter crosses the line visibly vents the gauge, rejects containment, and leaves the records stair as the recoverable route. It does not silently fail.

The shutter at the red bay is the no-return line once the porter crosses the painted mark. Beyond it, the player cannot return to the washroom or recover an unused bolt. The red floor stripe changes to a black sterilization band, the lift alarm begins, and the UI repeats `PRESSURE ROUTE COMMITTED` through text and a non-color icon. Save/load preserves whether the line was crossed, who holds the key, remaining cage duration, and whether early use spent the pressure charge.

## Measured first grey-box pass

The following are target measurements for implementation, not claims about a shipped build. The porter travels at 2.2 m/s, the player at 3.4 m/s, and the shutter interaction takes 1.1 s. The intended main route is 21.8 m of movement plus 1.6 s of interaction; the porter needs 14.2 m plus a 3.0 s inspection hold. The provisional margin is `14.2/2.2 + 3.0 - (21.8/3.4 + 1.6) = 4.5 s`. The team must rerun this at the actual turn radius, acceleration, and accessibility settings; if the visible crossing cannot be perceived inside that margin, the route is not finished.

The straight fire-door failure has a positive retreat margin only before the door interaction begins. Once the player starts the 2.0 s forced-open animation, the porter regains sight through the bay, making the failure legible rather than random.

The fire-door interaction can be canceled within 0.35 illustrative seconds; after that it becomes a declared committed mistake. The porter travel trace must prove the washroom remains reachable during the cancel window. Developer-perfect traversal is not accepted as timing evidence: the measured player time includes landmark recognition, turn uncertainty, interaction acknowledgement, and the supported assisted-input hold.

## Linked mechanics

- **Noise meter:** running fills the meter; a full meter emits an authored event at the player's current tile. Crouch movement reduces, but does not erase, sound. If microphone input is unavailable, the meter is the deterministic fallback.
- **Microphone (optional):** a configured input can add a bounded noise contribution. Raw audio is not stored. Calibration and a “keyboard/no microphone” mode are required before this branch is enabled.
- **Sanity:** the records stair briefly shifts lighting and occludes one sign, but never changes collision or the route graph. A red emergency light and floor stripe remain reliable anchors.
- **Bolt cutter:** one interaction opens the records chain; the item also produces a loud event, so choosing the alternate route changes both topology and pressure.

## Capture and restart

The checkpoint at `A06` saves the cut chain, pressure state, and collected map knowledge. It resets the porter, noise events, search target, shutter animation, sanity transient, and player position. A capture before `A06` restarts at `A01`; a capture after it restarts at `A06`. No route claims are accepted until both checkpoints are replayed without stale sound, pursuer memory, or door callbacks.

A capture after discovering the fire-door gauge but before `A06` records that observation in the route notebook and shortens the forced-door inspection on retry; it does not open the door. Capture after crossing the no-return line restarts at `A06` with the pressure route uncommitted, the key restored to its authoritative holder, and the cage timer cleared. The player does not repeat the calm linen delivery or Ivo's wash-station task.

## Why the route teaches

The failed fire-door run shows a visible shutter and a pressure gauge. The first successful player can infer that the building is a system: sound moves the porter, the loop buys a crossing window, and the records stair trades time for quiet. The player is not asked to guess a random turn; they are asked to remember a cause and use it under pressure.

The finish uses the same facts rather than changing genre: the laundry clang controls commitment, the red stripe and painted line carry orientation, Ivo's earlier demonstration teaches the pressure key, and the cage threshold turns route knowledge into containment. A cutscene may follow, but the authoritative cage and lift states must commit first.
