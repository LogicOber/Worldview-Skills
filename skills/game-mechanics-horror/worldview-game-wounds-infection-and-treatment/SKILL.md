---
name: worldview-game-wounds-infection-and-treatment
description: "Use when a survival or horror game needs a playable, time-dependent loop for fictional wounds, contamination or infection risk, staged treatment, reassessment, and recovery. Produces an implemented condition loop when a runtime is available, plus a state model, treatment contract, tunables, accessibility and content-safety options, persistence rules, and verification. Do not use for real medical advice, instant damage-only health, or narratives that frame illness or disability as guilt, corruption, lesser personhood, or an automatic path to monstrosity."
---

# Worldview Game — Wounds, Infection, and Treatment

## Call this Skill

The public invocation is:

```text
/worldview-game-wounds-infection-and-treatment
```

Treat everything after the Slash command as the world, project, route, and tone brief. Do not ask the user to invent clinical values.

## Companion file routing

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already has an equivalent condition contract.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding fit, resolving treatment-pressure or representation tradeoffs, or tuning; skip it for a narrow implementation whose contract is locked.
- Read [glass-orchard-infirmary.md](examples/glass-orchard-infirmary.md) only when a filled fictional example clarifies a field; its states and values are not medical or portable defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate reviewed material, user facts, and repository decisions, not for treatment guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the survival problem without turning a person into a condition

The mechanic begins when a harmful event creates unfinished business. Immediate damage may end, but the wound still needs attention. The player decides whether to spend a limited supply now, stabilize and move, reach a safer treatment point, or accept a declared risk of escalation. Treatment then becomes route planning rather than a health-button animation.

The condition belongs to the character's current body state; it is not a moral judgment. Illness, infection, disability, pain, scarring, and dependence on assistance do not imply evil, weakness of character, contamination of identity, or loss of personhood. Horror may arise from danger, uncertainty, isolation, institutions, or fictional organisms. Do not borrow dehumanizing associations from real people to make that horror legible.

This Skill is appropriate for fictional survival systems. It is not medical advice. If the user requests clinical realism, require project-approved sources and qualified review for diagnosis, progression, and treatment claims. Until reviewed, label values and actions as fictional abstractions and avoid actionable real-world instructions.

Do not route here:

- ordinary hit points with immediate recovery and no continuing condition;
- a cosmetic wound decal with no player decision;
- real-world diagnosis, triage, or first-aid guidance;
- a disease-spread population simulation;
- a narrative-only transformation with no treatment gameplay;
- a system whose main effect is deliberately making controls unusable.

## What the user gives

Accept relevant combinations of:

- an authorized project and runtime;
- health, damage, status, time, inventory, interaction, rest, and save code;
- fictional hazard, exposure, and treatment rules already declared by the world;
- route layout, treatment locations, supplies, and intended encounter pressure;
- desired visual, audio, and textual intensity;
- accessibility, content-warning, localization, and multiplayer constraints;
- reviewed specialist material when realism is explicitly required.

Inspect only materials placed in scope. Keep four categories separate: declared project facts, behavior directly observed in a build, new fictional design proposals, and externally reviewed claims. Do not transform a proposal into a medical fact through confident wording.

If no project exists, author the smallest slice that proves the loop: one avoidable hazard, a readable wound, one portable stabilization choice, a fuller treatment point reachable through pressure, at least two timings, reassessment, recovery or escalation, and restart.

## What the user receives

Complete as much as the environment supports:

1. A reuse inventory naming health, status, item, animation, UI, time, save, route, sound, and network systems inspected.
2. A mechanic contract defining wound creation, condition dimensions, player knowledge, treatment stages, costs, progression, recovery, failure, restart, accessibility, content safety, persistence, and authority.
3. A condition model with explicit transitions, clocks, thresholds, interventions, interrupt rules, and evidence boundaries.
4. Tunables separated from code, described as fictional gameplay values unless reviewed otherwise.
5. A working implementation in the project's actual runtime when available; otherwise an implementation-ready contract and exact blocked claims.
6. Verification for avoidance, prompt and delayed treatment, invalid treatment, escalation, recovery, save/load, time pause, restart, accessibility, reduced-intensity presentation, and multiplayer if implemented.

Do not call a meter medically accurate. Do not call a screen effect accessible because it can be disabled without checking that the replacement information remains sufficient.

## Lock fictional causality before implementation

These locks are ordered dependencies. A later layer may tune only what its row leaves mutable; it cannot turn a fictional proposal into a medical claim or silently redefine an earlier state. If review, inspection, or implementation finds a contradiction, reopen the earliest affected lock, revise its artifact, and invalidate all dependent code, transition traces, saves, and representation claims. Ask one grouped question only when the brief supports incompatible fictional causes, outcomes, or treatment meanings.

| Lock | Question resolved | Locked artifact | Lock condition | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Fiction and Representation Lock** | What is explicitly fictional, which claims require qualified review, and which language, imagery, and outcomes preserve personhood? | A fiction/medical boundary, reviewed-claim register, prohibited-association list, content-warning scope, and reduced-intensity information contract. | Every player-facing claim is categorized; unreviewed rules are labeled fictional; essential information survives reduced intensity; outcomes avoid moral blame, disability-as-failure, and illness-as-automatic-monstrosity. | Invented terminology, art intensity, and nonessential presentation may change within the same information and representation boundary. | Reopen when realism is requested, a reviewer changes a claim, transformation meaning changes, or a new presentation removes/substitutes information; invalidate dependent text, state labels, treatment descriptions, warnings, and review evidence. |
| **Condition Model Lock** | Which independent state dimensions exist, and what declared cause moves each one? | A condition schema with stable wound IDs and a transition table naming causes, signals, interventions, exceptions, and outcomes. | Every gameplay effect and treatment reads a named dimension; no transition depends only on an opaque roll or unstated diagnosis; prompt and delayed paths are representable. | Numeric thresholds, durations, and effect strength remain mutable until the next lock. | Reopen when a dimension, transition cause, intervention target, coexistence rule, or failure state changes; invalidate clocks, treatment stages, persistence schema, and causal traces. |
| **Clock Policy Lock** | Which time source advances conditions and treatment, and what happens during pause, menus, loading, suspend, and save/load? | A clock-policy table tied to condition transitions and supported lifecycle states. | Every lifecycle state has explicit condition-clock and treatment-clock behavior, and deterministic restoration is defined. | Fictional thresholds, durations, and seeded values remain mutable until the Treatment Route Lock. | Reopen when simulation timing, lifecycle behavior, or deterministic-time ownership changes; invalidate every treatment margin, save fixture, progression trace, and difficulty result. |
| **Treatment Route Lock** | Which intervention changes which dimension, and how do thresholds, supplies, interruption, travel, reassessment, and assists create recoverable choices? | A staged treatment matrix plus threshold/timing budget, route-pressure graph, initial and replenished resource ledger, per-stage charge boundary, invalid/interrupted outcome table, accessible alternatives, and success/escalation/failure boundaries. | Each stage has a specific state effect, resource before/after count, commit point, and completion signal; prompt and delayed routes remain viable under the locked clock policy; invalid and pre-commit interrupted treatment cannot consume a resource or grant an effect; post-commit interruption preserves both; at least one escalation has enough declared resources to remain recoverable. | Resource counts, thresholds, stage durations, route threat tuning, and assist values may move only inside verified ranges that preserve those cases. | Reopen when a treatment affects another dimension, a route closes, a threshold order changes, a resource count or owner changes, a charge/interrupt rule changes, or an assist changes the decision; invalidate timing, route, resource-ledger, interruption, accessibility, success, and failure traces. |
| **Persistence and Authority Lock** | How do wound identity, time, partial treatment, resources, restart, and multiplayer aid resolve to one authoritative state? | A saved condition schema, reconstruction order, atomic resource transaction, restart inventory, migration rule, and host/server authority record when relevant. | Save/load and restart reproduce one state without offline catch-up or duplicate effects; repeated aid consumes once; disconnect and migration have recoverable outcomes. | Serialization format details, client prediction, and diagnostic logging may change if identity and commit semantics remain stable. | Reopen when schema, save clock, restart baseline, transaction boundary, migration, or network topology changes; invalidate round-trip, duplicate-request, disconnect, and late-join evidence. |

Implementation begins only after all five lock artifacts agree: fiction/representation, condition dimensions, clock policy, treatment route and resource outcomes, and persistence/authority semantics. Evidence may remain explicitly unverified before a runtime exists, but the implementation must not invent a missing commit, restart, or ownership rule. Missing medical review blocks only the claims that require it; it does not authorize invented clinical certainty.

## Recover the existing body, world, and time rules

This section builds the **Fiction and Representation Lock** and recovers evidence needed for the condition and clock artifacts.

Before editing, record:

```markdown
## Facts declared by the project or user
- Existing health and status model:
- Fictional hazard and transmission rules:
- Existing treatment resources:
- Route and safe treatment points:

## Behavior observed in a running build
- Damage and condition updates:
- Pause, save, load, and restart behavior:
- Current feedback and accessibility paths:

## Fictional proposals introduced here
- Wound dimensions:
- Progression and treatment stages:
- Why each is needed:

## Reviewed claims, if any
- Claim:
- Approved source/reviewer:
- Scope and date:
```

Do not generate replacement body art, sound, voice, or medical text merely because a tool is available. Reuse authorized project assets, use labeled neutral proxies for missing dependencies, and obtain appropriate permission before external generation or service calls.

## Model wound state separately from infection progression

This section defines the dimensions owned by the **Condition Model Lock** under the already fixed fiction boundary.

Avoid one opaque “sickness” number. Track only dimensions the mechanic uses, but keep their responsibilities distinct:

```text
wound instance       stable identity, fictional type, location, source, creation time
physical severity    immediate local state and stabilization needs
contamination load   fictional exposure introduced by the event or environment
infection stage      declared progression after relevant conditions are met
treatment state      interventions applied, duration, completion and interruption
systemic strain      optional broader gameplay pressure, not a judgment of personhood
recovery state       improving, stable, unresolved, or escalated by declared rules
```

These labels are internal design concepts. Adapt them to the project's fiction and avoid presenting them as universal biology. One wound can remain severe without infection; contamination can be reduced before infection begins; treatment can address one dimension without instantly erasing all others.

Use stable wound identifiers if several wounds can coexist. Do not let one generic status overwrite another wound's treatment, timer, or feedback. If the project supports only one wound, state that limitation instead of implying an extensible medical simulation.

## Establish a causal transition model

This section completes the **Condition Model Lock** and supplies the transitions governed by the **Clock Policy Lock**.

Write every transition with cause, clock, signal, intervention, and exception:

| From | To | Cause | Player-visible evidence | Interventions | Exceptions |
| --- | --- | --- | --- | --- | --- |
| none | wounded | authored hazard resolves |  | avoidance/protection |  |
| wounded | stabilized | valid immediate action completes |  |  | interruption |
| contaminated | infection-risk | declared exposure and time condition |  | cleaning stage | protected state |
| risk | localized infection | fictional threshold reached |  | complete treatment | reviewed exceptions |
| treated | recovering | required stages and reassessment succeed |  | rest/time | reinjury |

Never use an unexplained random roll as the only cause of escalation. If probability belongs to the project, expose the contributing state to designers, seed it deterministically where saves require reproducibility, and give the player readable risk categories rather than false precision.

Do not claim a percentage is a real medical likelihood. It is a game parameter.

## Fix clock ownership across lifecycle states

This section completes the **Clock Policy Lock** for the transitions already fixed by the condition model.

Determine which clock advances the condition and each active treatment stage: active simulation time, unpaused game time, authored travel transitions, or another explicit source. Conditions must not progress unpredictably while the game is paused, in menus, closed, loading, or waiting on accessibility interaction unless that behavior is knowingly designed, communicated, and safe.

## Make the wound readable before demanding a decision

This section implements the information requirements fixed by the **Fiction and Representation Lock** for every condition state.

Communicate the current condition, trend, and available action through several channels:

- plain-language inspection text;
- icon shape and pattern rather than color alone;
- character animation that can be reduced or disabled;
- optional sound, haptics, and controller feedback;
- a condition log that records what changed and why;
- treatment previews naming which declared state they affect.

Avoid forcing players to infer essential state from graphic imagery, heartbeat audio, camera distortion, or rapid flashing. Provide a reduced-intensity mode that replaces gore, pulsing, distortion, and invasive audio with neutral but complete information.

Inspection should not require a medically correct diagnosis. It presents the fictional rule the player is expected to use: for example, “unstabilized,” “contamination increasing,” or “treatment incomplete.” Localize terms and avoid using real diagnostic labels casually.

## Build treatment as stages with distinct purposes

This section fills the intervention side of the **Treatment Route Lock** without changing the dimensions each stage is allowed to affect.

Define only the stages supported by the fictional model. A common abstract sequence may include:

```text
inspect        reveal the state and valid actions
stabilize      slow an immediate harmful dimension long enough to move
decontaminate  reduce the declared fictional exposure under stated conditions
protect        prevent re-exposure or interruption during travel
treat          apply the world's specific remedy to the relevant stage
reassess       confirm response, identify incomplete work, or reveal escalation
recover        advance under a safe declared clock and conditions
```

This sequence is a game design scaffold, not real treatment instruction. Do not name real dosages, promise efficacy, or turn an invented process into practical guidance.

Each item or station states what it changes, how long it takes, what interrupts it, whether it is consumed, and what feedback confirms completion. A generic treatment object that erases every wound, contamination, and infection state removes the planning loop unless that simplicity is deliberately requested.

Give each resource an exact initial count, replenishment rule, and per-stage charge. Include the complete escalated route rather than proving only the cheaper prompt route. If recovery after escalation requires a second charge, the locked route must place or reserve that charge and show what happens when it is unavailable.

Treat each resource-using stage as a transaction:

```text
1. validate wound ID, condition preconditions, station/tool, and available resource
2. reserve the named charge without decrementing its authoritative count
3. run the stage timer under the locked treatment and condition clocks
4. atomically commit the declared state change and one resource decrement
5. emit completion feedback and release the reservation
```

An invalid request fails at step 1: it changes no condition dimension, starts no stage timer, reserves and consumes nothing, and explains the unmet fictional precondition. An interruption before step 4 releases the reservation and applies the contract's stated progress rule—normally reset to the stage start unless partial treatment is an explicit state. Time already advanced by the independent condition clock is not rewound. An interruption after step 4 preserves both the state change and resource decrement; retry or reload resumes presentation or reassessment under the same transaction identifier without charging again. Never consume the item first and grant its benefit later through an unprotected callback.

Portable stabilization and complete treatment should create different decisions. Stabilization may buy route time while leaving the underlying state unresolved. A fixed treatment point may be safer or more effective but require travel. Ensure the player understands the difference before spending a scarce item.

## Derive pressure from route, time, and supplies

This section completes the timing and route side of the **Treatment Route Lock** under the already fixed **Clock Policy Lock**.

Map the distance and expected active time from hazard to stabilization, fuller treatment, alternate resources, and any irreversible boundary. Record which threats can interrupt treatment and whether a safe interaction can be created through prior action.

Compare:

```text
time to next readable condition change
time to perform portable stabilization
time to reach fuller treatment under actual movement and route hazards
time required for treatment stages and reassessment
resource opportunity cost of each route
```

Do not make progression continue during unskippable presentation or a menu the player must use to select treatment. If real-time inventory is an intentional pressure, accessibility settings must permit sufficient operation time or a pause.

Provide at least one recovery path after a delayed but reasonable choice. Escalation can make the route harder or more expensive without turning one missed prompt into an unknowable doomed run.

## Keep injury effects from becoming control punishment

This section constrains mechanical effects and assists through the **Fiction and Representation** and **Treatment Route** locks.

An injury may change movement cost, action duration, aim stability, stamina, perception, or available routes if the project wants embodied consequence. Keep these effects bounded, predictable, and separately adjustable. Do not randomly drop inputs, invert controls, obscure the entire view, or simulate impairment by making the interface malfunction.

Never describe a person using a mobility aid, treatment, medication, rest, or assistance as lesser. If the world includes permanently disabled characters, do not use a temporary wound system as an analogy that assumes their ordinary body is a failure state waiting to be cured.

Offer assists that reduce or remove mechanical penalties while preserving condition information and treatment decisions. The player may choose lower progression pressure, longer treatment safety, automatic stabilization, reduced screen effects, or simplified stages according to the project.

## Avoid dehumanizing infection narratives

This section enforces the **Fiction and Representation Lock** across narrative language, objectives, and outcomes.

If the fiction includes a transformative organism or infection, define it as an invented world rule. Do not imply that real contagious illness, visible difference, cognitive disability, psychiatric experience, chronic condition, scarring, or dependence makes someone monstrous or disposable.

Keep personhood explicit in language and objectives. Characters remain people while injured, infected, treated, disabled, or unable to continue a task. Avoid labels that replace a person entirely with a condition. Do not make cruelty toward sick people the unquestioned optimal strategy.

When transformation is the intended fantasy, separate it from real illness through clearly fictional causation and terminology, include content warnings and intensity settings, and provide narrative review. Mechanical failure can be incapacitation, evacuation, objective loss, or another declared outcome without using dehumanization as shorthand.

## Work within the current Harness and tool boundary

This section limits implementation and evidence to capabilities that can preserve the locked fictional, review, and data boundaries.

This Skill contains no engine, medical database, diagnostic service, image generator, or deployment provider. Use only current authorized project and Harness capabilities.

- Prefer local code, tests, engine tools, project-approved writing, and licensed assets.
- Do not browse for medical guidance or invent clinical authority; use only approved sources and qualified review when realism is requested.
- Image, audio, video, and 3D generation are optional and require a genuine project need, appropriate permissions, and content-safety consideration.
- Browser automation proves only the tested web build.
- APIs and MCP services are used only when configured and authorized.
- Do not upload health information, user data, or sensitive project material to external services.

If review or runtime access is unavailable, label the model fictional and the behavior unverified. Do not conceal uncertainty with precise-looking values.

## Preserve success, failure, recovery, and restart

This section derives its complete slice from all five locks; an unexplained outcome reopens the earliest causal layer it contradicts.

A complete slice includes:

- one hazard the player can understand and avoid;
- a wound state with non-graphic readable feedback;
- a prompt-treatment route and a delayed-treatment route;
- at least one portable action and one fuller treatment opportunity when the design calls for both;
- a reassessment that shows improvement, incomplete treatment, or escalation;
- a recoverable escalation and a legible failure boundary;
- restart from hazard, progression, treatment, recovery, and failure states;
- a reduced-intensity presentation that preserves all necessary information.

Failure follows declared state. A hazard may incapacitate the player after visible escalation or make an objective unreachable in the current attempt, but an unexplained random death is not evidence of an infection system. Restart clears wound instances, timers, treatment reservations, screen effects, audio, modifiers, queued damage, and outcome state before restoring the correct baseline.

Do not make “restart” delete saves or settings. Do not reset accessibility preferences when restoring an older gameplay snapshot.

## Preserve saves and deterministic time

This section implements the **Persistence and Authority Lock** against the exact condition schema and clock policy already fixed.

Persist every authoritative wound identifier, dimensions, transition clock, treatment stage and interruption state, consumed resources, modifiers, and relevant world conditions. Store time in the project's stable simulation representation. Loading must not apply accidental offline catch-up or double the elapsed interval.

Pause, focus loss, loading, dialogue, inventory, and suspended application states follow one documented clock policy. Test across variable frame schedules when progression uses fixed simulation steps. If randomness is used, preserve enough state to reproduce the same saved outcome or explicitly document a fair reroll policy.

Migrate old condition data conservatively. Unknown critical stages remain recoverable or stop with a migration report; they do not silently become terminal states. Preserve a prior save version through migration where the platform permits.

For multiplayer, an authoritative host or server owns wound creation, progression clock, treatment validation, resource consumption, and recovery. Clients request treatment and present confirmed state. Duplicate or stale requests cannot consume supplies twice. Define who can treat another player, required proximity and consent or game-rule permission, interruption, disconnect, late join, and resynchronization.

## Verify causality and respectful presentation

This section verifies every lock and records contradictions as reopen events rather than adding silent exceptions.

Record at least these checks:

1. Avoid the hazard and confirm no wound state appears.
2. Resolve the hazard once and create exactly one stable wound instance.
3. Inspect through every supported information channel, including non-color and sound-independent paths.
4. Apply prompt stabilization and verify only the declared dimensions change.
5. Delay treatment across thresholds and confirm each transition has the expected cause and signal.
6. Attempt treatment with an invalid condition or missing prerequisite; confirm no timer, reservation, state effect, or resource decrement occurs and the reason is readable.
7. Interrupt each resource-using stage before its atomic commit; release the reservation, preserve the declared pre-stage state, retain the resource, and keep only condition-clock time that legitimately elapsed.
8. Interrupt after each atomic commit and repeat the operation identifier; preserve the committed effect and decrement exactly once while presentation/reassessment resumes.
9. Complete prompt and post-escalation treatment routes; compare their resource ledgers and prove the declared extra charge exists and is consumed once.
10. Complete fuller treatment and reassessment, then observe recovery under the declared clock.
11. Pause, enter menus, save, load, suspend, and restart at every consequential stage; no unintended time or duplicate effect appears.
12. Enable reduced-intensity and mechanical assists; required information and completion remain available.
13. Review text and outcomes for moral blame, dehumanization, disability-as-failure, and unsupported medical claims.
14. In multiplayer, test simultaneous aid, duplicate requests, interruption, disconnect, and late join.

Screenshots prove presentation only. Pair them with transition logs, state assertions, save comparisons, and reproducible playthroughs. Record who reviewed any realism or representation claims and the limits of that review.

## Deliver and hand off

This section delivers the five lock records with causal, persistence, accessibility, and review evidence kept distinct.

Use the project's established documentation location. If none exists, save:

```text
gameplay/<treatment-loop-slug>/mechanic.md
gameplay/<treatment-loop-slug>/condition-model.md
gameplay/<treatment-loop-slug>/tunables.yaml
gameplay/<treatment-loop-slug>/verification.md
```

End with a handoff that answers:

- What event creates the wound, and how can the player avoid it?
- What condition information is available without graphic, color-only, or sound-only cues?
- What do stabilization, fuller treatment, reassessment, and recovery each change?
- Which timing, persistence, restart, and multiplayer boundaries were tested?
- Which accessibility, reduced-intensity, and content-safety options were exercised?
- Which statements are fictional proposals, and which realism claims received qualified review?

Do not describe the mechanic as medically accurate, respectful, accessible, production-ready, or network-safe beyond documented evidence.
