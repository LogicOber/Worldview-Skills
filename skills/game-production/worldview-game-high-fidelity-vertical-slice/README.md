# High-Fidelity Vertical Slice

Turn a story premise into one short, playable, visually deliberate game segment with direct behavioral, visual, and performance evidence.

## Call it immediately

```text
/worldview-game-high-fidelity-vertical-slice

A maintenance diver enters a station built inside a slowly turning sea wall.
She must restart one flooded lift before the wall rotates its dry corridor below
the waterline. Build a short playable chapter from this story.
```

A story-only input is enough. You do not need to specify shaders, polygon counts, render architecture, asset formats, camera math, or a production pipeline. The Agent recovers those constraints from the project, makes reversible assumptions where it can, and asks one grouped question only when two answers would create meaningfully different games.

Use this Skill when words such as “AAA-style,” “cinematic,” “premium,” “next-generation,” “visually rich,” or “high fidelity” mean a real playable result rather than a still image or a longer prompt.

## What it builds

The Skill reduces a large idea to one complete vertical slice, normally three to ten playable minutes. The slice has one primary route, one core interaction, one source of pressure, one signature event, one ending, and a stable restart. It establishes the inexpensive playable core before committing time or money to presentation.

The concrete delivery includes as much of the following as the project and authorized tools can support:

- a bounded player promise naming role, place, repeated action, goal, pressure, signature moment, ending, duration, platform, and camera;
- a working route with movement, interaction, success, failure or interruption, and reset;
- three to five reachable visual states captured from the real gameplay camera rather than a promotional camera;
- a visual grammar for shape, surface, light, color, motion, lens, interface, and sound;
- an asset ledger that assigns each content family to an appropriate representation and records origin, rights, runtime form, fallback, and estimated cost;
- original source and assets integrated into the existing project structure;
- separate evidence for gameplay behavior, runtime appearance, loading, and performance;
- a truthful handoff naming commands, controls, files, external services used, remaining proxies, known defects, unsupported paths, and the next three highest-value changes.

When the project has no established production-record location, the Agent uses:

```text
game-production/<slice-slug>/
├── slice-brief.md
├── vertical-slice-contract.md
├── visual-standard.md
├── asset-ledger.md
├── capture-matrix.md
└── verification.md
```

Runtime code and shipping assets stay in the project’s existing source tree. The Skill does not reorganize a working repository to imitate this record layout.

## What makes the result high fidelity

High fidelity is not a synonym for bloom, dense meshes, or a polished screenshot. The delivered slice must remain intentional while the player moves, acts, fails, completes the route, and restarts.

The Agent therefore locks the work in this order:

1. the player promise;
2. the playable spine;
3. coverage across several gameplay states;
4. the runtime and performance budget;
5. the representation plan for every visible content family;
6. integrated presentation through the real route;
7. release proof from a clean start.

If a camera, route, platform, signature event, or asset source changes, the Agent reopens the earliest affected decision and replaces dependent captures, tests, or performance claims. Old evidence never silently follows a changed build.

## What to provide when you have it

The Skill can begin with only a story. Additional context improves the first pass:

- the repository or authorized working path;
- existing world notes, concept images, screenshots, sketches, or project-owned assets;
- a required engine, framework, platform, camera, or control scheme;
- a time, token, API-cost, download-size, loading, or frame-rate limit;
- already configured image, audio, browser, engine, DCC, profiler, API, or MCP capabilities.

Do not paste credentials into the prompt or repository. Saying that a service is desired does not prove that it is configured or authorize paid use.

## Model recommendation

For the strongest result in Codex, use **GPT-6 Astra** when model selection is available.

| Situation | Recommendation | Why |
| --- | --- | --- |
| One difficult, tightly coupled build | **GPT-6 Astra with Max** | One Agent keeps the story, architecture, rendering, asset integration, debugging, and verification in a single deep reasoning process. |
| Several genuinely independent production tracks | **GPT-6 Astra with Ultra** | A lead can delegate non-overlapping asset, runtime, and verification work while retaining ownership of the locked contract and integration. |
| OpenAI API implementation | `gpt-6-astra` with `reasoning.effort: "max"` | In the API, `max` is a reasoning-effort value. |

**Ultra is not an API reasoning value and is not a different Astra model.** It is a Codex Agent orchestration mode that can use subagents. Do not describe an API call as “Ultra,” and do not imply that setting API effort to `max` creates subagents.

The recommendation is not a hidden prerequisite. When the current Harness cannot change models, the Agent continues with the active model, reduces the slice before weakening the proof standard, and names any production stage that remains less complete or unverified.

## External APIs, MCP servers, Blender, and other tools

Before work begins, the Agent inventories the engine, renderer, image tools, Blender or other DCC access, MCP servers, API accounts, profiler, browser driver, deployment route, and subagent support exposed by the current Harness. It may use only capabilities that are already configured or explicitly authorized, and it records the scope, cost boundary, and fallback for every external capability it uses.

### Blender and Blender MCP

Blender MCP can be valuable when a signature character, vehicle, prop, or piece of architecture needs an editable silhouette that runtime primitives cannot provide. It remains an external capability:

- the Skill does not install, configure, or bundle Blender MCP;
- an unavailable MCP is not evidence that Blender itself is available through another route;
- approved scripting or MCP control is preferred to fragile mouse automation when both exist;
- editable DCC source and exported runtime assets remain separate;
- scale, axes, pivots, materials, animation, collision, and performance must be checked after import into the real runtime;
- if no suitable DCC route exists, the Agent finishes the playable core and an implementation-ready asset brief rather than pretending a proxy is a final hero asset.

### Image, audio, 3D, and deployment services

Configured generation APIs or MCP tools may help create original references, textures, audio, or assets, but their availability is never assumed. Before transmitting project material or spending quota, the Agent needs authorization and a declared cost boundary. It records the provider or tool, source status, resulting files, rights status, and any unverified limitation.

Third-party assets are not downloaded merely because they are convenient. If the user authorizes one, the ledger records its URL, creator, license, modifications, and redistribution status. Secrets never enter project files or commits.

## Evidence you should expect

A screenshot can prove appearance at one moment. It cannot prove that the route works or that frame pacing is stable. A test can prove a state transition. It cannot prove that a material reads correctly. A profiler trace can support a performance claim. It cannot prove that the scene communicates the intended story.

The handoff therefore keeps three forms of proof separate:

| Claim family | Direct evidence |
| --- | --- |
| Behavior | Real-input journey, state trace, valid and invalid interaction, completion, failure or interruption, and at least two restarts. |
| Visual result | Fresh runtime captures for every locked gameplay state at recorded camera, resolution, UI, and quality settings. |
| Runtime performance | Repeatable representative and stress procedures with environment, frame-interval statistics, loading results, and available renderer or memory counters. |

The Agent also audits asset origin, degraded-quality readability, camera obstruction, supported input and caption paths, and the difference between observed facts and proposed values.

## When not to use it

Do not use this Skill when the requested output is only a concept image, trailer, static graphics demo, isolated asset, general engine, or full unbounded game. It deliberately proves one bounded slice before expansion.

If a game is already functionally complete and the authorized job is specifically to replace generic presentation without changing its rules, use `/worldview-game-runtime-visual-fidelity-rebuild` instead.

## Read more only when needed

- [SKILL.md](SKILL.md) contains the executable method.
- [vertical-slice-contract.md](templates/vertical-slice-contract.md) records every lock and its evidence.
- [high-fidelity-production-rules.md](references/high-fidelity-production-rules.md) explains the causal reasoning behind the production order.
- [the-glass-tide-station.md](examples/the-glass-tide-station.md) is a fictional worked example; none of its values are defaults.
- [SOURCE.md](SOURCE.md) records research provenance and the non-copy boundary.
