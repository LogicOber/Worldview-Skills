# 3D Asset Production Route

Give the Agent an asset brief and it will choose a production route, produce the asset or the smallest honest fallback, and prove that the exported result works in the actual game or film runtime.

## Call it immediately

```text
/worldview-3d-asset-production-route

I need 18 reusable props for a first-person horror corridor: a wall switch,
three door families, a fuse box, a wheeled trolley, broken ceiling panels, and
small debris. The game runs in the browser, the player can inspect the switch
and open two doors, and the scene should load quickly. Use a realistic,
weathered style. Tripo is available if it is genuinely useful, but do not
spend credits without checking first.
```

The input can be as short as “make a game-ready haunted elevator.” The Agent infers a route, records assumptions, and asks one grouped question only when a missing answer changes the route or the rights boundary. You do not need to name polygon counts, export flags, topology terms, or a modelling application.

## What it decides

The Skill does not default to an AI-generated mesh. It classifies every asset by what the player sees, touches, animates, collides with, and how often it is reused.

| Route | Prefer it when | Typical result | Non-negotiable check |
| --- | --- | --- | --- |
| Hand-authored mesh | The silhouette, deformation, collision, editability, or hero close-up is important | Blender/DCC source plus cleaned runtime mesh | Scale, topology, UVs, materials, collision, and target-runtime import |
| Procedural or runtime geometry | The asset is modular, repeated, parameterized, or cheaper to describe as rules | Generator/script plus deterministic runtime output | Seed, dimensions, normals, seams, collision, and performance |
| Image-to-3D generation | A static prop or background set needs a fast first mesh and does not carry animation-critical joints | Generated mesh as candidate, never as proof | Closed surface, normals, topology, UV/material quality, scale, collision, LOD, and license/usage record |
| Hybrid | A generated blockout or texture is useful, but an authored shell, retopology, rig, or collision is required | Generated reference/base + authored corrections | Every generated component is labelled; final runtime asset passes the same gates |

The route may differ inside one asset family. A generated lamp can be acceptable as a distant prop, while the same lamp’s hero version is rebuilt. A generated person may be useful for a silhouette board but is not automatically suitable for a deforming playable character.

## Character and animation safety rule

Do not ship an image-to-3D character merely because the preview looks detailed. For any character, creature, cloth piece, face, or deforming prop that will animate, the Skill requires a production pass for:

- coherent topology around joints, face, fingers, and other deformation zones;
- separate movable parts where the design needs them;
- skeleton placement, bind pose, weights, and representative animation tests;
- facial or corrective shapes when expressions are part of the promise;
- clean scale, pivots, material slots, collision proxies, and LODs;
- inspection of elbows, shoulders, hips, knees, hands, mouth, eyes, and silhouette at the real camera distance.

If those checks cannot be completed, the generated mesh is marked `blockout` or `reference-only`. The Agent does not hide a stretched limb, non-manifold shell, or untested rig behind a polished render.

## What it delivers

The final handoff contains the artifacts the project can support, not a pretend promise of every format:

- a route decision for each asset, with rejected alternatives and why;
- a source/reference record, tool or API record, permission and cost boundary, and usage/license status;
- a stable asset contract: identity, dimensions, scale, pivot, orientation, materials, collision, animation, LOD, target runtime, and acceptance tests;
- original source files or procedural recipes when available;
- exported runtime files in the project’s existing conventions (for example `.glb`, `.gltf`, `.fbx`, or an engine-native form);
- preview renders from the actual target camera or a labelled inspection scene;
- validation evidence, known defects, fallback assets, and the exact reason for any `reference-only`, `blockout`, or `unverified` label;
- a concise integration note naming where the asset lives and how to reproduce or update it.

For a batch, the Agent produces one contract and route row per asset, then verifies a representative from each topology, material, animation, and scale family before claiming the batch is ready.

## Optional external tools

Blender, Blender MCP, Tripo, another image-to-3D service, texture tools, and engine importers are optional capabilities. The Skill first checks whether the current Agent can access them and whether the user authorized sending project material or spending quota.

- **Blender or Blender MCP:** useful for authored topology, procedural batches, retopology, rigging, collision, LOD, and deterministic export. The Skill does not install or pretend to configure an unavailable MCP.
- **Tripo or another image-to-3D API:** useful for static props, rough architecture, and candidate blockouts. The Agent records provider, model/version, input references, task ID if available, output URL/path, credits or spend, and the provider’s license terms as observed. Secrets stay outside the repository.
- **Image references:** a reference image is not proof of the mesh’s back side, interior, scale, topology, or rights. Multi-view or authored references may be required.
- **Runtime importer:** the DCC preview is not the final check. The exported asset must load, shade, collide, animate, and perform in the target runtime.

If a desired service is unavailable or not authorized, the Agent completes the best local route and returns an implementation-ready asset brief instead of silently substituting an unlicensed download.

## Route selection in one pass

1. Inventory the project, runtime, camera distance, platform, existing style, input requirements, and authorized capabilities.
2. Split the request into asset families and mark each family as `hero`, `interactive`, `deforming`, `repeatable`, `background`, or `prototype`.
3. Score candidate routes against visual importance, interaction/deformation risk, repeat count, editability, deadline, performance budget, external cost, and rights uncertainty.
4. Lock a route and contract before generation or modelling. A route is not locked by a preview image.
5. Build the cheapest representative that can expose failure. For a character, this means the deformation test; for a prop, the close-up and collision test; for a modular set, a seam and repeat test.
6. Validate source and runtime forms separately. Reopen the route if a generated result fails a mandatory gate.
7. Integrate a representative in the real scene, capture evidence, and hand off the ledger plus reproducible next step.

## Related entries

- `character-model` — produces a visual character identity package; use this route Skill when the question is how to make that identity runtime-ready.
- `environment-scene` — defines a consistent location and spatial lock; use this Skill for the assets that populate it.
- `weapon-prop` — designs a weapon’s authored visual and interaction identity.
- `boss-model` — designs a readable boss and its phase variants.

Read [SKILL.md](SKILL.md) for the executable method, [3d-asset-route-contract.md](templates/3d-asset-route-contract.md) for the fillable record, [why-3d-asset-routes-fail.md](references/why-3d-asset-routes-fail.md) for the failure analysis, and [the-unbroken-lamp.md](examples/the-unbroken-lamp.md) for an original worked example.
