---
name: worldview-game-horror-experience-rhythm
description: "Use when a horror game has rooms or mechanics but its player experience feels flat, rushed, exhausting, or like disconnected scares. Builds a dual-clock experience timeline, attention budget, pressure/cost/recovery/payoff rhythm, sensory cue contract, and verified first-time, failure, recovery, and ending beats. Do not use for a single sound, chase, puzzle, or save mechanic; route those to their focused Skills."
---

# Worldview Game — Horror Experience Rhythm

## Call this Skill

```text
/worldview-game-horror-experience-rhythm
```

Everything after the Slash command is the brief. Inspect the existing route and mechanics before proposing pacing changes. Do not solve flatness by adding more rooms, louder sounds, or more enemies before identifying what the player is supposed to notice and decide.

## What this Skill owns

It owns the sequence of player attention:

```text
orientation → ordinary job → contradiction → confirmation
→ pressure → cost → recovery → payoff or changed question
```

It does not own the implementation of a chase, sound system, puzzle, save system, or threat AI. It names the decision each beat needs and routes detailed implementation to the existing focused Skill.

## Read next

- Read [templates/rhythm-contract.md](templates/rhythm-contract.md) before editing a route.
- Read [references/why-rhythm-fails.md](references/why-rhythm-fails.md) when diagnosing fatigue, dead air, or disconnected scares.
- Read [examples/the-silent-shift.md](examples/the-silent-shift.md) only for field shape.
- Read the selected mechanic Skill only after the beat ledger names its player decision.

## Lock sequence

### 1. Promise
Write the ordinary job, contradiction, pressure, cost, recovery, and payoff before moving a beat.

### 2. Beat map
Close when the dual-clock timeline names the player's task and question for every beat.

### 3. Attention contract
Close when each interval has a primary demand, anchor, sensory cue, and accessible equivalent.

### 4. Recovery contract
Close when every pressure peak has a consequence and an interactive way to reorganize knowledge.

### 5. Runtime proof
Close after first-time, failure, recovery, save/load, and ending journeys are run or marked unverified.

### 6. Handoff
Close when implemented, proposed, and unknown beats are separated in the report.

## 1. Recover the experience

Write three separate records:

| Clock | Meaning | Evidence |
| --- | --- | --- |
| Source time | Timestamp in an edited video or reference recording. | Frame, caption, or cut. |
| Experience time | Time a player spends exploring, acting, failing, and recovering. | Runtime trace or explicitly bounded estimate. |
| Implementation time | Event order, state changes, and save boundaries in the build. | Logs, state IDs, or controlled journey. |

Never turn a cut into a measured traversal. Write `unknown` when a retry or omitted segment cannot be recovered.

For each existing beat answer:

1. What is the player's current job?
2. What can the player see, hear, remember, or infer?
3. What decision is available now?
4. What changes after the decision?
5. What tells the player that the change happened?
6. Where can the player recover, revise, or form the next question?

If a scene has no job, decision, state change, or question, classify it as presentation rather than gameplay and decide whether it earns its time.

## 2. Lock the rhythm promise

Write one sentence for each:

```text
ordinary baseline:
first contradiction:
rule the player can test:
pressure that consumes attention:
cost that survives the peak:
recovery action:
earlier fact paid off by the ending:
```

The first contradiction should violate one known variable, not every rule at once. The first pressure should test a rule the player had a chance to notice. The cost should alter a route, resource, relationship, body state, or knowledge. Recovery should be interactive and should not erase the cost.

## 3. Budget attention

At every interval choose one primary attention demand:

- navigation and landmark memory;
- social reading or dialogue choice;
- object inspection or evidence comparison;
- route timing and threat position;
- resource or bodily condition;
- camera, sound, or visibility interpretation.

One secondary demand is usually enough. If a beat asks the player to read a subtitle, hear a directional cue, follow a moving threat, solve a code, and remember a landmark at the same moment, move or simplify one demand. Accessibility assists should reduce intensity while preserving the primary decision.

## 4. Build the beat ledger

Minimum beats:

1. **Orientation** gives control, a landmark, and a job.
2. **Invitation** presents a low-cost irregularity.
3. **Confirmation** repeats it with one changed fact.
4. **Complication** makes progress alter a route, relationship, resource, or interpretation.
5. **Pressure** asks for action with incomplete information.
6. **Cost** makes the decision matter.
7. **Recovery** gives a safe-enough action that reorganizes knowledge.
8. **Payoff** returns an earlier place, rule, object, or relationship in changed form.

Short games may combine beats, but do not remove both invitation and recovery. A player cannot learn a threat that only appears at its peak, and cannot enjoy a peak that never changes the next decision.

## 5. Connect sensory cues to state

For every camera, light, audio, subtitle, UI, or vibration cue record:

```text
state that causes it → player interpretation → action it supports
→ accessible equivalent → reset/expiry
```

Audio activity is not automatically fear. A loud moment can announce a transition, mask a route, reveal a source, or mark a recovery. Test silence, overlap, occlusion, subtitle timing, muted audio, and no-device behavior.

## 6. Route focused mechanics

| Beat need | Route |
| --- | --- |
| Designed pursuit with main, risky, failure, and recovery routes | `worldview-game-chase-route-architecture` |
| A false sound, hiding place, and timed escape | `worldview-game-lure-hide-escape` |
| A returning room or hub changes physical/social meaning | `worldview-game-horror-returning-place-escalation` |
| A normal service, study, sleep, driving, or cooking loop breaks | `worldview-game-horror-mundane-routine-corruption` |
| A job turns an incident into an inspection decision | `worldview-game-horror-procedural-duty-and-incident` |
| A person, authority, or role becomes uncertain | `worldview-game-horror-role-and-identity-pressure` |
| A puzzle is interrupted or progress must recover | `worldview-game-threat-interrupted-puzzle` |

Do not route a beat until its player decision is written in one sentence.

## 7. Verify the curve

Run named journeys:

- first-time player reaches the first contradiction;
- player recognizes the confirmed rule before the peak;
- deliberate wrong decision produces an attributable cost;
- recovery lets the player form a different plan;
- the same state survives reload and restart as declared;
- the ending reuses an earlier question or anchor.

Measure only what the runtime exposes: time in beat, retries, route length, audio/camera event order, frame time, and load time. A commentary reaction or a beautiful still cannot prove the curve.

## Handoff

Return the rhythm contract, selected mechanic routes, timeline, sensory cue list, test journeys, evidence, and unresolved gaps. Say which beats are implemented, which are grey-boxed, and which are proposals.
