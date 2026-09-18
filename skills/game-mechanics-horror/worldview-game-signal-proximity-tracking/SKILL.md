---
name: worldview-game-signal-proximity-tracking
description: "Use when a game needs a playable detector or embodied sense that converts an unseen threat's proximity into bounded, learnable signals for route and timing decisions. Builds the signal model, distance or topology rules, occlusion, smoothing, interference, multimodal feedback, failure, restart, and evidence in an existing project or small prototype. Do not use for an exact enemy radar, a scripted warning with no underlying threat state, or a general AI system."
---

# Worldview Game — Signal Proximity Tracking

## Call this Skill

The public invocation is:

```text
/worldview-game-signal-proximity-tracking
```

Treat everything after the Slash command as the world and project brief. Do not ask the user to invent signal-processing values before recovering the map, threat, existing interfaces, and decisions the signal must support.

## Route companion files as needed

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same responsibilities.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether bounded tracking fits, choosing a spatial model, or resolving calibration and interference tradeoffs. A narrow implementation task with locked contract artifacts does not require it.
- Read [cairnline-relay.md](examples/cairnline-relay.md) only when a filled fictional example would clarify a field. Its topology, bands, and cue choices are not portable values.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate user/project facts from repository-authored decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

This package is self-contained and does not require another Skill.

## Restore the information problem first

Use this Skill when the player cannot continuously see the relevant threat but needs enough evidence to make a spatial or timing choice. The detector closes part of that information gap. It should not silently close all of it.

A fast beep attached directly to enemy distance is not yet a complete mechanic. The player needs to know what the response means, how walls and floors affect it, whether the signal can saturate, what interference looks like, and which decisions remain possible after receiving it. The implementation also needs a strict boundary between the threat’s world truth and the lower-resolution observation shown to the player.

Use this method when:

- an authoritative threat or hazardous source exists or can be prototyped;
- the source is sometimes outside direct perception;
- a changing signal supports advance, wait, divert, search, or retreat;
- the map offers more than one meaningful response;
- uncertainty follows declared rules rather than arbitrary deception.

Do not use it for exact wall-penetrating markers, a conventional combat lock-on, a cutscene alarm, a decorative UI pulse, or a whole threat AI. If the core task is to author threat movement or behavior, that system needs its own contract; this Skill only defines how allowed source facts become player-facing information.

## What the user gives

Accept any combination of:

- an existing project and authorized paths;
- a map, level, collision or navigation layout, sketch, or verbal route;
- a threat, hazard, emitter, or existing signal source;
- a handheld device, wearable, environmental receiver, bodily sense, or interface concept;
- world rules about range, materials, interference, direction, and reliability;
- intended controls, camera, supported platforms, and multiplayer scope;
- one desired decision, such as choosing which of two corridors is safer.

Inspect only materials in scope. Reuse the project’s state ownership, interaction language, audio buses, UI system, and accessibility settings. Do not generate a new threat or device merely because final art is absent; labeled proxies can prove the rule.

If the map does not offer a decision, propose the smallest change or test space that does: two connected routes or waiting positions, one source, one meaningful boundary, an approach the player can detect, and a retreat or shelter that can succeed.

## What the user receives

Complete as much as the current environment allows:

1. A reuse inventory for threat state, map topology, collision, UI, audio, haptics, player equipment, and input.
2. A signal contract that identifies source truth, allowed observations, distance metric, occlusion, bands, smoothing, interference, tool costs, accessibility, authority, and reset.
3. Tunables separated from behavior code: ranges, thresholds, hysteresis, sample rate, response time, cadence, intensity, interference, and cue lead times.
4. A working tracking encounter in the project’s runtime when available, using the current threat rather than a parallel invisible simulation.
5. A playable entry, controls, and one screenshot of the running interface or tool in context.
6. Direct evidence for band boundaries, occlusion, approach and retreat, declared interference, one success, one failure, restart, and the environments tested.

If the project cannot run, provide an implementation-ready contract and exact blocker. A waveform mockup, animation, or video is not playable evidence.

## Lock the tracking model before implementation

Resolve these locks in order. Later layers consume earlier artifacts and cannot redefine them. If code or play reveals a contradiction, reopen the earliest affected lock, amend it, and invalidate all dependent implementation and evidence. Ask one grouped question only when the brief still supports incompatible sources, signal meanings, or player decisions.

### 1. Source Observation Lock

- **Question resolved:** Which authoritative sources are eligible, who owns them, which source facts may be sampled, how multiple sources combine, and which exact facts must remain hidden?
- **Locked artifact:** The source eligibility table and information-boundary schema from world truth through allowed sample, including debug-only fields and multiplayer replication limits.
- **Lock condition:** Every active, dormant, destroyed, allied, duplicate, and absent-source case has one owner and deterministic inclusion rule; player output cannot leak forbidden coordinates, identity, count, or intent.
- **Still mutable:** Debug presentation and implementation storage that preserve the same allowed sample.
- **Reopen trigger and fallout:** Adding a source class, changing authority, aggregation, or allowed facts reopens this lock and invalidates sampling code, privacy/network assumptions, multi-source tests, and every downstream signal trace.

### 2. Spatial Propagation Lock

- **Question resolved:** How do map topology, distance, doors, walls, floors, materials, and interference transform the allowed sample before filtering?
- **Locked artifact:** The portal/path/zone graph, propagation equation or lookup, occlusion table, and bounded interference map.
- **Lock condition:** Controlled positions on both sides of each relevant boundary produce the intended raw relationship, and the model matches the world explanation and route decision.
- **Still mutable:** Coefficients inside verified ranges, presentation of interference, and optimization that leaves outputs equivalent.
- **Reopen trigger and fallout:** Changing geometry, portal connectivity, door behavior, floor separation, interference location, or metric reopens this lock and invalidates raw-signal fixtures, thresholds, response margins, and route playthroughs.

### 3. Reading Vocabulary Lock

- **Question resolved:** Which stable bands and interference states the player can distinguish, what each means and cannot reveal, and how calibration and accessible channels teach them?
- **Locked artifact:** The band table with entry/exit thresholds, hysteresis, smoothing, calibration sequence, interference signature, and audio-independent/color-independent/haptic-independent expressions.
- **Lock condition:** Boundary tests show stable transitions, calibration connects a reading to an observable cause, and every essential distinction survives each supported presentation mode without exposing extra truth.
- **Still mutable:** Art, sound, wording, UI layout, and response polish that preserve band semantics and measured latency.
- **Reopen trigger and fallout:** Adding/removing a band, changing its meaning, smoothing latency, calibration, interference signature, or accessibility equivalence reopens this lock and invalidates cue assets, threshold tests, tutorials, and player-decision evidence.

### 4. Response Window Lock

- **Question resolved:** Which advance, wait, divert, or retreat decision the reading enables, what warning margin makes it possible, and which readable decision produces failure?
- **Locked artifact:** The landmark-to-reading map, tool-cost contract, warning/response timing budget, success trace, failure trace, and restart boundary.
- **Lock condition:** The fastest supported threat approach still permits the intended response under the slowest supported control configuration, while a nearby ignored or misread cue fails without breaking the signal promise.
- **Still mutable:** Timings within the tested margin, optional tool costs, and assistance that preserves the same decision and information resolution.
- **Reopen trigger and fallout:** Changing threat speed/path, player movement, detector sampling latency, tool equip cost, shelter, objective route, or assistance outside the envelope invalidates timing, success/failure, restart, and balance claims.

## Recover source truth and presentation separately

This recovery work supplies evidence for the Source Observation Lock and Spatial Propagation Lock. Before designing the signal, locate the project’s authoritative threat state and the presentation paths that may read it. Do not assume the visible model transform is authoritative; animation smoothing, network interpolation, or scripted doubles may make it unsuitable.

Record:

```markdown
## Verified facts
- Playable entry and map: <path, route, observed behavior>
- Threat authority: <owner and state verified>
- Existing detector/UI/audio/haptics: <path and behavior>
- Existing accessibility and input conventions: <path and behavior>

## Gaps
- <missing responsibility>

## Proposals
- <new signal rule, proxy, or integration>
- Reason: <decision it enables>
```

Maintain three categories. A fact comes from the user, project source, or running observation. A proposal is a rule added to complete the mechanic. A judgment—such as “the middle band gives enough warning”—requires evidence and test conditions.

## Define what the signal is allowed to know

Implement the allowed sample fixed by the Source Observation Lock. World truth may include precise source transforms, velocities, states, paths, and identities. The detector receives only the subset declared by its contract. Model the boundary explicitly:

```text
source truth
  -> allowed sample
  -> spatial/topological transform
  -> interference and uncertainty
  -> temporal filtering
  -> output band or cue
  -> player perception
```

The allowed sample might include source position and intensity, but it need not expose them. A receiver can output a coarse band, a pulse cadence, a left/right bias, or a binary disturbance. Keep debugging telemetry separate from player-visible output. Shipping an exact numeric distance accidentally can erase the intended uncertainty.

For multiple sources, declare the aggregation rule. Common choices are the strongest accepted source, a blended field, distinct channels, or an intentionally ambiguous sum. Do not reveal source count or identity unless that information is part of the mechanic. Filters must exclude destroyed, dormant, allied, or otherwise irrelevant sources under stable rules.

## Choose a spatial model that matches the map

Use the map and propagation artifact fixed by the Spatial Propagation Lock. Straight-line distance is simple but can be misleading in multi-floor or heavily partitioned spaces. Choose deliberately among:

- Euclidean distance for open spaces where direct separation is meaningful;
- path or portal distance when connected travel route matters;
- authored zones when the world uses strong room boundaries;
- a hybrid in which range uses distance and walls or materials apply attenuation.

A general conceptual model is:

```text
raw signal = source intensity × distance falloff × occlusion factor
              + declared environmental interference
```

This is a reasoning model, not a required formula. Do not add random noise before identifying which player decision it supports. Interference can create uncertainty, but its location, signature, bound, or countermeasure must be learnable enough that identical situations do not contradict each other without explanation.

Use the same stable map geometry that governs collision and doors. If a closed bulkhead attenuates the signal, opening it should update the relevant spatial relationship. If vertical floors must not cross-talk, test the nearest stacked positions explicitly.

## Turn continuous truth into legible bands

Implement the bands and transition semantics fixed by the Reading Vocabulary Lock. Exact distance changes every frame, but the player usually needs categories: clear, trace, near, critical, saturated. Derive those categories from map decisions rather than round numbers.

For each band, state:

- which map situations it should represent;
- which action it makes reasonable;
- entry and exit thresholds;
- minimum dwell or smoothing behavior;
- audio, visual, haptic, and world feedback;
- what it cannot tell the player.

Use hysteresis so tiny movement near a threshold does not chatter between outputs. Use temporal smoothing to remove meaningless frame variation without delaying the cue past the response window. A sudden source approach may need a faster attack response than the release after it retreats. Record the actual response time.

Saturation needs a rule. A maximum-rate pulse can mean “very near” without distinguishing two meters from contact. That uncertainty can be useful, but the player still needs enough lead time to act. If contact can occur before the first critical cue due to sampling delay or movement speed, the implementation has failed regardless of how dramatic the sound is.

## Calibrate trust before introducing distortion

Use the calibration and interference entries in the Reading Vocabulary Lock. The player needs at least one safe or lower-risk opportunity to connect signal change with an observable cause. Calibration may be an explicit self-test, a known fixed emitter, an early visible crossing, or a controlled first encounter. The goal is not a tutorial panel; it is evidence that the instrument has a stable relationship to the world.

Only after that relationship is legible should interference complicate it. Give interference a distinguishable quality—a different color family, irregular cadence, waveform texture, caption, needle behavior, or environmental source—rather than silently returning a false proximity band.

False positives can be fair when the world contains emitters that truly produce the same phenomenon. False negatives are far more dangerous because they remove the promised warning. If they are required, name the condition, communicate it, and provide another route to evidence. Do not randomly suppress a signal to manufacture a scare.

## Make carrying or reading the tool a decision when appropriate

Use the tool-cost decision in the Response Window Lock. The receiver may be always available, equipped at a cost, or embedded in the environment. Choose based on the intended attention problem.

Possible costs include occupying a hand, narrowing vision, producing audible clicks, consuming charge, requiring the player to stop and sample, or competing with another tool. A cost is useful only when the alternative remains viable. Constantly unequipping and re-equipping through menu friction is not tension.

Input should create one clear state change. Avoid duplicate equip events, stacked sample timers, and a tool that continues emitting after it is put away. When the player cannot look at the display, preserve essential warnings through another supported modality if the contract promises one.

## Protect fair response windows

Use the measured budget fixed by the Response Window Lock. For each threat approach, compare:

```text
warning time = time from first actionable cue to possible contact
response time = recognition + input + movement or defensive action
margin = warning time - response time
```

Measure this in the actual map and runtime. A positive theoretical margin can disappear through animation locks, door interactions, acceleration, network delay, or a detector sample interval. Test the fastest supported threat approach and the slowest supported player response configuration.

Failure should diagnose a decision: advancing after a critical reading, misclassifying a declared interference signature, remaining in a dead end, or looking at the tool too late. Unsignaled contact from outside the detector’s promised range is not a fair verification case.

## Keep implementation ownership narrow

Preserve the ownership split fixed by the Source Observation Lock, Spatial Propagation Lock, Reading Vocabulary Lock, and Response Window Lock. The threat system owns threat movement and life cycle. The map owns stable collision and door state. The detector owns sampling allowed facts, transforming them into a reading, and presenting that reading. The encounter owns its objective and outcome.

Avoid these shortcuts:

- moving the hidden threat to match a desired meter reading;
- driving gameplay directly from an audio playback cursor;
- letting the UI poll an arbitrary rendered object when authority lives elsewhere;
- using real-time clocks for simulation state in a fixed-step game;
- attaching several uncancelled update loops on repeated equip or restart.

Store debug values when useful, but do not expose them to the player build unless the contract allows it.

## Work with the current Harness instead of assuming tools

Choose tools only after the Source Observation Lock, Spatial Propagation Lock, Reading Vocabulary Lock, and Response Window Lock artifacts exist; available tooling may change evidence collection but cannot redefine them. This Skill supplies no engine, browser, audio generator, haptic hardware, model provider, backend, or deployment account. Inspect what the current Harness and project actually provide.

- Prefer local code, engine tools, tests, and existing licensed assets.
- Browser automation may verify a web build but does not establish native engine or hardware behavior.
- Synthetic audio, images, and 3D assets are optional. State the missing capability before paid calls and use labeled proxies where sufficient.
- APIs and MCP servers exist only when configured in the current environment.
- A generated video of a pulsing detector is not proof that the signal reads live threat state.

Record the exact runtime, devices, viewports, audio path, and clients tested.

## Preserve success, failure, and restart

Evaluate the encounter against the Source Observation Lock, Spatial Propagation Lock, Reading Vocabulary Lock, and Response Window Lock. A complete encounter has a reachable start, a calibration opportunity, a real threat approach, more than one possible response, a detector whose cue changes causally, a successful use of the information, a legible failure, and immediate restart.

Success is not “the meter displayed.” It is a player action made possible by the reading: choosing the safer route, waiting for the source to pass, locating a search region, or reaching an objective without contact. Failure must still obey signal boundaries.

Restart clears active samples, smoothing history, hysteresis band, interference sources owned by the encounter, equip state where appropriate, timers, subscriptions, captions, haptics, debug trails, threat integration references, and outcome. Cancel asynchronous callbacks before a new attempt begins.

## Provide equivalent essential information

Express the Reading Vocabulary Lock through the supported modalities without changing its information resolution. Do not encode the only actionable distinction in audio pitch, pulse rate, color, fine text, vibration, or screen motion alone. Supply at least two compatible channels for essential band and interference changes, chosen for the project’s supported platforms.

Examples include:

- pulse rate plus a segmented shape or labeled band;
- direction tone plus a high-contrast left/center/right indicator;
- controller rhythm plus captions or icon state;
- animated needle plus reduced-motion numeric categories intended by the contract.

Support remapping for equip/read actions, scalable UI, narrow viewports, captioning of world-important detector sounds, and reduced motion. Haptic output must have a visual or audio equivalent and should not be assumed present. Accessibility modes may alter presentation and response lead time without exposing exact source coordinates unless that is the declared accommodation.

## Define multiplayer authority when relevant

Apply the Source Observation Lock's authority and hidden-data boundary to the actual network model. Skip network work for a single-player project. In multiplayer, authoritative simulation owns source eligibility and the facts from which readings derive. Decide whether each player has an individual receiver position and reading, whether the team shares a placed receiver, or whether one specialist publishes information.

Avoid replicating exact threat coordinates to clients merely to render a coarse signal if the project’s security model treats those coordinates as hidden. Authority can replicate the accepted band, cadence parameters, or a suitably limited observation. If client prediction is used for responsiveness, correct it without band oscillation and keep outcome decisions authoritative.

Test two clients at different ranges, doors changing occlusion, simultaneous equip, late join, disconnect, packet delay, source destruction, and restart. A shared audible beep is not proof that clients received the same authoritative state.

## Verify the information contract

Attach every result to the Source Observation Lock, Spatial Propagation Lock, Reading Vocabulary Lock, or Response Window Lock artifact it tests; reopen dependent checks when a source, map, band, or timing assumption changes. Run and record:

1. Confirm the detector has no eligible source and returns the declared baseline.
2. Place or move the source at both sides of every band threshold; verify entry, exit, hysteresis, and response time.
3. Compare approaching and retreating readings at controlled speeds.
4. Exercise each declared wall, door, floor, zone, or path-distance rule.
5. Introduce interference and confirm its signature, bounds, and countermeasure match the contract.
6. Test multiple, dormant, destroyed, and out-of-scope sources under the aggregation filter.
7. Take the action intended for each band and complete one encounter successfully.
8. Produce a failure through a comprehensible decision while confirming the detector did not violate its promise.
9. Equip, unequip, interrupt, and re-equip repeatedly; only one valid sample/update path may remain.
10. Restart from each band, active interference, source contact, success, and failure; no old cue or timer survives.
11. Test supported audio, visual, haptic, reduced-motion, narrow-viewport, and input configurations.
12. For networked work, verify limited replication and actual multi-client behavior under delay.

Use logs or test instrumentation to compare world truth, allowed sample, calculated signal, output band, and presented cue. Keep that evidence out of normal player presentation. Pair screenshots with state traces or reproducible playthroughs; a still image cannot prove tracking.

## Deliver and hand off

Deliver the current Source Observation Lock, Spatial Propagation Lock, Reading Vocabulary Lock, and Response Window Lock artifacts and identify any reopened or unverified layer. Use the project’s existing documentation location. If none exists, save:

```text
gameplay/<tracking-encounter-slug>/mechanic.md
gameplay/<tracking-encounter-slug>/tunables.yaml
gameplay/<tracking-encounter-slug>/verification.md
```

The handoff answers:

- Where is the encounter launched and how is the detector read or equipped?
- What source facts are authoritative, and what subset reaches the player?
- What does each band mean, and what can it not reveal?
- How do geometry, doors, verticality, and interference modify the reading?
- Which successful decision and which failure were verified?
- Which presentation modes and devices were actually tested?
- What was reused, what remains proxy content, and what remains an untested proposal?

Do not describe the detector as realistic, balanced, accessible to everyone, secure against cheating, or production-ready without evidence for those separate claims.
