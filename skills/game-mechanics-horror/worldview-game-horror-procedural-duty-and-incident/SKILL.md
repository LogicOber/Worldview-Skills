---
name: worldview-game-horror-procedural-duty-and-incident
description: "Use when a horror game should make the player's job—driving, patrol, rescue, repair, delivery, inspection, or recording—the reason an abnormal scene must be approached. Produces a duty contract, teachable procedure, inspectable incident, response choices, evidence and route consequences, recovery, and verification. Do not use for a non-interactive cutscene or a chase that has no procedural responsibility."
---

# Worldview Game — Horror Procedural Duty and Incident

## Call this Skill

```text
/worldview-game-horror-procedural-duty-and-incident
```

Everything after the Slash command is the role and incident brief. Recover project authority before adding a new checklist, evidence system, or vehicle controller.

## What this Skill owns

```text
ordinary duty → checklist/rule learned → incident interrupts duty
→ player inspects evidence → follow / improvise / retreat
→ responsibility changes → route and threat state respond
```

The incident must be something the player is obligated or motivated to investigate. A monster reveal without a duty is a different design.

## Lock sequence

### 1. Duty and authority
Close when the player role, normal checklist, authority, and protected evidence are concrete.

### 2. Incident evidence
Close when one abnormal detail is visible, inspectable, and connected to a new question.

### 3. Response modes
Close when procedure, improvisation, and retreat each alter state, route, or evidence.

### 4. Recovery and persistence
Close when the incident consequences survive or reset at the declared boundary without soft-locking.

### 5. Runtime proof
Close after normal duty, incident, responses, evidence, failure, accessibility, save/load, and ending are tested or marked unverified.

### 6. Handoff
Close when implementation, proposal, and unknowns are separated.

## 1. Define authority and duty

Write:

- who the player is in the fiction;
- what they are authorized to touch, report, repair, or ignore;
- what a normal successful procedure looks like;
- what evidence the job protects;
- what failure means before any supernatural element appears.

Teach only actions that later matter: stop, photograph, identify, repair, call, carry, check, or return.

## 2. Author the incident

The incident needs one visible anomaly and one inspectable consequence. A collision, missing person, wrong delivery, broken lamp, corrupted message, or impossible object should make the player ask a new question.

For the incident record:

```text
normal expectation → visible break → sound/camera cue
→ evidence surface → available response → consequence
```

Do not make the anomaly readable only through a narrator. Let the player look, move, compare, or perform the duty.

## 3. Give three response modes

Use the modes appropriate to the role:

- **Follow procedure:** safer authority, slower route, less immediate knowledge.
- **Improvise:** faster or more revealing, but spends resource or creates exposure.
- **Retreat/report:** preserves the player but leaves a state, clue, or route cost.

The modes should converge on the canonical ending while preserving different evidence, relationships, timing, or recovery positions.

## Audit why the player approaches the incident

The incident must be a playable responsibility, not a cutscene that happens near a professional costume:

| Incident check | Required record | Rewrite when |
| --- | --- | --- |
| Duty baseline | The ordinary task, authority, protected evidence, and completion signal. | The role has no action the player would perform before danger. |
| Visible break | One abnormal object, person, route, sound, or record the player can inspect. | The narrator declares the incident while the player only watches. |
| Obligation | The rule, person, contract, or consequence that makes inspection worthwhile. | The player approaches only because the next marker says so. |
| Evidence action | Stop, photograph, identify, repair, call, carry, compare, or return. | “Investigate” has no concrete input or observable result. |
| Response trade | Follow procedure, improvise, or retreat with different state consequences. | One response is correct and the others are decorative. |
| Responsibility shift | What “doing the job correctly” means after the anomaly. | The incident ends the job instead of changing its meaning. |
| Recovery | How the player preserves a useful fact after a wrong response. | Failure deletes evidence or forces an unrelated reload. |

Write the player-facing chain:

```text
player completes the ordinary duty
→ sees an inspectable break
→ knows why ignoring it has a cost
→ chooses procedure, improvisation, or retreat
→ changes evidence, access, authority, route, or threat state
→ receives a recoverable consequence
→ performs the duty again under the new rule
```

## Remove fake procedural horror

| Fake pattern | Why it fails | Repair |
| --- | --- | --- |
| Job title with no job action | The role is flavor text. | Teach one repeatable procedure before the incident. |
| Accident as a video-only reveal | The player has no investigative ownership. | Put the evidence in reach and make inspection alter state. |
| Checklist with no authority | The steps do not constrain anything. | Define what the player may touch, report, repair, or refuse. |
| Retreat treated as cowardice | The system punishes the safe information strategy. | Let retreat preserve knowledge while costing time, access, or trust. |
| Monster appears after the incident with no causal link | The duty is discarded when horror starts. | Make the duty expose, contain, redirect, or worsen the threat. |
| Procedure always overrides improvisation | There is no judgment under pressure. | Make improvisation faster, louder, less authoritative, or more informative. |

## 4. Connect to detailed Skills

Route to entity identification when the incident requires a testable candidate matrix; interrupted puzzle when the duty is interrupted by danger; wounds when the incident creates bodily cost; sound when the evidence is acoustic; chase architecture only after the duty has become a route pressure.

## 5. Verify

Run the normal procedure, first incident, all responses, evidence inspection, failure/retry, save/load, accessibility, and ending. Confirm that the player can say why they are still involved after the incident.

## Handoff

Return duty/authority, incident evidence, response/state table, route consequences, recovery, implementation proof, and unknowns.
