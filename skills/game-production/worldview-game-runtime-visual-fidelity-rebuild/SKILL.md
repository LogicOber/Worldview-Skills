---
name: worldview-game-runtime-visual-fidelity-rebuild
description: "Rebuild the runtime presentation of an existing playable game whose mechanics work but whose actual play view still looks like default primitives, flat vectors, generic lighting, stock UI, or an inconsistent asset collage. Use when the user wants project-specific models, materials, lighting, camera composition, motion, effects, interface, audio, and loading polish without redesigning the locked game. Produces a protected-behavior contract, three to five reproducible runtime states, same-state visual comparisons, an authorized asset and rights ledger, calibrated implementation passes, frame-time evidence, regression journeys, and a truthful handoff. Best suited to GPT-6 Astra with Max for one deep implementation or Codex Ultra when independent production and verification tracks can be delegated safely."
---

# Worldview Game — Runtime Visual Fidelity Rebuild

## Call this Skill

Use the public Slash command:

```text
/worldview-game-runtime-visual-fidelity-rebuild
```

Put the repository path, the game entry point, what currently looks generic, and any visual references beneath the command. The Agent must inspect and improve the running project. It must not return only a prompt, mood board, or list of art suggestions when implementation access exists.

## Read only the companion files needed now

- Read and fill [fidelity-rebuild-contract.md](templates/fidelity-rebuild-contract.md) before changing runtime presentation, unless the project already records every equivalent boundary and test.
- Read [why-runtime-fidelity-fails.md](references/why-runtime-fidelity-fails.md) when diagnosing the visible result, choosing an asset route, or deciding whether another post effect would solve the real problem.
- Read [the-cinderwake-signal-house.md](examples/the-cinderwake-signal-house.md) only when a completed fictional example would clarify a contract field. Its names, values, art direction, and implementation choices are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance or originality review. It is not an implementation recipe.
- [README.md](README.md) is the human-facing catalog page and is not required after this Skill is loaded.

## Restore the problem before making art

This Skill begins after a game already has a playable route or loop. The problem is not merely that its screenshots are unattractive. A working game can still communicate “temporary prototype” because its runtime view has no specific shape language, materials respond alike, lighting has no physical or narrative source, camera framing is accidental, motion does not express causes, interface elements come from unrelated styles, or downloaded assets never become one world.

The tempting response is to replace everything visible at once. That response destroys evidence. It can shift collision with a new mesh, hide a telegraph under fog, change a camera until an encounter becomes easier, alter animation timing that damage code incorrectly follows, overwrite a save schema, or trade a stable frame for one attractive capture. The rebuild therefore protects behavior first, then changes presentation in controlled families while replaying the same states.

Use this Skill when:

- the current build launches and its core path can be exercised;
- the user wants the shipped runtime, not only promotional art, to gain a coherent identity;
- placeholder meshes, unstyled sprites, generic lights, default typography, weak feedback, or mismatched asset packs dominate the play view;
- an existing visual direction needs to be carried consistently through ordinary, pressured, failure, and recovery states;
- a previous art pass improved one hero frame but left gameplay states or performance unproven.

Do not use it when:

- the game has no stable playable behavior to protect; use a vertical-slice workflow or establish the mechanic first;
- the request is only for concept art, a trailer, a store image, or an isolated asset with no runtime integration;
- the user is asking for new rules, levels, progression, combat balance, or network architecture rather than a presentation rebuild;
- source rights, repository authority, or the runnable entry point are unavailable and the user expects implementation claims;
- “make it look exactly like” would require copying a protected game, character, interface, or asset identity.

When a new bounded playable experience is actually needed, the Agent may recommend `/worldview-game-high-fidelity-vertical-slice`. This package works alone and never requires that other Skill.

## Inputs and concrete outputs

Useful inputs include the repository, run and test commands, current screenshots or videos, intended platforms, art references the user may lawfully use, performance targets, accessibility requirements, and configured DCC or media tools. Missing ordinary details should be recovered from the project. Ask one grouped question only when two answers would authorize materially different work, such as preserving a stylized flat-vector identity versus replacing it with modeled 3D assets.

Create or update a project-owned record such as:

```text
game-production/<rebuild-slug>/
├── protected-behavior.md
├── baseline-and-states.md
├── fidelity-diagnosis.md
├── production-and-rights-ledger.md
├── comparison-index.md
├── performance-evidence.md
└── regression-and-handoff.md
```

This location is illustrative. Use an existing documentation or evidence directory when the repository has one. Runtime source and shipping assets stay in the project's normal tree.

The completed work should provide:

1. A verified baseline build and three to five named, reproducible runtime states.
2. A protected-behavior boundary covering inputs, timing, topology, collision, camera gameplay duties, AI, progression, saves, authority, and accessibility behavior.
3. A causal diagnosis that distinguishes observed facts, proposed changes, and aesthetic judgments.
4. A production route for every content family and a rights row for every non-code input or output.
5. Integrated runtime changes across the necessary geometry or illustration, materials, lighting, camera presentation, motion, VFX, UI, audio, and transitions.
6. Same-state baseline/final comparisons plus frame-time and resource evidence gathered under recorded conditions.
7. Full regression journeys and a handoff that names remaining proxies, unsupported paths, tool limits, and unverified claims.

## Recommend model depth accurately

Recommend `gpt-6-astra` when the user can choose a model and the rebuild crosses code, visual inspection, asset production, debugging, and verification.

- Choose **Max** when one Agent should spend more reasoning time on a single difficult rebuild. Max is appropriate when shared runtime files, a tightly coupled renderer, or a small repository make parallel ownership risky.
- Choose **Ultra** in Codex when the work separates cleanly into non-overlapping tracks such as one signature DCC asset, one runtime material/lighting pass, and an independent capture audit. Ultra is automatic task delegation through subagents; the lead still owns locks, interfaces, integration, and final claims.
- In the OpenAI API, use model `gpt-6-astra` and `reasoning.effort: "max"` for maximum single-agent reasoning. `ultra` is not an API reasoning-effort value.

Model access varies by client and account. If Astra, Max, or Ultra is unavailable, continue with the active model, narrow the changed content families, and retain the same evidence standard. Never imply that model choice alone creates visual quality.

## Establish the Harness and tool boundary

This Skill contains instructions, not Blender, an image generator, a browser driver, a profiler, an asset library, credentials, or paid quota. Before promising a production route, record whether each capability is present and authorized.

| Capability | Authorization to record | Acceptable use | Safe fallback |
| --- | --- | --- | --- |
| Repository and version history | Writable paths, branch/worktree state, protected files | Inspect, patch, and preserve user changes inside scope | Produce a patch plan and evidence contract without claiming implementation |
| Runnable game and capture surface | Approved build/play command and browser, engine, or device | Reproduce named states and capture the actual runtime | Mark visual and behavior results unverified |
| Image generation API or built-in image tool | Provider, allowed purpose, cost limit, storage rule, and confirmation that supplied inputs may be used | Produce original direction studies or asset inputs with logged prompts and outputs | Use owned references and a written visual grammar; do not fabricate generated images |
| Blender MCP | Explicit connection, allowed scene/files, save/export paths, and external-effect consent | Inspect or author editable DCC sources and export runtime assets | Use an authorized Blender CLI/script, another DCC, project-native procedural construction, or retain a clearly named proxy |
| Local Blender or another DCC | Approved executable or manual handoff and file scope | Build, validate, and preserve editable sources separately from exports | Write the asset brief and stop before claiming a modeled asset |
| Audio production | Owned library, licensed source, generator, synthesis path, or middleware | Author and integrate cues with provenance and loudness/mix checks | Preserve hooks and use labeled temporary cues or silence |
| Profiling and automation | Approved profiler, engine counters, browser tooling, fixtures, or manual method | Compare identical runs and repeat journeys | Report only observations supported by available counters and manual timing |

Never ask the user to paste secrets into source files. Never invoke a paid API, connect an MCP server, download an asset, upload private project material, or change an external service without existing configuration and authorization. A tool named in the prompt is not proof that it is connected.

## Lock the rebuild before implementation

The locks below are dependent. A later pass may not quietly redefine an earlier artifact. Mark a row **proposed** until its condition is met. If new evidence contradicts a row, reopen the earliest affected lock and discard every dependent comparison, benchmark, regression result, and claim.

| Lock | Question resolved and artifact | Locked when | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- |
| **Protected Behavior Lock** | What must remain the same? `protected-behavior.md` records player inputs, movement and action timing, collision, route topology, objectives, AI decisions, damage/economy, RNG, camera gameplay duties, save schema, network authority, accessibility behavior, and allowed tolerances. | Existing tests plus at least one observed journey establish the behavior, owner, and comparison method for every protected field. | Presentation-only adapters and explicitly bounded camera, animation, feedback, and UI values. | A requested rule, topology, authority, or persistence change reopens the lock; invalidate every downstream capture and regression result and request scope expansion. |
| **Baseline State Lock** | Which runtime moments make the rebuild judgeable? `baseline-and-states.md` contains three to five stable state IDs, reproduction paths, capture settings, state traces, baseline media, and available performance counters. | Every state can be reached or loaded reproducibly and the baseline belongs to the recorded revision and environment. | Capture annotations and additional diagnostic views that do not alter state. | Entry path, seed/save, camera contract, resolution, quality tier, or state ownership changes; invalidate all comparisons and measurements for affected states. |
| **Causal Fidelity Lock** | Why does the build look generic or incoherent? `fidelity-diagnosis.md` ranks observable discrepancies by cause family, cross-state impact, gameplay readability, and identity value. | Each priority item cites a baseline observation and a falsifiable intervention rather than a style adjective alone. | Ranking among equal-impact cosmetic issues. | New captures disprove a cause, or a proposed fix touches protected behavior; invalidate that intervention and dependent production work. |
| **Production and Rights Lock** | How will every content family be made and may it ship? The production ledger assigns source, editable form, runtime form, owner, authorization, license or generation record, cost envelope, fallback, and verification. | Every planned asset and external input has a lawful origin, an authorized tool route, and a runtime acceptance check. | Variants inside the same authorized source and measured envelope. | A source, license, generator term, tool authorization, signature silhouette, or runtime representation changes; quarantine affected outputs and invalidate their captures and performance evidence. |
| **Calibration Lock** | Which material, light, camera, motion, UI, and audio rules create one runtime language? The comparison index records controlled passes across all named states. | Same-state review shows the chosen rules improve identity and readability without crossing the behavior boundary or current performance envelope. | Small values within the accepted comparison range. | A pass fixes one state by breaking another, obscures gameplay information, or exceeds the envelope; reopen the responsible diagnosis or production row and invalidate affected comparisons. |
| **Runtime Proof Lock** | Is the rebuilt game still playable, stable, lawful, and measured? Performance evidence and regression journeys tie final claims to the exact revision and assets. | Clean start, core path, adjacent failure, restart, save/load when present, accessibility paths, and multiplayer authority when present pass; final and stress states have recorded frame-time evidence. | Additional evidence and explicitly nonfunctional polish. | Any source, asset, setting, or platform change after proof invalidates its affected captures, traces, and handoff claims. |

Implementation begins only after the Protected Behavior and Baseline State locks close. Diagnosis and asset research may proceed as proposals, but no expensive asset production should begin until its cause and rights rows can lock.

## Recover the existing game and capture the baseline

Read local instructions, inspect the worktree, and preserve unrelated changes. Locate the real entry point, renderer, content definitions, asset loader, camera, input mapping, animation/events, UI, audio, save/version boundary, quality settings, tests, and deployment shape. Record facts from source separately from facts observed in the running build.

Run the current game before editing when possible. Capture the current revision, command, platform, hardware or virtual environment, viewport, render backend, resolution, render scale, quality settings, locale, input method, reduced-motion state, and audio state. Keep baseline captures immutable; a later capture must not silently replace the evidence of what changed.

Choose three to five states that cover ordinary play rather than one flattering angle. Give them project-specific IDs. A useful set normally includes:

- an orientation state where the place, player, route, and normal UI must read;
- a core-action state showing cause, contact, response, and feedback;
- a pressure state combining the densest expected gameplay, effects, motion, and UI;
- a recovery or aftermath state showing persistent consequence, low-intensity atmosphere, and the next route;
- an optional boundary state for loading, failure, pause, inventory, dialogue, or another presentation surface central to the game.

For each state, record the seed or save fixture, entry path, input sequence, expected authoritative fields, camera anchor and allowed variation, capture frame condition, loading-ready condition, and reset procedure. Freeze simulation for a diagnostic still only when the frozen state faithfully represents a reachable frame. A fixture accelerates inspection; it does not replace the real journey that reaches it.

## Protect behavior at the presentation seam

List the exact fields the rebuild may touch. Typical presentation-owned changes include render meshes, sprites, materials, lights, post effects, nonauthoritative animation mapping, particles, camera composition within a tested envelope, typography, icons, UI layout, audio cues, loaders, and transitions.

Typical protected fields include collision shapes, navigation data, world topology, action windows, projectile or damage origins, AI perception, target rules, spawn logic, inventory/economy, objective state, deterministic seeds, save schema, host/server ownership, and accessibility settings behavior. Camera rules may straddle the seam: framing can improve, but target visibility, aim mapping, safe composition, input response, and motion-sickness options remain protected.

Create adapters instead of letting visual assets become authority. A sword mesh follows the attack socket; it does not decide the hit. A door animation follows the door state; it does not unlock progression. A water shader reads the simulation; it does not create a second water height. A HUD reads authoritative values; it does not recompute them.

If the current game incorrectly derives gameplay from render geometry or animation frames, document that fact. Isolate the dependency before replacement or request authorization to change behavior. Do not hide a functional refactor inside an art pass.

Use disposable test profiles. Never delete, rewrite, migrate, or upload a player's only save to create a comparison. Preserve current save versions unless migration is explicitly in scope. In multiplayer, the host or server remains authoritative; client visuals may anticipate an event but must reconcile to the same action, world, and item IDs without changing hit, visibility, or ownership rules.

## Diagnose causes rather than decorating symptoms

Read [why-runtime-fidelity-fails.md](references/why-runtime-fidelity-fails.md) when classification is uncertain. For each named state, inspect these cause families:

| Cause family | Evidence to collect | Misleading shortcut |
| --- | --- | --- |
| Composition and scale | Camera distance, lens/FOV, horizon or room axes, landmark hierarchy, negative space, overlap, and readable depth | Adding detail everywhere while the play frame has no subject |
| Silhouette and construction | Gameplay-distance outline, proportion, articulation, modular repetition, contacts, and grounding | Raising polygon count without changing recognizable form |
| Surface response | Material families, texel density, color/data interpretation, roughness/specular separation, seams, decals, and state changes | Applying one noisy texture or “PBR” preset to every object |
| Light and atmosphere | Motivated sources, exposure, shadow role, reflections, fog/haze, emissive behavior, and darkest/brightest action readability | Bloom, LUTs, or darkness used to conceal missing form |
| Motion and feedback | Idle life, anticipation, contact, follow-through, secondary motion, VFX cleanup, camera response, and causal timing | Constant particles or shake unrelated to game events |
| Interface and transitions | Typography, spacing, focus, input prompts, controller/touch states, captions, pause, loading, failure, and restart | Reskinning the HUD while leaving stock dialogs and loaders |
| Audio and silence | Ambience layers, input acceptance, action onset, contact, warning, success/failure, spatial origin, priority, and mute behavior | Filling every moment with undifferentiated sound |
| Cohesion and provenance | Shared shape/material/color grammar, origin, license, generation record, scale, pivot, and naming | Treating individually attractive assets as a unified world |
| Runtime delivery | Loading order, shader compilation, allocation, draw calls, transparency, memory, streaming, and fallback behavior | Lowering global resolution before measuring the expensive family |

Write observations before judgments. “The interaction target occupies 18 pixels and merges with the floor at the action camera” is an observation. “It feels cheap” is a judgment. “Increase target contrast and preserve its area while leaving collider and interaction range unchanged” is a proposal. Keep all three, but do not present the judgment as proof of the cause.

Rank changes by the number of named states they improve, their importance to player reading and project identity, their risk to protected behavior, their production cost, and their runtime cost. Test the smallest change that can falsify the diagnosis before rebuilding an entire asset family.

## Choose a production route for each content family

One project can require several routes. Record editable source separately from optimized runtime output.

| Content family | Candidate route | Runtime acceptance |
| --- | --- | --- |
| Signature character, creature, vehicle, tool, or close hero prop | Existing authorized model cleanup; original DCC model; or project-native procedural model when its silhouette can be controlled | Correct scale, pivot, axes, articulation, sockets, collision independence, material batches, LOD or distance behavior, and disposal |
| Architecture and repeated props | Modular kit, trim/atlas strategy, instancing, decals, authored hero pieces, and bounded variation | Route and collision unchanged; repetition feels intentional; batches and streaming fit the envelope |
| Terrain, sky, water, foliage, weather, crowds, or distant traffic | Data-driven or procedural runtime system with authored accents | Deterministic state, continuity across detail levels, matching collision/interaction truth, stable fallback, and bounded work |
| Materials and textures | Existing licensed sources, original authored maps, procedural maps, or authorized image-assisted inputs transformed and reviewed for the runtime | Correct channel interpretation, scale, seams, mip/filter/compression behavior, memory, and response under every locked light state |
| 2D actors, portraits, illustrations, and icons | Original sheets or components with controlled poses, state coverage, pivots, alpha treatment, typography exclusion, and normalized scale | Every runtime state exists, sampling is correct, failed loads retain a usable fallback, and generated text is not shipped as interface copy |
| VFX and interaction feedback | Runtime particles, trails, decals, shaders, animation, camera/audio response, and persistent marks driven by resolved events | Telegraph/contact/result remain distinct, effects clean up on interruption/reset, accessibility alternatives exist, and peak overlap stays bounded |
| Interface | Project-owned layout, type, vector/icon system, motion tokens, input/focus states, captions, and resolution-independent rendering | Values remain authoritative, controls remain reachable, localization space exists, contrast/focus/reduced-motion paths pass |
| Audio | Original, project-owned, properly licensed, generated under authorized terms, or synthesized cues and ambience | Provenance, user gesture/unlock, priority, spatial ownership, voice limits, captions/visual equivalents, pause and cleanup pass |

For DCC work, specify gameplay viewing distance, units, axes, origin, pivot, silhouette, moving parts, deformation, sockets, collision proxies, material families, texture channels, LOD expectations, editable source path, export path, and reimport test before modeling. A Blender render is review evidence for the source asset, not proof that the runtime export works.

For image-assisted work, use the API only after authorization. Record the provider/model where disclosure is allowed, date, input ownership, prompt record location, output IDs or hashes, edits, intended use, and relevant terms. Do not assume “AI generated” means unrestricted or original. Reject illegible text, inconsistent views, stolen identity, hidden watermarking, and outputs that cannot be reconciled with the runtime camera.

Maintain a rights ledger for every non-code source and produced asset:

| Asset ID | Content family | Origin and creator | License/terms or generation record | Modifications | Redistribution allowed | Editable source | Runtime output | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |

Unknown rights means quarantined, not “probably fine.” The fallback is an original proxy, project-owned material, procedural construction, or a production brief—not an unlicensed download.

## Rebuild through calibrated passes

Run one cause family at a time and recapture all affected named states. A pass is accepted because the controlled comparison improves the locked goals, not because more content was added.

### Pass 1 — Composition, camera, and scale

Establish the subject, route, landmarks, playable depth, human or vehicle scale, foreground restraint, and negative space. Adjust lens/FOV, follow offset, damping, shake, obstruction response, and transitions only within the Protected Behavior Lock. Test aiming, target retention, tight spaces, camera collision, motion comfort, portrait/landscape if supported, and reduced motion.

### Pass 2 — Silhouette and asset construction

Replace generic story-critical forms with shapes recognizable at the real play distance. Correct grounding, pivots, contacts, articulation, modular seams, and hierarchy before surface detail. Keep collision and interaction proxies separate. Do not replace a clear intentional primitive simply because a DCC tool is available.

### Pass 3 — Materials and surface scale

Give material families distinct light response and believable scale. Validate color versus data maps, UV direction, tiling, texel density, normals, roughness/specular behavior, alpha edges, decals, damage/wetness states, filtering, mipmaps, compression, and fallback loads. Preserve authored labels and UI text as controlled text rather than generated pixels.

### Pass 4 — Lighting, exposure, atmosphere, and reflections

Name the sources that create local light. Tune key/fill relationships, shadow softness and distance, exposure behavior, emissive contribution, fog/haze, reflection resolution, and post order across every named state. Preserve action readability and photosensitivity options. Darkness and color grading cannot substitute for geometry and material separation.

### Pass 5 — Motion, VFX, and world response

Connect anticipation, contact, result, recovery, and persistent consequence to the existing authoritative event. Add secondary motion and environmental cycles at different tempos without making the scene restless. Pool or bound transients, make cleanup idempotent, pause correctly, and provide reduced-motion alternatives that keep gameplay timing visible.

### Pass 6 — Interface, audio, loading, and failure surfaces

Carry the same visual language through HUD, menus, focus, prompts, inventory, captions, settings, pause, loading, errors, failure, restart, and credits where present. Preserve input alternatives and screen-reader or semantic structure supported by the project. Build an audio priority hierarchy so action, warnings, impacts, objectives, and ambience remain distinguishable. Verify mute/volume persistence, browser unlock, background return, and node/voice cleanup.

After each pass, note the state, observed mismatch, hypothesized cause, exact change, protected fields checked, comparison result, performance delta, and accept/reject decision. Revert or revise a rejected intervention instead of layering a second workaround over it.

## Compare the same state, not adjacent impressions

Every baseline/final pair must share the recorded state ID, seed or save, authoritative fields, camera rule, viewport, resolution, render scale, quality, UI mode, locale, and readiness condition. If nondeterministic animation prevents an identical frame, compare a declared temporal window and state distribution rather than selecting unrelated favorable frames.

Use captures for composition and artifacts, short video or frame sequences for motion, state traces for behavior, audio recordings/meters for mix, and profiler traces for runtime cost. A screenshot cannot prove input feel, cleanup, accessibility, or frame pacing. An image-difference score cannot decide whether the new art direction is better; it can reveal unintended movement in fields meant to stay fixed.

Keep rejected and accepted comparisons attributable to their source revision and asset versions. If a capture setting changes, create a new comparison series instead of placing it beside the old image as though conditions match.

## Measure frame time under the actual rebuild

Preserve an existing target when the project has one. Otherwise record a proposed target as proposed until the user or project establishes it. Never translate one headless software-rendering run into a hardware performance claim.

For both a representative state and the densest supported state, record:

- revision and asset versions;
- hardware or VM, operating system, browser/engine, renderer/backend, headed or headless mode;
- viewport, physical resolution, render scale, UI scale, quality tier, warmup, and sample length;
- frame interval median and a slow-frame percentile, plus stutter or long-frame count when available;
- CPU/main-thread and GPU timing when the runtime can distinguish them;
- draw calls, triangles/primitives, instances, materials/shaders, textures, render targets, particles, audio voices, and memory where available;
- loading, first-interactive, shader compilation, streaming backlog, worker jobs, and garbage collection when relevant.

Compare before and after in the same state and environment. More triangles can still be faster when batches fall; fewer polygons can still stutter when shader compilation or allocation dominates. Change one suspected cost family, rerun, and retain the trace that supports the conclusion.

Create explicit quality tiers only from measured pressure. Reduce optional shadow distance, reflection update rate, volumetric resolution, decorative particles, distant detail, or world render scale before sacrificing input, collision, gameplay cues, text clarity, or authoritative simulation. Keep UI resolution independent where the runtime allows it. Expose the actual tier instead of labeling a downgraded mode as full quality.

## Run real regression journeys

Fixtures make visual iteration fast; journeys prove that the game still works. Run the shortest real-input routes that collectively cover:

1. clean launch, loading, settings application, and control acquisition;
2. orientation state, core action on valid and invalid targets, and normal feedback;
3. pressure state with maximum expected actors, effects, UI, and audio;
4. damage or adjacent failure, pause/background interruption, recovery, and restart at least twice;
5. success or objective completion and the changed aftermath state;
6. save, close, load, and continue when persistence exists, using a disposable profile;
7. keyboard/mouse, controller, touch, captions, contrast, reduced motion, and other supported paths;
8. host/client, disconnect, late join, or reconciliation paths when multiplayer exists.

Compare protected fields at meaningful checkpoints. Exact equality is appropriate for IDs, inventory, objectives, ownership, save schema, and deterministic decisions. A declared tolerance may be appropriate for floating transforms or camera damping. Presentation events must not create duplicate rewards, contacts, saves, or network requests.

Verify teardown and restart: stop transient audio, particles, timers, tweens, observers, input capture, loaders, workers, and renderer-owned resources without deleting durable records or settings. Failed asset loads must lead to a readable fallback or an explicit blocked state, never a black screen that hides a working game.

## Know when to stop or withhold a claim

The rebuild succeeds when final named states are reachable, project identity is visible during play, protected behavior passes, rights are complete, supported accessibility paths remain usable, and performance is measured against the declared environment. It may be delivered with disclosed lower-quality tiers or remaining cosmetic issues.

Stop implementation and report the blocker when:

- the baseline cannot run or be reproduced;
- mechanics are changing underneath the art pass and no stable boundary can be locked;
- a necessary asset has unknown or incompatible rights;
- DCC, image, audio, or external-service access is required but unavailable or unauthorized;
- the only apparent route crosses protected behavior and scope expansion is not authorized;
- the required target platform cannot be observed and the user expects a platform-specific claim.

A tool failure does not erase completed safe work. Keep the prior known-good runtime, preserve editable sources and logs, release temporary locks, and hand off the exact missing capability. Do not replace a failed external generation with a secret download or silently lower the claim.

## Deliver a truthful handoff

Report:

- the exact entry point and run/build commands;
- baseline and final revision/worktree state;
- the Protected Behavior Lock and any authorized exceptions;
- all named states and fresh same-state comparison locations;
- files and asset families changed, including editable sources and runtime exports;
- the capability and rights ledgers, external tools actually used, cost boundary, and fallbacks taken;
- accepted and rejected calibration passes with their causal findings;
- representative and stress performance procedure, environment, counters, and observed result;
- regression journeys, supported inputs/accessibility, save integrity, and multiplayer authority results;
- remaining placeholders, defects, rights questions, unsupported devices, and claims not verified;
- the next three presentation changes ranked by player-visible value and regression risk.

Never claim deployment, target frame rate, rights clearance, device support, accessibility, multiplayer safety, or visual matching without corresponding evidence. Distinguish source facts, observed results, proposals, and judgments in the handoff.

## Example invocation

```text
/worldview-game-runtime-visual-fidelity-rebuild

The game in this repository is already playable from start to finish, but the
runtime still looks like gray primitives with default lights and a stock HUD.
Keep movement, combat timing, collision, enemy behavior, progression, saves,
and level routes unchanged. Rebuild the presentation around the supplied
weathered observatory references, verify the same four gameplay states before
and after, and show the frame-time and regression evidence. Use external image
or Blender tools only if they are already configured and authorized.
```

The expected result is a changed game plus evidence, not a rewritten request for another Agent.
