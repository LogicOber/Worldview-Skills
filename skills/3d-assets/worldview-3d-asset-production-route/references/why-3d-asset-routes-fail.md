# Why 3D Asset Routes Fail

This note explains the failure patterns the route Skill is designed to catch. It is a reasoning aid, not a list of universal polygon or texture numbers.

## 1. The preview trap

A model preview answers one narrow question: “Can a renderer show something that resembles the reference from one camera?” A game asset must answer additional questions:

- Is the backside and underside coherent?
- Does scale agree with the world, player, camera, and interaction reach?
- Is the surface closed, oriented, and stable under lighting?
- Can the engine import the file without silently dropping materials or transforms?
- Does it collide, animate, stream, and reset correctly?
- Is it still recognizable at the real gameplay distance and in motion?

The route therefore treats the preview as a candidate. Wireframe, material, runtime, interaction, and provenance evidence close different questions.

## 2. “More detail” can be less usable

Image-to-3D systems often spend their budget on visible texture and silhouette. The result may have dense or uneven triangles, disconnected fragments, internal shells, texture stretching, and unusable articulation. A dense mesh can be slower, harder to edit, and worse for deformation than a simpler authored mesh.

The Skill asks what the camera and gameplay need. It may keep generated surface detail for a distant static prop while rebuilding the collision and hero shell. It may discard an impressive mesh and retain only its reference because that is the honest production value.

## 3. The hidden-side failure

A single image under-specifies the back, top, bottom, thickness, interior, and mechanical connections. This is especially dangerous for:

- doors, drawers, containers, and vehicles that open;
- props the player can pick up or rotate;
- modular architecture whose joins will be seen;
- characters that turn or are framed from behind;
- assets whose collision depends on their volume rather than silhouette.

Use multi-view references, a simple blockout, or authored geometry where those unknowns matter. Do not ask a provider to invent a hidden side and then call the invention a continuity fact.

## 4. The character rig failure

Characters expose defects that a static render hides: shoulders collapse, elbows pinch, fingers intersect, faces slide, clothing stretches, and feet penetrate the ground. A generated skeleton or automatic weight pass may be a useful starting point but is not proof of animation readiness.

For animation-critical assets, the route requires an authored or repaired topology pass, explicit bind pose and weights, representative and extreme poses, and game-camera inspection. If the project cannot perform those checks, keep the generated result as a blockout/reference and protect the player-facing promise.

## 5. The scale and pivot failure

An asset can look correct in a preview while being ten times too large, rotated ninety degrees, floating above the floor, or pivoted at an arbitrary vertex. The defect appears only when it is placed beside the player, attached to another asset, or spawned repeatedly.

Scale, units, axes, ground contact, origin, sockets, and attachment points belong in the contract before generation. Integration with one real scene is mandatory.

## 6. The material illusion

Texture richness is not material correctness. A provider can paint high-frequency noise onto a surface whose roughness, normal orientation, UVs, color space, alpha behavior, or shader inputs are wrong. Imported material slots can multiply unexpectedly, and a normal map can appear “detailed” while lighting inverts it.

Inspect the asset under gameplay lighting and the project shader. Check packed channels, color space, mipmaps, compression, opacity mode, and texture memory. Keep material evidence separate from topology evidence.

## 7. The collision-afterthought failure

Using the render mesh as collision can make a corridor snag, make a thin wall impassable, or let the player walk through a decorative object. Using a box for everything can make interaction feel false. Generated geometry does not know what the player should be able to walk on, climb, grab, or shoot.

Collision and trigger shapes are authored gameplay data. Give them stable names and test them with the actual player, camera, navigation, and interaction rules. The visual mesh and collision proxy may intentionally differ.

## 8. The batch-amplified failure

Generating a hundred props before validating one representative multiplies the same wrong scale, naming, axis, UV, material, licensing, or export bug. A batch can also create subtle family drift: doors no longer share jamb widths, repeated chairs no longer fit a table, or a set’s texture density changes from item to item.

Close one representative per route and family first. Then run structural checks on every file and runtime tests on every interactive/deforming file. Exceptions need their own status; a batch is not green because its average is attractive.

## 9. The provider and API trap

External services change endpoints, model versions, file URLs, credits, quality settings, and usage terms. UI access and API access are different capabilities. A provider can return a successful task while the project still cannot redistribute, edit, or commercially ship the result.

Record the actual provider/model/version, request boundary, task identifier, cost, output, and current terms. Keep a local fallback. Never write an API key into a repository or treat a temporary CDN URL as durable source provenance.

## 10. The rights and provenance trap

“AI-generated” does not by itself answer whether input references were authorized, whether the output can be redistributed, whether a third-party logo or likeness was reproduced, or whether the service grants the rights the project needs. A downloaded model can carry obligations that survive an edit.

The route records the origin and status of every source and labels uncertainty. If the answer is unknown, the asset is restricted or reference-only until the user resolves it. A disclaimer is not a substitute for permission.

## 11. The style drift failure

An asset can pass technical validation and still break the project: wrong bevel language, scale of details, palette, wear logic, silhouette rhythm, or lens response. A generated asset tends to import the visual assumptions of its source image rather than the established project grammar.

Use the project’s style and continuity lock as an acceptance gate. Compare at gameplay distance and in the lighting where the asset is used. Preserve one asymmetric or identifying feature when that feature matters to recognition.

## 12. The runtime-only failure

The DCC viewport may hide shader fallbacks, texture path errors, incorrect tangent basis, LOD popping, overdraw, animation cost, or browser/device memory pressure. An asset that opens in Blender is not necessarily an asset that runs in the game.

Import a clean copy in the target runtime, run the representative scene, exercise interactions, and capture performance in representative and stress states. Runtime evidence supersedes a polished source preview.

## 13. The locked-then-changed failure

Changing a silhouette after rigging, changing a pivot after animation, or changing a material after performance capture invalidates dependent work. Keeping the old green screenshot makes the record look complete while describing a different asset.

The Skill uses explicit locks. When an upstream lock reopens, mark dependent files and evidence stale, then re-run the affected gates. Small safe changes remain editable only when the contract says they are inside the tested band.

## 14. The route-to-promise mismatch

The fastest route is not always the cheapest finished route. If the player must inspect a cracked switch at arm’s length, a generated high-frequency prop with bad collision may require more repair than an authored low-poly model. If a city contains 4,000 distant windows, hand modelling each one wastes time better spent on the skyline generator and a few hero windows.

Route selection is therefore a per-asset decision based on camera, interaction, deformation, reuse, budget, and update cost—not a declaration that one tool is universally best.
