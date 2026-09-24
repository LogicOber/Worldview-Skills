---
name: worldview-game-horror-returning-place-escalation
description: "Use when a familiar room, street, workplace, or social hub should become more frightening through changed occupants, objects, routes, relationships, sound, light, or knowledge on each return. Produces a stable landmark grammar, return-state graph, player comparison cues, recovery edge, persistence rules, and verification. Do not use for empty backtracking, a key-only lock, or a hub whose only change is more lore text."
---

# Worldview Game — Horror Returning-Place Escalation

## Call this Skill

```text
/worldview-game-horror-returning-place-escalation
```

Treat the brief as a request for a place the player can remember and compare. Inspect current map, landmarks, save authority, NPC state, route graph, lighting, and audio before adding content.

## What this Skill owns

It makes a return a playable comparison:

```text
first meaning → player leaves with a question
→ world or relationship changes → player returns
→ stable anchor proves the place is the same
→ changed fact demands a new decision
→ route, knowledge, or relationship persists
```

It does not replace key-item backtracking, roaming stalkers, or narrative dialogue. It owns the comparison and escalation contract that lets those systems matter in one place.

## Lock sequence

### 1. Stable grammar
Close when the player can identify the same place through three to five anchors.

### 2. Return ledger
Close when each return changes a named physical, social, route, sensory, or knowledge fact.

### 3. Decision and recovery
Close when each changed fact asks for a decision and provides a recoverable wrong reading.

### 4. Persistence
Close when changed states survive the declared save boundary and reset cleanly.

### 5. Runtime proof
Close after first visit, each return, save/load, failure, and final payoff are tested or marked unverified.

### 6. Handoff
Close when implemented states, proposals, and unknowns are separated.

## 1. Establish the stable grammar

Choose three to five landmarks that survive returns: a clock, stripe, machine, window, statue, sound source, exterior silhouette, or tactile door. Each needs a player-facing function, not only decoration.

For every landmark record:

```text
identity → first meaning → changed-return meaning → player action
→ route edges → accessible cue → save/reset behavior
```

Do not remove all anchors while trying to create mystery. If the player cannot tell that the place is the same, they cannot infer what changed.

## 2. Build the return ledger

Each return must change at least one of:

- physical obstruction or object;
- occupant position, authority, or relationship;
- legal route, shortcut, or safe edge;
- light, weather, sound, or visibility boundary;
- threat knowledge, search rule, or access permission;
- what an earlier clue now means.

Change one primary fact before adding another. Record why the change is visible, what it asks the player to decide, and how the player can recover if they misread it.

## 3. Make the hub a decision, not a hallway

At each return, write:

```text
I recognize ___, but ___ is different.
Therefore I must choose ___ before ___ happens.
If I am wrong, I learn ___ and can recover through ___.
```

If the sentence ends with “read another paragraph,” add a physical, route, social, or resource consequence. If a return only takes the player past the same rooms, cut it or merge it.

## 4. Connect people and place

When an NPC changes, specify the spatial evidence: a blocked desk, moved chair, missing tool, altered greeting, light left on, new sound, or changed route. Dialogue can explain the change, but it cannot be the only evidence if the player is meant to play a comparison.

For social horror, let the player ask, trust, refuse, or seek help. Do not make every changed occupant an enemy; uncertainty is more useful when relationships have different consequences.

## Audit each return as a comparison decision

Complete this ledger before adding a fourth or later return:

| Return check | Required record | Rewrite when |
| --- | --- | --- |
| Stable anchor | Three to five landmarks that prove this is the same place. | The player cannot tell whether the space changed or was replaced. |
| Changed fact | One physical, social, route, sensory, or knowledge change. | The only change is more debris, darker color, or extra lore. |
| Player question | What the player now wants to verify, avoid, confront, or use. | The return is required only because a marker says so. |
| Comparison action | Look, listen, speak, inspect, cross, wait, or test an old affordance. | The comparison happens in a cutscene or automatically. |
| Consequence | Access, trust, route, threat, resource, or knowledge changes after the test. | The player can perform the test without changing any state. |
| Recovery edge | A reliable anchor or route that lets a wrong reading remain useful. | A wrong interpretation traps the player or resets the whole place. |
| Payoff | The earlier question is answered, reversed, or made more specific. | The return only delays the next new room. |

The same place should not become “scarier” by merely adding enemies. Make the player compare a remembered relation: a chair now faces the wrong door, the person who granted access is absent, a safe shortcut now exposes a sound source, or an earlier landmark still works while its social meaning has changed.

## Remove empty backtracking

| Empty pattern | Player experience | Repair |
| --- | --- | --- |
| Return only to fetch a key | The place is a corridor between objectives. | Change the returner's question and make the old key location answer it. |
| Random prop rearrangement | The player cannot infer a rule. | Change one authored fact at a time and preserve a truthful anchor. |
| All anchors disappear | Mystery becomes disorientation. | Keep at least one stable visual, acoustic, or tactile landmark. |
| NPC teleports without relationship evidence | Social escalation feels like a script error. | Track where the person could have gone and what their absence changes. |
| Every return is more hostile | There is no recovery or interpretation phase. | Alternate escalation with a return that grants knowledge or route control. |

## 5. Persist and verify

The same return state must survive the intended save boundary. Test:

- first visit and landmark recognition;
- each changed return at ordinary speed;
- wrong interpretation and recovery;
- save before and after the change;
- threat/NPC/door state after reload;
- final return and payoff of the first landmark.

Collision, navigation, audio, lighting, subtitles, and accessibility cues must agree with the return ledger.

## Handoff

Return the landmark map, return ledger, changed-state implementation, route and relationship consequences, recovery edge, save/reset evidence, and a statement of which return states remain proposals.
