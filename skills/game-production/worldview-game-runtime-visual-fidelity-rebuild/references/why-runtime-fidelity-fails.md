# Why Runtime Fidelity Fails

Use this reference when a playable game looks generic, inconsistent, or less convincing in motion than it did in a concept image. It explains causes and tests. It does not prescribe one art style.

## Fidelity is a relationship, not a detail count

A runtime feels authored when its forms, surfaces, light, movement, interface, sound, and transitions make the same world legible under play. High polygon counts, large textures, dramatic bloom, or a dense HUD can all coexist with low fidelity if those elements disagree about scale, hierarchy, causality, or performance.

The practical question is therefore not “How can this frame contain more?” It is “Which relationship currently tells the player that this is a placeholder, and what is the smallest controlled intervention that can test that cause?”

Keep three statement types separate:

- **Fact** — a source fact or an observed result with a location and method. “The interaction target occupies a small portion of the locked action frame and uses the same value range as the floor” can be checked.
- **Proposal** — a change not yet proven. “Give the target a stable silhouette gap and a distinct material response without changing its collider” is a proposal.
- **Judgment** — an interpretive evaluation. “The target looks disposable” is useful direction but does not identify the cause by itself.

The sequence is fact, causal hypothesis, bounded proposal, same-state test, then judgment. Skipping from judgment to implementation produces expensive decoration with weak evidence.

## 1. Composition fails before detail fails

**Problem.** The player cannot tell what matters, where the route continues, or how large the world is. The usual response is to add more props, texture detail, fog, or screen effects.

**Reason.** Runtime composition is produced by the camera, playable geometry, landmarks, contrast hierarchy, overlap, and motion together. More local detail cannot repair an absent subject or an incoherent depth stack. It often competes with the route and makes the frame feel like an asset catalog.

**Rule.** First test camera distance and lens/FOV, subject occupancy, stable landmarks, foreground obstruction, negative space, horizon or room axes, and the scale cues shared by the player and environment. Recapture every locked state; a composition that succeeds only in an idle hero angle is not a game solution.

**Counterexample.** A deliberate wide frame may make the player small to communicate exposure. Small subject occupancy is not automatically wrong if navigation, threats, and interaction cues remain readable in motion.

## 2. Silhouette fails when topology is polished in place

**Problem.** A signature prop or character remains recognizable as a box, capsule, stock vehicle, or kit part after detailed modeling and texturing.

**Reason.** Recognition at gameplay distance is carried first by proportion, negative space, articulation, contact, and motion. Subdivision and surface noise refine the existing outline; they do not invent a specific one.

**Rule.** Judge a flat, untextured silhouette at the actual camera distance before committing surface work. Make the source’s units, axes, origin, pivot, moving parts, sockets, collision independence, distance behavior, editable form, and runtime export explicit.

**Counterexample.** A primitive can be the right final choice when it is intentional, readable, and belongs to the visual grammar. Replacing every simple form merely advertises tool use.

## 3. Materials fail when they are labels rather than responses

**Problem.** Objects have different texture images but still appear made from the same plastic, or their detail swims, shimmers, and changes scale between neighboring pieces.

**Reason.** A material is a response to light at a declared physical or stylized scale. Incorrect color/data interpretation, roughness range, normal strength, UV direction, texel density, mip behavior, transparency, or compression can erase the intended distinction. A neutral preview render may hide failures that appear under the game’s real exposure and motion.

**Rule.** Define a small material grammar, then test each family under the darkest, brightest, nearest, and most oblique locked views. Record channel interpretation, scale, seams, filtering, mipmaps, compression, memory, and fallback behavior. Preserve controlled text as text or authored graphics; generated lettering is not a substitute for interface typography.

**Counterexample.** Visually similar materials may be correct when gameplay needs a calm field. Separation should serve world logic and reading, not a checklist demanding maximum contrast everywhere.

## 4. Lighting fails when atmosphere conceals missing structure

**Problem.** A scene looks impressive in one still but loses routes, targets, faces, or effects during play. Dark grades, bloom, fog, and high contrast are repeatedly increased.

**Reason.** Post effects operate on the image after important geometric and material decisions have already been made. They can merge weak forms, clip information, amplify emissive noise, and make exposure unstable. If no plausible or stylized source owns the light, shadows and highlights do not help the player understand the place.

**Rule.** Name the important sources and their jobs. Test exposure, shadow role, reflection behavior, fog depth, emissive contribution, UI separation, and action readability in every locked state and accessibility mode. Change one cause family at a time.

**Counterexample.** Reduced visibility can be the intended challenge. It remains authored only when essential controls and threats have fair alternative cues and the difficulty does not depend on inaccessible color or flash perception.

## 5. Motion fails when it is ambient noise

**Problem.** The frame is busy but actions feel weightless, impacts are ambiguous, and players cannot tell whether input succeeded.

**Reason.** Motion communicates causality through anticipation, onset, contact, result, recovery, and persistent consequence. Constant camera shake, particles, swaying, and looping animation create activity without locating the authoritative event. They also compete for frame time and can create motion discomfort.

**Rule.** Bind presentation to resolved game events while keeping those events authoritative. Give each transient an owner, budget, interruption behavior, cleanup path, and reduced-motion alternative. Test valid and invalid input, pause/background return, failure, restart twice, and dense overlap.

**Counterexample.** Not every action needs a large reaction. A quiet interface click or distant environmental cycle may be more coherent than spectacle when its causal role is minor.

## 6. Interface fails at the edges of the main screen

**Problem.** The HUD is restyled, yet the game still feels stock or fragmented.

**Reason.** Players encounter focus states, prompts, captions, settings, pause, inventory, loading, errors, failure, restart, credits, controller glyphs, and narrow viewports. A new HUD skin does not change those surfaces. Worse, a visual redesign can make focus, values, or touch targets less accessible while leaving mechanics untouched.

**Rule.** Inventory every user-facing state. Keep authoritative values in the game state, and let UI observe them. Verify keyboard, controller, touch, localization space, semantic structure where supported, contrast, text scaling, captions, reduced motion, safe areas, pause, and background return.

**Counterexample.** A platform-native control can be better than a custom one when consistency, text entry, or assistive technology support is more valuable than visual novelty.

## 7. Audio fails when every cue has equal priority

**Problem.** The game contains many sounds but feels flat, tiring, or confusing.

**Reason.** Meaning comes from onset, spatial source, spectrum, level, interruption, repetition, and silence. If ambience, UI acceptance, danger, action, impact, objective change, and dialogue compete equally, no layer establishes cause or hierarchy.

**Rule.** Assign cue ownership and priority. Test browser or platform unlock, mute and volume persistence, spatial origin, voice limits, ducking, pause, background return, cleanup, captions or visual equivalents, and repeated play. Preserve silence where it sharpens anticipation or comprehension.

**Counterexample.** A dense sound field may be central to an overwhelming scene. It still needs a protected signal for required decisions.

## 8. Asset collage fails at the shared decisions

**Problem.** Every individual asset is competent, yet the assembled scene looks like unrelated purchases or generation outputs.

**Reason.** Assets arrive with different scale, pivots, topology density, edge language, palettes, roughness ranges, texel density, lighting assumptions, animation cadence, naming, and provenance. Placement cannot reconcile all of those disagreements.

**Rule.** Establish a world grammar and an ingestion gate. Normalize only through documented, editable operations. Record origin, creator, terms, modifications, redistribution allowance, editable source, runtime output, and verification for every non-code source and produced asset. Quarantine unknown rights.

**Counterexample.** Deliberate collage can be an art direction. It must make the discontinuities systematic and legible rather than accidental.

## 9. Runtime delivery fails behind a beautiful capture

**Problem.** A final screenshot looks improved while play stutters, loads late, flashes fallback materials, leaks resources, or collapses in the pressure state.

**Reason.** Visual cost is shaped by draw submission, material and shader changes, transparency, shadow and reflection work, texture residency, streaming, allocation, compilation, particle overlap, audio voices, and cleanup. Polygon count alone cannot explain it. A still image contains no frame pacing or interaction evidence.

**Rule.** Measure representative and dense locked states in the same environment before and after. Record frame interval distribution, slow frames, CPU/main and GPU time when available, submission and resource counters, loading, first interaction, compilation, streaming, memory, worker load, and collection pauses. Change one suspected family and rerun.

**Counterexample.** A more detailed rebuild can outperform the baseline when it replaces many unique objects and materials with coherent instancing, atlases, and bounded effects. Visual richness and performance are not simple opposites.

## 10. Comparison fails when the state moves

**Problem.** Baseline and final captures are both authentic, but their difference does not isolate the art pass.

**Reason.** A changed seed, save, camera, viewport, resolution, quality tier, locale, UI mode, weather phase, simulation time, or loading condition can produce a larger difference than the implementation. Choosing the most flattering final frame further biases the result.

**Rule.** Give each state a stable ID and record its reproduction path, authoritative fields, camera rule, capture condition, readiness condition, and reset. Compare the same state. When animation is nondeterministic, compare a declared time window or distribution and retain the state trace.

**Counterexample.** Exact pixel identity is neither possible nor desirable for many simulations. The contract should lock authoritative fields and acceptable camera/state tolerances rather than pretending every particle can match.

## 11. “Presentation only” fails when the seam was never real

**Problem.** Swapping a model changes collision, moving an animation changes damage timing, replacing a door breaks progression, or a client-side effect awards an item twice.

**Reason.** Prototype games often let render geometry, animation frames, UI, or client callbacks own gameplay decisions. The art pass exposes the coupling; it does not create it.

**Rule.** Map protected ownership before replacement. Collision, navigation, route topology, action windows, AI sensing, objectives, economy, RNG, save schema, and host/server authority stay with their existing authoritative systems. Visual adapters observe stable IDs and events. If decoupling requires a functional refactor, name it and request scope rather than hiding it.

**Counterexample.** A visual asset may legitimately contain authored sockets, markers, or navigation metadata. The runtime must validate and consume that data under a declared contract; the mere presence of data in an art file is not the problem.

## Use a causal intervention record

For each attempted pass, retain this chain:

| Field | Meaning |
| --- | --- |
| State and observation | What was seen, under which locked condition |
| Hypothesized cause | The relationship believed to produce it |
| Proposal | The smallest change that can test the cause |
| Protected boundary | Fields and journeys that must remain unchanged |
| Cost and rights | Production route, authorization, provenance, runtime budget |
| Comparison | Same-state media, trace, and measurement |
| Judgment | Whether identity, clarity, and coherence improved |
| Decision | Accept, revise, reject, or reopen an earlier lock |

Rejected work is useful evidence. Preserve why it failed so the next pass does not accumulate another workaround over the same false cause.

## Stop conditions are part of fidelity

Stop and disclose rather than fabricate when the baseline cannot run, a named state cannot be reproduced, rights are unknown, a required external tool is unauthorized, a fix crosses protected behavior, or the target platform cannot be observed. Keep the last known-good runtime and editable sources. A truthful lower-fidelity fallback is a stronger production result than an unverified claim attached to a polished image.
