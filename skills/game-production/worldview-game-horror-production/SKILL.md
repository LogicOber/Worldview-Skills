---
name: worldview-game-horror-production
description: "Turn a short horror-game premise into a complete, playable, single-ending experience with a readable fear rhythm, memorable spaces, concrete player decisions, connected mechanics, route contracts, audio/camera cues, failure recovery, and verified delivery. Use when the user wants the Agent to fill in the missing horror-game design instead of listing isolated mechanics. Best suited to GPT-6 Astra with Max reasoning or Ultra orchestration, but remains executable by any compatible Agent."
---

# Worldview Game — Horror Production

## Call this Skill

```text
/worldview-game-horror-production
```

Treat everything after the Slash command as the creative brief. A premise, a protagonist, a place, a monster image, a desired fear, or one reference screenshot is enough to begin. Do not make the user enumerate every room, NPC, item, sound, puzzle, route, or scare. Expand the brief into a coherent production contract, then ask only questions whose answers would change the product or require authority.

## The result this Skill owns

This Skill is the lead for a complete horror-game experience. It does not replace the detailed mechanic Skills; it decides when one is needed, gives it a concrete job in the route, and checks that the pieces form one playable experience.

It owns:

1. the player-facing fear promise and canonical ending;
2. the experience timeline from first control to ending;
3. the map grammar, chapter route, return states, and landmarks;
4. the threat's knowledge, perception, commitment, and recovery rules;
5. the selection and composition of mechanics;
6. the camera, light, sound, interface, asset, and accessibility contracts;
7. the grey-box route and implementation order;
8. failure, retry, save, reset, and ending verification;
9. a truthful handoff that says what is built, what is proposed, and what remains unverified.

The output may be a complete playable game, a playable chapter, or an implementation-ready package when no runtime is available. Never call a design-only package playable.

## Read only the companion files this task needs

- Read [templates/horror-production-contract.md](templates/horror-production-contract.md) before broad design or map work. Fill an existing project contract instead of creating a parallel one.
- Read [references/why-horror-games-fail.md](references/why-horror-games-fail.md) when a concept is becoming a sequence of errands, a flat chase, a large empty map, or a stack of unconnected scares.
- Read [examples/the-last-service-floor.md](examples/the-last-service-floor.md) only when a filled fictional example clarifies the expected level of detail. Its setting and values are not defaults.
- Read [SOURCE.md](SOURCE.md) when auditing originality or explaining the boundary between supplied material and repository-authored decisions.
- Read the detailed Skill named in the routing table only when its contract is selected. Do not load all horror mechanics speculatively.

## Step 1 — Recover the actual brief

Write this intake before inventing content:

```markdown
## Declared
- Story, protagonist, setting, desired fear, and ending intention:
- Perspective, target platform, language, duration, and delivery:
- Existing project, controls, assets, mechanics, and runtime:
- Content boundaries, accessibility needs, and external-service permission:

## Observed
- What the project actually runs:
- Existing map, player controller, camera, save, audio, and interaction authority:
- Supplied screenshots, videos, or visual references and their exact scope:
- Missing evidence:

## Assumed
- Reversible choices made to keep moving:
- Why each assumption fits the brief:
- What would reopen the decision:
```

If the user wants one ending, use one canonical ending. Death, capture, failed attempts, degraded states, and knowledge changes are not alternate endings unless the user explicitly requests them as such.

If the user names a real person, company, living creator, or public controversy, separate factual research from fictional invention. Use composite names, original characters, and a clear entertainment/research boundary when appropriate. Do not make a recognizable real person the unmodified antagonist or copy their likeness, speech, or private information.

## Step 2 — Lock the five-part horror promise

Write one sentence for each field:

| Part | Question | Good answer |
| --- | --- | --- |
| Player question | What does the player need to understand? | “Which of the three service doors is still connected to the dry stair?” |
| Pressure | What makes understanding difficult now? | “The threat repeats the last sound from a different corridor after a delay.” |
| Decision | What can the player choose? | “Stay quiet and take the long route, or make one loud action to open the short route.” |
| Consequence | What changes visibly? | “The pump drains the stair and moves the threat's search boundary.” |
| Recovery | How can the player learn and try again? | “A protected room shows the sound order and keeps the opened shortcut.” |

If a proposed scare has no player question, decision, consequence, or recovery, classify it as a cinematic beat and do not count it as gameplay.

## Step 3 — Build the experience timeline

Use two clocks when the source is edited and three when the project is being implemented:

- **Source time:** the timestamp in a recording or reference edit.
- **Experience time:** the estimated time a player spends in the actual game, including exploration and retries when known.
- **Implementation time:** the runtime event order used for tests and saves.

For every beat, record:

```text
player location → visible information → player question → available action
→ state change → sensory feedback → threat pressure → consequence
→ recovery or next question
```

Never turn a cut into a claimed teleport, a montage into a measured route, or a commentary reaction into proof of a private player emotion. Use `unknown` and list the evidence gap.

### The minimum rhythm

The first complete route should contain, in an order appropriate to the story:

1. **Orientation:** the player learns movement, a landmark, and an immediate job.
2. **Invitation:** a low-cost irregularity asks the player to inspect or choose.
3. **Confirmation:** the irregularity repeats with one changed fact.
4. **Complication:** progress changes a route, relationship, resource, or interpretation.
5. **Pressure:** the player must act with incomplete information.
6. **Cost:** an error, sacrifice, injury, noise, lost route, or changed state matters.
7. **Recovery:** the player regains enough agency to form a new plan.
8. **Payoff:** an earlier landmark, rule, object, or relationship returns in a changed state.

This is a design checklist, not a rigid eight-room formula. Combine beats when the play length is short, but do not remove every quiet beat.

## Step 4 — Design the map as a memory system

Before detailed art, draw a graph and a player-facing landmark list. Every important location must have at least one function:

- teach a rule;
- test a rule under pressure;
- change a route or state;
- provide a safe or semi-safe recovery;
- reveal a relationship or evidence;
- pay off a question;
- stage the ending.

For each landmark, write:

```text
stable identity → first meaning → changed-return meaning → route edges
→ visible affordance → hidden implementation state → failure/recovery behavior
```

Use small, repeatable spatial vocabulary: a colored pipe, a broken clock, an unusual ceiling, a numbered hatch, a sound behind a grille, a visible exterior landmark, or a tactile door. Do not fill a large building with unique decoration that the player cannot use to navigate.

### Return-state rule

A return is a new beat only if at least one of these changes:

- an object or obstruction;
- a character's position, relationship, or behavior;
- a light, sound, weather, or visibility boundary;
- the legal route or shortcut;
- the threat's knowledge or search rule;
- what the player now understands about the place.

If none changes, combine the traversal or remove it.

## Step 5 — Choose mechanics by player decision

Select no more mechanics than the route can teach, combine, and verify. Use this table before routing:

| Desired player decision | Route to detailed Skill |
| --- | --- |
| Shape orientation, anomaly, pressure, cost, recovery, and payoff across a chapter | `/worldview-game-horror-experience-rhythm` |
| Make a familiar room or social hub change meaning on every return | `/worldview-game-horror-returning-place-escalation` |
| Turn serving, driving, studying, sleeping, cooking, or playing into a corrupted routine | `/worldview-game-horror-mundane-routine-corruption` |
| Make the player's professional or social duty force an inspection after an incident | `/worldview-game-horror-procedural-duty-and-incident` |
| Make role, recognition, authority, or identity a fair social threat | `/worldview-game-horror-role-and-identity-pressure` |
| Choose a main, risky, failure, and recovery path through a designed pursuit | `/worldview-game-chase-route-architecture` |
| Create a false point of interest, break observation, hide, and escape | `/worldview-game-lure-hide-escape` |
| Make a threat advance only when observation is invalid | `/worldview-game-observation-gated-stalker` |
| Make surfaces, actions, or deliberate noise alter what a listener believes | `/worldview-game-sound-detection-and-distraction` |
| Maintain pressure through a connected roaming threat without teleporting | `/worldview-game-roaming-stalker-pressure` |
| Give the player a protected place to reorganize without erasing danger | `/worldview-game-safe-room-pressure-reset` |
| Buy time by changing routes with a barricade or obstruction | `/worldview-game-barricade-delay-and-route-choice` |
| Make limited carrying space change preparation and recovery | `/worldview-game-scarce-inventory-triage` |
| Make an item open a remembered gate and transform the return route | `/worldview-game-key-item-backtracking` |
| Make saving a survival decision with safe crash recovery | `/worldview-game-limited-save-risk` |
| Make injury change movement, attention, treatment, or route cost | `/worldview-game-wounds-infection-and-treatment` |
| Repair a system while threat and world state react | `/worldview-game-restore-power-under-pressure` |
| Read bounded information about a nearby hidden threat | `/worldview-game-signal-proximity-tracking` |
| Distinguish an entity through positive, negative, and inconclusive tests | `/worldview-game-evidence-based-entity-identification` |
| Continue or retreat from a puzzle when danger interrupts it | `/worldview-game-threat-interrupted-puzzle` |
| Make selected cues unreliable while keeping fair anchors | `/worldview-game-perception-distortion-and-trust` |
| Preserve useful knowledge through a bounded death loop | `/worldview-game-death-loop-persistent-clues` |
| Combine partial information between players under pressure | `/worldview-game-asymmetric-information-cooperation` |

For every selected row, complete this sentence:

> The player decides **[choice]** because **[information]**; this changes **[state]**, which alters **[route/knowledge/cost]**; the player can learn it through **[cue]** and recover through **[reset/shortcut/safe beat]**.

If the sentence cannot be completed, do not route the mechanic yet.

## Step 6 — Write the threat knowledge contract

The threat must not silently read the player's transform unless omniscience is the intended subject of the game. Define each channel:

| Channel | Receives | Does not receive | Range/age/occlusion | Player-facing proof |
| --- | --- | --- | --- | --- |
| Sight | | | | |
| Sound | | | | |
| Trace/disturbance | | | | |
| Scripted/supernatural rule | | | | |

Then define the state transitions:

```text
idle → suspicion → commitment → search → reacquisition or release
```

Each transition needs a cause, a timestamp, an expiry, a route effect, a cue, and a reset rule. A loud noise may move the threat to a source location; it should not secretly reveal the player's current location unless that is explicitly the rule and the player can understand it.

## Step 7 — Design camera, audio, light, and interface as gameplay

For each pressure beat, state what the player can and cannot know from the camera. Limited visibility is fair only when another cue carries the essential information.

For audio, record:

```text
source → location → intensity → propagation/occlusion → player meaning
→ threat meaning → subtitle/accessibility equivalent → reset/cooldown
```

Silence, room tone, delayed repetition, directional noise, a missing expected sound, and a recovery sound are different design tools. Do not use loudness as a substitute for a state change. If microphone input is requested, provide permission, calibration, no-device behavior, a deterministic fallback, and a path that never stores or uploads raw speech.

For light and interface, name the decision they support: route landmark, threat state, evidence confidence, resource cost, or recovery. Never use a flash, color, or vibration as the only required signal when an accessible alternative is possible.

## Step 8 — Build in the order that protects the experience

1. Write the contract and experience timeline.
2. Grey-box the route with stable landmarks and legal collision.
3. Implement the player job and first safe teaching beat.
4. Implement one pressure loop with visible feedback and reset.
5. Implement the changed return and recovery beat.
6. Add only the selected mechanics, reusing existing project authority.
7. Test failure, retry, save/load, and ending before expensive art.
8. Replace the most visible proxies with original assets and coherent materials.
9. Add camera, lighting, audio, UI, effects, and performance tuning by named states.
10. Capture the first-time route, a failure/recovery route, and the ending.

If an image model, Blender MCP, another DCC, an engine tool, an API, or a profiler is available, test one minimal call before planning a batch. Record capability, authorization, provider, output, and fallback in the contract. A generated floor plan is a communication aid; runtime collision, navigation, timing, and captures are the evidence.

## Step 9 — Verify the actual experience

Run these journeys in the real runtime when possible:

| Journey | Must prove |
| --- | --- |
| First-time route | The job, next decision, landmarks, and feedback are understandable without hidden notes. |
| Deliberate wrong choice | The failure has a visible cause, an attributable consequence, and a fast retry. |
| Recovery route | The player can use new knowledge or a changed state rather than repeat a blind attempt. |
| Resource edge | Scarcity, injury, sound, or puzzle progress changes the intended decision and resets honestly. |
| Save/load | No door, threat, clue, audio event, or checkpoint state leaks or vanishes unexpectedly. |
| Accessibility path | Reduced intensity, subtitles, color alternatives, input assistance, and no-microphone mode preserve the decision. |
| Ending | The final state pays off an earlier rule, place, object, or relationship and does not introduce an unlearned mechanic. |

Measure player route time, threat route time, interaction time, restart time, frame time, and loading where the runtime exposes them. Do not invent probabilities or performance numbers. A diagram, beauty frame, or title screen cannot prove a playable game.

## Step 10 — Deliver a truthful handoff

Return:

```text
Horror production handoff
- creative promise:
- canonical ending:
- playable entry/build/URL:
- implemented route:
- selected mechanics and their contracts:
- verified journeys:
- runtime and performance evidence:
- known limitations and unverified claims:
- external tools and authorization boundaries:
- next smallest valuable improvement:
```

Do not call a proposal an implementation, a contact sheet a playtest, a generated image a map proof, or a single successful run a complete game.
