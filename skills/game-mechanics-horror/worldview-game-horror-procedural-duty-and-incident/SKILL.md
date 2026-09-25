---
name: worldview-game-horror-procedural-duty-and-incident
description: "Use when a professional, civic, family, or social responsibility should force the player to approach, inspect, preserve, report, repair, transfer, or abandon an incident while ordinary obligations remain live. Builds duty purpose, authority limits, live-task state, inspectable evidence, witness knowledge, response trades, retained work, responsibility shifts, recovery, persistence, and runtime proof."
---

# Worldview Game — Horror Procedural Duty and Incident

## Call this Skill

```text
/worldview-game-horror-procedural-duty-and-incident
```

Inspect current task, actor, schedule, route, evidence, save, and authority owners first. The player’s role must create a real reason to approach the incident and a meaningful cost for leaving ordinary work unfinished.

## What this Skill owns

```text
perform duty → confirm normal result → incident becomes eligible
→ obligation and authority constrain response
→ follow procedure / improvise / retreat-report / transfer
→ evidence, work, access, public safety, or responsibility changes
→ recover and perform the role under a revised rule
```

It owns duty-specific obligation, the actions authorized by the current procedure, task continuation, transfer, and audit. `/worldview-game-horror-role-and-identity-pressure` owns whether the actor legitimately holds the role or permission from which that procedural authority is derived. This Skill imports that permission, narrows it to the active duty, and records its use; it does not redefine the actor's role. It also does not own entity truth, puzzle commit state, wounds, hearing, identity presentation, or pursuit route.

## Lock sequence

1. **Duty-purpose lock:** the normal task earns a later gameplay function.
2. **Authority lock:** allowed, required, forbidden, and transferable actions are explicit.
3. **Live-work lock:** deadlines, partial progress, observers, and ownership survive interruption.
4. **Incident lock:** one inspectable break has eligibility, residue, and competing explanations.
5. **Response lock:** procedure, improvisation, retreat/report, and transfer have causal consequences.
6. **Audit lock:** failure, recovery, save/load, accessibility, ending, and aftermath prove the role remained meaningful.

## 1. Make the duty earn its time

The ordinary procedure must own at least one later function:

- rehearse an emergency route;
- teach an affordance used under pressure;
- prove a relationship or authorization;
- create protected evidence;
- establish a promise or public obligation;
- place a resource or change a system used later.

Write the normal transaction as actor, input, location, object, authoritative result, confirmation, observer, deadline, and state owner. If the player only follows markers and the result is never read again, redesign the duty.

## 2. Define authority, obligation, and recourse

For the player and every relevant actor record:

- actions they may, must, and must not take;
- locations, records, objects, and people they can access;
- who can override, transfer, witness, or audit their action;
- what happens if they refuse, report, or seek help;
- what recourse should work and why it may fail in this incident.

Authority is capability and history, not a uniform or job title. A legitimate permission can create danger; an unauthorized act can still be the humane response. Keep culpability separate from role.

## 3. Snapshot live work before the incident

Record the active task, step, location, remaining duration, deadline, protected evidence, public or dependent consequence, current operator, alternate operator, and persistence tier. Decide what continues while the player investigates and what pauses for a declared reason.

For an interaction that occupies hands or view, record cancel time, blind zones, live timers, and safe warning margin. Partial work must persist, revert to a stable commit, or transfer explicitly. Never reset it silently.

## 4. Author an incident the player can inspect

An incident needs:

```text
normal state → eligibility cause → visible break → inspection verb
→ residue or measurement → competing explanations → response window
```

Examples of useful breaks include a gauge disagreeing with a log, an object in an impossible custody state, a person outside an authorized route, a service completed without an operator, or a public request that conflicts with physical evidence. Do not announce the answer through narration.

Record every observer: location, sightline, attention state, fact witnessed, confidence, later response, and whether the player knows they were seen. An invisible witness cannot fairly drive later accusation.

## 5. Price response modes

Use only responses that fit the role:

- **Follow procedure:** preserves authority or evidence, but may cost time or access.
- **Improvise:** acts faster or reveals more, but may spend a resource, break custody, or create exposure.
- **Retreat/report:** preserves safety and transmitted knowledge, but leaves work, route, or dependent risk.
- **Transfer:** assigns a bounded subtask to an eligible actor or system, preserving ownership and last-known state.

For each response write exact task, evidence, access, observer, public/dependent, threat, resource, and schedule deltas. Paths may reconverge on one ending only through a visible causal event while retaining local consequences.

## 6. Shift responsibility after the incident

After the first response, define what “doing the job correctly” now means. The role may change from maintaining to containing, from serving to documenting, from rescuing to signaling, or from obeying procedure to proving it has been compromised. Preserve the original skill: the final action should use a route, tool, record, or authority learned during normal duty.

The end-of-shift audit records completed, abandoned, transferred, falsified, damaged, and still-live tasks; evidence custody; observers; public effect; and the actor now responsible.

## 7. Route focused systems

| Need | Owner |
| --- | --- |
| Candidate tests and evidence provenance | `/worldview-game-evidence-based-entity-identification` |
| Interrupt/cancel/resume transaction | `/worldview-game-threat-interrupted-puzzle` |
| Role, identity, and permission conflict | `/worldview-game-horror-role-and-identity-pressure` |
| Acoustic evidence or alert | `/worldview-game-sound-detection-and-distraction` |
| Injury and treatment | `/worldview-game-wounds-infection-and-treatment` |
| Designed pursuit route | `/worldview-game-chase-route-architecture` |
| Cross-character task and evidence handoff | `/worldview-game-character-handoff-and-shared-evidence` |

Record state read, state written, owner, reset order, and returned evidence for each handoff. Duty may trigger another system but does not redefine it.

## 8. Implement and verify

Build normal duty first, then one incident, at least two responses, recovery, revised duty, and canonical ending. Use stable task and actor IDs. UI reads authoritative state. Save task ownership, commits, evidence custody, and observer knowledge separately.

Run:

- normal procedure and confirmation;
- incident eligibility before/after required baseline;
- every response and local consequence;
- interruption/cancel at every task phase;
- alternate operator success, delay, failure, and missing-path fallback;
- observer present, absent, occluded, and distracted;
- deadline expiry while investigating;
- wrong response and recovery;
- save/load before incident, during partial work, after transfer, and after consequence;
- restart without duplicate completion, evidence, or accusation;
- accessibility variants and canonical ending from two response histories.

## Handoff

Return duty/authority tables, live-work snapshots, incident evidence, witness ledger, response/state matrix, transfer history, revised-role rule, end-of-shift audit, implementation evidence, runtime traces, gaps, and next revision.
