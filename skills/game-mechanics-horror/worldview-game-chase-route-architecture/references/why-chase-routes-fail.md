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
| Route debuts during camera shake | The player meets a required turn, control, and landmark while sprinting and cannot separate navigation failure from presentation pressure. | Rehearse the edge calmly or expose it from a safe sightline; repeat essential information after recovery. | Where did the player first learn the turn and interaction cost? |
| Every branch blocks at once | The level says only “wrong” and supplies no ordered model for the next attempt. | Reject branches sequentially with distinct cues and one-variable changes. | What new fact does each failed branch add? |
| Branches that never rejoin | The level budget doubles and the story state becomes impossible to verify. | Rejoin branches at a meaningful landmark; carry only deliberate differences in time, resource, knowledge, or injury. | Where do routes merge, and what state survives the merge? |
| Unreadable pressure | The player cannot tell whether speed, noise, sanity, or line of sight caused capture. | Surface one cause through animation, audio, UI, or aftermath; keep the rest in the contract. | Can a replay change one variable and explain the outcome? |
| Impossible margin | The route requires a frame-perfect input before the player can know it exists. | Measure a positive window; place a checkpoint before the committed risk; tune accessibility without changing route logic. | What is the narrowest supported successful timing? |
| Developer-speed tuning | Authors who know every turn omit recognition, hesitation, acknowledgement, interaction cancel, and accessible input time. | Measure fresh-player decision and operation time separately from traversal. | Does the route retain a positive margin for an unfamiliar supported player? |
| Uncancelable interaction exceeds warning | A lever or animation traps the player longer than the threat's legible arrival window. | Shorten it, allow an attributable cancel, move the warning earlier, or make the lock an explicit committed risk. | Can the player make a fair disengage decision before contact? |
| Return route changes invisibly | A previously safe edge becomes a trap without a changed obstruction, sound, light, trace, or threat rule. | Establish the safe history, then show the exact changed state before the new commitment. | What proves the return is no longer equivalent? |
| Finale forgets the route | The ending becomes untaught combat or a cutscene trigger after a route-learning chase. | Reuse an earlier verb, landmark, countermeasure, and target rule at an escape/lure/containment threshold. | Which earlier beat taught every required finale action? |
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
9. Which branch is rejected first, what single fact does it teach, and what changes on the next attempt?
10. Where is the recovery pocket, and when does retreat become illegal?
11. What earlier beat teaches the final lure or containment verb?

If the answers are not observable in a grey-box run, the route is not ready for final assets.
