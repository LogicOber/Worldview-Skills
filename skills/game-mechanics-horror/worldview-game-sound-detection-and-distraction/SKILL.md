---
name: worldview-game-sound-detection-and-distraction
description: "Use when a game needs sound to create playable evidence for threats, witnesses, helpers, or several listeners at once. Preserves immutable source provenance, propagation, intended and unintended reception, environmental versus entity authorship, silence and false-localization rules, listener memory, accessible equivalents, and a measurable route or help opportunity. Produces an implementation when a runtime exists plus contract, tunables, save/load, and verification. Do not use for decorative audio, speech processing, a visual lure, an omniscient chase, or a universal acoustics engine."
---

# Worldview Game — Sound Detection and Distraction

## Call this Skill

Use the stable public command:

```text
/worldview-game-sound-detection-and-distraction
```

Treat everything after the command as the project and encounter brief.

## Route the companion files

- Fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same decisions.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when checking fit, choosing a propagation or priority tradeoff, or tuning pressure. Skip it for a narrow implementation task with an already locked contract.
- Read [the-resonant-vault.md](examples/the-resonant-vault.md) only when a completed fictional example clarifies a field. Its intensities, formula, and timing are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate supplied facts from repository decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the actual problem

“The enemy hears the player” hides several different decisions. An action produces an event. The world modifies that event. A listener may or may not receive enough evidence. Received evidence changes memory and behavior. The player needs feedback that makes those consequences learnable without exposing the entire simulation.

If those stages are collapsed, common failures follow. A listener reads the player's live transform after hearing a decoy. A closed door changes the audio mix but not AI hearing. A quiet footstep and a dropped machine create identical reactions. Repeated animation callbacks emit five events for one action. A distraction turns the enemy's head but never commits it far enough to open a route.

Build the mechanic as a causal chain:

```text
action -> sound event -> propagation -> reception -> memory -> response -> opportunity
```

Each arrow needs a declared rule and observable evidence. Audio playback supports the experience, but the audible waveform is not automatically the gameplay event.

## Use and routing boundaries

Use this Skill when making, avoiding, or placing sound is central to a complete playable decision. It may be the foundation of one encounter or a bounded subsystem already required by a project.

Do not use it for:

- ambient sound, music, mixing, dialogue, or voice recognition without AI hearing;
- a projectile or light lure whose sound has no gameplay role;
- an enemy meant to know the player's position through supernatural or shared information;
- a cinematic sound cue with no interactive response;
- a physically exhaustive acoustic solver when the game needs only stable, legible rules;
- an entire stealth framework before one source, one listener, one map, and one objective work.

If the user requests a broad horror experience, complete the sound decision first and expose clean integration boundaries for pursuit, hiding, or roaming pressure. Do not silently implement all those systems inside this Skill.

## What the user can give

Accept any combination of:

- an existing repository and authorized paths;
- player controller, locomotion modes, interaction code, and surface data;
- a map or grey-box with walls, doors, floors, vents, stairs, and zones;
- one listener with navigation, perception, animation, or state code;
- current audio events, clips, middleware, subtitle policy, or haptics;
- a proposed distraction object or environmental machine;
- objective, escape route, difficulty, accessibility, and network requirements.

Do not ask the user to invent decibel values, hearing probabilities, or search durations without evidence. Inspect the project, propose comprehensible units, measure the route, and state judgments.

## What the user receives

Deliver as much as the project permits:

1. A reuse inventory covering sound emitters, surfaces, listener, navigation, doors, audio playback, input, objective, and restart.
2. A contract separating verified project facts, user requirements, proposals, and design judgments.
3. A normalized sound-event schema and propagation model appropriate to the map.
4. A listener memory and state model that does not secretly follow hidden transforms.
5. A deliberate distraction with a cost or constraint and a route that exploits its commitment.
6. A working encounter in the existing runtime when available, including success, failures, and restart.
7. Tunable data, accessibility behavior, optional network authority, and saved behavioral evidence.

Do not call a document playable, a waveform an AI test, or a single successful run balanced.

## Lock the hearing problem before implementation

Close these locks in order. Later work can tune only the declared mutable fields. If code, map inspection, or play reveals a contradiction, reopen the earliest affected lock and invalidate every dependent formula, state transition, route trace, and claim. Ask one grouped question only when project evidence cannot resolve incompatible creative meanings of sound.

| Lock | Question resolved | Locked artifact | Locked when | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Emission-event lock** | Which causal actions emit one event, with which captured origin, identity, profile, and cadence? | Event schema, emitter table, and debounce/sequence rules | Every included action maps to one authoritative emission boundary and duplicate handling is testable | Source intensity and cadence inside recorded source roles | A new emitter path, moving-source rule, or ownership model reopens it; invalidate propagation, priority, persistence, and duplicate-event evidence |
| **Propagation-map lock** | How does each event reach a listener through rooms, barriers, doors, and masking state? | Selected propagation model, zone/link graph, barrier table, and received-intensity equation | Visual, collision, door, and propagation states agree and threshold boundary queries can be reproduced | Attenuation/falloff values within tested topology | A connector, barrier category, door state owner, or propagation method changes; discard hearing thresholds, redirect scores, and opportunity traces |
| **Listener-decision lock** | What evidence is received, remembered, scored, retained, redirected, or overridden? | Reception predicate, memory record, exact score formula, switch comparator and margin, tie rule, and state graph | Below/above reception plus competing-event cases resolve deterministically without hidden transforms | Threshold, score weights, age rate, and switch margin within verified ranges | A knowledge field, sensory override, score term, comparator, or tie order changes; invalidate response code, competing-event tests, and downstream timing |
| **Distraction-opportunity lock** | Which device placement and listener commitment open which player route for how long? | Landmark graph, device constraint, commitment equation, player-time equation, and success/failure boundaries | Legal placement, navigation, sight, objective interaction, and positive/negative timing cases are measured | Device resource count and named timings inside verified ranges | Moving the source, junction, objective, listener route, or changing action duration reopens it; discard success/failure and balance evidence |
| **Hearing-authority proof lock** | Who owns events, hearing, state, resources, and outcomes, and which evidence supports each claim? | Authority table, restart inventory, accessibility information map, and verification matrix | Single-player or network ownership, supported channels, restart, and evidence paths are explicit | Presentation and evidence format without extra knowledge | Network topology, supported information channel, save boundary, or device owner changes; rerun authority, accessibility, persistence, and restart checks |

## Recover the source project before adding systems

This recovery closes the factual inputs to the **Emission-event lock** and **Propagation-map lock** before code is changed.

Inspect local instructions and the project's established build, run, and test commands. Locate the authoritative simulation step, player movement events, animation callbacks, material or surface system, listener controller, navigation, collision layers, door state, audio layer, and restart flow. Search only within the user's scope.

Record intake under four headings:

```markdown
## Verified project facts
- <path, observed behavior, and evidence>

## User requirements
- <binding requested relationship>

## Proposed additions
- <new event, rule, asset, or value>

## Design judgments
- <choice among alternatives and why>
```

An existing footstep clip is a fact. Treating stone as louder than fabric is a proposal until the project or brief makes it true. Making closed metal doors strongly attenuate sound is a judgment. Keep these categories visible so later tuning does not rewrite the fictional world by accident.

Inventory before generating or downloading anything. Reuse project audio where licensed and suitable. A labeled click, pulse, or debug ring can prove a rule before polished sound exists. Do not make an external asset or API call unless it is available, authorized, and actually necessary.

If no project exists, create the smallest runnable proof supported by the environment: two connected spaces, one door or barrier, two surfaces, one listener, one risky objective, one reusable or replenishable distraction, and one crossing that can succeed or fail.

## Represent sound as immutable evidence

Use only the schema and causal boundaries in the **Emission-event lock**.

One causal action should create one authoritative event. A practical event record contains:

```text
event_id          stable unique or monotonic identifier
source_actor_id   actor/system that caused the event
emitter_id        object responsible for the action
source_kind       footstep, impact, device, door, voice, environment, other
origin            world position or propagation node at emission time
base_intensity    normalized gameplay strength in declared units
band_or_profile   optional propagation/listener category
started_at        authoritative simulation time
duration          impulse or sustained interval
sequence          protects against duplicates and stale network events
tags              faction, intentional-decoy, surface, scripted, accessibility
intended_listeners optional design intent; never forces reception
```

The origin is captured when the event occurs. It does not remain attached to the player unless the source is explicitly sustained and moving. A thrown decoy reports its landing or emitting device position, not the player's hand after release.

Separate gameplay intensity from audio playback volume. Mix settings, dynamic range, headphones, and an absent audio device must not change AI behavior. The same event may drive audio, captions, haptics, particles, and listener logic, but each consumes the event for its own purpose.

Debounce at the causal boundary. One animation foot plant should emit once even if animation, collision, and audio callbacks all fire. Held interactions need a declared cadence rather than one event per render frame. Network retries must not create new event identities.

Provenance is immutable. Propagation, listener belief, and presentation may derive new records, but they never rewrite source actor, emitter, origin, start time, or sequence. An echo can make a listener estimate the wrong doorway while the event still records the true impact point. A supernatural imitation can emit a new entity-authored event that copies a voice profile; it cannot relabel the original speaker's event.

Classify source ownership where it matters:

- **environment-authored:** machinery, collapse, weather, timed building process;
- **player-authored:** locomotion, interaction, deliberate alarm or distraction;
- **other-actor-authored:** helper, witness, NPC, rival, or ordinary creature action;
- **entity-authored:** imitation, lure, warning, or threat behavior produced by the horror entity;
- **system presentation only:** music or mix cue with no gameplay event.

The last category cannot change listener knowledge. If the player needs to distinguish environmental from entity-authored sound, give the difference a testable cadence, propagation path, physical trace, response, or stable instrument representation rather than a purely aesthetic filter.

## Choose the simplest propagation model that respects the map

Use the **Propagation-map lock**; a later audio-mix or navigation convenience cannot redefine its world links.

Do not assume a universal inverse-square simulation. Choose one model and record why it fits.

### Distance with obstruction modifiers

For a compact space with simple walls:

```text
received_intensity
  = base_intensity
  * distance_falloff(path_or_direct_distance)
  * obstruction_multiplier
  * source_profile_multiplier
```

Use one or more collision rays or a project-defined obstruction query. This is inexpensive but may behave poorly across winding corridors if direct distance cuts through walls.

### Portal or zone graph

For rooms connected by doors, vents, or stairwells, propagate through named acoustic links. Each link adds distance or attenuation, and its current door state matters. This produces legible relationships such as “the service hatch carries sound into the control room” without pretending to solve wave physics.

### Navigation-path approximation

For a continuous maze where listeners already use navigation, path distance can approximate how sound travels around solid barriers. It must not be assumed identical to hearing: navigation links, one-way jumps, and creature-sized paths may not correspond to acoustic openings.

Choose based on verified map structure. Do not combine models until a failing test demonstrates the need. Store propagation parameters as data and give debug output that names the path, barriers, and resulting intensity.

Doors and moving barriers must update the propagation representation on the same authoritative timeline as their visible and collision states. A closed door may attenuate rather than fully block; record the judgment and communicate it consistently.

## Give each listener a hearing contract

Reception and stored knowledge come from the **Listener-decision lock** after propagation is fixed.

A listener receives an event only when the propagated intensity meets its current threshold and the event category is allowed. Define:

```text
received = propagated_intensity >= effective_threshold

effective_threshold may depend on:
  listener state
  local masking or machinery
  source category
  temporary impairment or alertness
  difficulty or accessibility setting
```

Avoid hidden random rolls for basic reception. If uncertainty is part of the design, use a bounded, seeded, inspectable rule whose outcomes are all fair, or vary search behavior after deterministic reception. The player should not repeat an identical action in identical conditions and get unexplained opposite results.

Hearing reveals the event origin and declared metadata, not the player's current transform. Store listener knowledge explicitly:

```text
heard_event_id
last_heard_origin
last_heard_at
received_intensity
confidence_or_priority
source_kind
investigation_target
```

Sight or another confirmed perception can replace uncertain sound knowledge. Losing sight may create a separate last-seen record. Do not let an old sound overwrite current visual confirmation merely because it has high base intensity.

### Intended and unintended listeners

Design intent does not bypass propagation. For each important event, list the intended listener, the response the player wants, every credible unintended listener, and what each can receive through the current map. A shout meant for a helper may also reach a stalker; a decoy for a stalker may summon a guard who changes access; a machine alarm may notify an entire zone while revealing no exact actor.

Each listener owns a separate reception and memory record:

```text
listener_id
heard_event_id
received_at and received_intensity
estimated_origin and confidence
response selected and reason
acknowledgement or visible receipt
response deadline / abandonment rule
```

Do not mark the event “heard” globally. One listener receiving it proves nothing about another listener behind a different barrier or threshold.

### Witness and helper use

A sound can create evidence or assistance instead of only redirecting danger. Define who can recognize it, their travel or communication time, what credibility or authorization they require, what state they can change, and what happens if they arrive after the event has ended. The player needs an acknowledgement—radio reply, light, door action, movement, or accessible status—not an invisible success flag.

Helper arrival must not erase hostile reception. If both hear the event, resolve both responses from their own contracts and let the player manage the resulting overlap.

### Silence and false localization

Silence becomes evidence only after an expected event had a valid opportunity. Record the expected source, eligibility window, player-accessible indication that the window was valid, possible masking or interruption, and the action changed by absence. Missing audio hardware or disabled presentation is never world silence; the accessible event representation still reports whether the event occurred.

False localization is a listener belief, not a changed event origin. Reflections, vents, repeated entity-authored copies, or a declared perceptual effect may produce an estimated origin with limited confidence. Store the true event origin, propagation path, listener estimate, and later correction separately. Do not let a false direction drag the immutable event or secretly grant the listener the player's transform.

### Neighbor handoffs

- This Skill owns immutable sound-event provenance, propagation, per-listener reception, sound-specific memory, estimated origin, response selection, and acknowledgement.
- `/worldview-game-roaming-stalker-pressure` owns the persistent stalker's durable knowledge, location, route, movement, search, attack intent/commitment, release, withdrawal, and cooldown after it consumes a sound event.
- `/worldview-game-observation-gated-stalker` owns only whether observation currently permits movement or harm; it does not reinterpret the sound or choose the route.
- `/worldview-game-lure-hide-escape` owns the bounded lure, cover, escape boundary, lifecycle, and escape-success/reset aggregation; it does not create another durable listener mind when a roaming owner exists.
- `/worldview-game-chase-route-architecture` owns which route opens while a listener is committed and whether player/pursuer timing is sufficient.
- `/worldview-game-asymmetric-information-cooperation` owns live participant task and message acknowledgement when sound is used as a communication channel.

Publish one `sound_received` handoff containing `threat_id`, event ID, received time and intensity, estimated origin and confidence, source class, and sound-memory version. The persistent or bounded behavior owner consumes that event and alone decides whether durable knowledge, route, movement, search, or attack intent/commitment changes. This Skill may record the listener's sound-specific response choice, but it must not move the listener or write a second world-level target.

For a composed threat, commit in this order: immutable sound event, propagation result, per-listener reception, `sound_received` handoff, then the behavior owner's knowledge and movement update. Save the event and reception version beside the shared `threat_id`; save durable threat state only through its owner. Reset expires or clears transient sound records before the behavior owner reconstructs its snapshot, preventing an old noise from firing again after load.

When a neighbor is absent, emit and store the handoff event but leave the external state unresolved rather than implementing a second stalker, chase, or cooperation controller here. A self-contained hearing demo may use a clearly named local response stub, but it is not persistent AI and must be removed when a behavior owner is connected.

## Prioritize without making distraction arbitrary

Implement the formula, comparator, switch margin, and tie order in the **Listener-decision lock**. All four must be filled; “higher priority” is not an executable rule.

When events compete, calculate priority from declared factors such as recency, received intensity, source importance, current commitment, and interruption cost. Write the rule down. For example:

```text
priority =
  received_intensity_weight
  + recency_weight
  + source_kind_weight
  - current_commitment_penalty
```

This is a structure, not a required formula. Replace every term with a named unit and value in the contract. Then declare the redirect boundary explicitly:

```text
redirect only when candidate_score > current_score + switch_margin
at exact equality, retain the current target
when no target is committed, resolve equal scores by the recorded stable tie order
```

The comparator may differ when the project requires it, but it cannot remain implicit. Avoid priorities that expose hidden narrative preference with no player-facing clue. A listener in confirmed pursuit should usually prefer sight over a routine decoy. An unusually strong alarm may override pursuit only if the world and feedback teach that exception.

Commitment prevents jitter. After choosing an event, require a meaningful reason to switch: a higher-priority event by a documented margin, current sighting, reaching the source, or expiration. Without hysteresis, alternating footsteps can make the listener spin in place and open a route accidentally.

## Build a memory-driven response

The response states enact the **Listener-decision lock**; search targets remain the locked evidence origin.

Map project states to these responsibilities:

```text
unaware or patrol
  -> notice, when a valid event is received

notice
  -> investigate(last heard origin), after readable orienting feedback
  -> confirmed pursuit, on current visual confirmation

investigate
  -> confirmed pursuit, on visual confirmation
  -> local search, on reaching the origin without confirmation
  -> re-target, on a qualifying higher-priority event

local search
  -> confirmed pursuit, on confirmation
  -> investigate, on a new qualifying sound
  -> resume, when memory/search expires
```

The orienting response is not merely decoration. It tells the player the event was received and gives state transition time. It must not be so long that every distraction guarantees success regardless of map.

Search should sample a bounded region around the stored event origin or follow authored inspection points. It must not sample around the hidden player's current position. Clear or age memory through explicit rules. When returning to patrol, the listener may retain an alertness change if the contract states it; restart still restores the declared initial state.

## Make noise avoidance and distraction use the same language

All risky and deliberate sources must pass through the **Emission-event lock**, **Propagation-map lock**, and **Listener-decision lock** rather than one-off triggers.

Player-generated risk and deliberate lures should share the event and propagation model. Otherwise the player learns two unrelated systems both presented as sound.

Define noise for relevant verbs:

- walking, sprinting, crouching, landing, climbing, and changing stance;
- surface contacts and carried weight if the project supports them;
- opening, forcing, dropping, breaking, or operating objects;
- weapons, tools, alarms, and environmental machinery;
- the distraction's placement, activation, repetition, retrieval, or recharge.

Not every animation needs an event. Include only actions that support a decision. Give the player pre-action information where possible: surface appearance, movement mode feedback, a predicted device radius consistent with the fiction, or learned map relationships.

A distraction needs a constraint so placement matters: retrieval, charge, wind-up time, limited repetitions, a cooldown, or the risk of revealing the route used to deploy it. It also needs enough listener commitment to create a measurable opportunity. A head turn with no path change is feedback, not a useful distraction.

## Derive the opportunity from space and time

Use the **Distraction-opportunity lock** for landmarks and both sides of the timing equation.

Name the intended distraction origin, listener route, player crossing, objective, and reacquisition lines. Measure:

```text
listener commitment time
  = orient time
  + path time to event origin
  + minimum inspection/search time

player opportunity time
  = delay until route clears
  + traversal time
  + objective interaction time
  + safety buffer before listener can reacquire

opportunity margin
  = listener commitment time - player opportunity time
```

A positive estimate is not proof. Door animations, acceleration, player input, navigation detours, device wind-up, and lines of sight change the result. Run the actual route and find the earliest and latest viable actions.

The map needs a meaningful choice: a noisy short path versus a quiet long one, a device placement that draws the listener beyond a junction, a door that carries or muffles sound, or an objective whose operation risks a new event. Do not place one obvious button that disables the enemy and call it sound strategy.

## Preserve success, failure, and restart

Build and reset the slice from all locked artifacts, with ownership taken from the **Hearing-authority proof lock**.

The first complete encounter includes:

- a safe or recoverable way to learn that an action emitted sound;
- one event the listener does not receive, proving a lower boundary;
- one event it does receive, with readable orienting and investigation;
- one deliberate distraction that opens a real route;
- a successful objective or exit reached through that route;
- a failure caused by an understandable sound decision;
- a failure or escalation caused by visual confirmation when relevant;
- immediate restart from every active state.

This Skill's restart clears sound event queues, identifiers or sequence windows, sustained emitters, per-listener reception and sound-specific memory, sound priorities and timers, device sound state, surface-sound overrides, captions, audio playback, and sound handoff messages. It then issues the declared reset handoff and waits for the behavior, inventory, objective, world, outcome, UI, and replication owners to acknowledge their own paths, alertness, device placement or charge, doors, objectives, outcomes, and replicated state. Test restart during a sustained event, notice, investigation, search, pursuit, success, and failure, and verify that an expired event cannot be consumed again.

Save/load preserves immutable event provenance for retained events, each listener's reception and estimated origin, helper or witness response progress, expected-silence windows, acknowledgements, and resource transactions. Reload must not change an environmental event into an entity event, mark every listener as having heard it, reroll a false origin after a decision, summon a helper twice, or replay a one-shot alarm.

## Accessibility keeps information available

The alternative channels are part of the **Hearing-authority proof lock** and may not reveal evidence excluded by the listener or player information contracts.

A sound mechanic cannot assume every player can hear, localize, or tolerate the same presentation. Preserve the decision through redundant, configurable information:

- captions or directional indicators may identify source kind and relative direction without revealing more than the player character should know;
- surface and movement noise can have visual or haptic feedback tied to the same authoritative event;
- listener receipt can use pose, light, icon, or animation in addition to sound when appropriate;
- expose separate presentation volume without changing gameplay intensity;
- provide alternatives to rapid repeated input and precise audio localization;
- reduce sharp transients, sustained high-pitched tones, or vibration through settings;
- difficulty may change named thresholds, commitment, search time, or device constraints, with the change documented.

For every required cue, provide a no-audio equivalent derived from the same event and limited to the same information. A caption may give coarse direction if ordinary sound supports it; a world indicator may show that a helper acknowledged; a visual instrument may show that an expected event did not occur. None may expose a hidden listener path, exact threshold, or true origin when the primary experience supplies only an uncertain estimate.

Do not make captions calculate an exact listener path if the normal audio gives only an approximate clue. Accessibility should transmit the mechanic's intended information, not silently replace uncertainty with omniscience.

## Multiplayer authority when relevant

Use the **Hearing-authority proof lock**; networking is unclaimed until event identity, device ownership, reception, state, and restart are authoritative and tested.

Do not add networking where it is not requested. In a networked project, this Skill's authoritative host owns sound event identity, origin, intensity, propagation, listener reception, sound-specific memory, and sound-device transactions. The behavior owner controls navigation and attack commitment; combat, objective, inventory, and encounter owners control damage/contact, objectives, device inventory, and lifecycle results. Clients request actions and predict presentation; they do not declare that an AI heard another player.

Include emitter ownership and sequence in events to reject duplicates and stale packets. Decide whether teammates hear private feedback, whether one player's device can distract a listener chasing another, and how disconnect affects sustained or placed sources. Replicate the listener's chosen evidence and state so clients can present a coherent response without receiving hidden player information.

Test simultaneous sounds from different clients, equal-priority ordering, latency at device activation, a door changing state during propagation, disconnect with an active device, and restart with queued messages.

## Respect the current Harness and tool boundary

Available tools determine which evidence can close the **Hearing-authority proof lock**; they do not relax event, propagation, or decision locks.

This Skill supplies a method, not an engine, audio library, asset generator, browser, API, MCP server, or deployment service. Inspect capabilities before relying on them.

- Use the existing engine, audio layer, test framework, and licensed assets first.
- Do not infer AI hearing from the waveform or mixer unless the project explicitly connects them.
- Browser automation validates only a web runtime it actually runs.
- Optional audio generation or processing requires an available, authorized tool and a real missing dependency.
- A click, pulse, or existing licensed clip is enough for a mechanical prototype.
- Never replace interactive implementation with a rendered video or audio mockup.

If execution is blocked, record exact commands, errors, and environment. Continue with safe project inspection and an implementation-ready contract, while marking behavioral claims unverified.

## Verify the causal chain

Execute the verification matrix owned by the **Hearing-authority proof lock** against the **Emission-event lock**, **Propagation-map lock**, **Listener-decision lock**, and **Distraction-opportunity lock**. Rerun every row named as fallout from any reopened layer.

Run boundary tests, not only the intended showcase:

1. One causal action emits exactly one event identity.
2. The same event produces the documented result on two surfaces or source profiles.
3. Just-below-threshold and just-above-threshold events produce different, stable reception results.
4. A declared barrier, closed door, open door, and connected route produce the expected propagation values.
5. A received sound stores its emission origin; moving the player afterward does not drag the target.
6. Current visual confirmation overrides a routine distraction according to priority rules.
7. Candidate priority just below and exactly at the switch boundary retains the current target; a candidate just above it redirects once.
8. Uncommitted equal scores follow the stable tie order, while repeated events at the same emitter and origin follow the declared refresh/coalescing rule without route churn.
9. The listener reaches the stored source, searches the declared region, and returns or escalates correctly.
10. The deliberate distraction creates enough measured commitment for the intended crossing.
11. A noisy or mistimed action creates a real, understandable failure.
12. Device constraints, objective ownership, collision, and reach cannot be bypassed through walls or repeated input.
13. Restart from every state leaves no event, memory, timer, audio, caption, or replicated residue.
14. Supported input and accessibility settings preserve the intended information.
15. One event reaches an intended listener and at least one credible unintended listener independently; verify separate thresholds, memories, and responses.
16. A witness/helper event records acknowledgement, response time, late/failed arrival, and any hostile overlap.
17. Environmental and entity-authored versions of a cue retain different provenance through presentation, save/load, and restart.
18. A valid expected-silence window distinguishes absence from masking, interruption, or unavailable audio presentation.
19. A false-localization case preserves true origin while the listener estimate, confidence, action, and later correction remain reproducible.

For a fixed-step simulation, repeat deterministic event and input traces under multiple render schedules. For multiplayer, run at least two clients with simultaneous sources. Pair screenshots with logs that show event ID, propagated intensity, threshold, stored origin, selected priority, state, and outcome.

Label each claim `verified`, `inferred`, `proposed`, or `blocked` and name the environment.

## Deliver and hand off

Hand off the current **Emission-event lock**, **Propagation-map lock**, **Listener-decision lock**, **Distraction-opportunity lock**, and **Hearing-authority proof lock** artifacts. Use the project's normal documentation location. If none exists:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

The final handoff answers:

- What command and scene run the encounter?
- Which actions emit sound and how does the player perceive that fact?
- How does the map propagate or attenuate each event?
- What evidence may the listener know, and what remains hidden?
- Which distraction, success, failure, and restart paths were verified?
- Which assets were reused and which remain labeled proxies?
- Which inputs, accessibility modes, render schedules, and network conditions were actually tested?
- Which values remain proposals and which claims are blocked?

Do not claim physical acoustic realism, balance, production readiness, universal accessibility, or network safety without corresponding evidence.
