---
name: worldview-game-single-ending-campaign
description: "Research, design, build, verify, and package an original story-driven game with one canonical ending from a short premise. Use when the user wants a substantial English-language 2D or 3D campaign with a populated world, several connected forms of play, current-topic or cultural research, and a playable or deployed result rather than a design document or short vertical slice. Produces a dated source ledger, publication-risk decisions, original fictionalization, a complete route, functional NPC/item/map systems, runtime evidence, and a truthful release handoff. Best suited to GPT-6 Astra with Max reasoning or Ultra orchestration."
---

# Worldview Game — Single-Ending Campaign

## Call this Skill

The public invocation is:

```text
/worldview-game-single-ending-campaign
```

Treat everything below the Slash command as the seed. A few sentences about the protagonist, conflict, tone, or real-world subject are enough. Recover missing context through project inspection and research, make reversible decisions autonomously, and implement the largest complete campaign that the available runtime and budget can honestly support.

Do not make the user enumerate every character, joke, item, room, quest, visual treatment, or test. The purpose of this Skill is to perform that expansion while preserving the user's central idea.

## Read only the companion files the task needs

- Read and fill [single-ending-campaign-contract.md](templates/single-ending-campaign-contract.md) before broad content production. Update an equivalent project record instead when one already exists.
- Read [why-single-ending-campaigns-fail.md](references/why-single-ending-campaigns-fail.md) when choosing scope, turning research into fiction, preventing errand design, or deciding what to cut.
- Read [the-lantern-index.md](examples/the-lantern-index.md) only when a completed fictional example would clarify a field. Its plot, mechanics, quantities, and technical stack are illustrations, not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance or publication review. It is not an implementation checklist.
- [README.md](README.md) is the human-facing choice and invocation page. It is not needed after this Skill is loaded.

## The result this Skill owns

This Skill turns a short story idea into a researched, original, playable campaign with one canonical ending. The finished route should feel layered because people, places, objects, threats, and information respond to shared state—not because the project contains a large pile of disconnected content.

It owns the complete chain:

1. inspect the project and available capabilities;
2. research the subject and keep a dated evidence ledger;
3. separate verified fact, attributed claim, interpretation, community joke, and invention;
4. convert source themes into materially original characters, institutions, events, imagery, and play;
5. design one ending backward into a complete campaign route;
6. connect exploration, investigation, social pressure, traversal, puzzles, stealth, combat, resource decisions, or other selected forms of play;
7. build the whole route in inexpensive form before increasing fidelity;
8. fill the world with NPCs, items, spaces, encounters, and state changes that affect play;
9. replace critical proxies, integrate presentation, test the route, and publish when authorized;
10. return the playable result, evidence, sources, limitations, and launch instructions.

This is not the right entry for a three-to-ten-minute proof of one interaction; use `/worldview-game-high-fidelity-vertical-slice` for that. It is not the right entry for preserving the rules of an already complete game while rebuilding only its appearance; use `/worldview-game-runtime-visual-fidelity-rebuild` for that.

## What the user may provide

Begin with any combination of:

- a protagonist, conflict, ending idea, feeling, image, joke, current debate, or historical subject;
- real people, companies, public statements, community discussions, or events to research as context;
- a desired genre, perspective, visual target, language, duration, platform, or deployment destination;
- an existing repository, partial game, world bible, sketches, references, assets, or established controls;
- configured browser, engine, image, audio, DCC, API, MCP, automation, profiling, or deployment tools;
- time, token, cost, performance, download-size, content, or publication limits.

Infer ordinary choices when the brief is short. Ask one grouped question only when missing authority or a product-defining fork cannot be recovered—for example, whether the user authorizes paid calls or whether an existing multiplayer game may become single-player. If the choice is reversible, state the assumption and continue.

When unspecified, use these starting assumptions and adjust them after inspecting the project:

- English player-facing text;
- single-player;
- one canonical ending, with fail-and-retry states rather than alternate endings;
- browser-playable 3D when the repository and available tools support it;
- keyboard and mouse, with controller support only if the project already owns it or the budget permits;
- approximately 20–40 minutes for the first complete release;
- four to six connected zones;
- eight to twelve named NPCs whose behavior or information changes;
- three primary gameplay systems plus locomotion and interaction;
- three acts and a finale;
- a clean local build first, then deployment when credentials and destination are authorized.

These are scope defaults, not quotas. Reduce counts before leaving an incomplete route, untested ending, broken save, or false deployment claim.

## What the user receives

Deliver working project changes whenever write and runtime access exist, plus compact production records such as:

```text
game-production/<campaign-slug>/
├── campaign-brief.md
├── single-ending-campaign-contract.md
├── research-ledger.md
├── fiction-distance-ledger.md
├── campaign-route.md
├── world-state.md
├── content-ledger.md
├── asset-ledger.md
├── verification.md
└── release-handoff.md
```

Keep source code and shipping assets inside the project's existing directories. Do not reorganize a working repository merely to match this record layout.

The result includes, as capabilities permit:

- one playable route from first control to the canonical ending;
- meaningful variation in route, knowledge, resources, relationships, or difficulty without creating alternate endings;
- connected maps with landmarks, gates, shortcuts, changed states, and readable return paths;
- NPCs with agendas, functions, schedules or state changes, and consequences beyond dialogue delivery;
- items with mechanical, informational, relational, or spatial purpose;
- several forms of play joined by shared state and escalating mastery;
- a coherent visual, audio, camera, interface, and performance target;
- research and fiction ledgers that make factual and invented material distinguishable;
- full-route, failure, reset, save/load, state, presentation, and performance evidence;
- a public or preview URL only when deployment was actually authorized and verified.

## Recommend the strongest suitable model

For the best end-to-end result in Codex, recommend `gpt-6-astra` when model selection is available.

- Use **Max** when one Agent owns research, narrative design, world systems, implementation, debugging, and verification.
- Use **Ultra** when independent research, world/content, runtime, asset, and verification tracks can be delegated. One lead must own the locked contracts, shared state schema, integration order, factual audit, and final claims.
- In the OpenAI API, `max` is a `reasoning.effort` value. Ultra is an Agent orchestration mode that uses subagents; do not describe it as an API effort value or a separate Astra model.

If the current harness cannot change models, continue with the active model. Narrow duration, content count, or visual variety before reducing factual care, route completeness, or verification.

## Inventory capabilities and permissions before promising output

Record availability, authorization, cost boundary, evidence, and fallback for each relevant capability.

| Capability | Why it matters | If unavailable |
| --- | --- | --- |
| Repository read/write and version history | Protects existing work and makes the campaign reviewable. | Produce a contract and patch plan; do not claim implementation. |
| Current web research | Supports topical satire and dated factual context. | Label contextual claims unresolved and avoid building the story around them. |
| Runnable game or browser | Makes full-route behavior testable. | Mark runtime claims unverified. |
| Browser or engine automation | Repeats route, failure, save, and state tests. | Use precise manual journeys and narrow the claim. |
| Runtime screenshots or video | Proves the actual camera, UI, content, and transitions. | Do not substitute concept art for runtime evidence. |
| Image or audio generation | Can create original campaign assets after authorization. | Use project-owned assets, procedural/runtime construction, or explicit temporary proxies. |
| Blender MCP or another DCC path | Can create editable signature meshes and environments. | Use runtime geometry or supply asset briefs; do not pretend a DCC model was made. |
| Profiler and renderer counters | Measures whether content density fits the target. | Report only observable timings and tested hardware. |
| Deployment service and credentials | Produces the requested URL. | Return a verified local build and the exact deployment blocker. |

An API key present in the environment is not permission to spend money, upload private material, download third-party assets, or publish a project. Keep credentials out of source control. Request authorization before paid calls, external uploads, asset-store downloads, or public deployment.

## Protect the repository and establish a baseline

For an existing project:

1. Read local instructions and inspect version-control state.
2. Preserve unrelated user changes.
3. Identify runtime, build, test, asset, save, language, camera, input, quality, and deployment conventions.
4. Run the current entry point when possible.
5. Record existing behavior, known defects, reusable systems, owned assets, and publication constraints.
6. Decide whether the campaign extends the existing game or is a new bounded entry within it.

Prefer the established stack. Replace a framework only when a named requirement cannot be met and the migration cost is justified. Do not add an engine, DCC, service, MCP, or large dependency because another project used it.

## Lock the campaign in this order

Every lock closes a decision that later work depends on. Record the artifact, close condition, mutable fields, reopening trigger, and dependent work to invalidate. A proposed row is not locked.

| Lock | Artifact and question resolved | Closed when | Still mutable afterward | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| **1. Evidence boundary** | `research-ledger.md` records what is known, disputed, interpreted, joked about, or invented. | Story-critical context has dated sources, classifications, confidence, and contradiction notes. | New supporting sources and non-causal flavor. | A core claim changes status or a better source contradicts it; invalidate dependent characterization, dialogue, scenes, and publication review. |
| **2. Fiction and publication boundary** | `fiction-distance-ledger.md` fixes what may remain factual, what becomes composite fiction, and what cannot ship without consent or review. | Characters, institutions, visuals, voices, marks, events, and disclaimers have an explicit treatment and risk owner. | Surface details that cannot restore identification or unsupported implication. | A more recognizable likeness, name, logo, voice, allegation, or one-to-one correspondence appears; invalidate affected assets, copy, scenes, marketing, and release approval. |
| **3. Canonical ending** | `campaign-brief.md` states the one final event, irreversible choice or action, world state, protagonist change, and thematic answer. | Every mandatory act can be designed backward from the same ending, and alternate failure results are restarts rather than endings. | Local wording, staging, and optional observations. | The final world state, responsible actor, core choice, or theme changes; invalidate route, progression, prerequisites, finale assets, and ending evidence. |
| **4. Campaign spine** | `campaign-route.md` fixes acts, mandatory nodes, branch-and-rejoin routes, gates, checkpoints, failure recovery, and target duration. | A proxy run can travel from start to ending without lore-only gaps or softlocks. | Encounter order inside a node and optional side observations. | Adding/removing an act, gate, route dependency, checkpoint, or ending prerequisite invalidates dependent world, content, save, pacing, and test work. |
| **5. Gameplay portfolio** | The contract assigns each repeated verb a decision, uncertainty, cost, feedback, mastery step, and story function. | Three to five compatible forms of play create distinct decisions and share state without one becoming filler. | Tuning inside tested ranges and encounter variants. | A core verb, resource, threat rule, information channel, or success condition changes; invalidate encounters, tutorials, balance, UI, audio cues, and related tests. |
| **6. World and content topology** | `world-state.md` and `content-ledger.md` fix zones, landmarks, gates, shortcuts, NPC roles, item functions, encounter density, and change states. | Every required place, person, and object has at least one causal job and the full route fits the content budget. | Incidental dressing and variants within the same function and cost. | A zone graph, signature location, NPC dependency, item gate, or content budget changes; invalidate navigation, schedules, persistence, assets, captures, and route timing. |
| **7. State and persistence** | State schema fixes authoritative owners, event flow, quest conditions, relationship/knowledge/resource changes, save fields, resets, and migration behavior. | Full-route, fail/retry, checkpoint, save/load, and branch-rejoin states reproduce correctly. | Non-authoritative presentation and telemetry. | Ownership, serialization, checkpoint, reset, or dependency rules change; invalidate downstream content logic and all affected route evidence. |
| **8. Presentation and asset coverage** | `asset-ledger.md` assigns camera, visual grammar, sound, UI, characters, environments, props, effects, source, license, runtime form, and performance cost. | Every story/gameplay-critical state has a runtime representation and no temporary proxy is mistaken for a finished signature asset. | Variants inside the locked identity and budget. | Camera, identity-critical design, source/license, runtime form, performance class, or target state changes; invalidate affected assets, captures, comparisons, and performance claims. |
| **9. Release proof** | `verification.md` and `release-handoff.md` map claims to fresh commands, journeys, captures, traces, audits, and the tested URL or launch command. | A clean start completes the canonical route, exercises failures and rejoin paths, reloads state, reproduces captures, and launches the delivered build. | Additional evidence and scoped fixes followed by reruns. | Any shipping code, content, asset, source claim, or deployment changes after verification; invalidate the affected proof and rerun it. |

When a lock reopens, announce the affected artifacts before editing them. Do not preserve stale screenshots, timing measurements, route results, or risk approvals merely because regenerating them is inconvenient.

## Phase 1 — Research the subject without converting rumor into canon

Create a query map before browsing. Cover only what could influence the game:

- people and institutions named by the user;
- public positions, statements, products, policies, incentives, and chronology;
- credible disagreement and counterevidence;
- specialist or community vocabulary and recurring jokes;
- visual and spatial symbols that can be transformed into play;
- systems of power, scarcity, access, evaluation, reputation, labor, or control;
- any claim that could harm a real person's reputation if presented as fact.

For each source, record:

| Field | Required record |
| --- | --- |
| Source | Direct URL, publisher/author, title, and access date. |
| Date scope | Publication date and event date when different. |
| Source class | Primary record, official statement, direct data, reputable reporting, analysis, community post, or unknown. |
| Exact support | The narrow proposition the source actually supports. |
| Content class | Verified fact, attributed claim, interpretation, community joke, or invention. |
| Confidence and dispute | High/medium/low, known contradiction, missing context, and what remains unresolved. |
| Intended use | Factual background, thematic inspiration, joke vocabulary, visual motif, or rejected material. |

Use primary sources for what a person or company said or released. Use credible independent reporting for context and disputes. Treat anonymous posts, screenshots without provenance, summaries, and memes as leads or community artifacts—not proof. Never turn “people online say” into a factual accusation.

If live research is unavailable, keep the game on the level of broad themes already supplied by the user. Do not invent supporting news, quotes, studies, corporate conduct, or private motives.

## Phase 2 — Convert research into original fiction with a real risk boundary

Decide first whether the work will use:

1. **Named public-record commentary:** real names and verified public material are discussed accurately and transparently; or
2. **Original composite fiction:** the game keeps a broad theme or system while creating materially different people, institutions, settings, events, and appearances.

Do not create a concealed middle category that uses a one-letter name change, a near-identical face, copied voice mannerisms, and the same biography while claiming the person is fictional. A disclaimer, educational label, comedic tone, or changed spelling is not automatic legal clearance.

This is a production safeguard, not legal advice. Laws differ by jurisdiction and release context. Escalate for qualified legal review before public or commercial release when the project uses an identifiable living person, close visual or vocal imitation, real marks, disputed allegations, private facts, or a marketing campaign built around that identity.

For composite fiction, create a transformation matrix for each major element:

| Dimension | Source abstraction | New fictional decision | Material difference test |
| --- | --- | --- | --- |
| Thematic conflict | The broad public question worth exploring. | The campaign's own moral pressure. | It survives even if all real names and companies are forgotten. |
| Role and power | The kind of leverage involved. | Different occupation, institution, authority, and dependency. | It is not the same biography with nouns swapped. |
| Setting and time | The source context. | Original place, era, technology, and material culture. | Events could not be mistaken for a hidden chronology of one real dispute. |
| Appearance and voice | Only high-level, non-identifying traits that serve the role. | New facial structure, body language, wardrobe grammar, silhouette, age band where appropriate, accent/voice, and animation. | A viewer is not being invited to treat it as a clone or impersonation. |
| Events and motives | The mechanism or tension. | New causes, actions, stakes, evidence, and mixed motives. | The fiction does not assert disguised misconduct by an identifiable person. |
| Language and symbols | General discourse patterns. | Original terminology, metaphors, iconography, interfaces, and jokes. | No copied quote, slogan, logo, trade dress, or proprietary asset is required. |

Prefer criticism of systems, incentives, public arguments, and observable outcomes over invented secret wrongdoing by recognizable individuals. Give opposing characters plausible stated goals and real competence; horror becomes sharper when the system's offer is attractive as well as dangerous.

If a fiction notice is suitable, write it plainly, for example:

> This is a work of fiction and satire. Its characters, organizations, locations, and events are invented composites. It does not depict or assert undisclosed conduct by any real person or organization.

Treat that notice as audience context, not a substitute for research, consent, originality, or legal review.

Before approving any reality-inspired scene, dialogue line, character asset, store image, or marketing copy, apply a reasonable-player test:

1. Would an ordinary player understand this as identifying one real person or organization, even though the spelling or design changed?
2. Would the player understand it as stating that the identified subject actually performed an action, held a private motive, committed misconduct, or endorsed the game?
3. If it is a factual proposition, is it supported by current evidence at the strength and attribution shown on screen?
4. If it is invention, has the identity been transformed enough that the scene reads as the campaign's own fiction rather than a disguised accusation?
5. Does the store page, trailer, thumbnail, title, or ad reintroduce a one-to-one identification that the game itself tried to remove?

Stop public-release approval and either redesign, obtain permission, or request qualified review for the target jurisdiction when any of these remain: an identifiable living person's face, voice, or identity; disputed misconduct assigned to a recognizable stand-in; commercial promotion built around that recognition; real logos or confusing endorsement; private or unlawfully obtained information; conflicting evidence that cannot be resolved; or a cross-border release with unknown requirements. Do not tell the user that a work “cannot be sued,” “is guaranteed fair use,” or becomes safe after a fixed number of changes.

## Phase 3 — Define one ending before expanding the world

Write the ending in five concrete fields:

- **Final action:** what the player intentionally does, not only what a cutscene does to them.
- **Irreversible consequence:** what can no longer return to its prior state.
- **Final world state:** the state of the central place, institution, threat, or community.
- **Protagonist change:** what the player-character now accepts, rejects, understands, or loses.
- **Thematic answer:** the campaign's answer to its central question, expressed by consequence rather than a speech.

One canonical ending does not require a single corridor. Use branch-and-rejoin structures in which choices change:

- which zone is visited first;
- which source becomes trusted;
- what resources, shortcuts, or allies remain available;
- the cost and difficulty of later encounters;
- which truths the player can understand before the finale;
- dialogue, staging, and moment-to-moment consequence.

All viable routes must converge on the same final action and final world state. Do not label death screens, arrests, resource exhaustion, abandoned runs, or softlocks as alternate endings; they are failure states with explicit recovery. Do not pretend two cosmetically different final cutscenes are one ending if they contradict the locked final consequence.

Design backward. For each final prerequisite, ask what teaches it, what tests it, what source proves it, what system owns it, and where recovery is possible if the player missed it.

## Phase 4 — Build a campaign spine that can be played before it is decorated

Use three acts plus a finale unless the project already has a better structure:

1. **Act I — legibility:** establish role, place, ordinary rule, core verb, first contradiction, and immediate goal.
2. **Act II — complication:** open route choice, connect systems, make NPC agendas conflict, and charge a cost for earlier assumptions.
3. **Act III — consequence:** revisit changed spaces, close optional routes, combine mastered verbs under pressure, and expose the final prerequisite.
4. **Finale — commitment:** make the player perform the final action, show the irreversible response in play, then reach a stable ending state.

For every mandatory node, record entry state, decision, player action, opposition, new information, state mutation, exit state, failure recovery, expected duration, and direct test.

Build the entire route with cheap, readable proxies before high-cost art. A proxy route is complete only when a fresh session can:

- begin without editor intervention;
- reach every mandatory zone;
- use every core verb at least once in a meaningful decision;
- survive or recover from representative failure states;
- pass every mandatory gate without debug commands;
- save and resume at the supported boundary;
- enter, perform, and leave the canonical ending state.

Run the proxy route at least twice before broad asset production: once on the intended path and once using the largest permitted branch variation.

## Phase 5 — Choose a small set of deep, connected gameplay systems

Select three to five forms of play that express the theme and fit the runtime. Examples include exploration, navigation, investigation, dialogue pressure, stealth, pursuit, spatial puzzle solving, resource management, traversal, combat, construction, scheduling, or social coordination.

For every repeated verb, fill this test:

| Field | Question |
| --- | --- |
| Decision | What alternatives is the player choosing between? |
| Uncertainty | What relevant information is incomplete or changing? |
| Cost | What time, position, resource, trust, exposure, or future option is spent? |
| Response | What visible, audible, systemic, or relational state changes immediately? |
| Mastery | What becomes possible after the player understands the rule? |
| Story function | What does performing the verb reveal or make the player complicit in? |
| Failure and recovery | How can it go wrong without destroying the campaign state? |

Remove or combine a verb when it merely advances a progress bar, repeats dialogue, or adds input without changing a decision.

Use shared state to make systems compound. A discovered fact might alter an NPC's trust, reveal a map route, change a stealth patrol, and reduce the cost of the finale. A scarce tool might solve a puzzle quickly or preserve it for a dangerous return journey. Prefer these intersections over unrelated minigames.

Apply the anti-errand rule to every objective: completing it must materially change at least two of **world access, knowledge, relationship, resources, threat, or future method**. “Walk there and collect the marked object” is not sufficient unless the route and object create a real decision with consequence.

Teach each rule through safe introduction, pressured use, combination, inversion, and final exam. Do not explain the entire system through a tutorial wall.

## Phase 6 — Make the world dense through causality

### Map

Build a graph before detailed geometry. Each zone needs:

- a unique silhouette and navigational landmark;
- an entry promise and a later changed state;
- one primary gameplay function and one secondary intersection;
- at least one gate, shortcut, overlook, return path, or route choice;
- NPC and item reasons to exist there;
- lighting, sound, and material rules that communicate its state;
- performance and streaming implications;
- a direct navigation and softlock test.

A large map is not automatically a rich world. Remove empty traversal that changes no decision, reveals no useful information, and carries no pressure.

### NPCs

Every named NPC needs:

- an immediate want and a longer agenda;
- something they know, something they misread, and something they refuse;
- a gameplay function other than lore delivery;
- a location or schedule rule;
- response states tied to player knowledge, resources, trust, threat, or progression;
- at least one dependency on another NPC, place, item, or system;
- entry, change, and exit conditions;
- a fallback when the player misses, avoids, or interrupts them.

Do not give every NPC a quest marker and speech tree. Some should alter patrols, prices, routes, access, alarms, evidence reliability, or physical conditions through the same state model.

### Items

Every tracked item must serve at least one explicit function:

- **mechanical:** enables, alters, spends, protects, attracts, repairs, or trades;
- **informational:** proves, contradicts, decodes, locates, or changes interpretation;
- **relational:** establishes trust, debt, leverage, memory, or responsibility;
- **spatial:** opens, closes, marks, redirects, or transforms a route.

Record acquisition, owner, visibility, use conditions, consumption, persistence, duplication rule, loss recovery, and downstream dependencies. Decorative props need art ownership but should not inflate the gameplay inventory.

### Encounters and pacing

Alternate tension, decision, execution, consequence, and recovery. Track the last time each core system was used, what new layer it gains next, and whether a later scene pays off the change. Use quiet spaces for interpretation and route planning, not as empty padding.

## Phase 7 — Own state, saving, and branch reconvergence explicitly

Define one authoritative owner for every durable fact. Separate:

- campaign progression;
- ending prerequisites;
- discovered knowledge;
- NPC state and relationship values;
- inventory and resource quantities;
- zone transformations and shortcuts;
- threats and encounter reset state;
- settings, accessibility, and language;
- transient animation, audio, UI, and VFX state.

Use stable identifiers rather than display names. Make events idempotent where reloading or duplicate signals are possible. Document ordering when one event changes multiple systems.

At every branch-rejoin point, compare the incoming state sets. The next mandatory node must either handle each permitted combination or normalize it visibly and intentionally. Never erase a choice silently just to simplify code.

Test at minimum:

- new game to first checkpoint;
- failure before and after a state mutation;
- reload with each mandatory gate state;
- both sides of the largest route branch;
- missing optional item or NPC interaction;
- duplicate interaction or repeated event;
- save created before a schema change, when migration is supported;
- final prerequisite acquisition, consumption, and reload;
- ending completion, return-to-menu, and new-game reset.

## Phase 8 — Turn source themes into horror through play and space

Do not retell the research as a sequence of exposition scenes. Translate its mechanisms:

- gatekeeping can become doors that accept only approved memories;
- scarcity can become a resource whose displayed quantity and usable quantity diverge;
- evaluation can become an architecture that changes the test after observing the player;
- reputation can become a social stealth layer in which witnesses change access;
- centralization can become a physical dependency that makes every zone fragile;
- open access can create genuine benefits and genuine exposure, forcing a playable tradeoff.

These are transformation examples, not required content. Choose metaphors that fit the researched theme and the original fiction.

For each horror system, define what the player can perceive, what is hidden, what can be learned, how the threat responds, and how recovery works. Fear should emerge from incomplete but learnable rules, not random punishment.

## Phase 9 — Establish presentation across the whole route

Create a coverage matrix from actual gameplay states, not only a title image:

- arrival and first control;
- first use of every core system;
- one social or informational reversal;
- one quiet world-reading state;
- one pressure state per threat family;
- one changed-state revisit;
- one representative branch;
- pre-finale, final action, and aftermath;
- failure, restart, save/load, pause/settings, and required accessibility states.

For every state, record camera, composition, silhouettes, material response, motivated light, color hierarchy, motion, VFX, UI, captions, sound, asset dependencies, performance risk, and reproduction steps.

Create a visual grammar for shape, surface, light, color, motion, lens/camera, interface, and sound. Preserve navigational and interaction readability under the intended camera. A detailed asset that cannot be read in play is not a fidelity improvement.

Assign each asset family to one of: project-owned reuse, original authored geometry, procedural/runtime construction, authorized generation, shader/particle work, interface code, original audio, or explicitly licensed third-party material. Record origin, rights status, editable source, runtime export, variants, owner, and cost.

Do not copy a real person's face or voice and then make small changes to imply safety. Do not use real logos, copied promotional imagery, proprietary screenshots, or unlicensed game assets. If an identifiable likeness or voice is truly required, stop that asset track until consent and publication review are recorded; continue with a materially original placeholder only when it does not preserve the identification.

## Phase 10 — Implement in dependency order

A reliable order is:

1. bootstrap, input, camera, collision, and scene loading;
2. campaign state, event flow, save/reset, and debug state inspection;
3. complete proxy route and canonical ending;
4. core systems and failure recovery;
5. zone graph, gates, shortcuts, and changed states;
6. NPC behavior/state and item transactions;
7. encounter variants and branch reconvergence;
8. signature character, environment, prop, UI, sound, and VFX assets;
9. remaining coverage assets and presentation;
10. accessibility, performance, packaging, and deployment.

Keep tunables separate from structural rules. Add debug affordances that can load named states, inspect campaign facts, and reach checkpoints without corrupting normal saves. Disable or clearly isolate them in the release build.

Integrate one complete thin path before expanding content breadth. After each meaningful change, rerun the smallest affected journey. Preserve known-good milestones and do not mask engine, asset, or state errors with unrelated rewrites.

When something fails, record:

```text
State reached:
Input performed:
Expected result:
Observed result:
Reproduction frequency:
Capture, log, or trace:
Earliest responsible lock:
Smallest explanatory change:
Evidence after the change:
```

## Phase 11 — Verify the campaign as a released route

Run one uninterrupted canonical journey from a clean start on the release build. Also run targeted journeys for branches, failures, reloads, changed world states, and risk-sensitive content.

The verification matrix includes:

| Area | Required proof |
| --- | --- |
| Boot and controls | Clean install/start, intended inputs, focus/pause, camera, and first control. |
| Complete route | Timestamped nodes from opening through final action and aftermath. |
| Gameplay systems | Normal, boundary, invalid, failure, recovery, and mastery cases for each core verb. |
| Branches | Every permitted incoming state at mandatory rejoin points. |
| NPCs and items | State transitions, missed interactions, duplicates, losses, dependencies, and reload behavior. |
| Save and reset | Checkpoint/new game, serialization, reload, cleanup, and supported migration. |
| Navigation | Gates, shortcuts, changed zones, no softlocks, and recovery from wrong-way travel. |
| Presentation | Runtime captures from named coverage states at recorded settings. |
| Performance | Frame time/FPS, loading, memory/download/renderer measures the runtime exposes, with environment and method. |
| Research | Every factual claim and recognizable reference mapped to its classification and source. |
| Publication | Likeness, voice, marks, allegations, private information, licenses, credits, notices, and required review disposition. |
| Packaging | Production build from a clean checkout or equivalent clean environment. |
| Deployment | Exact URL, deployed revision, load test, start-to-first-control test, and one remote route smoke test. |

Screenshots prove only the captured state. Automated tests prove only their assertions. A local development server does not prove a public deployment. Report these forms of evidence separately.

Do not describe an aspiration as complete. Use one of:

- **verified:** fresh direct evidence exists;
- **implemented, not verified:** code/content exists but the required observation did not run;
- **specified only:** a production-ready decision exists without implementation;
- **blocked:** the exact missing permission, tool, asset, service, or external condition is named.

## Phase 12 — Package, deploy, and hand off

Use the project's existing release route. Run the production build from a clean state. Check missing files, case-sensitive paths, asset URLs, content hashes, source maps/secrets, licenses, loading failures, and platform-specific input.

Deploy only to an authorized destination. After deployment:

1. open the exact public or preview URL;
2. verify the revision or build identifier;
3. reach first control;
4. test one representative interaction and one state transition remotely;
5. check direct reload/deep-link behavior where relevant;
6. record the URL, time, environment, and known hosting limits.

If deployment is unavailable, return the verified local launch/build commands and the exact action needed from the user. Do not invent a URL.

The final handoff states:

- the campaign premise, target duration, platform, perspective, and single ending boundary;
- what was researched and when, with the source ledger path;
- what is factual commentary, attributed claim, community material, or invention;
- how real inspirations were transformed or removed;
- completed zones, NPCs, items, systems, acts, and ending;
- project paths changed and launch/build commands;
- tests, route runs, captures, performance measurements, and deployed URL;
- original, generated, project-owned, licensed, and temporary assets;
- external APIs, MCPs, DCCs, services, and paid calls actually used;
- open defects, unverified claims, publication reviews still required, and the next highest-value pass.

## Completion gate

Call the campaign complete only when all applicable statements are true:

- the research ledger distinguishes facts, attributed claims, interpretations, community jokes, and invention;
- recognizable real-world inspiration has an explicit, reviewed publication treatment;
- the project does not rely on a light name/face change or disclaimer as its safety argument;
- one canonical ending is implemented, reachable, and verified from a clean start;
- fail states recover instead of masquerading as alternate endings;
- the complete mandatory route exists in the release build;
- selected gameplay systems create distinct decisions and share state;
- every required zone, named NPC, tracked item, and mandatory encounter has a causal function;
- branches rejoin without silently deleting incompatible state;
- save, load, reset, and ending cleanup behave as documented;
- critical presentation appears in the real runtime across the route;
- signature assets are original, project-owned, or properly authorized and recorded;
- performance and loading claims name the environment and method;
- a production build succeeds;
- the delivered URL was actually opened and tested, or the deployment blocker is stated precisely;
- the handoff separates verified, unverified, specified, and blocked work.

If the environment cannot satisfy these conditions in one run, finish the largest coherent release that reaches its ending, reduce the advertised scope to match it, and leave the next expansion behind the same locked state and evidence contracts. A smaller complete campaign is a stronger result than a large folder of unfinished scenes.
