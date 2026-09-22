---
name: horror-chase
title: Horror Chase Designer
description: Entry point for designing a survival-horror chase — the pursuer, the map it is chased through, the hiding spots and escape routes with their success odds, the near-miss the player must survive, and the cutscene or gameplay video that shows it. Use when the user says "chase", "the monster hunts the player", "hide and escape", or describes a horror game with a pursuing enemy.
category: game-design
triggers:
  - "chase sequence"
  - "the monster chases the player"
  - "horror chase"
  - "hide from the enemy"
  - "escape the mansion"
---

# Horror Chase Designer

Design a chase the player survives by a hair, and only sometimes.

## What a chase is

A chase is a map, a pursuer with rules, and a set of routes whose odds the designer knows and the player does not. The classic shape: lure the pursuer into a room, hide under the bed, wait until it walks to the far side, slip out the other way — timed so that it *just* works, and only if you read the room right. Most routes fail. One or two succeed. The player must brush past the thing to make it.

This skill designs the odds first, then the monster.

## What the user gets

| Deliverable | Format |
|---|---|
| Chase design | map with start, routes, hiding spots, pursuer path, success/failure per route |
| Pursuer sheet | 3-panel, in locked style; plus a behaviour card (speed, senses, search pattern, what breaks its pursuit) |
| Map plates | 3/4-angle plates for each room on the route, with a shared spatial lock |
| Near-miss storyboard | the one beat where the player and pursuer are within arm's reach |
| Chase video | 10–30 s, generated with `film-action-combat` chase rules |
| Sound design notes | footstep cadence, breathing, the pursuer's tell |

## What the user has to do

1. Describe the pursuer and the place in a sentence or two (or point the skill at existing project assets — it will read them).
2. Pick a style by letter if the project has none.
3. Approve the one-page chase design.
4. Pick takes by number.

If the project has a qualitative experience brief, also read the selected
`experience_reference_ids` from the gameplay-experience-study archive. Preserve
the named felt sequence and the player misread the study allows, but replace
the source's surface, map, cast, wording, and visual identity.

```markdown
experience_reference_ids:
felt_sequence_to_preserve:
player_misread_to_allow:
quality_failure_to_avoid:
```

## The chase template

```markdown
# <Chase name>

## Pursuer
Who / what · speed relative to player (slower / equal / faster in bursts) ·
senses (sight cone, hearing radius, does it check hiding spots?) ·
search pattern when it loses the player · tell (sound or light that announces it) ·
what ends pursuit (line of sight lost for N s, a door it cannot open, a light)

## Map
Rooms on the route with a spatial lock for each (door positions, furniture,
sight lines). Named landmarks the video must keep in frame.

## Routes
| Route | Path | Hiding spot | Timing window | Outcome | Odds |
|---|---|---|---|---|---|
| A | living room → hall → bedroom → under bed → out the second door | bed | pursuer must reach the window before player exits (≈4 s) | escape | 1 in 3 |
| B | living room → kitchen → back door | none | door is locked; 2 s to unlock | caught if pursuer < 5 m | 1 in 6 |
| C | living room → stairs → attic | wardrobe | pursuer searches wardrobes | caught | 0 |

## The near-miss
Where, when, how close. What the player sees (a foot, a shadow, breath on the
glass). Duration of the hold. This is the beat the whole chase exists for.

## Failure state
What being caught looks like. One shot. No gore beyond the style's ceiling.

## Video plan
Segments · duration · density (chases run `high`, the near-miss runs `measured`) ·
camera (handheld or POV) · where the camera is allowed to see the pursuer fully
```

## Rules this entry enforces

- **Odds are designed, not emergent.** Every route has a stated outcome and probability before any asset is made. A chase with no failing routes is a corridor.
- **The pursuer has rules.** Speed, senses, search pattern, what breaks pursuit. If it can do anything, the player cannot plan, and planning is the fear.
- **One near-miss, held.** The chase is built backwards from the moment the player is within reach. That beat gets a `measured` density and a locked or POV camera; everything before it earns it.
- **Hiding is a timing puzzle.** A hiding spot works only inside a window (pursuer must walk to X before the player leaves Y). Write the window in seconds.
- **Spatial lock across rooms.** The route is one continuous space. Doors, furniture and sight lines are fixed in every plate and every prompt, or the chase geography becomes unreadable on screen.
- **The pursuer is seen less than felt.** Full reveals are budgeted (usually one, at the near-miss). Elsewhere: a shadow, a limb, a sound. Write what the camera *may* show.
- **Physics from `film-action-combat` chase rules.** Each beat is an obstacle; state how the player clears it and how the pursuer handles it worse; state whether the gap grew or shrank.

## Sound is half the design

The pursuer's tell (a bell, a wet drag, a nursery tune) is fixed and reused. Player breath rises with proximity. Footstep cadence tells distance. In the near-miss, everything drops out except one sound. Write these into every prompt's sound line; the video model will generate ambient audio around them.

## Example

```text
CURSED DOLL — slower than the player, but never stops; hears footsteps within
8 m; sees in a 60° cone; searches under beds only on the second pass; its tell
is a music-box phrase that slows as it nears.

Route A (1 in 3): living room → hall → bedroom, under the bed. The doll enters,
walks to the window (4 s). Player must exit by the second door inside that
window. Near-miss: from under the bed, POV, the doll's porcelain feet stop
15 cm from the player's face; music-box phrase plays once; feet turn; player
slides out.

Video: 22 s. Living room dash (6 s, high, handheld) → hall (4 s, high, handheld)
→ under-bed hold (8 s, measured, locked POV) → exit (4 s, high, handheld).
The doll is fully seen once: its feet.
```

## Related entries

- `environment-scene` — build the mansion rooms as 3D assets
- `game-cutscene` — the aftermath, the discovery, the first sighting
- `thriller-plot` — the story around the chase
