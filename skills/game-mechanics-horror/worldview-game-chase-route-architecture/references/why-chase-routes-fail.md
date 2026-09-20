# Why chase routes fail

## The common failure is not a slow monster

A chase feels empty when the player's movement has no authorship. If every corridor is equally safe, the pursuer reads the live player position, and the only decision is “run faster,” changing speed or adding a roar cannot create level design. The player needs a map they can hypothesize, test, remember, and eventually master.

## Failure patterns and repairs

| Failure pattern | What the player experiences | Design repair | Verification question |
| --- | --- | --- | --- |
| Live-transform pursuit | Every hiding place is cosmetic; the creature turns whenever the player turns. | Restrict the pursuer to declared sight, sound, trace, or last-known evidence. | After sight breaks, does the pursuer's target remain fixed? |
| Corridor treadmill | A long hallway supplies distance but no decision. | Add a landmarked choice: loop, locked shortcut, vertical change, sound gate, or timing gate. | Can the player state what each branch trades? |
| Decorative floor plan | The diagram looks plausible but walls, collision, and navigation disagree. | Give every structural edge one owner and test all three runtime layers against it. | Can a player and pursuer traverse the same legal route in the build? |
| Random “wrong turn” | Death feels arbitrary because no clue distinguishes routes. | Give wrong routes a readable cost: shutter, noise, dead end, lost resource, or forced loop. | Before failure, can the player name the observable risk? |
| One-way puzzle with no rehearsal | The correct route is a memorization trick, not a discovery. | Preview its landmark, affordance, or sound cue during a safe pass; let the player test a short segment. | Can a careful first-time player infer the next route edge? |
| Branches that never rejoin | The level budget doubles and the story state becomes impossible to verify. | Rejoin branches at a meaningful landmark; carry only deliberate differences in time, resource, knowledge, or injury. | Where do routes merge, and what state survives the merge? |
| Unreadable pressure | The player cannot tell whether speed, noise, sanity, or line of sight caused capture. | Surface one cause through animation, audio, UI, or aftermath; keep the rest in the contract. | Can a replay change one variable and explain the outcome? |
| Impossible margin | The route requires a frame-perfect input before the player can know it exists. | Measure a positive window; place a checkpoint before the committed risk; tune accessibility without changing route logic. | What is the narrowest supported successful timing? |
| Item as key-shaped busywork | The chase stops while the player searches for a token. | Make the item alter route information, obstruction, sound, or pursuit state, not just open a door. | Does using the item change at least two route variables? |
| Checkpoint erases learning | Retry returns the player to an earlier fetch quest or an already solved puzzle. | Snapshot the meaningful preparation while resetting only active pursuit state. | Can a retry test the route within seconds? |
| Image-only validation | A beautiful red arrow hides a wall, unreachable stair, or impossible turn radius. | Treat the diagram as a communication artifact; validate geometry and sensors in the running scene. | Which claims come from the build, not the picture? |

## Route design tests

Before art polish, the Agent should be able to answer these in the contract:

1. What is the player's first safe landmark, and how is it taught?
2. What makes the main route correct without making it obvious on the first frame?
3. What is the meaningful alternative, and what does it cost or reveal?
4. What wrong route can be survived, and what does survival teach?
5. Where can the pursuer lose, regain, or misread the player?
6. Which interaction, item, sound, microphone event, or sanity change modifies a route edge?
7. Where can the player recover, restart, or retreat without a soft lock?
8. What is the measured timing margin at ordinary and assisted input settings?

If the answers are not observable in a grey-box run, the route is not ready for final assets.

