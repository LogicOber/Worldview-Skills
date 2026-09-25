---
name: card-game
description: >-
  Entry point for a card-game slice — the core loop (resource, play, resolve), a
  starter set of 20–40 cards with costs and effects tuned against each other, a
  card frame and illustration style card, illustrated card art in that style,
  and a playable web prototype. Use when the user says "card game",
  "deckbuilder", "TCG", or asks for a strategic card battler.
metadata:
  title: Card Game
  category: 2d-game
  triggers: card game; deckbuilder; TCG; card battler
---

# Card Game

Design a set where every card is a decision.

## What the user gets

| Deliverable | Format |
|---|---|
| Core loop | resource per turn, hand size, draw, play, resolve, win condition |
| Card set | 20–40 cards: name, cost, type, effect, flavour line; tuned as a set |
| Archetypes | 2–4 deck identities the set supports, each with a payoff card |
| Frame design | card template: art window, cost gem, type bar, text box, rarity mark |
| Card art | illustrations in the locked style, one per card, consistent framing |
| Prototype | web build: shuffle, draw, play, one enemy, one win/loss |

## Rules this entry enforces

- **Cost is the design.** Every effect is priced against a baseline ("1 cost = 3 damage or 2 block"). Cards that break the baseline are the rares, and they break it on purpose.
- **Every card has a decision.** If a card is always played on curve with no thought, it is filler. Add a condition, a trade-off or a timing question.
- **Archetypes have payoffs.** Each identity has one card that makes the whole plan worth it; the rest are enablers.
- **Frame before art.** The template is locked first so every illustration is composed for the same window.
- **Art is composed for the window.** Subject centred in the art window, readable at thumbnail size, palette per archetype.
- **Flavour lines are one sentence, in-world.**

## Example

```text
Loop: 3 energy/turn · draw 5 · play any · enemies act after · 0 HP loses
Archetypes: Light-sharing (give allies block, pays off when 3+ allies) ·
    Hoard (keep cards in hand, pays off on hand size) ·
       Burn (damage over time, pays off on stacked burns)
Baseline: 1 energy = 3 damage | 2 block | 1 card
Card: WICK RELAY — 2 · Skill · Give 3 block to each ally. If you have given
      block 3 times this turn, draw 2. "A wick burns itself to light others."
```

## Related entries

- `pixel-art-sprite` or `character-model` — card art subjects
- `narrative-choice` — story mode between fights
- `roguelike-generator` — run structure for a deckbuilder
