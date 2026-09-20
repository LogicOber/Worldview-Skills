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

Reach the pressure-room lift while the “porter” searches the service wing. The main route uses a laundry loop to make the porter commit to the wrong wing, then crosses a red-lit loading bay while the shutter is open. The records stair is a slower, quieter alternate. A player who runs straight down the visible corridor is caught at a locked fire door; the failed attempt reveals the pressure valve and the side loop.

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

## Measured first grey-box pass

The following are target measurements for implementation, not claims about a shipped build. The porter travels at 2.2 m/s, the player at 3.4 m/s, and the shutter interaction takes 1.1 s. The intended main route is 21.8 m of movement plus 1.6 s of interaction; the porter needs 14.2 m plus a 3.0 s inspection hold. The provisional margin is `14.2/2.2 + 3.0 - (21.8/3.4 + 1.6) = 4.5 s`. The team must rerun this at the actual turn radius, acceleration, and accessibility settings; if the visible crossing cannot be perceived inside that margin, the route is not finished.

The straight fire-door failure has a positive retreat margin only before the door interaction begins. Once the player starts the 2.0 s forced-open animation, the porter regains sight through the bay, making the failure legible rather than random.

## Linked mechanics

- **Noise meter:** running fills the meter; a full meter emits an authored event at the player's current tile. Crouch movement reduces, but does not erase, sound. If microphone input is unavailable, the meter is the deterministic fallback.
- **Microphone (optional):** a configured input can add a bounded noise contribution. Raw audio is not stored. Calibration and a “keyboard/no microphone” mode are required before this branch is enabled.
- **Sanity:** the records stair briefly shifts lighting and occludes one sign, but never changes collision or the route graph. A red emergency light and floor stripe remain reliable anchors.
- **Bolt cutter:** one interaction opens the records chain; the item also produces a loud event, so choosing the alternate route changes both topology and pressure.

## Capture and restart

The checkpoint at `A06` saves the cut chain, pressure state, and collected map knowledge. It resets the porter, noise events, search target, shutter animation, sanity transient, and player position. A capture before `A06` restarts at `A01`; a capture after it restarts at `A06`. No route claims are accepted until both checkpoints are replayed without stale sound, pursuer memory, or door callbacks.

## Why the route teaches

The failed fire-door run shows a visible shutter and a pressure gauge. The first successful player can infer that the building is a system: sound moves the porter, the loop buys a crossing window, and the records stair trades time for quiet. The player is not asked to guess a random turn; they are asked to remember a cause and use it under pressure.

