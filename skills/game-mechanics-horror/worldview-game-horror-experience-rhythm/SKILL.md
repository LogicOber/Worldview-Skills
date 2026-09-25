---
name: worldview-game-horror-experience-rhythm
description: "Use when a horror game has good rooms or mechanics but its experience feels flat, rushed, exhausting, arbitrary, or like disconnected scares. Builds novice and experienced play clocks, a beat and attention ledger, question-driven escalation, pressure/cost/recovery/aftermath contracts, mechanic-owner handoffs, and verified first-play, failure, recovery, save, accessibility, and ending journeys."
---

# Worldview Game — Horror Experience Rhythm

## Call this Skill

```text
/worldview-game-horror-experience-rhythm
```

Everything after the command is the brief. Recover the current game before changing its pace. Do not diagnose flatness as “not enough enemies,” “not dark enough,” or “needs another jump scare” until the player’s current job, question, decision, and recovery are known.

## What this Skill owns

This Skill owns the order and duration of player attention:

```text
orientation → ordinary mastery → discrepancy → test → confirmation
→ pressure → cost → recovery → revised plan → payoff → aftermath
```

It defines when a focused mechanic is needed and what that mechanic must contribute. It does not own the focused mechanic’s state. Chase routes, sound events, entity truth, puzzle commits, save transactions, inventory custody, threat knowledge, and role permissions remain with their focused owners.

## Read only what the task needs

- Fill [the rhythm contract](templates/rhythm-contract.md) before moving rooms or adding encounters.
- Use [why rhythm fails](references/why-rhythm-fails.md) to diagnose a weak sequence.
- Read [the worked example](examples/the-silent-shift.md) for field depth, never as a plot or timing preset.
- Open a focused mechanic Skill only after the ledger names a real player decision for it.

## Lock sequence

1. **Evidence and clock lock:** source edits, runtime observations, estimates, and unknowns are separated.
2. **Promise lock:** the ordinary job, central question, pressure, cost, recovery, payoff, and aftermath agree.
3. **Beat lock:** every beat changes a question, action, or state and has a plausible duration range.
4. **Attention lock:** essential cues fit the player’s available attention and have accessible equivalents.
5. **Owner lock:** every state written by the sequence has one authoritative owner and explicit readers.
6. **Runtime proof lock:** first play, likely failure, recovery, save/load, accessibility, ending, and aftermath are run or marked unverified.

A change to an earlier lock invalidates dependent timings and test evidence.

## 1. Recover the experience without inventing time

Create four evidence labels:

| Label | Meaning |
| --- | --- |
| Measured | Produced by a current runtime trace or controlled playthrough. |
| Observed | Visible in supplied material, but duration or causality may be edited. |
| Estimated | A bounded design target awaiting runtime measurement. |
| Unknown | Not supported enough to use as a claim. |

Maintain three clocks when applicable:

- **Reference clock:** where a beat appears in an edit, storyboard, or external reference. It proves ordering or emphasis, not play duration.
- **Experience clock:** time spent navigating, working, reading, failing, replaying, recovering, and understanding.
- **Runtime clock:** actual event timestamps, state commits, saves, loads, and resets in the build.

For each current scene record the player’s job, location, known facts, expectation, available action, state change, feedback, likely next question, and evidence label. A cut is not a teleport. A montage is not a measured traversal. A commentator’s reaction is not a universal player emotion.

## 2. Lock the experience promise

Complete these sentences in project nouns:

```text
The player begins by doing ___ and learns that ___ normally happens.
The first contradiction changes only ___, so the player asks ___.
The player can test that question by ___.
Pressure makes the test costly because ___.
A likely mistake changes ___ but preserves ___.
Recovery lets the player revise the plan by ___.
The ending pays off the earlier ___ through the final action ___.
After the peak, the game shows that ___ persisted.
```

Reject a promise whose only verbs are walk, watch, read, and run. At least one early verb must establish authoritative state that a later beat can violate.

## 3. Budget real play time

Estimate a range rather than a false exact minute. For every chapter, budget separately:

- orientation and control learning;
- ordinary routine repetitions;
- navigation and optional inspection;
- reading or dialogue that cannot overlap another demand;
- testing a suspicion;
- active threat or pursuit;
- failure and restart;
- recovery and preparation;
- replayed mastered labor;
- ending action and aftermath.

Record novice, experienced, and accessibility-assisted ranges. Do not tune only with the developer’s shortest path. If the estimated chapter is 25 minutes but required tasks total 36 minutes before exploration or failure, change scope before polishing.

Routine lasts until the player can predict one result, not for a fixed universal count. Pressure ends while warning and counterplay still matter. Recovery lasts long enough to inspect consequence and form a new plan. Aftermath lasts long enough to answer who or what changed; a credits cut immediately after escape is not aftermath.

## 4. Build the beat ledger

For every beat, fill:

| Field | Required decision |
| --- | --- |
| Entry question | What is the player trying to understand or accomplish now? |
| Job and location | What verb occupies the player, and where? |
| Expected state | What does prior play teach should happen? |
| Contradiction or pressure | What exact field changes? |
| Primary attention | Navigation, object comparison, social judgment, sound, threat position, resource, or body state. |
| Secondary attention | At most one required concurrent demand unless tested otherwise. |
| Choice and input | What can the player actually commit? |
| State owner and delta | Which system writes what authoritative change? |
| Feedback | What makes the result readable through more than one channel? |
| Likely emotion | A design hypothesis tied to evidence, never a guaranteed feeling. |
| Control | What control is lost, retained, and regained? |
| Cost | Route, resource, relationship, body, evidence, time, or knowledge consequence. |
| Exit question | What becomes newly uncertain or actionable? |
| Duration | Novice/experienced range and evidence label. |

Two adjacent beats must not have identical job, question, attention, and consequence. If they do, merge them or change the second beat’s purpose.

## 5. Design escalation as a changing question

Escalation is not only more volume, speed, darkness, enemies, or health. Change what the player must decide:

1. **Notice:** is this different?
2. **Classify:** what changed and what remained stable?
3. **Test:** which explanation predicts a result?
4. **Commit:** what route, person, resource, or procedure should I trust?
5. **Pay:** what survives the decision?
6. **Reconstruct:** what does the consequence prove?
7. **Act with knowledge:** how does the learned rule change the final action?

A later beat may intensify an earlier verb, but it must add a changed condition or consequence. Repeating the same pursuit faster is not a new chapter.

## 6. Control player attention

At each interval choose one primary demand. Place subtitles, codes, directional audio, route signs, and threat warnings where the player can process them. Do not require simultaneous sprinting, navigation, subtitle reading, inventory manipulation, and a quiet off-screen cue unless the encounter has been tested for that exact load.

For every essential cue record:

```text
authoritative state → cue channel → player interpretation → supported action
→ equivalent cue → expiry/reset
```

When a task forces the camera away, record task position, visible and blind zones, expected blind seconds, active timers, and what may change while unseen. An anomaly placed in a blind interval must leave inspectable residue or another fair comparison.

## 7. Place recovery and aftermath

Recovery is an action, not empty silence. It may let the player compare evidence, reorganize inventory, treat a condition, contact a companion, reopen a shortcut, test an anchor, save safely, or rehearse the next route.

Recovery should preserve a meaningful cost. Full restoration after every peak erases consequence; punishment inside every refuge destroys contrast.

The aftermath records who is safe, injured, missing, changed, or uncertain; which evidence is private, shared, destroyed, or public; which route, institution, or protection changed; which relationship cannot return; and what ordinary action now has a different meaning.

## 8. Handle false closure, replay, and comedy deliberately

A false closure is allowed only when unresolved evidence already exists and the next section changes information regime, verb, or tempo. Do not roll credits and restart the same pressure.

Replay should compress mastered labor and stop at changed information. Record what auto-completes, what can be skipped, what must repeat for state safety, and what new decision justifies it.

Humor may restore agency, expose a contradiction, humanize a relationship, or release attention. A joke that dismisses the threat or repeats during grief undermines state rather than controlling rhythm.

## 9. Route focused mechanics with ownership

Select only mechanics the route can teach, combine, and verify.

| Beat decision | Focused owner |
| --- | --- |
| Learn and choose a pursuit path | `/worldview-game-chase-route-architecture` |
| Manipulate a threat belief, hide, then cross | `/worldview-game-lure-hide-escape` |
| Survive recurring long-horizon threat pressure | `/worldview-game-roaming-stalker-pressure` |
| Make sound change listener belief | `/worldview-game-sound-detection-and-distraction` |
| Let observation gate threat movement | `/worldview-game-observation-gated-stalker` |
| Compare a changed familiar place | `/worldview-game-horror-returning-place-escalation` |
| Establish and corrupt an ordinary rule | `/worldview-game-horror-mundane-routine-corruption` |
| Make duty force an incident decision | `/worldview-game-horror-procedural-duty-and-incident` |
| Test role, permission, or identity | `/worldview-game-horror-role-and-identity-pressure` |
| Interrupt and resume world-space work | `/worldview-game-threat-interrupted-puzzle` |
| Test evidence and hypotheses | `/worldview-game-evidence-based-entity-identification` |
| Distort presentation while preserving anchors | `/worldview-game-perception-distortion-and-trust` |
| Convert pressure in a refuge | `/worldview-game-safe-room-pressure-reset` |
| Change a route with a temporary obstacle | `/worldview-game-barricade-delay-and-route-choice` |
| Preserve knowledge through recurrence | `/worldview-game-death-loop-persistent-clues` |

For each handoff write: state read, state written, tunables owned, forbidden hidden facts, reset order, and evidence returned. Rhythm reads the result; it does not retune another owner’s state silently.

## 10. Implement in an order that protects the curve

1. Grey-box landmarks, route lengths, and recovery edges.
2. Implement the ordinary job and authoritative confirmation.
3. Implement the first contradiction and verification action.
4. Implement one pressure loop and informative failure.
5. Implement cost persistence and recovery.
6. Implement the ending payoff and aftermath before visual polish.
7. Measure novice, experienced, failure, and assisted journeys.
8. Add presentation by named state, then rerun timings.

Do not approve the curve from a storyboard or beauty capture. Presentation can change comprehension and traversal time, so final runs happen after integration.

## 11. Verify the experience

Run and record:

- first-time route without designer explanation;
- efficient route that skips optional material;
- likely novice mistake and attributable feedback;
- recovery route that uses new knowledge;
- lost-player route that misses one landmark;
- pressure with muted audio, subtitles, non-color cues, reduced motion, and assisted timing as supported;
- save/load before and after every major beat transition;
- retry without stale audio, threat, task, or cost state;
- ending using only previously taught verbs;
- aftermath with persistent world and relationship state.

Measure durations, retries, interaction locks, route margins, restart, load, and frame performance only when the runtime exposes them. Mark all other values estimated or unverified.

## Handoff

Return the completed rhythm contract, experience clock, beat ledger, attention budget, selected mechanic handoffs, implemented state list, verification traces, evidence labels, unresolved gaps, and the next smallest revision. Never call predicted emotion observed emotion or an edited reference duration measured play time.
