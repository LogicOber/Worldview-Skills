# The Borrowed Kite

An original, specified-only example for a quiet family adventure. All times are estimates. This example demonstrates a complete small story without horror, a deadline, or a mandatory surprise quota.

## Brief and ending

An adult returns to help their younger sister reopen a village kite stall. They expect to repair the large swallow kite their late mother flew. The sister has quietly replaced its heavy painted tail with small cloth tags carrying customers' names. The single ending is flying the repaired kite together with those tags intact. The player's change is from restoring an object exactly to understanding how someone kept using it.

## Story

### K01 — The bench

The stall smells of paste. Tessa has put two cups on the bench, though one has already gone cold. You lay your mother's swallow kite beside them. Its tail is wrong: short cloth tags where a long blue streamer belongs.

“I kept the old one,” Tessa says. She points to a tin above the door and returns to straightening the paper stock.

You inspect the torn left wing, the bright repair thread, and a knot too bulky for the spar. Pulling a practice loop shows why the wing twists. Tessa lets you undo it instead of reaching across you. She has already repaired the opposite wing more neatly than you could.

“Who taught you that?”

“You were going to. Then I needed it on a Tuesday.”

You retie the loose loop. The kite is ready to balance, but someone has removed the scale's small brass weight.

A spare wooden peg holds down a practice cord on the bench. You can take it after releasing the cord. Tessa points out the nearest cloth tag: she promised its young owner the first flight when the stall reopened.

### K02 — The names

Three places could hold it: the packing shelf, the purchase drawer, or the outdoor flight rack. The drawer contains a tracing of the old tail. The shelf has tiny paper birds. At the flight rack a neighboring child is using the weight to keep a drawing from blowing away.

You may exchange a peg for it immediately or ask about the drawing. The child points to their own name on one of the cloth tags. Tessa taught them to write it while waiting for glue to dry. Other tags mark other afternoons. They are not repair scraps.

If you recognized the tags on the bench, the game accepts that insight there. This conversation adds a particular child's memory instead of announcing a revelation you already know.

You return with the weight. Tessa sees you looking at the tags and begins to explain their effect on balance. You interrupt only to ask which one was first. She finds a faded green strip with her own name written twice, once carefully and once badly.

### K03 — A workable repair

The blue tail would balance the kite using your mother's original markings. Keeping the lighter tags requires moving the bridle one notch toward the repaired wing. Both options can be tested on the stand; neither destroys the other material. You see the tags fall neatly when the bridle moves.

A wrong notch tilts the kite and loosens the practice line. Nothing breaks. The painted center mark and Tessa's gesture show which direction needs correction. You can skip the old-tail comparison if you already understand the weight difference.

“She never flew it with this knot,” you say.

“No.”

Tessa waits for you to add something. You pass her the line instead.

### K04 — The hill

You carry the kite through the orchard. This route is short; a branch by the gate offers a useful last line test. At the slope, one player action tensions the line while Tessa raises the kite. A second releases enough slack to catch the wind. The same balance cue learned at the stand tells you when to act.

The kite lifts. Tessa laughs at how low you are holding your arm, then takes the spool while you untangle one tag. Her mother's blue tail is folded in your pocket. It remains an object worth keeping without being required for the flight.

The player can walk the ridge, read the tags, and return to the open stall. The credits become available after the flight; they do not interrupt the shared moment.

## Required actions and progression

| Node and location | Cue and action | Prerequisite and response | Next state or recovery |
| --- | --- | --- | --- |
| K01.a — repair bench | The left wing twists when the line tightens. Undo its bulky knot and match the working loop on the opposite spar. | The intact wing supplies the comparison; a practice pull shows whether the replacement holds. | A stable loop sets `wingRepaired`; a loose one releases harmlessly and remains available to retie. |
| K02.a — flight rack | The missing brass weight is holding a child's drawing. Release the spare peg from the bench and offer it as a replacement. | The peg fixes the paper to the rack; the child hands over the weight. Asking without a peg prompts them to point toward the workshop's pegs, not end the conversation. | Set `hasWeight`; the drawing stays secure. Repeating the exchange gives no duplicate weight. Return to the bench by the same open path. |
| K03.a — balance stand | Seat the weight, suspend the repaired kite, and move the bridle toward the repaired wing. | `wingRepaired` and `hasWeight` enable a meaningful test. The correct notch aligns the kite with the stand's center mark; another notch tilts it. | Set `tagsBalanced` only with the tags fitted. The old tail is a reversible comparison test; refit the tags for the promised flight. Material stays on the bench if the player leaves. |
| K04.a — hill | Tessa raises the kite while the player tensions and releases the line using the balance cue learned at the stand. | `tagsBalanced` allows the shared launch. The visible line slack, not a hidden rhythm sequence, signals the release. | A mistimed release lowers the kite for an immediate local retry. A successful flight reaches the sole ending and enables credits; staying afterward is optional. |

The stall, bench, outdoor rack, orchard gate, and hill remain connected. The scale and flight rack can be inspected early. Dialogue about the tags responds to recognition rather than gating the repair behind mandatory reading.

## Timing and purposeful exploration

| Beat | Typical activity budget | First-play low / typical / high | Early understanding |
| --- | --- | --- | --- |
| K01 | Orient 25 s, inspect 55 s, knot practice 55 s, conversation 45 s | 125 / 180 / 250 s | Recognize the tags; preserve that knowledge and omit a later explanation. |
| K02 | Navigate 35 s, choose search location 50 s, exchange 25 s, conversation 55 s | 105 / 165 / 240 s | Directly exchange the peg; two other inspection spots are optional. |
| K03 | Inspect balance 40 s, test bridle 70 s, conversation 40 s | 100 / 150 / 230 s | Test the correct notch immediately; no forced wrong attempt. |
| K04 | Walk and line check 55 s, shared flight 65 s | 90 / 120 / 180 s | Already familiar movement shortens approach, not the shared flight. |

Required route through the ending: 420 / 615 / 900 seconds, or approximately 7–15 minutes with a roughly 10-minute typical route. Optional purchase-drawer and tag reading adds 1–3 minutes; remaining on the ridge after the flight may add another 1–2 minutes. Neither is required to reach credits. One failed balance test adds roughly 15–35 seconds. These estimates count dialogue only while stationary; conversation during the hill walk would reduce the combined budget.

Exploration differentiates three plausible storage places through their functions. The correct object is visibly in use, so obtaining it becomes a small interaction rather than an invisible pickup. Completionists get memories from tags and drawings. Essential balancing information remains at the stand.

## Author review and revisions

- An earlier outline hid the weight in an arbitrary drawer. Moving it into the child's activity made the search reveal how the stall had stayed alive.
- An early solver originally had to hear Tessa explain all the tags. The revision acknowledges recognition and asks about the first tag instead.
- The first ending replaced the old tail and discarded it. Keeping it in the player's pocket allows affection for the old object and acceptance of the new one together.
- The sister's skill is shown by the already repaired wing before she helps with the player's mistake. Her competence is observable.
- Both old-tail and new-tail tests converge on the same flight with the tags. Testing the old tail is an experiment, not a promised alternate ending.

Before implementation, test whether three search locations are readable, the balance cue is understandable without explanation, and the final flight needs less or more time. No actual player reaction or duration has yet been measured.
