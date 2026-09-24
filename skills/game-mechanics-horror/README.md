# Horror Game Mechanics

Twenty-three standalone Agent Skills cover familiar horror-game situations and the composition layers that make them feel like one experience. They describe what the player understands and does, what the simulation is allowed to know, how pressure changes a decision, what survives failure, and what evidence is needed before an encounter can be called playable.

Every package contains an original method written for this repository or a documented transformation of the user's own supplied mechanics material. `SOURCE.md` records that boundary. Examples use original fictional settings and demonstrate completed fields; their maps and values never become silent defaults.

## Install and call one Skill

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-lure-hide-escape
```

Then call its Slash name before the project brief:

```text
/worldview-game-lure-hide-escape

Use my existing hotel floor and creature. Let the player create a sound on the
far side, hide beneath the bed, wait for the search to move away, and leave by
the second door. Build one real success, one early-exit failure, and a clean reset.
```

> [!NOTE]
> Each Skill can be installed and used alone. Combining Skills is optional: invoke one to establish its contract, preserve that result in the project, then invoke another against the same project state.

## What the Agent locks before it writes code

Each Skill defines its own sequence. A barricade locks the route exchange before breach timing. Entity identification locks the candidate matrix before clue placement. A death loop locks reset ownership before save code.

Every sequence records the same control fields:

| Field | What it prevents |
| --- | --- |
| Locked artifact | Later work cannot quietly replace the agreed map, state table, clue matrix, protocol, or data boundary. |
| Lock condition | The Agent knows what evidence or decision is sufficient to continue. |
| Still mutable | Ordinary tuning can continue without reopening settled rules. |
| Reopen trigger | A real project discovery can deliberately unlock an earlier decision. |
| Dependent work to invalidate | Old code, timing traces, save cases, screenshots, or claims are discarded when their premise changes. |

The package template gives the Agent a fillable layer-lock record. Its example shows exact room names, state fields, thresholds, and invalidated evidence instead of a generic checklist.

## Choose by the decision the player should make

### Pursuit, detection, and temporary safety

| Skill | Use it when | Primary result |
| --- | --- | --- |
| [`worldview-game-lure-hide-escape`](worldview-game-lure-hide-escape/README.md) | The player should create a false point of interest, break observation, hide, and judge a second-route escape window. | Pursuer-knowledge, map, hiding, timing, success, failure, and restart contract. |
| [`worldview-game-observation-gated-stalker`](worldview-game-observation-gated-stalker/README.md) | A threat may advance only while no valid observer can see it. | Observation rule, frozen/moving boundary, multiplayer authority, and camera-edge verification. |
| [`worldview-game-sound-detection-and-distraction`](worldview-game-sound-detection-and-distraction/README.md) | Footsteps, surfaces, actions, and deliberate noise should change what a listener believes. | Causal sound events, propagation, listener memory, distraction route, and heard/unheard evidence. |
| [`worldview-game-roaming-stalker-pressure`](worldview-game-roaming-stalker-pressure/README.md) | A persistent threat should roam a connected map, search plausibly, and create pressure without teleporting onto the player. | Route graph, pressure model, encounter spacing, anti-camping response, and fair re-entry rules. |
| [`worldview-game-safe-room-pressure-reset`](worldview-game-safe-room-pressure-reset/README.md) | A protected room should let the player reorganize and breathe without deleting all accumulated danger. | Boundary, entry, pursuer disengagement, resource, exit-pressure, save, and reset rules. |
| [`worldview-game-barricade-delay-and-route-choice`](worldview-game-barricade-delay-and-route-choice/README.md) | Blocking one approach should buy time while consuming access, material, silence, or a future route. | Stateful barrier, shared route mutation, useful-delay calculation, breach/detour, and persistence evidence. |
| [`worldview-game-chase-route-architecture`](worldview-game-chase-route-architecture/README.md) | A pursuit should be a learnable building with a main route, risky alternatives, failure loops, and recovery—not an enemy following the player's transform. | Architectural graph and annotated plan, route legality, sight/hearing/microphone/sanity contracts, timing margins, checkpoints, and runtime proof. |

### Scarcity, preparation, and bodily risk

| Skill | Use it when | Primary result |
| --- | --- | --- |
| [`worldview-game-scarce-inventory-triage`](worldview-game-scarce-inventory-triage/README.md) | Limited carrying space should force readable preparation and leave/store/use decisions. | Capacity and item-role model, viable loadouts, overflow recovery, protected progression items, and persistence checks. |
| [`worldview-game-key-item-backtracking`](worldview-game-key-item-backtracking/README.md) | Finding an object should make a remembered lock and return route newly meaningful. | Gate/key contract, changing route graphs, shortcut, anti-softlock proof, and save-boundary verification. |
| [`worldview-game-limited-save-risk`](worldview-game-limited-save-risk/README.md) | Choosing when to create a durable manual record should be a survival decision. | Save-opportunity economy separated from crash recovery, transactional write safety, accessibility override, and storage evidence. |
| [`worldview-game-wounds-infection-and-treatment`](worldview-game-wounds-infection-and-treatment/README.md) | An injury should create a fictional, readable, time-dependent sequence of stabilization, travel, treatment, and reassessment. | Condition state model, treatment decisions, reduced-intensity presentation, save/authority rules, and explicit non-medical boundary. |

### Investigation, instruments, and interrupted objectives

| Skill | Use it when | Primary result |
| --- | --- | --- |
| [`worldview-game-restore-power-under-pressure`](worldview-game-restore-power-under-pressure/README.md) | The player must find components, repair a system under threat, and make newly powered space usable. | Component, repair, interruption, circuit, world-consequence, failure, and reset contract. |
| [`worldview-game-signal-proximity-tracking`](worldview-game-signal-proximity-tracking/README.md) | A tool or sense should reveal bounded information about a hidden nearby threat. | Distance/topology/interference signal model, readable bands, route decisions, and boundary tests without live-coordinate leakage. |
| [`worldview-game-evidence-based-entity-identification`](worldview-game-evidence-based-entity-identification/README.md) | Players should distinguish an unknown entity through valid positive, negative, inconclusive, and contaminated tests. | Candidate matrix, test protocols, evidence ledger, authoritative conclusion, and solvability proof. |
| [`worldview-game-threat-interrupted-puzzle`](worldview-game-threat-interrupted-puzzle/README.md) | A world-space puzzle should preserve or roll back declared progress when danger forces the player to disengage. | Puzzle checkpoints, warning window, interruption matrix, recovery, completion consequence, and reset evidence. |

### Trust, memory, and shared knowledge

| Skill | Use it when | Primary result |
| --- | --- | --- |
| [`worldview-game-perception-distortion-and-trust`](worldview-game-perception-distortion-and-trust/README.md) | Selected cues should become unreliable while accessible anchors preserve fair reasoning. | Truth/presentation separation, authored substitutions, exposure tiers, recovery, and comfort/accessibility verification. |
| [`worldview-game-death-loop-persistent-clues`](worldview-game-death-loop-persistent-clues/README.md) | Failure should reset a bounded world while preserving knowledge that changes the next decision. | Reset/persist/transform ledger, clue dependency graph, two-pass proof, honest save operations, and data-safety evidence. |
| [`worldview-game-asymmetric-information-cooperation`](worldview-game-asymmetric-information-cooperation/README.md) | Different players should combine partial information and role-specific actions under pressure. | Role contracts, information-action graph, accessible communication vocabulary, acknowledgement, authority, and reconnect tests. |

### Experience composition and social pressure

| Skill | Use it when | Primary result |
| --- | --- | --- |
| [`worldview-game-horror-experience-rhythm`](worldview-game-horror-experience-rhythm/README.md) | Existing rooms or mechanics feel flat, rushed, exhausting, or like disconnected scares. | Dual-clock timeline, attention budget, pressure/cost/recovery/payoff rhythm, sensory cue contract, and beat verification. |
| [`worldview-game-horror-returning-place-escalation`](worldview-game-horror-returning-place-escalation/README.md) | A familiar room, street, workplace, or social hub should change meaning on each return. | Stable landmark grammar, return-state graph, changed physical/social facts, recovery edge, persistence, and payoff tests. |
| [`worldview-game-horror-mundane-routine-corruption`](worldview-game-horror-mundane-routine-corruption/README.md) | Serving, driving, studying, sleeping, cooking, cleaning, or playing should become a rule-based horror loop. | Normal routine, exception ladder, comply/inspect/refuse/leave choices, state consequences, recovery, and reset evidence. |
| [`worldview-game-horror-procedural-duty-and-incident`](worldview-game-horror-procedural-duty-and-incident/README.md) | The player's job should make an abnormal scene worth approaching and inspecting. | Duty/authority contract, teachable procedure, inspectable incident, response modes, route consequences, and verification. |
| [`worldview-game-horror-role-and-identity-pressure`](worldview-game-horror-role-and-identity-pressure/README.md) | Recognition, social position, appearance, or a claimed role should become a fair horror decision. | Stable identity tests, contaminated evidence rules, social choices, presentation conflicts, accessibility, and safety checks. |

## Compose without hiding dependencies

A larger horror game may use several Skills, but one giant invocation should not blur their contracts. Build and verify them in an order that respects the project:

```text
composition layer
  horror experience rhythm
  -> mundane routine corruption or procedural duty
  -> returning-place escalation or role/identity pressure
  -> detailed survival, investigation, or pursuit mechanic

survival route
  scarce inventory triage
  -> key-item backtracking
  -> roaming stalker pressure
  -> safe-room pressure reset

field investigation
  signal proximity tracking
  -> evidence-based entity identification
  -> restore power under pressure

cooperative encounter
  asymmetric information cooperation
  -> threat-interrupted puzzle
  -> barricade delay and route choice
```

The later Skill reads the implemented project state left by the earlier one. Each package remains usable alone. If a later mechanic conflicts with a locked decision, it reopens that decision and names the tests and evidence that must be replaced.

Perspective is a separate axis. First-person, third-person, 2.5D, isometric, and side-view Skills will define how the player sees and controls space; these horror mechanics define what happens in that space. See the [game Skill architecture](../../docs/game-skill-architecture.md).

## What every package contains

```text
worldview-game-<recognizable-result>/
├── README.md                         human-facing choice and invocation
├── SKILL.md                          full Agent method
├── SOURCE.md                         authorship and transformation boundary
├── references/why-this-mechanic-works.md
├── templates/mechanic-contract.md        fillable layer locks and mechanic fields
└── examples/<original-example>.md
```

The executable body recovers existing project truth before proposing changes, explains why each rule exists, records rejected shortcuts, works with capabilities actually present in the Harness, and distinguishes screenshots from behavioral evidence. A package produces implementation only when a runtime is available; otherwise it stops at an implementation-ready contract and names what remains unverified.

## Source map

Each package has its own `SOURCE.md` with the exact input and rewrite boundary.

| Source | Skills | How it was used |
| --- | --- | --- |
| User-supplied mechanics brief | `worldview-game-lure-hide-escape`, `worldview-game-observation-gated-stalker`, `worldview-game-restore-power-under-pressure` | These packages record the internal brief consulted. Their expanded methods, lock sequences, templates, and public examples are repository-authored. |
| The user's original horror-game design requests and private qualitative observations | The other 20 Skills in this category | The mechanic methods and fictional examples were written from the requested design problems and transformed player-facing relationships. No external Skill supplied their content. |

## Collection boundaries

- No package includes an engine, model provider, asset generator, networking service, browser, or deployment account.
- No package may replace requested gameplay with a rendered video.
- No package may present guessed tuning, inaccessible input, a mockup, or an unrun document as verified play.
- External games and external Skills are not renamed, translated, or paraphrased into this collection.
- Real medical, psychological, accessibility, networking, and data-safety claims require the relevant evidence and expertise; each package states its boundary.
