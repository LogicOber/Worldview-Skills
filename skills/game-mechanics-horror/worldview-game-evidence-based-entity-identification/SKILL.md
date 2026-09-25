---
name: worldview-game-evidence-based-entity-identification
description: "Use when a game needs a playable investigation in which players distinguish an unknown entity, person, institution, or cause by testing claims, behavior, physical residue, records, and instrument readings under pressure. Produces a solvable candidate case, provenance-bearing evidence ledger, implemented investigation when a runtime exists, and verification across correct, wrong, contaminated, save/load, and accessible paths. Do not use for lore trivia, arbitrary clue pickups, or a scripted reveal disconnected from player observations."
---

# Worldview Game — Evidence-Based Entity Identification

## Call this Skill

The public invocation is:

```text
/worldview-game-evidence-based-entity-identification
```

Treat the text after the Slash command as the case, world, and project brief. Do not make the user predesign database schemas, false-negative rates, or a complete taxonomy before inspecting the authorized project.

## Route companion files as needed

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same responsibilities.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether identification is the correct mechanic, resolving test validity, or changing the deduction threshold. A narrow implementation task with locked case artifacts does not require it.
- Read [wrenfall-conservatory.md](examples/wrenfall-conservatory.md) only when a filled fictional case would clarify a matrix, protocol, ledger, or recovery field. Its candidates and observations are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to distinguish project facts from repository-authored candidates and test rules. It is not implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

This Skill is self-contained and must not load an uninstalled sibling Skill.

## Restore the reasoning problem before listing clues

Use this Skill when the player begins with several plausible identities and can reduce that uncertainty through observation. The important unit is not a clue object; it is a valid test that produces a result under known conditions.

Consider a cold reading. It is useful positive evidence only when the instrument was active, calibrated, inside the required zone, observed for the required duration, and not affected by a known coolant leak. No temperature change can become valid negative evidence only when those same conditions gave the entity a fair opportunity to produce one. A number sampled outside the test window is neither positive nor negative. It is inconclusive.

The mechanic needs:

- a finite candidate set with distinguishable evidence signatures;
- an authoritative identity selected under a recorded rule;
- tests whose preconditions and observation windows exist in the world;
- results that separate fact from interpretation;
- pressure that competes with observation without rewriting the answer;
- a final commitment resolved against authoritative case state;
- success, wrong identification, failure, and restart paths.

The case may include testimony and social or institutional evidence. A claimant saying that a presence never crosses running water is not the same record as a player observing it stop at a channel. A staff key, changed payment, access log, duty schedule, or missing object can distinguish candidates even when no instrument is involved. Preserve who made the claim, why they might be mistaken, who could observe the event, and what action the finding enables.

Do not use this Skill for a predetermined linear reveal, a scavenger hunt in which “evidence” is only an item count, a broad narrative mystery, or a universal journal system. If the task is primarily to design combat against a known creature, the identity loop is not the correct scope.

## What the user gives

Accept any combination of:

- an authorized project path and playable entry;
- existing case selection, entity state, AI, encounter, and objective systems;
- a candidate list, world taxonomy, or only the desired number and tone of possibilities;
- existing instruments, environmental controls, evidence UI, journal, or inventory;
- a map with investigation zones, safe routes, and pressure behavior;
- accessibility, input, platform, and multiplayer requirements;
- one desired discovery, such as realizing that a dramatic reading was contamination.

Inspect only placed-in-scope materials. Reuse existing candidate names and rules when declared by the project. Never infer that flavor text is executable behavior. If a single unresolved choice would create incompatible investigations—such as whether the entity can deliberately contaminate tests—ask one grouped question and explain the consequence.

If no project exists, create the smallest test case that proves the loop: three or four candidates, three independent evidence families, a compact map, valid test setup, one contamination source, a pressure state with a response, a notebook, and a final identification station.

## What the user receives

Complete as much as the environment permits:

1. A reuse inventory for case state, entity behavior, map, tools, interactions, journal, pressure, audio, UI, and input.
2. A case contract containing candidates, evidence signatures, claimant and witness provenance, observed behavior, physical and institutional traces, test protocols, result validity, ledger semantics, pressure integration, commitment, outcome, restart, accessibility, and authority.
3. Tunables outside control flow: ranges, durations, cooldowns, sample stability, pressure windows, cue thresholds, and any supported uncertainty bounds.
4. A working investigation in the existing runtime when available, with one case selected from authoritative data and tools reading that same simulation.
5. A playable entry, controls, debug seed or reproducible case selector when appropriate, and one screenshot from the running investigation.
6. Verification of matrix solvability, each test condition, valid negative evidence, contamination, one correct reasoning trace, one incorrect or insufficient commitment, threat failure, and restart.

If execution is unavailable, deliver an implementation-ready contract and specific blocker. A written answer key or illustrated evidence screen is not a playable investigation.

## Lock the investigation before implementation

Resolve these locks in order. A later lock consumes earlier artifacts and cannot alter them silently. When implementation exposes a contradiction, reopen the earliest affected lock, amend it, and invalidate all dependent code, tests, seeds, and reasoning traces. Ask one grouped question only when the brief still supports incompatible candidate sets, evidence meanings, or wrong-answer consequences.

### 1. Candidate Matrix Lock

- **Question resolved:** Which candidate IDs are possible, which capabilities each has, how identity is selected, and whether reachable accepted evidence can distinguish every candidate?
- **Locked artifact:** The enumerated candidate/evidence compatibility matrix, selection or seed rule, distinguishing paths, and static solvability report.
- **Lock condition:** Every candidate has at least one reachable unique accepted-evidence set, no two candidates are indistinguishable at the submission threshold, and generation cannot select an unsolvable case.
- **Still mutable:** Names, presentation, optional non-discriminating behavior, and tuning that leaves compatibility unchanged.
- **Reopen trigger and fallout:** Adding a candidate or changing a capability, evidence family, threshold, or selection rule reopens this lock and invalidates seeds, test protocols, ledger filtering, submission logic, and every correct/wrong reasoning trace.

### 2. Test Protocol Lock

- **Question resolved:** Under which exact preparation, location, entity opportunity, observation window, and contamination conditions can each result become positive, validly negative, inconclusive, or contaminated?
- **Locked artifact:** One protocol table per evidence family plus the map/opportunity graph, retry path, instrument lifecycle, pressure interruption, and equivalent nonvisual result expressions.
- **Lock condition:** Each outcome is reproducible under known conditions, required tests remain reachable, interrupted tests classify correctly, contamination is distinguishable and recoverable, and essential results do not depend on one sense.
- **Still mutable:** Tool art, labels, ranges, durations, and pressure values inside the validated opportunity and accessibility envelope.
- **Reopen trigger and fallout:** Changing test location, eligibility, entity opportunity, instrument behavior, contamination, cue semantics, or pressure route reopens this lock and invalidates result handlers, event fixtures, accessibility evidence, and candidate solvability.

### 3. Evidence Ledger Lock

- **Question resolved:** Which test event authority can accept, what provenance it stores, how duplicates and case versions resolve, and what the notebook may observe, interpret, or hypothesize without reading the hidden answer?
- **Locked artifact:** The versioned evidence-event schema, authoritative ledger transition table, idempotency rule, observed/interpreted/hypothesized UI boundary, and network replication rule.
- **Lock condition:** Each accepted entry traces to one valid test instance, repeated or stale events cannot duplicate evidence, and notebook assistance derives only from accepted observations.
- **Still mutable:** Journal layout, sorting, wording, and optional filtering assistance that does not add facts or reveal identity.
- **Reopen trigger and fallout:** Changing event fields, case versioning, authority, duplicate handling, shared/personal ownership, or notebook automation reopens this lock and invalidates serialization, UI, replication, audit traces, and submission prerequisites.

### 4. Identification Outcome Lock

- **Question resolved:** When submission is legal, what correct, insufficient, and wrong conclusions do, how danger and retry behave, what prevents brute force, and which world action proves identification mattered?
- **Locked artifact:** The submission/outcome/recovery state graph, evidence threshold, authoritative comparison, wrong-answer warning and retry policy, post-identification action, and restart/new-case boundary.
- **Lock condition:** One correct trace reaches a concrete world consequence; insufficient and wrong submissions have legible, recoverable rules without leaking the answer or permitting rapid cycling; retry and restart preserve exactly the declared state.
- **Still mutable:** Warning length, consequence presentation, and retry timing inside the tested fairness envelope.
- **Reopen trigger and fallout:** Changing the evidence threshold, submission authority, wrong-answer consequence, retry persistence, pressure outcome, or final world action reopens this lock and invalidates outcome code, anti-brute-force checks, recovery evidence, and end-to-end reasoning traces.

## Recover the project’s case model first

This recovery work supplies evidence for the Candidate Matrix Lock and Evidence Ledger Lock. Locate who owns entity identity, when it is selected, and which systems already observe it. Do not create a second identity variable inside the journal or UI. Inspect the running behavior when possible; a candidate table in source may be stale or incomplete.

Write an intake record:

```markdown
## Verified project facts
- Playable entry and map: <path and observed behavior>
- Case/identity owner: <path and selection lifecycle>
- Entity/threat behavior: <path and observed behavior>
- Existing tools and journal: <path and observed behavior>

## Gaps
- <required responsibility not present>

## Proposed additions
- <candidate, evidence rule, test, proxy, or integration>
- Reason: <uncertainty or decision it resolves>
```

Keep declared facts, runtime observations, proposals, and judgments distinct. “The source table maps Candidate A to thermal reversal” is a fact about data. “Thermal reversal was produced during the correct runtime window” is an observation. “The cue is easy to read” is a judgment requiring broader evidence.

## Build a solvable candidate matrix

Create the artifact required by the Candidate Matrix Lock. Define candidates as data with stable IDs. Define evidence families independently from their visual presentation. A small matrix might look like:

| Candidate | Evidence A | Evidence B | Evidence C | Behavior modifier |
| --- | --- | --- | --- | --- |
| `candidate_1` | present | present | absent | declared rule |
| `candidate_2` | present | absent | present | declared rule |
| `candidate_3` | absent | present | present | declared rule |

Do not copy this exact shape automatically. Validate the actual matrix:

- no two candidates have indistinguishable required signatures under available tests;
- each candidate has at least one practical path to sufficient identification;
- no result requires mutually impossible world states;
- every required tool and test location is reachable;
- negative evidence can be established within a bounded valid window;
- optional rare behavior does not become the sole proof unless its occurrence is guaranteed under a controllable test;
- the evidence threshold cannot identify several candidates simultaneously unless ambiguity is an intentional intermediate state.

Run a static matrix check before building presentation. Enumerate possible accepted evidence sets and confirm which candidates remain. If a case can become unsolvable through random evidence selection, change the selection rule or supply recovery; do not rely on fortunate generation.

## Separate identity, capability, and current behavior

Preserve the capability boundary fixed by the Candidate Matrix Lock and the ownership boundary fixed by the Evidence Ledger Lock. The selected identity determines which evidence the entity can produce. Current state determines whether a test opportunity exists now. The evidence ledger records what the player validly observed. These are three different records.

```text
case identity       authoritative answer, hidden until resolution
evidence capability signature allowed results for that identity
entity state        present behavior and opportunity
ledger              accepted observations from completed tests
player hypothesis   selected interpretation or candidate filter
```

Do not let the journal read the hidden identity and prefill matching clues. Do not make an entity emit every signature immediately on spawn. Conversely, do not allow all valid opportunities to expire permanently before the player can test them.

If identity is randomized, store or expose a debug seed in development evidence. Production presentation need not reveal it. Repeatability is necessary to diagnose a failed case.

## Build a case from claims, behavior, traces, and effects

The candidate matrix is broader than a creature-stat table. Before placing clues, record the dimensions that could change the player's next action:

| Dimension | Required question |
| --- | --- |
| Identity or cause | Which candidate or combination is actually present? |
| Capability | What can it do under declared conditions? |
| Behavior | What did it do here, to whom, and after which player action? |
| Relationship | Is the behavior protective, exploitative, defensive, imitative, or mixed? |
| Witness | Who directly observed the event, from which position, and with what limitation? |
| Claim | Who described the rule, what did they personally know, and what interest or bias may affect it? |
| Chronology | What occurred before, during, and after the disputed event? |
| Access and concealment | Who could enter, alter a record, move an object, or hide a trace? |
| Physical ownership | Who actually holds or controls an item now? |
| Knowledge ownership | Who understands its meaning or the rule it tests? |
| Objective effect | Which route, tool, permission, containment, refusal, or relationship becomes available or forbidden? |

Do not collapse mixed behavior into innocence or guilt. A dangerous entity may warn the player once, a trusted official may provide real help while concealing a different fact, and a frightened witness may be sincere but wrong. Preserve observed help and observed harm as separate rows. Sympathetic testimony can revise motive; it cannot delete retained harm.

Every essential entry must do at least one of these: eliminate or support a candidate, predict a behavior that can be tested, change a route or tool choice, grant or challenge permission, or change the final operational relationship. If removing a clue changes only lore volume, it is not essential evidence.

### Neighbor handoffs

- This Skill owns claim provenance, accepted observations, confidence, contradictions, and operational conclusions.
- `/worldview-game-perception-distortion-and-trust` owns whether a presentation channel or guide is reliable. This ledger records the resulting inspected cue and its provenance; it does not redefine the channel's distortion rule.
- `/worldview-game-horror-role-and-identity-pressure` owns actor, role, permission, expected schedule, and observer-belief rules. This ledger may cite an access or schedule violation as evidence but does not redefine the role.
- `/worldview-game-asymmetric-information-cooperation` owns live transmission and acknowledgement between active roles. This ledger records which observations each role accepted.
- Inventory or world state owns physical possession. The evidence ledger references the holder and transfer event; it never becomes a second inventory.

The Skill remains self-contained when neighbors are not installed: write the required handoff fields into the case contract, implement only the evidence-side behavior, and identify the unresolved external owner rather than inventing it here.

## Treat evidence as a protocol

Implement each artifact fixed by the Test Protocol Lock. For every evidence family, define:

1. **Preparation:** instrument equipped or placed, environment configured, calibration complete.
2. **Eligibility:** correct zone, range, orientation, entity state, and unobstructed relationship where relevant.
3. **Observation window:** duration or event during which a result can validly appear.
4. **Positive result:** state change and multimodal feedback accepted as evidence.
5. **Valid negative result:** the full opportunity elapsed without a positive result under known-good conditions.
6. **Inconclusive result:** preconditions or opportunity were insufficient.
7. **Contaminated result:** another declared source could produce or distort the observation.
8. **Reset/retry:** how the player can restore a valid opportunity.

A tool should submit a result event with evidence type, case ID, test instance, validity class, timestamp or simulation tick, and supporting conditions. The ledger consumes accepted events idempotently. Repeated callbacks from one test do not create several independent findings.

Avoid arbitrary false negatives. If an entity can withhold evidence, give the player a controllable condition, bounded maximum observation window, or alternate discriminating test. Otherwise the only strategy is waiting without information.

## Preserve negative and inconclusive evidence correctly

Use the positive, negative, inconclusive, and contaminated boundaries from the Test Protocol Lock. Absence is evidence only after a valid opportunity. This distinction prevents a common shortcut: the player briefly points an inactive tool into an empty room and eliminates every candidate associated with that tool.

Record result state explicitly:

```text
untested
test_active
positive
negative_valid
inconclusive
contaminated
```

The notebook may allow the player to record a hypothesis manually, but authoritative accepted evidence should retain its provenance. Automatic elimination can be offered as an accessibility or difficulty option, provided it derives only from valid results and does not expose hidden case data.

Contamination should have a world cause and a way to recognize or resolve it. An environmental heat source, reflective surface, machine field, or another entity may affect a test. A generic random “bad reading” icon with no available response adds delay, not deduction.

## Make instruments part of the world

Use the instrument lifecycle and opportunity graph fixed by the Test Protocol Lock. An instrument needs a physical or interaction contract: how it is equipped or placed, range, orientation, warm-up, charge if any, update rate, and what happens when the player moves or the entity interrupts. Reuse the project’s existing interaction language.

Tools can demand different forms of attention:

- a placed instrument creates a zone the entity must enter;
- a handheld instrument occupies vision or a hand;
- an environmental test requires changing a local system, then observing consequences;
- a behavioral provocation creates evidence but increases danger.

Do not make every tool the same hold action with a different texture. Each evidence family should ask a meaningfully different question or spatial relationship. Do not generate bespoke assets when clear labeled proxies can validate the protocols.

## Integrate danger without changing the answer

Apply the pressure and retry boundaries in the Test Protocol Lock without changing candidate capability. Pressure gives observation a cost. The player may need to remain in a zone, watch an instrument, provoke a behavior, or return to retrieve a placed tool. The entity can interrupt those actions through its existing threat behavior.

Define:

- what warns of danger;
- which tests can continue unattended;
- what makes a test inconclusive rather than negative;
- how the player disengages and recovers;
- whether retreat preserves accepted evidence;
- how a new valid opportunity is created.

The pressure system must not secretly swap identity, rewrite accepted evidence, or force a required test into permanent impossibility. If identity can transform as part of the world premise, model that as an explicit case phase with evidence versioning rather than silently changing the answer.

Failure may come from remaining exposed too long, provoking at the wrong time, or committing a wrong identity. Each should have a visible cause. Random death while reading the notebook does not validate investigation design.

## Keep the ledger honest

Implement the event and UI boundary fixed by the Evidence Ledger Lock. For each accepted observation, store enough provenance to explain it:

```text
case ID
evidence type
result class
test instance ID
simulation time
relevant conditions
player/team owner where applicable
claim source and declared basis
observer and observation position
physical holder and knowledge holders when relevant
related behavior, residue, or institutional trace
confidence and contradiction links
prediction and unlocked/forbidden action
```

The journal presents that record and may show candidate implications. It must not own entity identity or create evidence through checkbox state alone. Separate three layers in the interface:

- **observed:** what the test validly produced;
- **interpreted:** which candidates remain compatible;
- **hypothesized:** what the player currently believes or plans to submit.

Let the player inspect why a result was marked inconclusive or contaminated. This is especially important when pressure ends a window early.

Save authoritative entries by stable evidence ID and case version. Save claimant, observer, holder reference, knowledge-holder references, contradiction links, confidence class, and the objective effect already applied. Reload must not promote testimony into observation, duplicate a transferred item, erase retained harm, or rerun a one-shot access consequence. When a referenced actor or object no longer exists, retain its stable ID and last verified state rather than silently rebinding the evidence to a replacement.

## Resolve identification from authoritative state

Use the threshold, authority, and recovery graph fixed by the Identification Outcome Lock. Define the minimum supported commitment. It may require a candidate selection plus a threshold of accepted evidence, or it may allow an early risky guess. Both can work if consequences and recovery are explicit.

At submission, authority checks the current case ID, chosen candidate, allowed submission state, and any evidence threshold. Correct resolution follows the hidden authoritative identity. UI selections cannot set the answer.

Wrong conclusions can cause failure, reduced reward, a new danger phase, or an opportunity to gather more evidence. Choose a consequence appropriate to the project and preserve recoverability. Do not require brute-force submission across every candidate without cost; that replaces investigation with menu enumeration.

Success should include a concrete post-identification consequence: execute the correct containment procedure, choose the safe exit protocol, prepare the correct defense, or complete another world action. A green answer label alone proves only the quiz UI.

## Work with the current Harness instead of assuming tools

Choose tools only after the Candidate Matrix Lock, Test Protocol Lock, Evidence Ledger Lock, and Identification Outcome Lock artifacts exist; capability gaps can limit verification but cannot silently change them. This Skill includes no engine, browser, asset generator, AI model, backend, database, or deployment service. Inspect the current Harness and project.

- Prefer local engine tools, source, tests, and licensed assets.
- Browser automation may verify a web build, not another runtime.
- Image, sound, video, and 3D generation are optional; state gaps before paid calls and use labeled proxies where adequate.
- APIs and MCP services are callable only when configured in the current environment.
- Do not substitute a generated case report or cinematic for a playable experiment loop.

Record exact tools, builds, seeds, clients, and platforms used.

## Preserve success, failure, and restart

Evaluate the case against the Candidate Matrix Lock, Test Protocol Lock, Evidence Ledger Lock, and Identification Outcome Lock. A complete case has an authoritative identity, a solvable matrix, reachable test opportunities, at least two meaningfully different tools or tests, a truthful ledger, pressure and retreat, a supported commitment, a correct resolution, a wrong or insufficient resolution, a threat failure, and restart.

Restart clears identity and seed according to the declared policy, entity state, spawned instruments, calibration, active tests, observation windows, accepted ledger entries, contamination, journal filters, hypotheses, pressure events owned by the case, timers, subscriptions, success, and failure. Cancel delayed result events before selecting the next case.

When replay randomizes identity, distinguish “restart same case” from “new case.” Testing requires both operations to be explicit; otherwise a tester may think a result changed incorrectly when the hidden identity actually changed.

## Make every essential result perceivable

Express the Test Protocol Lock's accepted result classes through supported modalities without adding evidence or exposing identity. Do not encode identity-critical evidence in sound, color, fine motion, fine text, or haptics alone. Each positive, valid negative, inconclusive, and contaminated state needs accessible distinction through the supported modalities.

Provide readable tool labels, scalable journal text, color-independent icons, captions for meaningful entity and instrument sounds, remappable interaction, alternatives to rapid input, and reduced-motion presentation. If a test depends on hearing direction or detecting a visual change, offer an equivalent instrument representation that preserves the evidence resolution rather than revealing extra hidden facts.

Time-sensitive windows may offer adjustable duration or a slower pressure configuration. Record when an accessibility setting changes opportunity timing, and verify that candidate solvability remains intact.

## Define multiplayer authority when relevant

Apply the Candidate Matrix Lock and Evidence Ledger Lock to the actual network authority. Skip network work in a single-player project. In multiplayer, the server or authoritative host owns case identity, entity capability, test validity, accepted observations, and resolution. Define whether the evidence ledger is shared, player-specific, or both.

Clients request tool placement, activation, observation acknowledgement, notebook hypotheses, and final submission. Authority rechecks location, tool state, case version, and test opportunity. Use stable test-instance IDs so two clients observing the same event do not add duplicate evidence.

Replicate accepted evidence and enough provenance for players to coordinate without replicating the hidden answer. Test simultaneous tool use, two observations of one event, conflicting hypotheses, late join, disconnect while holding or placing a unique tool, case restart, and submission races. A shared UI is not proof of shared authoritative evidence.

## Verify the investigation, not only the answer screen

Attach every result to the Candidate Matrix Lock, Test Protocol Lock, Evidence Ledger Lock, or Identification Outcome Lock it validates; when a matrix, protocol, ledger, or outcome reopens, rerun its dependent cases. Run and record:

1. Statistically or exhaustively inspect the candidate matrix and confirm every candidate is uniquely solvable under reachable tests.
2. Force or seed each candidate and exercise every required positive evidence path.
3. Complete the full valid opportunity for each negative result and confirm early or invalid sampling remains inconclusive.
4. Trigger every declared contamination source and confirm its signature and recovery.
5. Interrupt tests through movement, threat, tool removal, and environmental changes; verify result classification.
6. Repeat callbacks and observations to confirm one test instance produces idempotent ledger state.
7. Complete one correct reasoning trace from raw observations through candidate narrowing to a concrete post-identification action.
8. Submit an incorrect or insufficient conclusion and verify the declared consequence without leaking the answer prematurely.
9. Exercise a pressure-caused failure with readable warning and recovery or restart.
10. Restart during active testing, delayed results, journal review, submission, success, and failure; no prior case event survives.
11. Test supported inputs, viewports, captions, color-independent cues, reduced motion, and adjusted timing.
12. In multiplayer, verify hidden-answer authority and ledger consistency on actual clients under delay.
13. Save after a claim, witnessed behavior, physical transfer, contradiction, and objective unlock; reload and confirm provenance, ownership references, knowledge boundaries, and applied effects remain exact.
14. Exercise one sincere-but-wrong claim, one mixed helpful/harmful behavior, and one institutional trace; confirm none is silently promoted into the final answer.

Save the matrix-validation output, selected case or seed, event/ledger trace, and reproducible playthrough. A screenshot can prove presentation but not that evidence came from a valid test.

## Deliver and hand off

Deliver the current Candidate Matrix Lock, Test Protocol Lock, Evidence Ledger Lock, and Identification Outcome Lock artifacts and identify any reopened or unverified layer. Use the project’s established documentation location. If none exists, save:

```text
gameplay/<case-slug>/mechanic.md
gameplay/<case-slug>/tunables.yaml
gameplay/<case-slug>/verification.md
```

The handoff answers:

- Where is the case launched, and how can a tester reproduce the selected identity?
- What are the candidates and which tests distinguish them?
- What makes each result positive, validly negative, inconclusive, or contaminated?
- How does danger interrupt observation without changing the answer?
- How are findings recorded, interpreted, and submitted?
- Which correct, incorrect, threat, restart, accessibility, and multiplayer paths were run?
- What was reused, what is a proxy, and what remains untested?

Do not describe a compact verified matrix as infinitely replayable, scientifically realistic, broadly balanced, universally accessible, or production-ready without separate evidence.
