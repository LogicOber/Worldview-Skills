# Source, research, and originality record

This file records why `worldview-3d-asset-production-route` exists, what was checked, and the boundary between research and repository-authored method.

## Commission

The Skill was created for this repository in response to the user’s 2026-09-20 request to improve the 3D production part of the Worldview workflow. The user described a practical choice between making assets by hand, using faster AI-generated 3D, and using a tool such as Tripo. They specifically warned that generated meshes can look richly textured while being structurally poor inside, difficult to rig, and prone to stretching when a character moves. They asked for an optional tool route, not a mandatory provider dependency, and for a production method that can be used automatically from a short asset request.

The user required original Skills. The user’s observations are requirements and problem evidence, not text or code to copy. No Skill-generation Skill was invoked.

## User-supplied problem evidence

The commission identified these needs:

- choose between authored modelling, procedural/runtime geometry, generated 3D, and a hybrid on a per-asset basis;
- use generated assets quickly for static props or architecture when that is genuinely faster;
- treat character rigging, deformation, and animation as a stricter case;
- check geometry, textures, topology, scale, collision, LOD, runtime performance, and licensing rather than trusting an attractive preview;
- make Blender, Blender MCP, Tripo, and similar providers optional capabilities with explicit authorization and fallback;
- return an integrated, reproducible result or an honest blockout/reference status.

The named provider is represented as one optional example. This package does not include Tripo SDK code, a provider client, a generated mesh, or a hidden integration.

## Official references checked

The following primary documentation was checked on 2026-09-20. It establishes interface facts only; it is not copied into the Skill.

| Source | Use |
| --- | --- |
| [Tripo Developers: Introduction](https://developers.tripo3d.ai/en/docs/introduction) | Confirmed that the current documented API exposes separate image/text/multiview generation, model processing including decimation, and animation-related routes. The Skill therefore records provider/model/version and treats generation as one stage, not a complete production guarantee. |
| [Tripo Developers: Image-to-3D](https://developers.tripo3d.ai/en/docs/generation-image-to-model/standard) | Confirmed that the documented image-to-model flow is task-based and can return a model plus rendered preview. The Skill records task/output provenance and requires independent geometry and runtime validation. |
| [Blender Manual: glTF 2.0](https://docs.blender.org/manual/en/5.1/addons/import_export/scene_gltf2.html) | Confirmed relevant export behavior and limitations: meshes are triangulated on export, discontinuous UVs can change vertex counts, and materials/normal/UV settings affect runtime output. The Skill therefore separates source, export, and runtime checks. |

Provider model names, endpoints, prices, credits, output URLs, and terms change. The Skill instructs a future Agent to read current provider documentation before using a service; this record does not freeze a provider into a dependency.

## Original method authored here

The following decisions are authored for Worldview and were not imported from an external Skill or repository:

- the Slash name `/worldview-3d-asset-production-route`;
- classifying an asset by camera distance, interaction, deformation, reuse, budget, and rights risk before selecting a route;
- hard gates that reject a route before numeric scoring when authority, runtime, deformation, editability, testing, or fallback is missing;
- a route matrix that compares hand-authored, procedural/runtime, image-to-3D, and hybrid production per asset;
- the generated-mesh rule that a detailed preview is a candidate, not proof of a game-ready asset;
- the character/deformation rule requiring topology repair, skeleton, weights, representative and extreme poses, and runtime inspection;
- the representative-first batch policy that validates one failure-revealing asset before expensive scale-out;
- the six-lock register for authority, identity/transform, functional behavior, representation, runtime budget, and release proof;
- the evidence language that separates source facts, project facts, observations, proposals, judgments, and unknowns;
- the route-specific validation gates for geometry, UV/material, functionality, runtime/performance, rights/provenance, and fallbacks;
- the original *Unbroken Lamp* scenario and all names, values, route decisions, and evidence examples in it;
- the provider-neutral boundary that keeps Blender/MCP/Tripo optional and records permissions, cost, source, and fallback.

These are practical production proposals. They are not claims that one topology count, provider, engine, or export format suits every project.

## Structural boundary

This package follows the repository’s normal six-file companion pattern (`README.md`, `SKILL.md`, `SOURCE.md`, one reference, one template, and one example) so that Claude and Codex can load it consistently. The production method itself is intentionally different from provider repositories and from single-purpose model entries:

- It is a route selector and validation contract, not a provider wrapper or API client.
- It has a per-asset matrix and hard gates, not one universal “generate then export” sequence.
- It treats a generated result as a candidate with provenance, not as an automatic final asset.
- It keeps source, repair/working mesh, and runtime export separate.
- It handles static props, modular environments, deforming characters, procedural families, and hybrid batches under one contract.
- It requires runtime, rights, interaction, and fallback evidence in addition to a preview.

The existing `3d-assets` entries in this repository remain independent entry points for character, boss, environment, weapon, and VFX briefs. This new Skill does not overwrite them, wrap them, or rename them. It can be called directly when the question is how to produce or route an asset, regardless of which visual entry created its brief.

## Non-copy declaration

No external code, prompt, file, generated asset, model, provider SDK, API recipe, distinctive filename, prose, template, score table, test suite, or directory structure was copied into this package.

In particular:

- no Tripo SDK, request body, response parser, endpoint wrapper, or provider script is included;
- no Blender script or MCP server configuration is included;
- no external Skill was renamed, translated, condensed, expanded, or presented as Worldview work;
- no third-party model, texture, image, logo, character, or likeness is shipped;
- the example is original fiction and does not represent a provider’s output or endorsement;
- the official references above supply only documentation facts and links, not implementation content.

An external provider’s documentation may describe an API or feature. The route, gates, locks, examples, handoff, and decisions in this package are independently authored for this repository.

## Maintenance rule

For future revisions:

1. Check the provider’s current official documentation before naming an endpoint, model, price, output format, or license term.
2. Record the source and date before relying on it.
3. Keep provider integrations outside this Skill unless the user explicitly requests and authorizes a separate implementation.
4. Retain the distinction between source/reference, generated candidate, repaired working asset, and runtime export.
5. Re-run a representative structural and runtime test after changing a route, provider, export version, platform, or asset identity.
6. Never turn an uncertain license, untested rig, or attractive preview into a “commercial-ready” claim.
