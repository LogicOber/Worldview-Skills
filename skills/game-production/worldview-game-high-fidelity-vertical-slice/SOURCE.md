# Source, research, and originality record

This file records why `worldview-game-high-fidelity-vertical-slice` exists, which materials were reviewed, and the boundary between research and repository-authored work.

## Commission

The Skill was created for this repository in response to the user’s 2026-09-18 request for an original, detailed, all-English game-production Skill. The requested result had to accept a story instead of demanding a technical production prompt, produce a playable high-fidelity game slice rather than a static visual, make external tool boundaries explicit, recommend the appropriate GPT-6 Astra modes accurately, and remain directly loadable by Claude and Codex.

The user required original Skills. External posts and repositories therefore served only as research about the problem space, possible workflows, common results, and failure modes. They were not transformation inputs.

## Research inputs

### User-supplied internal evidence

The following attachments were supplied by the user in the working conversation. They are internal research evidence, not files to publish in this package. Where the user did not supply a public social-post URL, none is invented here.

| Internal attachment path | What the user identified | Research-only use | Public source URL |
| --- | --- | --- | --- |
| `IMG_9590.png` | Screenshot of an Anshu post describing use of GPT-6 Astra, concept images, and Blender MCP for a 3D game | Established the user’s interest in story-to-playable production that can coordinate a capable coding model, visual references, and an external DCC interface | **Not supplied** |
| `IMG_9591.png` | Second screenshot from the same Anshu post | Additional internal context for the same research question; no image, wording, prompt, scene, or workflow was copied | **Not supplied** |
| `pasted_text_2026-09-18_19-56-09.txt` | A user-supplied Kai Benetti article about building a playable game without writing code | Established the need for a story-accessible entry point and a bounded result; none of its prompts, steps, names, or prose was reused | **Not supplied** |
| `CleanShot 2026-09-18 at 19.56.33@2x.png` | Anshu post pointing to `achimala/dream-loop` | Led to a direct, read-only review of the public repository described below | [Repository](https://github.com/achimala/dream-loop) |
| `CleanShot 2026-09-18 at 19.57.42@2x.png` | Anshu post about **The Long Silence** build | Led to a research-only review of the linked public game repository; no fiction, assets, code, prompt, layout, or production tree was reused | [Repository](https://github.com/achimala/TheLongSilence) |
| `CleanShot 2026-09-18 at 19.58.32@2x.png` | Meng To post pointing to `MengTo/Skills` | Only its 3D and game-related portions were reviewed as broad workflow research; no Skill was renamed, adapted, translated, or imported | [Repository](https://github.com/MengTo/Skills) |

These attachment names are provenance identifiers only. The attachments are not dependencies and are not distributed with this Skill.

### Public repositories reviewed as research only

| Public source | Scope of review | Boundary |
| --- | --- | --- |
| [`achimala/dream-loop`](https://github.com/achimala/dream-loop), inspected at commit [`9bddb901f7d071cfefdd21e264267c757177a9df`](https://github.com/achimala/dream-loop/tree/9bddb901f7d071cfefdd21e264267c757177a9df) | README, executable Skill, mode-specific workflow and 3D-asset references, Fal reference, scripts, tests, preview asset, and MIT license | Used to understand a target-image iteration approach, independent visual criticism, asynchronous paid-asset risks, and gaps between a beauty-frame loop and a complete game-production contract. No content was copied. |
| [`achimala/TheLongSilence`](https://github.com/achimala/TheLongSilence), inspected at commit [`69b3296b4b6ecb3ca75ed6193e4b785c4c791c0f`](https://github.com/achimala/TheLongSilence/tree/69b3296b4b6ecb3ca75ed6193e4b785c4c791c0f) | Reviewed as an example of a model-assisted playable game result linked by the user | Research context only. Its title, fiction, art, code, assets, controls, prompts, structure, and implementation are not part of this package. |
| [`MengTo/Skills`](https://github.com/MengTo/Skills), with relevant 3D/game material inspected at commit [`5f47e389dac337a1bca5cddf376419248b3010f6`](https://github.com/MengTo/Skills/tree/5f47e389dac337a1bca5cddf376419248b3010f6) | Only relevant 3D and game portions were considered | Research context only. No external Skill name, prose, trigger, template, tree, or technique description was imported. |

Repository links provide attribution for the research trail. They do not create runtime dependencies, bundled integrations, endorsements, or claims that the repositories use the same method as this Skill.

### Official model and production references

| Official source | Use in this package |
| --- | --- |
| [GPT-6 Astra model documentation](https://developers.openai.com/api/docs/models/gpt-6-astra) | Primary reference for the model name and API reasoning-effort terminology. |
| [ChatGPT model and mode documentation](https://learn.chatgpt.com/docs/models) | Primary reference for distinguishing product modes from API parameters. |
| [Building games with Astra](https://developers.openai.com/blog/how-to-build-games-with-astra) | Primary game-production context for the model recommendation; it is not an implementation template for this Skill. |

The package states the distinction required by the user: in the OpenAI API, `max` is a `reasoning.effort` value; Ultra is a Codex Agent orchestration mode that can use subagents, not an API effort value or a separate Astra model. Model availability and product interfaces may change, so future revisions should recheck the official sources rather than copying old wording forward.

## Structural differences from `dream-loop`

The public `dream-loop` repository was examined closely because it addresses visual iteration, but this Skill deliberately solves a different and larger production problem with a different structure.

| Concern | `dream-loop` research observation | Original decision in this package |
| --- | --- | --- |
| Starting point | Centers a supplied or generated target screenshot | Begins from a story or experience brief and first locks a player promise and playable route |
| Intended result | Applies to a game, app, or scene whose live screenshot approaches a target | Produces one bounded game slice that can be played, failed or interrupted, reset, captured, profiled, and handed off |
| Workflow routing | Separates Plus and Pro documents using subscription-oriented routing | Uses one capability-driven method; model and subagent availability change execution depth, not the design contract |
| Visual standard | Primarily compares a current screenshot with a target image | Requires three to five reachable runtime states tied to camera, world state, UI, resolution, motion, and performance |
| Gameplay | Visual loop does not define a general playable-spine contract | Locks input, camera, traversal, interaction, success, failure/interruption, reset, and state ownership before expensive art |
| Asset production | Provides mode-specific 3D sourcing sequences and a provider-specific helper | Chooses representation separately for each content family and remains provider-neutral; external DCCs, APIs, MCP servers, and stores are capabilities |
| Evaluation | Uses an external visual judge and its own numeric exit/stall rules | Separates behavioral, visual, temporal, rights, and performance evidence; uses an independently authored eight-axis disclosure heuristic |
| Performance | Includes an FPS exit condition but does not define a full measurement contract | Locks platform, resolution, environment, loading, frame-interval distribution, stress state, counters, and limitations |
| Project safety | Focuses on iterative visual construction | Recovers repository truth, preserves unrelated changes, retains the existing stack, and invalidates stale downstream evidence after reopened decisions |
| Distribution | Bundles provider code, tests, a capture server, and a preview asset in its own tree | Follows this repository’s standard companion-file package; includes no provider script, external asset, generated image, service client, or copied file layout |

The shared high-level ideas—iterate, compare a running result, use independent review when useful, and preserve job identity around paid work—are general engineering principles. The expression, lock order, fields, thresholds, examples, and instructions here were written independently.

## Original method authored for this repository

The following are repository-authored decisions rather than rules taken from a supplied post or repository:

- the public name `/worldview-game-high-fidelity-vertical-slice`;
- story-only intake that infers ordinary production decisions instead of returning another prompt;
- the seven-lock order: player promise, playable spine, frame coverage, runtime budget, representation plan, integrated presentation, and release proof;
- a three-to-five-state runtime coverage standard rather than a single beauty frame;
- one visual grammar spanning shape, surface, light, color, motion, lens, interface, and sound;
- representation selection per runtime content family;
- playable-core-first proxy requirements and three-run stabilization before expensive asset work;
- six causal fidelity passes and a state-specific discrepancy ledger;
- explicit evidence separation among behavior, screenshots, temporal review, performance, and rights;
- capability, source-boundary, asset-origin, cost, credential, and external-tool records;
- a provider-neutral Blender/Blender MCP boundary that preserves editable source and requires runtime export validation;
- performance guidance based on a recorded environment, representative and stress states, and frame-interval distributions;
- the eight-axis `0/1/2` release disclosure, with no `0` and promise-critical axes at `2` for a high-fidelity claim;
- the fillable contract and the original fictional Glass Tide Station scenario.

These are proposals for a reusable production method. They are not empirical claims that every team, engine, platform, art style, or player requires identical values.

## Non-copy declaration

No external code, prompts, names, characters, fiction, assets, images, scripts, data schemas, helper programs, file tree, model-routing prose, judge rubric, score thresholds, example values, or distinctive wording was copied into this package.

In particular:

- the names `dream-loop`, its mode names, working-directory name, example/demo identities, and provider job vocabulary are not reused;
- its target prompt, critic prompt, numeric weighting, completion score, stall thresholds, API recipes, provider prices, scripts, tests, and capture endpoint are not reproduced or lightly renamed;
- no file from `TheLongSilence` is included, and no part of that project’s fiction or implementation is represented as Worldview work;
- no Skill from `MengTo/Skills` was copied, translated, condensed, expanded, or renamed;
- no social-post prose or “every prompt” sequence was copied from the user’s screenshots or pasted text;
- no screenshot, concept image, repository preview, generated asset, or third-party media is shipped here.

An external repository’s license may legally permit certain reuse, but that does not change the user’s stricter originality requirement. This package uses only independently expressed general lessons and primary documentation for factual model terminology.

## Writing and generation boundary

The package follows the repository’s editorial preference to reconstruct the production problem before prescribing rules, keep source facts separate from project observations and new proposals, preserve reasons and counterexamples, and require direct evidence before concluding that a result works.

No Skill-generation Skill or skill-creator was invoked. The Skill does not invoke another Skill at runtime, and none of the research sources is an installation dependency.

## Maintenance rule

Future revisions must preserve this boundary:

1. Record a new external source before using it.
2. Link public research rather than absorbing its identity or prose.
3. Label project measurements with build and environment.
4. Distinguish inherited user requirements from new repository decisions.
5. Recheck official model documentation when product or API terminology changes.
6. Keep examples original unless a future user explicitly authorizes and documents another source.
7. Never turn an external Skill or repository into Worldview content through renaming, translation, structural imitation, or close paraphrase.
