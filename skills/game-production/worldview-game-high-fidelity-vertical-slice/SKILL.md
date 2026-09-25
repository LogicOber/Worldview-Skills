---
name: worldview-game-high-fidelity-vertical-slice
description: "Build a bounded, high-fidelity playable game slice from a story or experience brief. Use when the user asks for an AAA-style, cinematic, premium, next-generation, visually rich, or polished 2D/3D game and expects more than default primitives, flat vectors, or a static graphics demo. Produces a playable core, runtime-matched visual targets, an original asset plan, integrated presentation, performance evidence, and a truthful handoff. Best suited to GPT-6 Astra with Max reasoning for one difficult build or Ultra when independent asset, runtime, and verification tracks can be delegated."
---

# Worldview Game — High-Fidelity Vertical Slice

## Call this Skill

The public invocation is:

```text
/worldview-game-high-fidelity-vertical-slice
```

Treat the text below the Slash command as the creative brief. A story premise is enough to begin. Do not make the user translate a scene into shader names, polygon counts, engine architecture, or a long production prompt before work starts.

If the user is still choosing the story or asks to review it first, begin with `/worldview-game-story-and-play-plan` when installed. Deliver readable scenes, player actions, discoveries, ending, and estimated play time; finish the requested writing before handing back for review. Without that sibling, write the same bounded story and play plan here. Start runtime and asset work only within the user's implementation authorization. An explicit end-to-end build with delegated story choices can proceed from this plan without another approval. Preserve a story that the creator already accepted.

## Read only the companion files the task needs

- Read and fill [vertical-slice-contract.md](templates/vertical-slice-contract.md) before extensive asset production. If the project already records every equivalent decision and test, update that record instead of duplicating it.
- Read [high-fidelity-production-rules.md](references/high-fidelity-production-rules.md) when choosing a production route, diagnosing a flat or generic result, or deciding what to cut under a time budget.
- Read [the-glass-tide-station.md](examples/the-glass-tide-station.md) only when a completed fictional example would clarify a field. Its story, camera, runtime, and values are illustrations rather than defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review. It is not an implementation playbook.
- [README.md](README.md) is the human-facing choice and invocation page. It is not required after this Skill is loaded.

## The job this Skill closes

This Skill turns a broad game idea into one short segment that looks intentional from the actual gameplay camera and can be played, measured, restarted, and handed to another developer. It addresses a common failure: an Agent interprets “AAA” as more glow, more polygons, or a polished still image while the playable result remains a pile of generic shapes.

“High fidelity” here means that the slice has project-specific visual decisions, coherent image formation, responsive interaction, stable runtime behavior, and evidence from the states the player will actually reach. It is not a claim that one Agent run replaces the people, schedule, content volume, capture hardware, and testing of a commercial AAA production.

Use this Skill for a new project, a sparse prototype, or a new self-contained area in an existing game. Use `/worldview-game-runtime-visual-fidelity-rebuild` instead when the game is already functionally complete enough and the authorized job is to rebuild its presentation without changing its rules.

## What the user can give

Begin from any useful combination of:

- a story, place, character, conflict, or desired player feeling;
- an existing repository and the path authorized for changes;
- world notes, sketches, screenshots, mood references, or existing assets;
- a required engine, framework, platform, camera, control scheme, or deployment target;
- a time, token, cost, download-size, or frame-rate limit;
- configured image, audio, browser, engine, DCC, API, or MCP tools.

Infer ordinary production choices from the brief and the project. Ask one grouped question only when two plausible answers would create different products—for example, a first-person exploration slice and an isometric tactics slice. State an assumption and continue when the choice is reversible.

## What the user receives

Complete as much of this set as the current project and tools permit:

1. A bounded slice brief that names the player role, place, goal, pressure, signature interaction, final beat, target duration, platform, and camera.
2. A working route through the slice using inexpensive but readable proxies before expensive presentation work begins.
3. A visual standard built from three to five named gameplay states, each tied to the real camera, HUD, resolution, world state, and performance target.
4. An asset and representation plan that decides what belongs in authored geometry, procedural systems, textures, shaders, particles, sprites, interface code, audio, or existing project assets.
5. Original implementation inside the project's established source tree, using the existing stack unless a measured constraint requires a change.
6. Direct evidence for the main interaction, success, failure or interruption, reset, visual states, loading, and runtime performance.
7. A handoff that separates completed work, authorized external services, original assets, temporary proxies, known defects, unmeasured claims, and the next highest-value pass.

Store production records outside runtime source unless the project already has an equivalent location:

```text
game-production/<slice-slug>/
├── slice-brief.md
├── vertical-slice-contract.md
├── visual-standard.md
├── asset-ledger.md
├── capture-matrix.md
└── verification.md
```

Source code and shipping assets remain in the project's existing directories. Do not reorganize a working repository merely to match this example.

## Recommend the right model without misrepresenting it

For the strongest result in Codex, recommend `gpt-6-astra` when model selection is available.

- Use **Max** when one Agent must reason deeply across experience design, architecture, rendering, asset integration, debugging, and verification.
- Use **Ultra** when the work can be split into independent tracks such as DCC asset production, runtime implementation, and capture verification. One lead must own the locked contract, integration order, and final claims.
- In the OpenAI API, `max` is a `reasoning.effort` value. Ultra is an Agent orchestration mode that uses subagents; do not describe it as an API reasoning value or a separate Astra model.

The model recommendation is not a hidden prerequisite. If the current Harness cannot change models, continue with the active model, reduce the slice before reducing its proof standard, and disclose which stages remain weaker or unverified.

## Inventory capabilities before promising the result

Create a capability ledger before editing. Record availability, access method, scope, cost boundary, and fallback for each row.

| Capability | Why it matters | Acceptable evidence | If unavailable |
| --- | --- | --- | --- |
| Project read/write and version history | Preserves existing behavior and makes changes reviewable. | Authorized path, worktree status, existing commands. | Deliver a contract and patch plan rather than claiming implementation. |
| Runnable game or prototype | Converts a document into a playable claim. | Local build, engine play mode, device build, or hosted preview. | Mark all runtime behavior unverified. |
| Real frame capture and visual inspection | Reveals camera, composition, materials, lighting, UI, and artifacts. | Screenshots from named states at recorded resolution. | Produce target sheets only; do not claim visual matching. |
| Input or browser/engine automation | Repeats journeys and failure cases. | Existing tests, automation driver, debug scene loader, or recorded manual procedure. | Use repeatable manual steps and narrow claims. |
| Image generation or supplied references | Makes visual intent inspectable before asset work. | Configured image tool/API or user-owned reference files. | Write the visual grammar in text and keep the reference-matching claim open. |
| Blender or another DCC | Creates editable, silhouette-critical 3D assets. | Configured MCP, approved scripting interface, CLI, or manual project handoff. | Choose a procedural/runtime route or stop distinctive authored assets at a production brief. |
| Profiler and runtime counters | Keeps visual ambition inside a real frame budget. | Engine profiler, browser performance trace, renderer counters, device telemetry. | Report only timing observable in the available runtime. |
| Audio tools | Supports authored music, ambience, dialogue, and impact. | Existing audio library, generator, synthesis, or middleware. | Preserve hooks and use clearly identified temporary sounds. |

An MCP server, API, model, Blender installation, asset store, or deployment service is a separate tool. This Skill does not include it. Use only tools already configured or explicitly authorized. Never request that a secret be pasted into a project file, commit credentials, or silently spend paid API quota.

Blender MCP is useful when a distinctive editable mesh is central to the slice, but it is not mandatory. Prefer an approved scripting or MCP interface over fragile mouse automation when both exist. Preserve the editable DCC source and export a separate runtime asset. If neither a DCC nor an adequate runtime construction route exists, finish the playable core and asset specification, then state the exact missing capability.

Do not download third-party assets merely because they are convenient. Reuse project-owned assets, create original assets with authorized tools, or obtain explicit approval and record the asset URL, creator, license, modifications, and redistribution status.

## Protect the project before changing it

For an existing repository:

1. Read local instructions and the smallest relevant source paths.
2. Inspect the current worktree and preserve unrelated user changes.
3. Identify the existing runtime, build command, test command, asset pipeline, camera, input layer, save boundary, quality settings, and deployment path.
4. Run the current entry point when possible. Record one baseline interaction, one baseline capture, and available performance measurements.
5. Write a source boundary: project facts, user-provided facts, observed behavior, new proposals, authorized external tools, and unresolved assumptions.

Keep the existing engine and framework unless the current stack fails a named requirement and the replacement cost is justified. A renderer or library used by another demonstration is not a reason to replace the project's architecture.

## Lock the slice in this order

Each lock fixes a concrete artifact. Later work may tune only the fields listed as mutable. When reality contradicts a lock, reopen the earliest affected row and discard the dependent captures, tests, assets, or claims.

| Lock | Artifact and question resolved | Closed when | Still mutable afterward | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| **Player promise** | `slice-brief.md` names who the player is, what they do repeatedly, why now, what resists them, the signature moment, and where the slice ends. | The complete experience fits one bounded route and one runtime target. | Names, prose, and incidental dressing. | A new core verb, perspective, platform, or ending reopens the promise; invalidate every later lock. |
| **Playable spine** | `vertical-slice-contract.md` fixes input, camera, traversal, interaction, success, failure/interruption, reset, and state ownership. | A proxy build can complete the intended route and repeat it after reset. | Feel values inside tested bands and proxy appearance. | Control, collision, authority, route, or state changes reopen the spine; invalidate visual staging and journey evidence. |
| **Frame coverage** | `visual-standard.md` defines three to five target gameplay states with camera, world state, composition, material, light, motion, UI, and readability requirements. | Every story-critical visual promise appears in at least one reachable state, and shared visual rules agree across all states. | Small prop placement and surface variation. | Camera, FOV, major composition, time of day, signature event, or HUD changes reopen coverage; invalidate target comparisons and dependent asset briefs. |
| **Runtime budget** | Platform, resolution, frame target, loading target, memory or download constraints, and measurement environment are fixed. | The target is measurable in the available runtime and compatible with the player promise. | Quality-tier thresholds that preserve the same target experience. | Target device, renderer, resolution, or performance class changes reopen the budget; invalidate asset density, effects, and timing claims. |
| **Representation plan** | `asset-ledger.md` assigns each visible family to existing, authored, procedural, generated, instanced, shader, particle, sprite, UI, or audio production. | Every target-state feature has an owner, source, runtime form, fallback, and cost estimate. | Individual variants within the same family and cost envelope. | Changing a signature silhouette, material system, generation source, license, or runtime form reopens the plan; invalidate relevant assets and captures. |
| **Integrated presentation** | Runtime assets, materials, lighting, animation, effects, UI, audio, and transitions serve the locked playable spine. | All named states are reachable through real input and meet their must-read requirements without breaking the frame budget. | Final values that stay inside the accepted evidence range. | A gameplay regression, target-state miss, artifact, or budget breach reopens the earliest responsible lock and invalidates affected evidence. |
| **Release proof** | `verification.md` links each claim to a command, journey, capture, trace, or explicit manual observation. | A clean start can reach the slice, complete it, fail or interrupt it, reset it, and reproduce every release capture. | Additional evidence and clearly scoped cosmetic fixes. | Any behavior or presentation change after capture invalidates the relevant proof and requires a rerun. |

Do not call an unchecked row “locked.” Record it as proposed and continue only where downstream work can remain valid.

## Phase 1 — Turn the story into a playable promise

Write one sentence with this shape:

> The player is `<role>` in `<place>`, repeatedly `<core verb>` to reach `<goal>` while `<pressure>` changes the situation, culminating in `<signature event>` and ending when `<clear boundary>` occurs.

Then define five beats:

1. **Arrival:** the player gains control and reads the place without a tutorial wall.
2. **First useful action:** the core verb changes a visible or audible state.
3. **Pressure:** the same verb must be used under a cost, threat, limit, or competing goal.
4. **Signature event:** story, mechanic, camera, light, sound, and environment respond to one cause.
5. **Exit:** the slice produces a clear consequence and a stable restart or handoff point.

For a new brief with no duration, scope the first delivery to roughly three to ten playable minutes, one primary route, one main interaction loop, one signature event, and one ending. If the user asks for a full game, build the smallest slice that proves the requested identity and place expansion outside the current delivery. Under a time limit, remove rooms, variants, and secondary mechanics before weakening the central interaction or its visual proof.

Test every planned input with one question: what decision changes when the player uses it? Combine or remove inputs that merely stay held, duplicate another action, or add finger work without changing a choice. Preserve genre-necessary control even when it is not used constantly.

## Phase 2 — Prove the core with inexpensive representations

Build one system at a time in dependency order. A common order is movement and camera, collision and traversal, the core interaction, pressure or opposition, outcome and reset, then progression only if the slice needs it.

Each system must have:

- an observable state change;
- a normal path and an adjacent failure or interruption;
- a reset path that cancels old callbacks, projectiles, queued work, and temporary state;
- tunables separated from irreversible structure;
- a repeatable test or manual procedure;
- an explicit owner when networking, save state, or multiple systems can write it.

Use plain but legible proxies during this phase. A proxy is acceptable when its scale, pivot, collision, and state match the later asset. It becomes a defect when it survives as the final representation of a story-critical object whose identity depends on silhouette, material, articulation, or surface response.

Play the proxy route at least three times when execution is available. Fix control feel, camera obstruction, unreachable geometry, state leakage, dead ends, and unreadable outcomes before asset production. Preserve a known-good version whenever the interaction reaches a stable milestone.

Describe bugs first as observations:

```text
State reached:
Input performed:
Expected visible or behavioral result:
Observed result:
Reproduction frequency:
Capture or trace:
```

Trace the cause before editing. Make the smallest change that explains the observation, then rerun the same procedure. Do not use a visual symptom as permission to rewrite unrelated working systems.

## Phase 3 — Define visual truth across gameplay states

A single beauty image can be matched with a camera trick while the rest of the game stays empty. Build a coverage set of three to five frames instead:

| Required state | What it must prove |
| --- | --- |
| Arrival frame | Place identity, scale, navigation landmark, player silhouette, and initial UI hierarchy. |
| Core-action frame | The main verb, target, cause, response, contact point, and readable effect. |
| Pressure frame | Readability under motion, opposition, dense effects, damage, weather, or constrained time. |
| Signature frame | The scene-specific event that distinguishes this project from a template. |
| Aftermath frame, when needed | Consequence, changed world state, reward or loss, and route to the ending. |

Every target frame records:

- the reachable game-state identifier or reproduction steps;
- gameplay camera type, transform or anchor, FOV/zoom, aspect ratio, and capture resolution;
- foreground, player/action plane, midground landmark, and background depth structure;
- required silhouettes and their scale relationship;
- material families, texture scale, roughness/specular behavior, and wear logic;
- motivated light sources, exposure priority, shadow role, atmosphere, and reflections;
- color hierarchy for navigation, danger, interaction, and decoration;
- motion that should be visible over time rather than faked in a still;
- HUD, reticle, prompts, captions, and text-safe areas;
- real-time constraints and the most expensive visible features;
- must-read features and negotiable details.

Use supplied references when the user owns or may lawfully use them. If image generation is configured and authorized, generate target frames that resemble reachable runtime captures, not promotional compositions that require a different camera or impossible geometry. For a unique 3D asset, add clean multi-angle references whose proportions agree. Record the generator and source status in the asset ledger.

Translate the frames into one visual grammar:

- **Shape:** dominant silhouettes, proportion rules, edge language, and density by distance.
- **Surface:** material families, response to light, macro breakup, fine detail, wear, and texturing scale.
- **Light:** motivated sources, contrast range, exposure adaptation, shadow softness, and atmosphere.
- **Color:** world palette, player path, interactables, danger, rewards, and UI separation.
- **Motion:** primary action, secondary motion, environmental cycles, impact response, and idle life.
- **Lens and camera:** height, FOV, follow behavior, shake limits, occlusion response, and transition rules.
- **Interface:** typography, spacing, icon language, focus, controller/touch states, and world/UI relationship.
- **Sound:** ambience layers, interaction onset, impact, warning, transition, and silence used as structure.

Do not borrow a named franchise as the only specification. Convert references into observable traits and create project-specific shapes, materials, language, symbols, and story details.

## Phase 4 — Choose the production route per content family

Do not force the entire game through one asset technique. Assign each family by what it must do at runtime.

| Content family | Usually strongest route | Required check |
| --- | --- | --- |
| Hero character, vehicle, boss, close prop, or signature architecture | Authored DCC geometry with editable source and optimized export. | Silhouette from gameplay angles, articulation, pivots, scale, collision, LODs, and material batches. |
| Repeated architecture and industrial detail | Modular kit, instancing, atlases, decals, and controlled variation. | Repetition remains efficient and seams follow the visual grammar. |
| Large terrain, sky, water, weather, foliage, crowds, or distant traffic | Procedural or data-driven runtime system, often with authored hero elements. | Determinism, streaming, continuity across detail levels, and shared simulation truth. |
| Surface character | Tiled or unique textures, PBR maps where the renderer supports them, vertex data, decals, and shader variation. | Correct scale, channel interpretation, seams, compression, and behavior under every locked light state. |
| Impact, magic, dust, rain, destruction, and transitions | State-driven particles, shaders, decals, animation, and camera/audio response. | The effect begins from the real cause, stays readable, cleans up, and obeys the frame budget. |
| Stylized 2D character or unique illustration | Original sprite/illustration production with consistent sheets and normalized pivots/scales. | Animation coverage, alpha edges, sampling mode, readability, and fallback behavior. |
| Repeated or stateful tiles, meters, grids, text, menus, and interaction prompts | Runtime code and data using the project's UI system. | State accuracy, resolution independence, localization space, focus, and accessibility. |

Use a hybrid route by default when it matches the project: authored silhouettes for identity, procedural or modular systems for scale, and runtime effects for response.

Every runtime asset family also needs a loading state, failure behavior, and clearly identified proxy or reduced presentation. One missing image, model, shader, audio file, or network response must leave a diagnosable playable result rather than a black frame or blocked boot. Exercise the fallback at least once before delivery.

For a DCC asset, define before modeling:

- gameplay viewing distance and important angles;
- world units, forward/up axes, origin, pivot, attachment points, and naming;
- required moving parts, deformation, collision, sockets, and damage states;
- silhouette features visible at the target resolution;
- material families and texture channels;
- runtime triangle, material-batch, texture, and LOD envelope;
- editable source path and export path;
- export validation in the actual runtime.

For procedural content, require one authoritative rule set for visible form, collision or interaction, persistence, and regeneration wherever those systems must agree. Seeded content must reproduce the same test state. When levels of detail replace one another, hold the old representation until the required new coverage is ready; validate transitions in motion rather than only at endpoints.

## Phase 5 — Build fidelity in causal passes

Work through the passes below. Capture the same named gameplay states after each accepted pass so improvements and regressions are comparable.

### 1. Composition and camera

Fix route legibility, horizon or room axes, landmark placement, foreground framing, depth layers, FOV, camera height, follow lag, collision, occlusion, and target framing. A richly textured scene with a weak camera still reads as a random asset pile.

### 2. Scale and silhouette

Replace story-critical boxes with recognizable massing. Establish human scale, door and stair scale, prop hierarchy, negative space, articulation, and distance silhouettes. Spend geometry where it changes outline, parallax, deformation, or shadow; use surface detail elsewhere.

### 3. Surface response

Give each material a reason to look different under the same light. Establish texture scale, albedo range, roughness or specular variation, normals or geometric relief, edge or contact wear where fiction supports it, decals, and macro breakup. Keep labels and symbols authored and readable instead of image-generated gibberish.

### 4. Light, exposure, and air

Place motivated sources, then tune shadow, exposure, fog or haze, reflections, emissive response, and adaptation. Keep the playable route and interaction colors readable in the darkest, brightest, and effect-heavy target states. Post-processing finishes an image; it does not replace missing form, materials, or light logic.

### 5. Motion and world response

Connect the player's verb to animation, pose, recoil, deformation, particles, decals, lighting response, camera response, audio, and persistent world change as appropriate. Add environmental motion at several tempos. Cap and clean up transient effects. Motion should reveal cause, not merely keep every object moving.

### 6. Interface, sound, loading, and transitions

Finish typography, focus states, prompts, reticle, menus, captions, input hints, pause, loading, and scene transitions. Build an audio hierarchy in which ambience, action, warning, impact, and confirmation remain distinguishable. A beautiful frame followed by an unstyled loader or broken reset is not a finished slice.

Maintain a discrepancy ledger after every pass:

| State | Observable mismatch | Likely cause family | Evidence | Smallest corrective pass | Result after rerun |
| --- | --- | --- | --- | --- | --- |

Rank mismatches by how much they affect the player promise, gameplay readability, project identity, and multiple target states. Fix the highest-leverage cause family before adding unrelated detail.

## Phase 6 — Keep visual ambition inside a measured runtime

For a new desktop or browser action slice without another requirement, use 60 frames per second at 1920×1080 on the available test machine as a provisional target. Preserve the project's existing target when one exists. Record actual hardware, OS, browser or engine version, backend, resolution, quality tier, and whether the measurement is headed, headless, emulated, or software-rendered.

Measure what the runtime exposes:

- frame interval median and slow-frame percentile, not only an instantaneous FPS label;
- draw calls, triangles or primitives, visible instances, shader/material count, and texture count;
- loading and first-interactive time;
- main-thread long work, worker queues, streaming backlog, compilation stalls, and garbage collection where available;
- texture and geometry memory or approximate shipped size;
- quality tier, render scale, interface resolution, and capture state.

Build at least one controlled stress state containing the densest expected combination of visible geometry, effects, UI, and movement. Compare before and after on the same state. Change one cost family at a time: visibility, LOD, batching, instancing, material consolidation, texture size/compression, effect count, streaming, generation scheduling, shadows, reflections, or render resolution.

Keep interface resolution independent from world render scale when the runtime supports it. Label software-rendered or headless timings as that environment's measurements rather than claiming they equal player hardware. A screenshot proves appearance at one moment; it does not prove stable frame pacing.

## Phase 7 — Make every review state reproducible

Add the smallest project-appropriate inspection surface:

- named start states for each target frame;
- deterministic seeds or fixtures for generated content;
- a debug-only way to read current mode, player state, target state, loading state, and camera;
- renderer and streaming counters;
- a clean way to wait for loading before capture;
- journey tests that use real controls rather than teleporting directly to every assertion;
- capture commands or exact manual reproduction steps.

Test-state setup and real journeys answer different questions. A named pressure scene makes visual iteration fast; it does not prove the player can reach that scene through the actual game.

When Ultra or another subagent system is available, split only non-overlapping work:

- the lead owns the contract, shared interfaces, integration order, and final claims;
- an asset worker owns named DCC source and export paths;
- a runtime worker owns named modules after interfaces are frozen;
- a reviewer receives the contract, fresh captures, and procedures, then reports ranked observable defects without editing the implementation;
- a verification worker reruns tests and captures after integration.

Never allow multiple workers to rewrite the same shared file or redefine the player promise independently. With one Agent, perform the same review as a separate pass using only the locked contract, current build, and fresh captures before reading the implementation log.

## Verification matrix

Complete the following with direct evidence. Add engine- or mechanic-specific rows rather than replacing these.

| Claim | Direct procedure | Evidence |
| --- | --- | --- |
| Clean start works | Follow documented setup in a fresh process or clean play session. | Command output or recorded procedure and first frame. |
| Player gains control | Use every required input from the arrival state. | Input assertions or manual observation. |
| Core verb changes the world | Perform the action on a valid and invalid target. | State trace plus core-action capture. |
| Pressure changes the decision | Reach the pressure beat through the real route and take two adjacent choices. | Journey trace and pressure capture. |
| Signature event is causal | Trigger it through gameplay and verify its gameplay, visual, audio, and persistent consequences. | State evidence plus before/during/after captures. |
| Outcome and reset are stable | Complete, fail or interrupt, then restart at least twice. | Assertions or repeated manual record. |
| Camera remains playable | Traverse edges, tight spaces, target transitions, and obstruction cases. | Camera checks and representative capture. |
| All target states are reachable | Reproduce every row in the capture matrix from the documented entry. | Fresh captures at locked settings. |
| Assets are original or authorized | Audit every non-code asset row. | Asset ledger with origin and rights status. |
| Visual grammar is coherent | Review shape, surface, light, color, motion, lens, UI, and sound across the capture set. | Completed review table and discrepancy closure. |
| Performance meets the stated target | Run the same representative and stress procedures in the recorded environment. | Trace, counters, and percentile timings. |
| Degraded quality remains readable | Exercise supported quality, resolution, input, caption, and reduced-motion paths. | Settings matrix and captures. |
| The production artifact starts | Build or package the release form, launch that artifact separately from the development server/editor, and repeat the opening interaction. | Build log, artifact path, smoke result, and first runtime capture. |

Do not mark a claim passed because the code contains a feature. Observe the feature in the running result.

## Release bar for “high fidelity”

Score each axis for the delivered capture set: `0` absent or broken, `1` functional but generic/inconsistent, `2` project-specific and stable. This is a release heuristic, not a universal art score.

| Axis | A `2` requires |
| --- | --- |
| Playable identity | The core verb, pressure, and consequence are readable without relying on the design document. |
| Composition | Camera, landmark, depth, scale, and route remain deliberate in every required state. |
| Silhouette | Story-critical characters, props, and architecture are recognizable at gameplay distance. |
| Surface and light | Materials react distinctly; lighting is motivated; exposure preserves action and atmosphere. |
| Motion and response | Important actions create timed, causal animation, effects, sound, and world response. |
| Interface and transitions | UI, prompts, menus, loading, and reset share the same presentation standard. |
| Runtime stability | Required states meet the declared frame/loading target in the recorded environment. |
| Originality and rights | Project identity is not a thin imitation, and every shipped asset has a recorded origin. |

Release only when no axis is `0`, the axes central to the player promise are `2`, the full score and defects are disclosed, and no unverified performance number is marketed as fact. A lower score can still be delivered as a prototype if it is named honestly.

## Rules this Skill enforces

1. **Reduce scope before reducing the central quality bar.** A smaller complete room is more useful than five half-built levels.
2. **Prove interaction before expensive art.** This prevents beautiful assets from hardening around a weak or broken loop.
3. **Use several reachable target states.** This prevents optimizing one hero screenshot while ordinary play remains empty.
4. **Match production method to runtime role.** Unique silhouettes, repeated structures, vast systems, effects, and UI have different efficient representations.
5. **Keep simulation and presentation causally connected.** Water, damage, doors, terrain, and effects must agree with the rules the player touches.
6. **Preserve editable sources and validate exports in engine.** A good DCC render is not proof that scale, materials, animation, or performance survive import.
7. **Measure the actual bottleneck in a repeatable state.** Generic optimization often removes visible quality without fixing the slow frame.
8. **Treat tools as capabilities, not contents of the Skill.** Blender MCP, image APIs, profilers, deployment services, and subagents must be present and authorized.
9. **Record asset origin and rights.** High fidelity does not justify unlicensed downloads or hidden generated content.
10. **Separate screenshots, behavior tests, and performance traces.** Each proves a different claim.
11. **Invalidate stale evidence after a relevant change.** A capture or benchmark belongs to the version that produced it.
12. **Describe limits plainly.** Name proxies, inaccessible tools, unsupported devices, and untested states before the user discovers them.

## Deliver the slice

The final handoff must include:

- playable entry point and exact run/build command;
- supported controls and target platform;
- a one-paragraph player promise and actual slice duration;
- files changed and important project-owned assets created;
- capability and asset ledgers, including external APIs or MCP servers actually used;
- the capture matrix with fresh final images;
- functional checks, performance procedure, environment, and observed results;
- quality score with remaining `0` or `1` items explained;
- proxies, known defects, unsupported paths, and unverified claims;
- the next three changes ranked by visible/player value rather than implementation convenience.

Never claim deployment, 60 FPS, accessibility, controller support, mobile support, or “AAA quality” unless the corresponding evidence exists.

## Example invocation

```text
/worldview-game-high-fidelity-vertical-slice

Build a third-person game about a courier crossing a city that floods upward
instead of downward. She must carry one glass seed through an abandoned tide
station while the water climbs toward the ceiling. I want the station to feel
old, expensive, and physically believable. Start from the repository in this
workspace and make one short playable chapter.
```

The Agent should infer a bounded chapter, make the carrying and rising-water decision playable with proxies, define runtime-matched arrival/action/pressure/signature/aftermath states, choose original asset routes based on available tools, integrate the presentation, measure it, and deliver evidence. It should not answer with a longer prompt for the user to paste somewhere else.

## Related entry

Use `/worldview-game-runtime-visual-fidelity-rebuild` when a working game already exists and the authorized change is specifically to replace generic runtime presentation while preserving gameplay behavior.
