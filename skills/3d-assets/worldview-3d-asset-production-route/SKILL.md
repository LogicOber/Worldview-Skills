---
name: worldview-3d-asset-production-route
title: 3D Asset Production Route
description: >-
  Route, build, validate, and integrate game-ready 3D assets by choosing
  authored, procedural, generated, or hybrid production per asset risk.
category: 3d-assets
triggers:
  - "choose a 3D asset workflow"
  - "make game-ready 3D assets"
  - "use Tripo for this model"
  - "generate a 3D prop"
  - "build a character asset"
  - "create environment assets"
  - "asset production pipeline"
---

# 3D Asset Production Route

## Mission

Turn an asset request into a route that can survive integration. The output is not “a model that looks good in a viewer.” It is a documented source and runtime asset—or a clearly labelled blockout/reference fallback—with evidence for the properties the project actually relies on.

The Agent owns the route, keeps generated and authored work distinguishable, and never claims a mesh is game-ready from a beauty render alone.

## Operating contract

Before touching an external generator, DCC, store, or project file, create or update a route contract with:

1. `asset_id`, asset family, role, and target runtime;
2. visible distance, camera, interaction, collision, deformation, and animation requirements;
3. quality, loading, memory, draw-call, file-size, and update constraints;
4. permitted references, source ownership, external-service authorization, and spend limit;
5. candidate routes, route score, selected route, fallback route, and rejection reasons;
6. source form, working form, runtime export, and reproducible build/export command;
7. acceptance tests and evidence location;
8. mutable fields, close condition, reopen trigger, and dependent work to invalidate.

If the project already has an asset ledger or production record, extend it rather than introducing a second source of truth. If it has none, use `3d-asset-route-contract.md` as the minimum record and keep runtime files in the project’s existing tree.

## Evidence language

Mark every material statement as one of the following when writing the record:

- **Source fact:** supplied by the user or a cited provider/manual.
- **Project fact:** read from the repository, runtime, scene, or configuration.
- **Observation:** reproduced in a named build, tool version, and environment.
- **Proposal:** a route or value not yet verified.
- **Judgment:** an evaluation tied to listed evidence.
- **Unknown:** not measured or not authorized.

Never turn “the preview appears clean” into “the mesh is valid,” and never turn a provider’s marketing description into a project observation.

## Phase 0 — Inventory before route selection

Read enough of the project to know what “works” means before choosing a tool.

### 0.1 Project and runtime inventory

Record:

- engine/framework, version, target browser/device/console, renderer, coordinate system, unit convention, and import settings;
- existing style library, material conventions, naming, folder rules, texture packing, shader limits, and asset map;
- target camera distance, field of view, screen-space size, lighting, and whether the asset is seen in motion;
- interaction type: visual-only, inspectable, pickup, openable, breakable, climbable, weapon, AI navigation obstacle, or physics object;
- collision model: none, primitive proxy, convex, per-poly, ragdoll, trigger volume, or custom authored shape;
- animation/deformation requirements and required states (idle, locomotion, attack, damage, facial, cloth, hinge, destruction);
- load-time, memory, triangle/vertex, material-slot, texture, draw-call, and file-size budgets if the project has them;
- current import/export and verification commands, plus the smallest runnable scene that exposes failure.

Do not invent a budget because a tool’s default is convenient. If a budget is unknown, mark it `proposal` and select a conservative representative test.

### 0.2 Capability and authority ledger

Check the actual harness for:

| Capability | Verify | Record before use |
| --- | --- | --- |
| DCC (Blender or another) | executable/version and headless or interactive route | version, script/MCP scope, input/output paths |
| Blender MCP | configured server and allowed operations | server name, project data allowed to leave, fallback |
| Image-to-3D provider (Tripo or another) | authenticated endpoint or UI and test request | provider/model/version, credits, spend limit, data policy |
| Texture/image provider | configured call path and rights terms | prompt/reference, model, output ownership/usage status |
| Runtime importer | clean import in the actual project | command, warnings, target build |
| Profiler/capture | repeatable frame and memory evidence | environment, capture method, metrics |
| Deployment/device | authorized target and credentials path | target, release boundary, fallback |

Availability is not authorization. Do not upload private references, use paid credits, install a service, or send a project file until the user’s permission and data boundary are recorded. Secrets stay in environment configuration or a secret manager, never in the repository, generated prompt, contract, or commit.

### 0.3 Asset-family decomposition

Split a vague request into stable assets. For each row record:

| Field | Question |
| --- | --- |
| Identity | Is this one named asset, a kit, a family, or a parameterized generator? |
| Role | Hero / interactive / deforming / repeatable / background / prototype? |
| Silhouette | Is the outline recognizable at the target camera? |
| Close-up | How near and how long does the player see it? |
| Touch | Can it be opened, picked up, hit, climbed, broken, or inspected? |
| Deformation | Does it hinge, bend, squash, animate, ragdoll, or express? |
| Collision | What must block movement or receive a hit? |
| Variants | Are there state, damage, color, wardrobe, or modular variants? |
| Reuse | How many instances and scenes? |
| Budget | What frame, memory, loading, and download constraints apply? |

Do not route an entire category to one tool by habit. The same family may need a hero, gameplay, and background tier.

## Phase 1 — Select a route per asset

### 1.1 Hard gates first

Reject a route before scoring it when it fails any of these:

- no permission to use the input or distribute the result;
- no path to the target runtime or required platform;
- no way to satisfy required deformation, animation, collision, or editability;
- no way to preserve the project’s scale, style, or continuity-critical identity;
- no test that can expose the route’s likely failure;
- no acceptable fallback if the external call fails.

A fast route is not a valid route when it merely moves the missing work into the runtime or hides it behind an untestable file.

### 1.2 Route score

Score each surviving route from 0 (poor) to 3 (strong) and record the reason, not just the total:

| Axis | 0 | 1 | 2 | 3 |
| --- | --- | --- | --- | --- |
| Visual match | misses locked silhouette/style | approximate | close with fixes | meets reference/continuity lock |
| Interaction/deformation safety | impossible to verify | substantial unknowns | testable with repair | authored and testable |
| Editability | opaque or destructive | costly edits | workable | source remains clear and reproducible |
| Batch speed | slower than manual | similar | faster | deterministic batch advantage |
| Runtime fit | fails budget/import | unknown | fits after cleanup | fits with measured headroom |
| Rights/source confidence | unknown or incompatible | incomplete | recorded with caveats | authorized and documented |
| External cost/risk | unbounded | high | bounded | local/no paid dependency |
| Recovery | no fallback | manual restart | viable alternate | route can finish offline |

Apply hard gates before totals. A high score cannot override a rights failure or unverified rig requirement. If two routes are close, choose the one with the lower irreversible cost and stronger recovery.

### 1.3 Route defaults (not guarantees)

Use these starting hypotheses, then verify them against the project:

- **Hand-authored:** hero assets, editable architecture, collision-critical objects, exact silhouettes, deforming characters, faces, hands, cloth, and anything that must be revised repeatedly.
- **Procedural/runtime:** modular walls, pipes, shelves, cables, debris, repeated rooms, parametric damage, crowds of simple objects, and assets whose variation is more valuable than a unique sculpt.
- **Image-to-3D:** static props, background set dressing, distant silhouettes, rough architecture, and fast blockouts where the back side and topology are not part of the promise.
- **Hybrid:** most production batches—generate a candidate or reference, then author the shell, retopology, seams, collision, rig, material cleanup, LOD, or runtime integration that the project needs.

“Static” does not mean “safe”: a static hero prop may still need clean topology, closed surfaces, UVs, and a precise collision proxy.

## Phase 2 — Lock the asset contract

Write the contract before modelling/generation. The artifact is considered locked only when the route, acceptance gates, and evidence plan are recorded.

### 2.1 Identity and transform lock

Record:

- stable ID and human name;
- source of truth for silhouette, dimensions, materials, colors, markings, asymmetry, and variants;
- real-world dimensions and project units;
- origin/pivot, forward/up axes, ground contact, attachment sockets, and mirror rules;
- camera distance and the continuity-critical features that must never drift.

The contract must name what may change without reopening the route (for example roughness range or hidden back-face detail) and what invalidates all downstream work (for example a new silhouette, scale, pivot, rig, or target platform).

### 2.2 Functional lock

Specify:

- interaction events and valid target regions;
- collision layers, trigger bounds, navigation influence, and physics expectations;
- animation clips, state transitions, skeleton naming, bind pose, root motion, and representative stress poses;
- material behavior under the actual renderer (opaque, alpha, emissive, normal, subsurface, transmission);
- LOD distances, impostor/billboard policy, culling, instancing, streaming, and fallback form;
- failure behavior when an external asset is missing, delayed, invalid, or over budget.

### 2.3 Source and rights lock

For every input and output record:

| Item | Required record |
| --- | --- |
| User/project reference | path/URL, owner, allowed use, transformation permission |
| Generated reference or mesh | provider, model/version, task ID if exposed, date, input class, output path/URL |
| Purchased/downloaded source | creator, URL, exact license, attribution/redistribution obligations, modifications |
| Original authored source | author/date, source path, dependencies, export recipe |
| Texture/material source | image origin, license, bake/generation process, channel packing |
| Runtime output | hash/build, exporter version, import warnings, final ownership status |

Do not state “commercially safe” unless the relevant license and jurisdiction are actually reviewed. If terms are unclear, mark the asset `restricted`, `reference-only`, or replace it with original work.

## Phase 3 — Build the cheapest failure-revealing representative

The first output is a test, not a batch. Pick the smallest representative that can fail for the selected route:

- **Prop:** greybox dimensions, silhouette, one material, pivot, collision, close-up, and one interaction.
- **Modular environment:** two modules, one corner/seam, one doorway or junction, lighting, nav/collision, and an instance count representative of the scene.
- **Character/creature:** neutral mesh, bind pose, skeleton, weights, idle/walk/turn, extreme joint poses, face/hand check, and a game-camera silhouette.
- **Weapon/tool:** grip, attachment socket, first-person/third-person scale, animation arc, hit volume, and material readability.
- **VFX mesh or destructible:** repeated spawn, camera-facing behavior, bounds, transparency/overdraw, lifetime, and cleanup.

Do not generate a hundred assets to discover that the provider’s scale or export convention is wrong. A representative closes the route only after the mandatory gates pass.

## Phase 4 — Route-specific production

### 4.1 Hand-authored route

1. Block the locked silhouette and dimensions with simple forms.
2. Establish clean topology where deformation, shading, seams, or subdivision need it; keep hidden detail proportional to the camera and budget.
3. Separate material regions and movable components intentionally.
4. Create UVs and texture sets that match the runtime’s channel and resolution limits.
5. Author collision and sockets as deliberate source objects, not accidental render geometry.
6. Create LODs or an impostor policy, then export through the project’s reproducible path.
7. Import into the real runtime and repair from runtime evidence, not only the DCC viewport.

### 4.2 Procedural or runtime route

1. Define deterministic inputs: seed, dimensions, module grammar, variation bounds, material rules, and collision rule.
2. Generate a representative and inspect seams, normals, overlaps, pivots, and instance behavior.
3. Record the generator version and inputs so the result can be rebuilt without hidden state.
4. Decide whether to bake a mesh, keep runtime geometry, or use both for different LODs.
5. Measure generation time, memory, draw calls, overdraw, and streaming behavior in the target runtime.
6. Save the recipe and a pinned representative output; do not ship a generator that cannot reproduce the accepted asset.

### 4.3 Image-to-3D route

1. Confirm the input reference is authorized and sufficient. A single view does not establish a hidden side, interior, scale, or mechanical articulation.
2. Create a neutral multi-view/reference contract when the silhouette or back side matters.
3. Submit the smallest authorized test. Record provider, endpoint/UI, model version, parameters, task ID, credits, timestamps, and output location.
4. Inspect the result in wireframe and material views: holes, internal shells, flipped faces, non-manifold edges, floating fragments, self-intersections, uneven density, warped details, UV seams, texture stretching, and wrong scale.
5. Decide explicitly: accept after repair, retopologize/rebuild, use as a reference/blockout, or reject. A detailed texture never waives a geometry defect.
6. Build collision, sockets, LODs, and material cleanup in the project’s conventions.
7. Import and test the repaired asset in the real runtime. Preserve the generated file as provenance but do not confuse it with the final runtime form.

The Skill may use a provider such as Tripo when it is configured and authorized. It does not assume current endpoint names, models, task limits, output formats, prices, or license terms; it reads the provider’s current documentation and records observed values. API keys are never written into prompts, scripts, logs, or commits.

### 4.4 Hybrid route

Label each component by responsibility:

| Component | Candidate source | Authored responsibility |
| --- | --- | --- |
| Silhouette/blockout | generated image/mesh or primitive | continuity, proportions, camera read |
| Deformation zones | generated/reference | topology, skeleton, weights, corrective forms |
| Surface detail | generated texture or bake | channel packing, scale, tiling, shader behavior |
| Collision/interaction | never assumed from render mesh | explicit proxies, sockets, triggers, nav |
| Variants/LOD | generated candidates or script | deterministic naming, budgets, transitions |
| Runtime package | exporter/provider | import settings, tests, fallback, hash |

The final asset inherits the strictest requirement of any component. “Hybrid” is not permission to leave the weakest part undocumented.

## Phase 5 — Validation gates

Run gates in this order; stop and repair when a mandatory gate fails.

### 5.1 Geometry and transform gate

- dimensions and unit conversion match the contract;
- origin, orientation, ground contact, and sockets are correct;
- normals and winding are correct under the target renderer;
- no unintended holes, non-manifold boundaries, internal faces, floating parts, self-intersections, or zero-area faces;
- topology density is appropriate for the camera and deformation, not merely high;
- mirrored/asymmetric features and variant markers remain coherent;
- mesh is named and structured according to project conventions.

### 5.2 UV, material, and texture gate

- UVs are present where required, with no critical overlap or stretching;
- texel density and channel packing follow the project standard;
- base color, roughness, metalness, normal, emissive, opacity, and other channels are interpreted by the actual shader;
- material slots are bounded and named; no accidental duplicate materials;
- mipmaps, compression, alpha mode, color space, and texture dimensions are correct;
- the asset reads under gameplay light, not only under a flattering preview HDRI.

### 5.3 Functional gate

- collision blocks and triggers match intended play;
- pivot, sockets, grab points, hitboxes, nav obstacles, and attachment points work;
- character/creature deformation passes representative and extreme poses without unacceptable collapse or stretching;
- animation state changes, root motion, and reset behavior are tested where relevant;
- variants and destruction states preserve identity and dependencies;
- missing or failed external outputs have a working fallback.

### 5.4 Runtime and performance gate

- clean import has no unresolved warnings that affect the asset;
- asset is visible, lit, culled, streamed, and unloaded as expected;
- triangle/vertex counts, material slots, texture memory, draw calls, overdraw, animation cost, and file size are measured where relevant;
- representative and stress scenes meet the project’s target or the shortfall is explicit;
- LODs, instancing, and collision proxies change at expected distances/states;
- at least one capture comes from the real gameplay camera and target platform.

### 5.5 Rights and provenance gate

- every external input/output has a source and permission record;
- generated output’s terms were read at the recorded provider/version and any uncertainty remains visible;
- purchased/downloaded material meets the project’s redistribution and attribution needs;
- no secret, private reference, hidden watermark, or disallowed third-party identity was shipped;
- the handoff states whether the result is `ship-ready`, `repair-required`, `blockout`, `reference-only`, `restricted`, or `unverified`.

## Phase 6 — Batch, integrate, and hand off

### 6.1 Batch policy

Batch only after the representative passes. Group assets by shared route and risk, not by a superficial visual label. For every batch:

- pin the generator/script/export versions;
- preserve deterministic seed/input records;
- validate one item per material, topology, animation, scale, and variant family;
- run a cheap structural scan on every file (format, bounds, normals, UVs, materials, naming, missing textures);
- run runtime import and gameplay tests on every interactive or deforming item;
- record exceptions individually rather than marking the batch green.

### 6.2 Integration order

1. Add a proxy and verify gameplay/camera/scale.
2. Replace the proxy with the candidate runtime asset.
3. Check lighting, shader, collision, sockets, LOD, loading, and performance.
4. Compare against the identity/style lock at gameplay distance.
5. Capture before/after evidence and update the asset map.
6. Remove or retain the proxy according to the recorded fallback decision.

### 6.3 Handoff minimum

Return:

- selected route and why alternatives were rejected;
- source/working/runtime paths and build or export command;
- contract status and validation results;
- provider/API/MCP use, spend/credits, task IDs, and rights/provenance record;
- runtime evidence and measured budget values;
- unresolved defects and their impact;
- next repair step or safe batch extension;
- a truthful statement of what was not possible because a tool, permission, budget, or runtime was unavailable.

## Layer-lock register

Use this register in the contract. Every lock names its artifact, close condition, mutable fields, reopen trigger, and invalidated work.

| Lock | Artifact | Close condition | Safe to change afterward | Reopen when | Invalidate |
| --- | --- | --- | --- | --- | --- |
| Route and authority | route matrix + capability ledger | selected route has capability, permission, cost, and fallback evidence | provider minor version if retested | new provider, rights boundary, or target changes | generation, source records, downstream tests |
| Identity and transform | asset contract | silhouette, dimensions, pivot, axes, and continuity markers agreed | hidden detail and non-visible roughness | silhouette, scale, pivot, style, or variant identity changes | modelling, animation, collision, captures |
| Functional behavior | interaction/animation contract | actions, sockets, collision, deformation, reset, and failure behavior have tests | non-functional tuning within tested band | new interaction, rig, skeleton, or attachment | proxies, animation, gameplay captures |
| Representation | source/working/runtime package | file forms and ownership are known and reproducible | compression/LOD within budget | changing generated to authored or runtime geometry | export, import, rights, performance evidence |
| Runtime budget | measured profile | target platform and representative/stress evidence recorded | small optimization values inside headroom | platform, scene density, shader, or asset family changes | LOD, texture, batch and performance claims |
| Release proof | verification/handoff | mandatory gates pass or limitations are declared | wording and links | any upstream lock reopens | release claim and dependent integration |

When a lock reopens, mark old evidence stale. Never leave a green screenshot attached to a changed mesh, rig, export, or runtime build.

## Failure policy

- If a generated output fails geometry, rights, or runtime checks, repair, reroute, or label it; do not rationalize it.
- If the target tool cannot be accessed, finish the local contract and route, create a proxy or authored fallback when safe, and state the blocker.
- If no route meets the budget, reduce asset complexity, reuse a tested family, or adjust the promise with user approval. Do not silently lower the quality bar only in the handoff.
- If a character or deforming asset cannot be retopologized and rig-tested, it remains a reference or blockout.
- If a license or provenance answer is unknown, the asset is not automatically commercial-ready.

## Model recommendation

For a difficult, coupled asset batch, GPT-6 Astra with Max is the preferred single-agent reasoning mode when available. Astra with Ultra is useful when an authorized lead can delegate genuinely independent asset families and still reunite them under this contract. In the OpenAI API, `max` is a reasoning-effort value; “Ultra” is not an API parameter and does not itself create parallel workers.

This recommendation is optional. If the active harness cannot select it, preserve the contract and reduce the batch before weakening validation or provenance evidence.
