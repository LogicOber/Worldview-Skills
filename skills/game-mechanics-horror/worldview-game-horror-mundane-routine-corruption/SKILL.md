---
name: worldview-game-horror-mundane-routine-corruption
description: "Use when serving, driving, studying, sleeping, cleaning, cooking, or playing should become a learnable horror loop whose ordinary rule is broken one variable at a time. Produces a normal-loop contract, exception ladder, player choices, state consequences, recovery, accessibility, and verification. Do not use for a generic quest list, decorative job, or random jump scare without a teachable routine."
---

# Worldview Game — Horror Mundane Routine Corruption

## Call this Skill

```text
/worldview-game-horror-mundane-routine-corruption
```

Start by inspecting the project interaction, inventory, NPC, timer, route, and save authority. The routine must be shorter and clearer than the horror built on top of it.

## What this Skill owns

```text
normal action → normal confirmation → repeated baseline
→ one exception → inspect/comply/refuse/delay/leave
→ visible consequence → recovery or changed routine
```

It owns the player's understanding of the ordinary loop and the rule-breaking exception. It does not own a universal inventory, customer AI, or puzzle framework.

## Lock sequence

### 1. Baseline loop
Close when the player can repeat the normal routine and explain its confirmation.

### 2. Exception ladder
Close when each violation changes one readable field and has a cause.

### 3. Choice contract
Close when comply, inspect, refuse, delay, and leave have declared consequences.

### 4. Recovery and reset
Close when a mistake teaches the violated rule and reload restores one coherent state.

### 5. Runtime proof
Close after normal cycles, exceptions, choices, accessibility, save/load, and ending are tested or marked unverified.

### 6. Handoff
Close when implementation, proposal, and unknowns are separated.

## 1. Teach the baseline

Choose two to four actions that express the job: receive, prepare, perform, deliver, confirm, close. Complete at least three ordinary cycles unless the project is intentionally short. Each cycle needs:

- an input the player can repeat;
- a response that confirms success;
- a visible object, NPC, or route state;
- a cost or resource only if it will matter later.

Do not hide the normal rule in a tutorial paragraph. Let the player perform it.

## 2. Corrupt one field at a time

Possible fields include identity, ingredient, destination, time, quantity, voice, room, customer, object position, or closing condition. The first exception should be visible before the player commits. Later exceptions may combine two known fields, but never introduce all of them at once.

For each exception record:

```text
normal value → observed contradiction → player choices
→ state changed by each choice → feedback → recovery
```

## 3. Preserve agency

The player must be able to comply, inspect, refuse, delay, or leave when those choices fit the fiction. Choices can have unequal costs; they should not be cosmetic. A refusal may close a public route, an inspection may reveal evidence, and compliance may keep the job open while moving the threat.

## 4. Connect the routine to the world

The corrupted routine should affect a route, person, object, timer, sound, resource, or threat state. If the loop ends in a cutscene no matter what the player does, call it presentation and remove false choice language.

## Audit the routine as a state machine

For every cycle, record the exact field that changes and the decision it creates:

| Cycle check | Required record | Rewrite when |
| --- | --- | --- |
| Baseline action | Input, object, actor, confirmation, and completion condition. | The player cannot repeat the ordinary loop without a tutorial paragraph. |
| First violation | One changed identity, quantity, time, destination, voice, object, or room field. | Several unknown rules arrive in one exception. |
| Recognition window | The cue shown before the player commits. | The player learns only after punishment. |
| Response choice | Comply, inspect, refuse, delay, leave, or another fiction-valid action. | The response is cosmetic or only one option is technically accepted. |
| State consequence | Route, customer, resource, relationship, threat, or schedule change for each response. | Every response returns to the same state. |
| Recovery | What the player can do to understand and continue after a wrong reading. | Recovery removes the exception or repeats the full tutorial. |
| Escalation | Which known field combines with one new field later. | New rules keep arriving without rehearsal. |

Use this concrete chain in the contract:

```text
player receives the normal order
→ confirms the expected item and destination
→ notices one field is wrong before delivery
→ inspects, complies, refuses, delays, or leaves
→ sees a different customer/route/resource state
→ recovers with the violated rule still known
→ meets the same routine with one additional field changed
```

## Remove decorative job mechanics

| Decorative pattern | Why it fails | Repair |
| --- | --- | --- |
| Repeated fetches with no confirmation | The work is walking between markers. | Give the player a visible completion check and a later reason it matters. |
| Random wrong orders | The player cannot learn the rule. | Change one field and expose the contradiction before commitment. |
| Refusal always equals death | Agency is an illusion. | Trade access, time, trust, evidence, or threat attention across responses. |
| A timer starts before the routine is learned | Pressure hides the baseline. | Complete enough safe cycles for the player to form a prediction. |
| The exception exists only in dialogue | The player cannot inspect or test it. | Put the contradiction in an object, route, actor, or state the player can act on. |
| The loop resets without memory | Repetition becomes a chore. | Preserve the learned rule or a changed route while resetting only declared transient state. |

## 5. Verify

Test normal cycles, first exception, each supported choice, failure, retry, save/load, muted audio/subtitles, reduced intensity, and the canonical ending. A player should be able to explain what normal behavior was violated and why the next action matters.

## Handoff

Return the baseline loop, exception ladder, choice/state table, cues, recovery and reset rules, implementation evidence, and unknowns.
