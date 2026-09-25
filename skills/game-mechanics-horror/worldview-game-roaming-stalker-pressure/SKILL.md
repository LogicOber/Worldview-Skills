---
name: worldview-game-roaming-stalker-pressure
description: "Use when a horror game needs one persistent stalker whose territory, approach, knowledge, search release, capture recovery, and return remain understandable across connected zones and objectives. Produces a bounded implementation when a runtime exists plus territory and zone graphs, observed-behavior and local-claim records, pressure and withdrawal contracts, save/load rules, tunables, and verification. Do not use for one scripted chase, a fixed patrol, a horde director, continuous omniscient pursuit, or arbitrary off-camera spawning."
---

# Worldview Game — Roaming Stalker Pressure

## Call this Skill

Use the public command:

```text
/worldview-game-roaming-stalker-pressure
```

Treat the following text as the world, project, and pressure brief.

## Route the companion files

- Fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same decisions.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when checking fit, resolving a continuity or pressure tradeoff, or tuning encounters. Skip it for narrow implementation against a locked contract.
- Read [the-ash-cartographer.md](examples/the-ash-cartographer.md) only when a completed fictional route clarifies an unfamiliar field. Its threshold, budget, and timing are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate supplied facts from repository decisions. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the problem before adding randomness

A roaming stalker should make the player revise plans across a larger space. The threat may be absent, nearby, approaching, searching, confronting, or recovering, but it remains one coherent actor with a location, route, knowledge state, and history. Uncertainty comes from incomplete information and variable opportunity—not from the simulation ignoring its own world.

Two bad extremes are common. A fully omniscient stalker follows the player's hidden transform until every objective becomes the same chase. A director that spawns an enemy wherever it wants creates shocks but no stable strategy. Both can feel intense briefly. Neither creates a relationship the player can learn over a route.

Separate the system into responsibilities:

```text
world topology       where the stalker and player can physically travel
stalker state        identity, location, knowledge, route, ability and history
pressure director    when a bounded encounter opportunity may begin
encounter grammar    how warning, approach, contact, counterplay and withdrawal work
fairness constraints what the director and stalker are never permitted to violate
recovery             how pressure falls before another opportunity
```

The director may schedule. It may not grant knowledge or movement that the stalker's own contract forbids.

## Use and routing boundaries

Use this Skill for a persistent named or identified threat that operates across connected zones during a bounded series of objectives. It is especially useful when the player revisits hubs, selects routes, opens shortcuts, or changes world state.

Do not use it for:

- a single chase corridor or one-room hide sequence;
- an ordinary guard following a fixed patrol;
- many interchangeable enemies managed as a horde;
- a cinematic appearance without systemic counterplay;
- a threat intended to remain in permanent confirmed pursuit;
- a general campaign director before one three-zone route works;
- surprise spawning with no spatial, sensory, or fictional continuity.

When the project also needs detailed hearing, observation gating, hiding, combat, or safe rooms, integrate through explicit events and permissions. Do not reimplement those entire mechanics inside the roaming controller.

## What the user can give

Accept any combination of:

- an authorized repository, levels, streaming maps, or zone sketches;
- player controller, objectives, inventory, health, and failure flow;
- an existing stalker, navigation agent, senses, animation, sound, and abilities;
- doors, locks, vents, lifts, shortcuts, safe areas, and hiding interactions;
- current spawn or encounter-director code;
- expected route length, difficulty, accessibility, save/load, and network requirements;
- world facts defining how the threat travels, senses, and withdraws.

Do not ask the user for a random encounter percentage without context. Recover the actual route and propose a pressure rhythm from travel times, objective exposure, warning channels, and counterplay.

## What the user receives

Deliver as much as the project and Harness permit:

1. A reuse inventory for levels, streaming, navigation, stalker, perception, objectives, counterplay, saves, audio, input, and restart.
2. A stable zone-and-connector graph shared by player reachability, stalker travel, and streaming.
3. A persistent stalker record and state model distinct from the pressure director.
4. A pressure opportunity model with budgets, cooldowns, exclusions, and deterministic or seeded choice rules.
5. At least two encounter shapes using existing counterplay, each with warning, escalation, exit, and recovery.
6. A bounded route with objective progress, success, understandable failure, save/load, and restart.
7. Tunables, accessibility, optional multiplayer authority, and saved behavioral evidence.

Do not call arbitrary appearances systemic, a screenshot behavioral evidence, or one completed route balanced.

## Lock roaming continuity before implementation

Close these locks in order. A director or encounter may consume an earlier artifact but may not redefine it. When implementation contradicts a lock, reopen the earliest affected layer and invalidate every dependent route, selection, save, or outcome trace. Ask one grouped question only when inspection cannot resolve incompatible creative meanings of the stalker's travel or knowledge.

| Lock | Question resolved | Locked artifact | Locked when | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **World-route-and-identity lock** | Where can the one stalker travel physically or abstractly, stream, materialize, and persist? | Zone/connector graph, single-owner record, abstract-travel rules, loaded materialization predicate, and invalid-state recovery | Every connector and streaming handoff has direction, state, time, ownership, and single-instance reconstruction | Travel times and legal-anchor weighting within the same topology | A zone, connector, streaming owner, traversal ability, or identity owner changes; invalidate materialization, encounter, save/load, and single-instance evidence |
| **Stalker-knowledge lock** | Which evidence tells the stalker a point, zone, or current player position, and how long does it last? | Evidence-to-knowledge table, memory fields, sensory precedence, and search bounds | Every state transition cites a declared evidence source and hidden movement cannot drag a target | Evidence lifetime and search breadth within verified semantics | A sense, world signal, memory field, or precedence changes; invalidate behavior, candidate weighting, search, and failure traces |
| **Pressure-eligibility lock** | Exactly when may the director seek a full episode, spend budget, defer, or return no encounter? | Eligibility predicate, numeric or phase threshold, gain/spend rule, cooldown, seed/tie order, and hard rejection list | Every Boolean and comparison is filled and candidate rejection can produce a valid no-encounter result | Budget gains, threshold, spend, and cooldown within tested ranges | An input, comparator, threshold model, exclusion, difficulty rule, or debt policy changes; invalidate selections, frequency/cooldown claims, and route pressure traces |
| **Encounter-and-warning lock** | Which legal approach, warning, counterplay, escalation, withdrawal, and recovery compose each encounter? | Encounter grammar, approach routes, warning-to-contact budget, counterplay effects, and objective pressure route | At least two shapes meet topology, knowledge, eligibility, warning, and counterplay boundaries | Warning, search, and attack timing inside verified ranges | An anchor, objective, warning channel, counterplay, route, or contact rule changes; invalidate encounter outcomes and accessibility timing evidence |
| **Persistence-and-authority lock** | Who owns identity, travel, knowledge, director, attacks, objectives, and evidence across save/load/restart or network play? | Authority table, snapshot schema, reconstruction order, restart matrix, and verification paths | Single-player or network ownership and stable transaction boundaries are explicit and exercised | Evidence format and presentation-only replication | Save boundary, host topology, relevant player set, replication, or supported setting changes; rerun persistence, authority, accessibility, and restart checks |

## Recover the project and mark evidence categories

This recovery supplies facts for the **World-route-and-identity lock** and separates proposed knowledge or pressure rules from observed project behavior.

Read repository instructions and find the supported run/test path. Inspect map ownership, streaming lifecycle, navigation meshes or graphs, door and connector state, player and stalker controllers, perception, objective events, encounter systems, safe zones, hiding or defensive actions, damage, save data, and restart. Stay within authorized paths.

Create an intake note:

```markdown
## Verified project facts
- <path, behavior, and evidence>

## User requirements
- <binding world or mechanic fact>

## Proposed additions
- <new zone, state, event, rule, asset, or value>

## Design judgments
- <choice among valid alternatives and why>
```

“The west stair streams out when its door closes” is a project fact only after inspection or runtime evidence. “The stalker uses maintenance shafts” is a user fact if provided; otherwise it is a proposal. Whether recent player presence excludes a spawn candidate for 12 or 20 seconds is a tuning judgment.

Inventory before creating assets or parallel systems. If no runnable project exists, build the smallest proof supported locally: three connected zones, one loop or alternate connector, three short objectives, one persistent stalker, one counterplay, one success, one failure, and complete restart.

## Map one world shared by all systems

Use the **World-route-and-identity lock**; neither encounter selection nor streaming code may invent a connector missing from its graph.

Build or recover a zone graph. A zone is a meaningful navigable region, not necessarily one engine scene. A connector is a door, corridor, vent, lift, ladder, crawlspace, loading transition, or other route with state.

For each zone record:

```text
stable zone ID
player entry and exit connectors
stalker-compatible connectors
navigation/streaming owner
objective sites
warning sites and trace sites
counterplay and recovery sites
safe or excluded regions
candidate staging and withdrawal anchors
recent-player visibility/history data
```

For each connector record direction, current openness, traversal time, noise or presentation, required ability, streaming transition, and whether player and stalker use it identically. A narrow hatch may be player-only. A ceiling shaft may be stalker-only. The asymmetry must be visible or learnable.

World positions, collision, navigation, connectors, and streaming must agree. An abstract route may enter or cross an unloaded zone only when the locked graph can advance connector time and state without a scene instance. A physical staging or materialization anchor is never legal while its zone is unloaded. Contact-capable foreshadowing waits until the destination loads and the anchor passes visibility, occupancy, reachability, distance, and exclusion checks. The stalker cannot cross a locked door merely because the zone graph forgot the door state.

Name safe rooms, cutscenes, spawn points, tutorial spaces, save transitions, and non-interruptible interactions as exclusions. Do not infer safety from scene names alone.

## Preserve one stalker identity

Identity, abstract progress, and materialization follow the **World-route-and-identity lock**.

Maintain an explicit authoritative record:

```text
stalker_id
physical_or_abstract_zone
world_position_or_connector_progress
behavior_state
knowledge_state and supporting evidence
current_route and target reason
last_player_contact_time
last_pressure_end_time
encounter_history
disabled, injured, warded, or altered abilities
streaming/materialization state
random_seed or deterministic choice state
```

The record survives zone streaming, save/load, player death according to project rules, and director idling. Never create a second active copy because a streamed scene instantiated its local prefab. Use stable ownership and explicit materialization.

Abstract travel may be necessary when distant zones are unloaded. Advance along declared connectors with believable travel time. Before materialization, confirm the destination is loaded, navigable, outside exclusions, not currently visible, not occupied, and reachable from the abstract route. The stalker should not leave one doorway and instantly emerge across the world unless a world rule establishes that ability.

If relocation is required for recovery from invalid state, distinguish it from normal roaming. Log the reason, constrain the candidate, keep it unobserved, preserve minimum time and distance, and report it in verification.

## Be the single behavior owner in a composed threat

When this Skill is selected, it is the authoritative writer for the persistent `threat_id`, durable knowledge, world route, movement, search, attack intent and commitment, withdrawal, and save reconstruction. The project combat or pursuit contract remains the sole writer for reach validation, hit, damage, capture, and contact result. Neighbor mechanics contribute bounded facts and permissions; they do not run parallel monster brains.

| Input or state | Owner | Roaming responsibility |
| --- | --- | --- |
| Immutable sound event, propagation, reception, and sound-specific listener memory | `/worldview-game-sound-detection-and-distraction` | Consume `sound_received`; decide whether and how durable knowledge changes |
| Observation predicate and movement/harm permission | `/worldview-game-observation-gated-stalker` | Obey the current permission version before moving or resolving attack |
| Lure use, cover state, escape boundary, encounter lifecycle, and escape-success/reset aggregation | `/worldview-game-lure-hide-escape` | Accept or reject encounter requests; execute investigation, commitment, search, and release through this authoritative record |
| Persistent identity, knowledge, route, movement, search, attack intent/commitment, withdrawal, and reconstruction | This Skill | Remain the only writer for threat behavior |
| Reach validation, hit, damage, capture, and contact result | Project combat or pursuit contract | Consume the permitted attack commitment without bypassing its own rules |

Run the composed transaction in a fixed order:

1. Sound commits the event, propagation, reception, and `sound_received` handoff.
2. Observation commits its predicate, hysteresis, and permission version.
3. The bounded encounter commits cover state and requests investigate, commit, search, or release.
4. This owner consumes all eligible inputs, resolves sensory precedence, and writes durable knowledge once.
5. This owner selects the route and performs permitted movement or search, or issues one permitted attack commitment.
6. The combat or pursuit owner validates reach and resolves hit, damage, capture, or contact once; the bounded encounter aggregates escape success or reset, and presentation consumes the results without rewriting threat state.

Save a transaction version, shared `threat_id`, pending handoff IDs, and each domain version so load cannot replay a sound or apply old permission. On reset, stop behavior; clear or expire transient sound, observation, cover, and encounter requests according to their owners; restore the persistent snapshot; rebuild cameras, world routes, and reception; then resume only after fresh permission is published.

If this Skill is absent, exactly one bounded encounter may provide a clearly declared local fallback controller. Sound and observation never both supply one. If this Skill is introduced later, migrate the fallback state once, remove its writers, and verify that one active `threat_id` remains.

## Keep knowledge separate from pressure desire

Use only evidence and memory fields in the **Stalker-knowledge lock**.

The director may want pressure near the player. That desire is not evidence the stalker has found the player.

Track stalker knowledge through the project's actual channels: current sight, received sound event, discovered trace, last-known position, damaged object, objective disturbance, scripted world signal, or none. Record source and age. If detailed hearing or vision already exists, consume its public events rather than reading private player state.

Use knowledge levels appropriate to the project, for example:

```text
unaware        no current evidence of player route
suspicious     evidence identifies a zone or broad area
investigating  following a stored point, trace, or connector
confirmed      current valid perception of the player
searching      confirmation lost; working from last-known evidence
```

Objective completion can legitimately create a world signal: a siren sounds, power changes, or a door moves. It should identify only what the signal contains. “The west generator came online” can draw the stalker west; it does not automatically reveal which locker the player entered afterward.

Never let the director continuously update an investigation target to the hidden player transform. That converts roaming pressure into disguised omniscience.

## Model the stalker's physical behavior

The behavior states consume the **World-route-and-identity lock** and **Stalker-knowledge lock** artifacts; they do not grant new travel or evidence.

Map project states to these responsibilities:

```text
roaming
  -> investigate, on credible evidence or scheduled world signal
  -> staging, when a pressure opportunity is eligible but not yet begun

staging
  -> foreshadow, after a legal route and warning site are confirmed
  -> roaming, if constraints become invalid

foreshadow
  -> approach, after the minimum warning is delivered
  -> roaming/recovery, if canceled

approach
  -> confirmed pursuit, on valid player perception
  -> search, on reaching evidence without confirmation
  -> countered, when player action succeeds

confirmed pursuit
  -> search, when perception is lost
  -> countered or disabled, through declared counterplay
  -> failure, on valid attack resolution

search
  -> confirmed pursuit, on reacquisition
  -> withdraw/recovery, when its bounded search ends

countered or withdraw
  -> recovery

recovery
  -> roaming, after pressure cooldown and legal repositioning
```

Not every encounter must enter pursuit. A corridor crossing, interrupted objective, trace discovery, or distant passage can increase pressure without contact. States should remain inspectable so the director cannot skip warning and force a hit.

Movement uses valid navigation and connector rules. This roaming layer owns attack intent, commitment, and its AI phase. Reach validation, hit, damage, capture, and contact result remain owned by the project's combat or pursuit contract; the roaming layer requests resolution and cannot bypass those requirements. A bounded encounter may aggregate that contact result with its escape boundary into capture, escape success, or reset without rewriting combat state.

## Give the pressure director limited authority

Implement the **Pressure-eligibility lock** as one complete predicate, not as a vague “high pressure” branch.

The director evaluates whether an opportunity may occur. It should read public state such as:

- objective progress and recent completion;
- time since the last pressure episode;
- recent player and stalker zones;
- current resources only if the design deliberately uses them;
- available counterplay and legal escape routes;
- warning channel availability;
- current safe, tutorial, cinematic, menu, and transition exclusions;
- recent encounter types to avoid repetition;
- current stalker knowledge and physical reachability.

Use a pressure budget or phase model rather than an independent random check every frame. For example:

```text
pressure budget rises through exposed objectives, risky shortcuts, or long calm
pressure opportunity becomes eligible above a threshold
starting an encounter spends budget
contact, successful counterplay, or failure closes the episode
recovery prevents another full episode until its conditions end
```

Write the executable boundary in the contract:

```text
full_episode_eligible =
  budget >= exact_threshold_or_declared_phase
  AND cooldown_and_recovery_conditions_complete
  AND stalker_state_allows_staging
  AND no global exclusion is active
  AND at least one candidate passes every hard rejection
```

If the first four clauses pass but no candidate survives, the result is `no encounter`; budget, cooldown, and non-contact trace behavior follow the locked rule. Never leave the comparison operator, threshold, or defer/spend result implicit.

Budget is a scheduling tool, not a secret damage modifier. It must not override fairness constraints. Avoid raising pressure merely because the player is moving slowly or using accessibility features. If resource-aware difficulty is desired, declare what is read and prevent hopeless states.

Selection may be deterministic or seeded. Weight by route relevance, novelty, objective relationship, and available counterplay, then reject illegal candidates. Save the seed and history when reproducibility matters. “No legal encounter now” is a valid outcome; do not fall back to an unfair spawn.

## Establish hard fairness constraints

These are hard rejections owned by the **Pressure-eligibility lock**, not weights the selector may relax.

Write these as candidate rejection rules, not soft preferences:

- the stalker has a continuous physical or declared abstract route to the staging point;
- it does not materialize inside the active camera view or a project-defined observed region;
- it does not materialize in a space the player just fully inspected within the recent-visibility interval;
- it does not occupy the player's collision, mandatory door sweep, ladder exit, lift arrival, checkpoint, or only unavoidable step;
- the encounter has at least one supported counterplay or escape route in the current world state;
- the player receives the minimum warning before possible contact;
- a non-interruptible action is protected or has an authored interruption path;
- safe rooms, cutscenes, menus, tutorials, and loading recovery remain excluded as declared;
- another full pressure episode is not already active;
- the physical staging/materialization anchor is loaded; a locked abstract route may traverse an unloaded zone, but it cannot materialize or begin contact there;
- the route does not require a locked, broken, or incompatible connector.

If no candidate passes, remain roaming or present a non-contact trace. Do not progressively relax hard constraints until something appears.

Recent visibility needs memory. Record zones, portals, or candidate anchors the player could meaningfully inspect, with time and confidence. A point just behind the camera is not automatically unobserved if the player cleared that dead end one second ago.

## Teach territory before first contact

Territory is the set of spaces, connectors, traces, and conditions in which the stalker can plausibly operate. It is not a texture painted over the map. Before the first contact-capable encounter, give the player enough evidence to predict at least one thing the stalker can or cannot reach.

Build a territory grammar:

```text
stable territory cue
connector or boundary it implies
first safe observation of behavior
local claim or warning about the stalker
observed confirmation or contradiction
route or counterplay decision the player can make
```

Examples of useful cues include a repeated residue on only stalker-compatible doors, a physical change at a crossed connector, a distant passage through an otherwise inaccessible route, a sound that follows the actual travel graph, or a disabled ward that visibly changes the territory. Purely decorative scratches or a global music sting do not teach reachability.

Keep claims separate from behavior. A note may say the stalker cannot cross water; observed footprints on the far bank contradict it. A local warning may be sincere but obsolete after an objective unlocks a shutter. Store claimant, context, and the behavior actually observed. The stalker controller reads world rules, not folklore; the evidence system may later use the contradiction.

The first safe observation should expose one locomotion, inspection, or withdrawal rule without demanding immediate survival. It may be a distant crossing, a view through protected glass, or a trace created while the player occupies excluded geometry. Do not reveal the entire state machine, but give a player something concrete to predict before direct pressure.

## Foreshadow before contact

Warning comes from the actual approach in the **Encounter-and-warning lock**.

Warning proves arrival has a cause and gives the player time to revise a plan. It may use footsteps, door motion, displaced dust, shadow, radio interference, moving lights, a found trace, another character's reaction, or a visible distant crossing. Choose signals that fit the world and support accessibility.

Define:

```text
warning start
warning channels and what they reveal
minimum warning-to-contact time
minimum path distance at warning
conditions that cancel or transform the encounter
```

The warning should reveal category and urgency without always revealing exact position. It must be generated from the selected route, not played globally while the stalker approaches from an unrelated direction.

Test worst supported input, camera, and latency conditions. A two-second audio warning is not usable for a player who relies on captions if the caption arrives late or names no direction.

## Build an encounter grammar with counterplay

Each shape fills one branch of the **Encounter-and-warning lock** and remains subordinate to topology, knowledge, and eligibility.

Create two or three bounded shapes before seeking variety. Examples of responsibilities, not mandatory content:

### Route crossing

The stalker travels across a connector the player intends to use. Warning permits waiting, rerouting, or creating a diversion. The stalker continues somewhere coherent rather than despawning after the crossing.

### Objective interruption

An exposed objective or world signal draws investigation. The player may interrupt work, complete a risky final step, lock a route, hide, or spend a resource. The objective retains consistent partial-progress rules.

### Search pressure

The stalker reaches credible evidence and searches a bounded cluster of sites. It cannot query the hidden player's current location. The player can relocate, misdirect, wait, or use a project-specific defense.

Every shape needs a legal start, warning, possible escalation, counterplay, success or disengagement condition, failure condition, withdrawal, and recovery. Counterplay must change simulation state: lock a connector, break a trail, create evidence elsewhere, reach protected geometry, stun at cost, or exploit a sensory rule. A button that plays an animation but does not affect the stalker is not counterplay.

Do not force each opportunity to become pursuit. Non-contact passages and canceled encounters make the world feel larger and keep warnings credible rather than synonymous with mandatory attack.

## Shape pressure across objectives

Use the objective route in the **Encounter-and-warning lock** and the exact threshold/cooldown from the **Pressure-eligibility lock**.

Plan a bounded route before global campaign integration. Record expected calm, suggested presence, contact opportunity, and recovery around each objective. The route should not increase monotonically until it becomes exhausting.

A useful sequence can alternate:

```text
orientation calm
trace or distant evidence
first bounded encounter
recovery and route choice
objective-caused investigation
stronger encounter using learned counterplay
final objective with explicit escalation
success lock and release
```

Objective progress may unlock stalker connectors, abilities, or encounter shapes only when the world communicates the change. Difficulty should adjust named values—warning, speed, search breadth, budget gain, cooldown, damage, resource cost—rather than silently removing hard fairness constraints.

Track repetition. Avoid selecting the same connector, warning, or counterplay pattern until alternatives have had a chance. Repetition history should survive save/load if saving mid-route is supported.

## Let pressure end

Withdrawal follows the encounter grammar; episode spend, cooldown, and later eligibility follow the **Pressure-eligibility lock**.

Recovery is part of the mechanic, not empty time to optimize away. When an episode closes:

- clear confirmed pursuit according to actual sensory loss or counterplay;
- finish a bounded search or withdrawal;
- return the stalker to a valid roaming or abstract route;
- spend pressure budget and begin cooldown;
- reduce intense presentation;
- prevent immediate restaging near the same player route;
- retain consequences that the contract declares persistent.

Use minimum cooldown plus state conditions rather than time alone. If the stalker is still visibly searching outside a hiding place, a director timer expiring should not start a second encounter. If the player enters a safe room, integrate with its threat reconciliation rather than maintaining hidden contact pressure inside.

Do not punish slow navigation, menu use, controller remapping, accessibility settings, or refuge occupancy by accumulating an enormous immediate encounter debt.

Declare release separately from director cooldown. Release answers why the stalker no longer has current contact or a valid search reason. Cooldown answers when another full episode may become eligible. A timer reaching zero cannot release a stalker that still sees the player or has not completed its bounded search.

For every encounter shape, record:

- confirmation-loss cause;
- last-known evidence retained;
- search sites and maximum breadth;
- search-complete or counterplay release condition;
- withdrawal connector and visible/audible cue;
- state retained after withdrawal;
- director spend and cooldown start;
- what can reacquire the player during release;
- proof that the episode is over from the player's supported presentation modes.

A declared end cue might be a retreat through a named shutter, a stopped search cadence plus a visible connector crossing, a ward returning to its stable state, or a confirmed route departure. Silence alone is insufficient when the player cannot distinguish withdrawal from waiting outside a hiding place.

## Preserve success, failure, save/load, and restart

Use the snapshot and reset fields in the **Persistence-and-authority lock**, including abstract connector progress and any pending materialization transaction.

The first implementation should contain three connected zones and a bounded objective route. It needs:

- one trace or distant sign before direct pressure;
- at least two encounter shapes;
- one opportunity that valid constraints cancel or defer;
- at least two counterplay choices across the route;
- an understandable failure from ignored warning or failed counterplay;
- route completion that locks success before further pressure;
- save/load or checkpoint behavior appropriate to the project;
- restart from every important director and stalker state.

Define capture recovery as a state transition, not merely a death screen. Record checkpoint, retained route knowledge, objective progress, spent/restored counterplay, stalker zone and knowledge, pressure budget, repeated-encounter exclusion, and any accessibility assist. A modifier may help the next attempt—such as retaining an observed connector—or impose a declared cost, but it must not create an unexplained difficulty spiral.

Save persistent stalker identity, physical or abstract location, connector progress, behavior and knowledge, history, altered abilities, pressure budget/phase, cooldown, selected encounter and seed, world connectors, objectives, resources, and outcome. Avoid saving halfway through an unsafe materialization transaction; define a stable reconstruction point.

Restart clears pending opportunities, warning events, materialization locks, routes, timers, searches, attacks, director debt, audio, camera effects, UI, network messages, and outcomes. It restores intended initial identity and world state rather than creating a second stalker.

Verify capture before warning, during approach, during confirmed pursuit, during search, and after release begins. Save/load at the same points must reproduce territory cues, local claims, observed behavior, last-known evidence, release progress, withdrawal route, capture modifier, and encounter-history exclusions without duplicating the stalker.

## Accessibility without converting pressure into punishment

Accessibility may tune values declared mutable by the **Pressure-eligibility lock** or **Encounter-and-warning lock**; it cannot silently weaken the **World-route-and-identity lock**, **Stalker-knowledge lock**, or hard rejections owned by the **Pressure-eligibility lock**.

Provide configurable, redundant warning and counterplay:

- pair important spatial audio with directional captions, world motion, light, or haptic cues as suitable;
- expose reduced camera shake, flash, high-contrast effects, abrupt volume, and vibration;
- support remapping, hold/toggle interactions, and sufficient action windows for supported input devices;
- let difficulty change warning duration, search breadth, speed, attack windup, cooldown, and resource costs as named tunables;
- never raise pressure because a player uses a menu, reads text slowly, pauses where permitted, or enables an assist;
- preserve recent-visibility and doorway exclusions on every difficulty;
- mark assists that change knowledge or timing and verify the route with them.

Warnings should transmit intended information through alternatives without drawing exact hidden routes unless another supported channel already provides them.

## Multiplayer authority when relevant

Use the **Persistence-and-authority lock**. A changed relevant-player set or host model also reopens visibility rejection and encounter timing.

Do not add networking without a project requirement. In multiplayer, define whose position and progress influence pressure, whether the stalker can split attention, and whether the party shares success and failure.

This Skill's authoritative host owns stalker identity, zone, knowledge, route, pressure budget, encounter choice, materialization, movement, and attack intent/commitment. Combat or pursuit authority owns reach, hit, damage, capture, and contact result; objective and bounded-encounter authorities own their objective state and escape-success/reset aggregation. Clients receive enough reason state to present warnings consistently without learning hidden transforms. Candidate selection must consider every relevant player's camera, recent visibility, collision, safe state, and unavoidable routes.

Test players in different zones, contradictory visibility, simultaneous objective events, one player inside a safe room, disconnect during staging, latency at warning/contact boundaries, reconnect, and host migration if supported. Never spawn the stalker behind one player merely because another player's camera cannot see the point.

## Respect the available Harness and tools

The Harness limits which evidence can close the **Persistence-and-authority lock**; it cannot justify invented continuity or untested materialization.

This Skill is a method and package of documents. It does not contain an engine, navigation system, asset generator, browser, backend, or deployment service.

- Use the project's current runtime, tests, navigation, streaming, AI, and assets.
- Browser automation proves only a web build it actually executes.
- Image, sound, video, and 3D generation are optional capabilities, not prerequisites for a pressure proof.
- A configured API or MCP service may be used only within authorization and need.
- Labeled proxies and debug traces are preferable to unverified decorative generation.
- Never substitute a trailer or prerecorded sequence for systemic behavior.

If execution is blocked, report commands, errors, environment, and the exact claims left unverified. Continue with safe inspection and a contract rather than inventing results.

## Verify continuity and pressure boundaries

Execute the matrix owned by the **Persistence-and-authority lock** against the **World-route-and-identity lock**, **Stalker-knowledge lock**, **Pressure-eligibility lock**, and **Encounter-and-warning lock**. Rerun every dependent row named by a reopened layer.

Run and save evidence for at least these checks:

1. One stalker ID persists across every loaded and unloaded zone; no duplicate active instance appears.
2. Every player and stalker connector respects direction, state, travel time, navigation, and streaming.
3. Abstract travel advances through a declared unloaded route without a scene instance, survives save/load, and materializes only after the destination loads at a legal candidate.
4. Camera-visible, recently inspected, occupied, doorway, safe, physically unloaded, unreachable, and no-counterplay staging candidates are rejected.
5. With a legal candidate held constant, budget just below, exactly at, and above the locked threshold follows the declared comparator; starting one episode spends budget once and begins the declared recovery/cooldown policy.
6. The director can return “no encounter” without falling back to an illegal appearance, and applies the locked retain, cap, spend, or defer rule.
7. Every encounter delivers its minimum warning before possible contact through supported presentation settings.
8. Knowledge changes only from declared evidence; hidden player movement does not drag investigation.
9. Each counterplay changes state and can succeed or fail at documented boundaries.
10. At least one route crossing and one objective/search encounter begin, escalate, withdraw, and enter recovery correctly.
11. Cooldown prevents immediate repetition and does not build punitive debt during safe or accessibility states.
12. Objective completion, failure, success lock, save/load, and restart preserve coherent state.
13. Seeded or deterministic replay reproduces selection; allowed variations all pass fairness rules.
14. Supported input, viewport, accessibility, rendering, and network conditions preserve warning and outcome.

Use zone traces, candidate rejection logs, state timelines, route paths, save snapshots, and deterministic playthroughs. A screenshot proves only spatial presentation. Label each claim `verified`, `inferred`, `proposed`, or `blocked` and name the environment.

## Deliver and hand off

Hand off the current **World-route-and-identity lock**, **Stalker-knowledge lock**, **Pressure-eligibility lock**, **Encounter-and-warning lock**, and **Persistence-and-authority lock** artifacts. Save documentation in the project convention. If none exists:

```text
gameplay/<stalker-slug>/mechanic.md
gameplay/<stalker-slug>/tunables.yaml
gameplay/<stalker-slug>/verification.md
```

End with:

- the run command, bounded route, controls, and objectives;
- the zone graph and stalker-compatible connectors;
- the stalker's knowledge and persistent identity rules;
- the director's budget, eligibility, hard exclusions, seed, and cooldown;
- each warning, encounter shape, counterplay, withdrawal, and recovery verified;
- save/load, success, failure, and restart results;
- reused assets, proxies, supported settings, network mode, blockers, and remaining proposals.

Do not claim unpredictability, balance, production readiness, accessibility, or network safety beyond the actual evidence.
