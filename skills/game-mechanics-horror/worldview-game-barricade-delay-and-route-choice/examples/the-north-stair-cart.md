# The North Stair Cart

This original fictional example demonstrates the contract shape. It is not a shipped level, measured playtest, or claim that an implementation already exists.

## Invocation

```text
/worldview-game-barricade-delay-and-route-choice

Build one encounter in the Ashglass Clinic. A rain-collector climbs the north
stair while the player needs one stabilizer from Treatment Room B. The player
can push a medicine cart across the stair door. It should buy enough time for
one careful search, but close the fastest route back to the lobby and fail if
the player searches every cabinet.
```

## Source boundary

- **Invocation facts:** the authored fictional brief specifies a clinic floor, one climbing creature, medicine cart, required stabilizer, and route consequence.
- **Proposed for the example:** exact room graph, interaction phases, breach cues, timing relationship, failure and recovery.
- **Not yet observed:** engine, geometry, speeds, animations, accessibility settings, save behavior, or network mode.

Numbers below illustrate what the implemented project must measure. They are not portable defaults.

## Layer lock record

| Lock | Concrete decision | Status | Reopen trigger and fallout |
| --- | --- | --- | --- |
| Delay exchange | Move the medicine cart from the east fire door to the north stair, search one labeled cabinet in Treatment Room B, lose the east lobby shortcut, and escape through the west records passage before breach. Searching three cabinets is the adjacent failure. | Locked for this fictional contract | Changing the treatment task, west exit, or east-door price invalidates every later row. |
| Route mutation | Before placement, north stair and east lobby are open. Moving the cart releases and latches the east fire door. Securing it closes the north stair. Breach reopens only the north stair; deliberate later dismantling can restore the cart and east brace. | Locked as the authored graph; no engine evidence | Moving either socket or changing the fire-door closer invalidates placement, timing, traversal, and screenshot evidence. |
| Placement transaction | `EncounterAuthority` accepts the grip only within 1.4 m with an unobstructed line of action. It confirms `secured` when the cart center is within 0.18 m of the socket, yaw is within 12 degrees, and the wheel lock finishes. Damage, release, or leaving the alignment volume interrupts. North closure follows that confirmation; east closure follows the same authority's observation of the physical latch. The cart costs zero inventory materials. | Locked as a proposed contract; unimplemented | Changing authority, reach, alignment, material cost, or interruption invalidates state, duplication, and interval tests. |
| Threat response | The collector uses contact, one test impact, three escalating breach cycles, opening, and recovery. It has no detour and cannot cross secured collision. | Locked as authored grammar | Adding a detour or ranged action invalidates response and timing traces. |
| Useful interval | Illustrative inputs yield a 3.3-second success margin for one labeled cabinet; two extra cabinet actions add six seconds and cross the failure boundary. | Illustrative, pending runtime measurement | Any route length, speed, animation lock, assistance timing, or breach-phase change invalidates the 3.3-second figure and both traces. |
| Lifecycle proof | Required checks cover navigation/collision, one-search success, three-cabinet failure, east-route loss, non-audio breach cues, and restarts in every phase. No save or network behavior is claimed. | Evidence plan only | Serialization, authority, or any earlier lock change requires a new matrix and new captures. |

If Treatment Room B moves beyond the west records passage, reopen **Route mutation** and **Useful interval**; discard the 3.3-second margin and both the one-cabinet success and three-cabinet failure traces.

## Spatial relationship

```text
north stair
  -> stair door / cart socket
  -> central hall
     -> Treatment Room B / stabilizer
     -> west records passage / longer lobby route
     -> east lobby fire door / shortest route, initially braced open by cart
```

Before placement, the collector reaches the central hall through the north stair door. The medicine cart begins in the central hall bracing the separate east lobby fire door open. Moving it away lets the fire door's existing closer shut and lock that shortest return edge. Securing the cart in the north stair socket closes the stair edge for both actors, so one player action changes two spatial facts through visible, shared geometry: the cart blocks the north stair, and the released fire door blocks the east lobby passage. The player must use the west records passage after retrieving the stabilizer. Breaching the cart reopens the stair edge; it does not reopen the east fire door.

## Player interaction

The cart begins two body lengths from the stair door while visibly holding the east lobby fire door open. `EncounterAuthority` accepts the grip only while the player's interaction point is within 1.4 m and has an unobstructed line of action to the handle. The player grips the cart, releases the east door, pushes the cart into a marked north-stair recess, and holds a brace while its wheel lock engages. The authority confirms alignment only when the cart center is within 0.18 m of the socket and its yaw differs by no more than 12 degrees. The east edge closes when the same authority observes its physical door in the latched state; the north edge closes only after authoritative secure confirmation. Damage, releasing the interaction, or leaving the alignment volume interrupts placement. If interrupted between the two sockets, both routes reflect the object's actual position rather than a hidden convenience state.

A hold alternative and toggle alternative perform the same state transition. Repeated button tapping is not required.

## Threat response

The collector reaches the door, tests the cart with one low impact, then commits to three escalating breach cycles. Each cycle bends a different metal support and changes the sound. Captions distinguish `METAL STRAIN — NORTH STAIR` from ordinary clinic ambience. After the final opening, a recovery pose precedes pursuit.

The collector does not alternate between the door and a nonexistent detour. If the player reappears through the door's wired-glass panel, current sight may shorten the test phase but cannot let the creature cross closed collision.

## Illustrative timing budget

```text
authoritative origin t0          placement input accepted
placement secured at             t0 + 3.2 s
collector contacts stair door at t0 + 4.8 s
                                   (1.6 s after secure confirmation)
test and breach duration         12.4 s
barrier failure at               t0 + 17.2 s

run to Treatment Room B           2.1 s
open one labeled cabinet           3.0 s
run to west passage                4.4 s
reacquisition margin               1.2 s
player safe-boundary required at t0 + 13.9 s

useful interval                   14.0 s
                                   (17.2 - 3.2)
illustrative success margin        3.3 s
                                   (17.2 - 13.9)
```

Opening three unlabeled cabinets adds six seconds and crosses the failure boundary. The final brace breaks while the player is still in the treatment room. That failure is caused by overstaying, not an invisible random roll.

## Price

Removing the cart from the east lobby fire door allows that door to latch, closing what would otherwise be the fastest retreat. The secured cart separately blocks the north stair. The player must take the longer west records passage. Placement consumes zero inventory materials: the price is time, noise, and loss of the east route, not a hidden item charge. The cart is reusable in another encounter only if the player later returns after the collector leaves, dismantles it, and deliberately braces the east door again; the stabilizer route does not require that return.

## Evidence an implementation would need

| Claim | Required evidence |
| --- | --- |
| Placement changes the route | Navigation and collision assertions before and after secure confirmation |
| The interval supports one search | Reproducible play trace completing one cabinet and reaching the west passage |
| Greed creates a real failure | Trace opening three cabinets and receiving a legal breach/reacquisition failure |
| The short return route is truly lost | Player and threat traversal checks against the east passage |
| Breach is readable without sound | Visual phase change and caption check at the narrowest supported viewport |
| Restart is complete | Restarts during alignment, each breach phase, success, and failure with no old hit or route state |

## Limits

This example does not establish production balance, broad construction, human completion rates, final art, localization quality, multiplayer behavior, or compatibility with a specific engine. Those claims require the actual project and direct verification.
