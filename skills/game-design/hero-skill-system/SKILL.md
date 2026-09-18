---
name: hero-skill-system
title: Hero Skill System
description: Entry point for designing a playable character's ability kit in the MOBA/action-RPG tradition — passive, Q/W/E basics, R ultimate — with role, targeting type, cooldown/cost, counterplay, VFX language that makes each ability visually distinct from a normal attack, and a showcase video per ability. Use when the user says "abilities", "skills", "Q W E R", "kit", "ultimate", or asks what a character can do.
category: game-design
triggers:
  - "design abilities for"
  - "Q W E R"
  - "skill kit"
  - "ultimate ability"
  - "what can this character do"
---

# Hero Skill System

Design a character kit that reads on screen and plays in the hand.

## What a kit is

A kit is four or five abilities that together express one idea about how this character fights. The idea comes first — *she wins by never being where the hit lands*, *he wins by making the ground unsafe*, *they win by giving their own health to allies* — and every ability is a facet of it. A kit without an idea is a list of damage numbers.

## What the user gets

| Deliverable | Format |
|---|---|
| Kit design | one page: fantasy, role, the five abilities with targeting, cost, cooldown, counterplay |
| Ability board | 4–5 panel image: one panel per ability, normal attack shown for contrast |
| Character sheet | 3-panel, in the project's locked style (skipped if it exists) |
| VFX language | palette, shape grammar and sound family that makes this character's abilities recognisable at a glance |
| Showcase videos | 5–8 s per ability, generated with `film-action-combat` rules |

## What the user has to do

1. Name the character and say one thing about how they fight (or just describe them; the skill proposes the idea).
2. Pick a style by letter if the project has none.
3. Approve the one-page kit.
4. Pick takes by number.

## The kit template

```markdown
# <Name> — <one-line fantasy>

Role: <marksman / assassin / tank / mage / support / bruiser>
Core idea: <one sentence — what does winning look like for this character>

## Passive — <name>
Trigger · effect · why it expresses the core idea

## Q — <name>        (basic, low cooldown, the button pressed most)
Targeting: <skillshot line / skillshot cone / point-and-click / self / ground AoE>
Cost · cooldown · range
Effect · consequence
Counterplay: <what an opponent can do about it>
Visual: <shape, colour, 0.3 s wind-up tell, contact effect> — distinct from auto-attack

## W — <name>          (utility, defensive, or setup)
## E — <name>       (mobility or the "reposition")
## R — <name>          (ultimate; changes the rules for 3–8 s)

## Combo
The intended sequence and why it works. The intended counter.

## Visual grammar
Palette (2 colours + 1 accent) · shape family (arcs, shards, rings, threads) ·
sound family · how the ultimate differs in scale from everything else
```

## Rules this entry enforces

- **Normal attack is the baseline.** The ability board always shows the auto-attack in one panel so the abilities are visibly *more*: bigger stance, bigger light, bigger consequence.
- **Every ability has a targeting type.** Skillshot, point-and-click, ground AoE, self. This decides how it is animated and how it can miss.
- **Every ability has counterplay.** Something the opponent can see and do. An ability with no counterplay is a cutscene.
- **Telegraphs are drawn.** 0.2–0.5 s wind-up with a visible tell, on the board and in every prompt.
- **Consistent grammar.** All five abilities share palette and shape family. A kit with five unrelated effects reads as five characters.
- **Ultimate changes the rules.** Duration, area or the character's own movement changes for the window. If the R is just "a bigger Q", redesign.
- **Physics from `film-action-combat`.** Anchors, wind-up/contact/follow/consequence, causality, momentum.

## Related entries

- `boss-battle` — the enemy these abilities are designed to counter
- `character-model` — 3D model of the hero
- `vfx-effect` — standalone VFX assets for each ability
