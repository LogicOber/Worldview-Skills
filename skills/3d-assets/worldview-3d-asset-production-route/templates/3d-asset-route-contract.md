# 3D Asset Route Contract

Use one contract per asset family or one row per asset in a batch. Keep this record near the project’s existing production records. Replace bracketed text; label missing evidence `unknown` or `unverified` rather than deleting it.

## Document control

| Field | Value |
| --- | --- |
| Asset family / stable ID | `[name]` / `[id]` |
| Contract version / status | `[version]` / `proposed · locked · reopened · delivered` |
| Owner | `[person or Agent]` |
| Project path and authorized write scope | `[path / boundaries]` |
| Runtime and version | `[engine/framework, version, renderer]` |
| Target platform and camera | `[platform, distance, FOV, screen-space size]` |
| Created / last reviewed | `[UTC dates]` |
| Companion records | `[style lock, asset map, scene, verification]` |

## Evidence language

Use one label for each material statement:

- **Source fact:** user or cited provider/manual; include a path or URL.
- **Project fact:** read from the repository or configuration; include a path/revision.
- **Observation:** reproduced in a named build, tool version, and environment.
- **Proposal:** not yet implemented or measured.
- **Judgment:** evaluation tied to listed evidence.
- **Unknown:** no reliable answer yet.

## 1. Asset brief

| Field | Locked value | Evidence / owner |
| --- | --- | --- |
| Player-facing purpose | `[why this asset exists]` | `[source/project/proposal]` |
| Role tier | `hero / interactive / deforming / repeatable / background / prototype` |  |
| Silhouette and identity markers | `[shape, asymmetry, markings]` |  |
| Close-up and motion exposure | `[distance, duration, camera states]` |  |
| Interaction | `[inspect, pickup, open, hit, climb, none]` |  |
| Collision / navigation | `[proxy and layers]` |  |
| Deformation / animation | `[states and required poses]` |  |
| Variants | `[damage, state, color, wardrobe, modular]` |  |
| Reuse and instance count | `[scenes / expected copies]` |  |
| Explicitly not promised | `[hidden detail, rig, interior, etc.]` |  |

## 2. Transform and runtime contract

| Field | Value | Direct test |
| --- | --- | --- |
| Real dimensions and units | `[W × H × D]` | `[scene measurement]` |
| Origin / pivot | `[location and reason]` | `[rotate/attach/spawn test]` |
| Axes and ground contact | `[up, forward, base]` | `[import test]` |
| Sockets / attachments | `[names, transforms, parent]` | `[spawn test]` |
| Collision shape and layer | `[primitive/convex/custom, layer]` | `[player/physics test]` |
| Trigger / interaction bounds | `[shape and reach]` | `[valid/invalid input test]` |
| Navigation influence | `[blocker/cost/none]` | `[nav test]` |
| LOD / culling / streaming | `[distances and policy]` | `[distance capture]` |
| Material and texture budget | `[slots, sets, dimensions, memory]` | `[runtime profile]` |
| Geometry budget | `[triangles/vertices, memory, file size]` | `[report/build]` |
| Runtime fallback | `[proxy / primitive / authored fallback]` | `[failure test]` |

## 3. Capability and authority ledger

| Tool, API, MCP, or store | Available? | Authorized data scope | Paid? / limit | Version / evidence | Fallback |
| --- | --- | --- | --- | --- | --- |
| `[Blender/DCC]` | `[yes/no]` | `[files allowed to leave project]` | `[limit]` | `[version/path]` | `[local route]` |
| `[Blender MCP]` |  |  |  |  |  |
| `[Tripo/provider]` |  |  |  |  |  |
| `[texture/image tool]` |  |  |  |  |  |
| `[runtime importer/profiler]` |  |  |  |  |  |

Never put credentials here. Record where the secret is managed, not its value.

## 4. Candidate route matrix

Score 0 (poor) to 3 (strong) after hard-gate review. Explain every score.

| Candidate | Visual | Functional / deforming | Editable | Batch speed | Runtime fit | Rights confidence | Cost / recovery | Total | Rejected or selected reason |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| Hand-authored |  |  |  |  |  |  |  |  |  |
| Procedural/runtime |  |  |  |  |  |  |  |  |  |
| Image-to-3D |  |  |  |  |  |  |  |  |  |
| Hybrid |  |  |  |  |  |  |  |  |  |

### Hard gates

- [ ] Input and output permissions are known or explicitly restricted.
- [ ] Route can reach the target runtime and platform.
- [ ] Required collision, deformation, animation, and editability can be tested.
- [ ] A failure fallback exists.
- [ ] Cost, quota, and data-transmission boundary are authorized.

**Selected route:** `[route]`  
**Fallback route:** `[route]`  
**Reason:** `[short evidence-based explanation]`

## 5. Source and provenance ledger

| Component | Origin / URL / path | Creator or provider | Date / version / task ID | Allowed use | License / terms checked? | Status |
| --- | --- | --- | --- | --- | --- | --- |
| Reference image |  |  |  |  |  | `cleared / restricted / unknown` |
| Generated mesh |  |  |  |  |  |  |
| Authored source |  |  |  |  |  |  |
| Texture / material |  |  |  |  |  |  |
| Runtime export |  |  |  |  |  |  |

Do not call an asset commercial-ready while a material source, provider term, likeness, logo, watermark, or redistribution obligation is unresolved.

## 6. Build record

| Stage | Input | Output | Tool/version | Reproducible command or steps | Hash / path | Status |
| --- | --- | --- | --- | --- | --- | --- |
| Reference/blockout |  |  |  |  |  |  |
| Source mesh |  |  |  |  |  |  |
| Repair/retopology |  |  |  |  |  |  |
| UV/material |  |  |  |  |  |  |
| Rig/animation |  |  |  |  |  |  |
| Collision/LOD |  |  |  |  |  |  |
| Runtime export |  |  |  |  |  |  |
| Runtime import |  |  |  |  |  |  |

## 7. Validation matrix

### Geometry and transform

- [ ] Units, dimensions, origin, axes, ground contact, and sockets match the contract.
- [ ] Winding and normals render correctly in the target renderer.
- [ ] No unintended holes, non-manifold boundaries, internal faces, floating fragments, self-intersections, or zero-area faces.
- [ ] Density and topology fit camera and deformation requirements.
- [ ] Identity markers and variants remain stable.

Evidence: `[wireframe/render/path/build]`  
Status: `pass / repair-required / unverified`

### UV, material, and texture

- [ ] UVs and texel density meet the project convention.
- [ ] Material slots and shader channels import correctly.
- [ ] Base color, roughness, metalness, normal, emissive, opacity, and color space are correct where used.
- [ ] Compression, mipmaps, alpha mode, and texture memory are within budget.
- [ ] Asset reads under gameplay lighting and the real camera.

Evidence: `[path/capture/build]`  
Status: `pass / repair-required / unverified`

### Functional, deformation, and animation

- [ ] Collision, triggers, navigation, sockets, and hit/grab points behave as intended.
- [ ] Bind pose and weights survive representative and extreme poses.
- [ ] Idle, locomotion, turns, interaction, damage, and facial/cloth states required by the brief pass.
- [ ] Reset, despawn, and variant transitions leave no stale state.
- [ ] Fallback works if source/provider output is absent.

Evidence: `[test/capture/build]`  
Status: `pass / repair-required / blockout-only / unverified`

### Runtime and performance

- [ ] Clean import produces no material or transform warning that affects play.
- [ ] File appears, lights, culls, streams, unloads, and resets correctly.
- [ ] Geometry, texture memory, draw calls, overdraw, animation, file size, and loading are measured where relevant.
- [ ] Representative and stress scene evidence exists for target platform.
- [ ] LODs/instancing/collision proxies transition correctly.

Evidence: `[profile/capture/build/environment]`  
Status: `pass / budget-risk / repair-required / unverified`

### Rights and provenance

- [ ] Every external input and output has a source record.
- [ ] Provider terms and purchased/downloaded licenses meet intended use or are marked restricted.
- [ ] No secret, disallowed identity, private input, watermark, or third-party logo is shipped without permission.
- [ ] Final status is explicit: `ship-ready / repair-required / blockout / reference-only / restricted / unverified`.

Evidence: `[ledger/path/terms/date]`  
Status: `pass / restricted / unknown`

## 8. Layer locks

| Lock | Artifact | Status | Close condition | Safe mutable fields | Reopen trigger | Dependent work invalidated | Owner/version/date |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Route and authority | matrix + capability ledger |  | route, capability, permission, cost, fallback known | provider minor update after retest | new tool/permission/target | generation, provenance, tests |  |
| Identity and transform | asset brief |  | silhouette, scale, pivot, axes, markers fixed | hidden detail, tested roughness | silhouette/scale/pivot/style change | mesh, rig, collision, captures |  |
| Functional behavior | interaction/animation |  | collision, sockets, deformation, reset tested | tuning inside tested band | new interaction/rig/skeleton | gameplay and animation evidence |  |
| Representation | source/runtime package |  | forms and ownership reproducible | compression/LOD inside budget | generated↔authored or format change | export/import/rights/performance |  |
| Runtime budget | profile |  | target/stress evidence recorded | optimization inside headroom | platform/scene/shader change | LOD/batch/performance claims |  |
| Release proof | verification |  | gates pass or limitations declared | wording/links | upstream lock reopens | release claim/integration |  |

## 9. Handoff

**Selected route and reason:** `[text]`  
**Final status:** `[ship-ready / repair-required / blockout / reference-only / restricted / unverified]`  
**Source / runtime paths:** `[paths]`  
**Rebuild/export command:** `[command or steps]`  
**External tools, spend, task IDs:** `[record]`  
**Evidence:** `[links/paths/build]`  
**Known defects and impact:** `[list]`  
**Next safe action:** `[repair, batch, or integration step]`  
**What was not verified:** `[honest boundary]`
