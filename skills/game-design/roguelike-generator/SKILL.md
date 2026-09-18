---
name: roguelike-generator
title: Roguelike Generator
description: Entry point for a run-based game's systems — the room grammar that procedural generation draws from, the loot and upgrade economy, the risk/reward beats per floor, and the boss that closes each floor. Produces the design plus reference plates for room archetypes and item sheets. Use when the user says "roguelike", "roguelite", "procedural dungeon", "runs", "permadeath".
category: game-design
triggers:
  - "roguelike"
  - "roguelite"
  - "procedural dungeon"
  - "run-based game"
  - "random levels"
---

# Roguelike Generator

Design a run the player wants to start again after losing.

## What the user gets

| Deliverable | Format |
|---|---|
| Room grammar | 8–15 room archetypes (combat, treasure, shop, shrine, elite, boss, rest, secret) with entry/exit rules |
| Floor rules | how many rooms per floor, mandatory vs optional, branching, the one guaranteed reward |
| Loot economy | item tiers, drop odds, currency sinks, the "build" space the player can discover |
| Risk/reward beats | curses, elite rooms, gambling shrines — each with a stated expected value |
| Enemy roster | 6–12 enemies with one verb each; elites combine two |
| Floor boss | via `boss-battle` |
| Room plates | one 3/4 plate per archetype via `environment-scene`, with a shared spatial grammar so rooms read as one dungeon |
| Item sheets | via `weapon-prop` |

## Rules this entry enforces

- **Rooms are a grammar, not a list.** Each archetype states what may come before and after it. "Elite never follows elite; shop appears once per floor after room 4."
- **One guaranteed reward per floor.** Randomness on top of a floor the player can plan around.
- **Every enemy has one verb.** Charger, shooter, exploder, splitter, shielder. Elites combine two. Bosses change the rules (`boss-battle`).
- **Builds must be discoverable.** At least three item synergies the designer knows about and does not announce.
- **Expected value is written.** A curse room's EV is stated; if it is always right or always wrong to take, redesign.
- **Death teaches.** The death screen names what killed the player and what they had. Meta-progression is small; skill is the main progression.
- **Visual grammar across rooms.** Same door shapes, same floor material family, same lighting logic — so procedurally assembled rooms read as one place.

## Example

```text
Floor: 8–11 rooms · start → 3–5 combat → shop → 2–3 combat/elite/shrine →
   rest → boss. Guaranteed: one weapon by room 3.
Enemies: bone-runner (charger) · lantern-wisp (shooter) · marrow-tick
   (exploder) · rib-crawler (splitter) · warden (shielder)
Elites:  warden + shooter · runner + exploder
Shrine:  trade 30 % max HP for one rare item — EV positive only if the player
      already has two synergising items (they must judge that)
Synergies (undisclosed): ricochet + multishot · burn + oil flask · shield
      wall + reflect
```

## Related entries

- `boss-battle` — floor bosses
- `platformer-level` — the fixed-level counterpart
- `environment-scene`, `weapon-prop` — plates and items
