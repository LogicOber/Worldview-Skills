---
name: narrative-choice
description: >-
  Entry point for branching story design — choices that cost something,
  consequences that surface later, a branch map that reconverges without
  cheating, state variables the writer can reason about, and the dialogue trees
  with character voice. Use when the user says "branching story", "choices
  matter", "multiple endings", "dialogue tree", "visual novel logic".
metadata:
  title: Narrative Choice System
  category: game-design
  triggers: >-
    branching story; choices that matter; multiple endings; dialogue tree; the
    player decides
---

# Narrative Choice System

Design choices a player remembers making.

## What the user gets

| Deliverable | Format |
|---|---|
| State model | the 3–7 variables the story tracks (trust, debt, who is alive, what was said) |
| Branch map | nodes and edges; where branches split, where they reconverge, which endings exist |
| Choice cards | for each choice: the two horns, what each costs now, what each changes later |
| Consequence ledger | every later scene that reads a variable, and how |
| Dialogue trees | per scene, in character voice, with the exact lines |
| Endings | 2–5, each earned by a stated combination of variables |
| Scene plates and character sheets | via the asset skills, when the story is to be rendered |

## Rules this entry enforces

- **Every choice costs.** A choice with a right answer is a quiz. Both horns give something and take something.
- **Consequences surface later, not immediately.** The player should meet a decision again two scenes on, in a form they did not predict.
- **Reconvergence without erasure.** Branches may rejoin the main line, but the state carries: a line changes, a character is missing, a door is closed.
- **State is small.** If the writer cannot hold the variables in their head, neither can the player's sense of agency.
- **Endings are earned by state, not by the last choice.** The final decision tilts; the accumulated state decides.
- **Voice per character.** Dialogue trees are written in each character's register, using `film-story`'s spine so that every branch still has a want, an obstacle and a loss.

## Related entries

- `visual-novel` — rendering the branches as a 2D game
- `hero-journey`, `thriller-plot`, `romance-arc`, `mystery-detective` — story spines to branch from
- `film-story` (core) — the dramatic engine each branch must satisfy
