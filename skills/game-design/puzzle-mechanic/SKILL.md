---
name: puzzle-mechanic
description: >-
  Entry point for designing a puzzle system — the single rule the player learns,
  the minimal puzzle that teaches it, the escalation ladder that combines it
  with earlier rules, the "aha" the designer intends, and reference plates for
  the puzzle objects. Use when the user says "puzzle", "riddle room", "the
  player has to figure out", or describes a mechanic with a solution.
metadata:
  title: Puzzle Mechanic
  category: game-design
  triggers: >-
    puzzle mechanic; puzzle room; the player has to figure out; a mechanic like
    Portal
---

# Puzzle Mechanic

Design a rule, then design the moment the player understands it.

## What the user gets

| Deliverable | Format |
|---|---|
| Rule card | one sentence a player could repeat; the objects that carry it; what is *not* allowed |
| Tutorial puzzle | the smallest configuration that cannot be solved without the rule |
| Escalation ladder | 6–10 puzzles: rule alone → rule + constraint → rule + earlier rule → rule inverted |
| Aha map | for each puzzle: what the player believes going in, what breaks, what they realise |
| Object sheets | puzzle objects via `weapon-prop`; rooms via `environment-scene` |
| Solution walkthrough (optional) | 10–20 s video of the intended solve |

## Rules this entry enforces

- **One rule per mechanic.** If the card needs two sentences, it is two mechanics.
- **The tutorial has one solution.** Any configuration with several solves teaches nothing; the player may finish without learning.
- **No text hints.** The rule is taught by a room that can only be solved one way, never by a sign.
- **Failure is cheap and informative.** A wrong attempt should show the player *why* it was wrong within two seconds.
- **The ladder ends by inverting.** The last puzzle uses the rule against the player's expectation (the thing you always moved toward must now be avoided).
- **Objects are locked assets.** The puzzle's pressure plate, cube, mirror or lever looks identical in every room; recognition is part of the design.

## Example

```text
Rule: light that touches a wick-flower opens the door it faces; light that
     touches a shadow-flower closes it.
Objects: lantern (carriable, 1 per room) · wick-flower · shadow-flower · door
Tutorial: one lantern, one wick-flower facing one door. One solve.
Ladder:
  2  two doors, one flower — which door faces it?
  3  shadow-flower between lantern and wick-flower — carry the light around
  4  two lanterns, one must be left behind
  5  a mirror redirects light (new object, same rule)
  6  a moving flower — timing
  7  the exit door is *behind* a shadow-flower — you must close a door to open it
  8  inversion: the door you need is the one you have been avoiding all game
```

## Related entries

- `environment-scene` — puzzle rooms
- `weapon-prop` — puzzle objects
- `narrative-choice` — puzzles as story branches
