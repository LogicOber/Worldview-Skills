# Vertical-slice contract

Use this template to record the decisions that make a bounded high-fidelity slice implementable and verifiable. Replace every bracketed instruction that applies. Mark unavailable evidence as `unverified`; never turn a proposed value into an observed fact by deleting the label.

Keep the record in the project’s established documentation location. If none exists, store it at `game-production/<slice-slug>/vertical-slice-contract.md` and link its companion brief, visual standard, asset ledger, capture matrix, and verification record.

## Document control

| Field | Value |
| --- | --- |
| Slice name and stable slug | `[name]` / `[slug]` |
| Contract version | `[version]` |
| Contract status | `proposed / partially locked / locked / reopened / delivered` |
| Contract owner | `[lead responsible for shared decisions and final claims]` |
| Project path and authorized write scope | `[path and boundaries]` |
| Runtime and version | `[engine/framework/browser plus version]` |
| Baseline build or revision | `[commit/build/hash, or “no version history observed”]` |
| Current evidence build or revision | `[commit/build/hash]` |
| Created / last reviewed | `[UTC dates]` |
| Target platform | `[platform]` |
| Target slice duration | `[minutes]` |
| Companion records | `[links to slice brief, visual standard, asset ledger, capture matrix, verification]` |

## Evidence language

Label important statements so another Agent can tell what is known:

- **Source fact:** supplied by the user or an approved source; cite it.
- **Project fact:** read directly from project files or configuration; cite the path.
- **Observation:** reproduced in a named build and environment; link the procedure and evidence.
- **Proposal:** a decision awaiting implementation or verification.
- **Judgment:** an evaluation based on declared evidence and criteria.
- **Unknown:** a material question with no reliable answer yet.

### Source boundary

| Item | Classification | Location or evidence | Allowed use | Open question |
| --- | --- | --- | --- | --- |
| User story and constraints | `[source fact]` | `[prompt/brief location]` | `[scope]` | `[unknowns]` |
| Existing repository | `[project fact]` | `[path/revision]` | `[authorized paths]` | `[unknowns]` |
| Existing assets and references | `[source/project fact]` | `[paths]` | `[reuse/transform/reference only]` | `[rights or technical questions]` |
| Observed baseline behavior | `[observation]` | `[run/capture/trace]` | `[what it establishes]` | `[limits]` |
| New design decisions | `[proposal]` | `[section links]` | `[slice only or reusable]` | `[tests needed]` |
| External capabilities | `[observed capability]` | `[configured interface; never record a secret]` | `[authorized operation and cost boundary]` | `[limits]` |

## Capability ledger

Record presence, access, scope, authorization, cost, evidence, and fallback before promising implementation.

| Capability | Available? | Access method | Authorized scope | Cost or quota boundary | Evidence of availability | Fallback if unavailable |
| --- | --- | --- | --- | --- | --- | --- |
| Project read/write and version history | `[yes/no/partial]` | `[path/tool]` | `[scope]` | `[n/a or limit]` | `[status/command]` | `[contract and patch plan]` |
| Runnable game or prototype |  |  |  |  | `[build/play evidence]` | `[mark runtime unverified]` |
| Real frame capture and visual inspection |  |  |  |  | `[capture evidence]` | `[target sheets only]` |
| Input or browser/engine automation |  |  |  |  | `[test/driver/manual protocol]` | `[repeatable manual steps]` |
| Image generation or supplied references |  |  |  |  | `[configured tool or owned files]` | `[text visual grammar]` |
| Blender, Blender MCP, or another DCC |  |  |  |  | `[configured interface/version]` | `[runtime/procedural route or asset brief]` |
| Profiler and runtime counters |  |  |  |  | `[trace/counter availability]` | `[narrow timing claims]` |
| Audio tools or existing library |  |  |  |  | `[tool/library]` | `[hooks and labeled temporary sounds]` |
| Deployment or device access |  |  |  |  | `[target/environment]` | `[local-only evidence]` |
| Subagent/orchestration capability |  |  |  |  | `[mode and worker boundary]` | `[sequential review passes]` |

### External-operation authorization

| Tool, API, MCP, store, or service | Data that may leave the project | Paid action allowed? | Maximum spend / calls | Output ownership or license record | Credential handling | Operator |
| --- | --- | --- | --- | --- | --- | --- |
| `[capability]` | `[files/metadata/none]` | `[yes/no]` | `[limit]` | `[where recorded]` | `[environment/secret store; never project file]` | `[owner]` |

## Lock register

Every detailed lock section below must repeat these control fields. A row is locked only when its condition has evidence.

| Order | Lock | Artifact | Status | Evidence that closes it | Still mutable | Reopen trigger | Dependent work to invalidate | Owner and locked version |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Player promise | `slice-brief.md` | `[proposed/locked/reopened]` | `[evidence]` | `[fields]` | `[trigger]` | `[all later locks when core changes]` | `[owner/version/date]` |
| 2 | Playable spine | This contract and proxy build |  |  |  |  |  |  |
| 3 | Frame coverage | `visual-standard.md` and capture plan |  |  |  |  |  |  |
| 4 | Runtime budget | Budget and measurement environment |  |  |  |  |  |  |
| 5 | Representation plan | `asset-ledger.md` |  |  |  |  |  |  |
| 6 | Integrated presentation | Integrated runtime and discrepancy record |  |  |  |  |  |  |
| 7 | Release proof | `verification.md` and fresh final evidence |  |  |  |  |  |  |

---

## Lock 1 — Player promise

### Promise sentence

> The player is `[role]` in `[place]`, repeatedly `[core verb]` to reach `[goal]` while `[pressure]` changes the situation, culminating in `[signature event]` and ending when `[clear boundary]` occurs.

### Promise fields

| Field | Locked value | Classification and basis |
| --- | --- | --- |
| Player role | `[value]` | `[source fact/proposal plus source]` |
| Place and time boundary |  |  |
| Repeated core verb |  |  |
| Why action is required now |  |  |
| Goal |  |  |
| Resistance or pressure |  |  |
| Signature moment |  |  |
| Ending boundary and consequence |  |  |
| Primary route |  | `[one bounded route]` |
| Target duration |  |  |
| Target platform |  |  |
| Camera and perspective |  |  |
| Control device(s) in current delivery |  |  |
| Runtime target |  |  |
| Explicitly outside this slice |  |  |

### Five beats

| Beat | Player decision and input | World-state change | Required presentation | Exit condition |
| --- | --- | --- | --- | --- |
| Arrival | `[how control begins and place is read]` |  |  |  |
| First useful action | `[first core-verb use]` |  |  |  |
| Pressure | `[cost, threat, limit, or competing goal]` |  |  |  |
| Signature event | `[single cause joining story, mechanic, camera, light, sound, and environment]` |  |  |  |
| Exit | `[consequence and stable handoff/restart]` |  |  |  |

### Input decision audit

| Input | Decision it changes | Frequency | Keep, combine, or remove | Reason |
| --- | --- | --- | --- | --- |
| `[input]` | `[decision]` | `[frequency]` | `[choice]` | `[reason]` |

### Player-promise lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `slice-brief.md`; `[how the bounded experience expresses the requested identity]` |
| Lock condition | `[complete experience fits one bounded route and one runtime target]` |
| Closing evidence | `[review record or implemented boundary]` |
| Still mutable afterward | `names, prose, incidental dressing, and [project-specific safe fields]` |
| Reopen trigger | `[new core verb, perspective, platform, ending, or equivalent identity change]` |
| Dependent work invalidated | `all later locks, assets, captures, journeys, scores, and performance claims affected by the changed promise` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 2 — Playable spine

### State ownership

| State or event | Authoritative owner | Readers/subscribers | Persistence | Network authority, if any | Reset responsibility |
| --- | --- | --- | --- | --- | --- |
| Player control state | `[owner]` | `[systems]` | `[ephemeral/save/etc.]` | `[authority]` | `[cleanup owner]` |
| Core interaction state |  |  |  |  |  |
| Pressure state |  |  |  |  |  |
| Signature event state |  |  |  |  |  |
| Outcome state |  |  |  |  |  |

### Input, camera, and traversal contract

| Responsibility | Locked rule | Tunables still mutable | Direct test |
| --- | --- | --- | --- |
| Required input map | `[actions and devices]` | `[bindings/settings]` | `[procedure]` |
| Camera | `[type, anchor, FOV/zoom, follow, collision, occlusion]` | `[tested feel band]` | `[edge/tight-space/transition tests]` |
| Movement and traversal | `[speed model, collision, steps/slopes/jumps if any]` | `[tested bands]` | `[route procedure]` |
| Interaction reach and target selection | `[rule]` | `[distance/angle band]` | `[valid/invalid targets]` |
| Pause, loading, and input ownership | `[rule]` | `[safe presentation values]` | `[transition procedure]` |

### Route graph

| Node or segment | Entry state | Required action | Pressure or cost | Exit state | Failure / recovery | Reset result |
| --- | --- | --- | --- | --- | --- | --- |
| `[stable ID]` | `[state]` | `[action]` | `[pressure]` | `[state]` | `[path]` | `[state]` |

### Core interaction transaction

| Field | Locked value |
| --- | --- |
| Valid actor and target | `[conditions]` |
| Preconditions | `[state, inventory, position, timing, authority]` |
| Input and commitment point | `[input plus exact commit boundary]` |
| Authoritative state change | `[before -> after]` |
| Visual response | `[subscriber behavior]` |
| Audio and haptic response | `[subscriber behavior]` |
| Persistent consequence | `[if any]` |
| Invalid-target response | `[readable non-commit]` |
| Interruption policy | `[rollback/pause/checkpoint/commit]` |
| Duplicate/idempotency rule | `[rule]` |
| Old callback and queued-work cleanup | `[rule]` |

### Outcome and restart

| Path | Trigger | Player feedback | Durable state | Ephemeral cleanup | Restart destination and state |
| --- | --- | --- | --- | --- | --- |
| Success | `[trigger]` | `[feedback]` | `[state]` | `[cleanup]` | `[result]` |
| Failure |  |  |  |  |  |
| Interruption or cancellation |  |  |  |  |  |
| Manual restart |  |  |  |  |  |
| Reload / reconnect, if supported |  |  |  |  |  |

### Proxy representation contract

| Proxy | Required final-compatible scale, pivot, collision, state, and contact | What may stay simple | Replacement trigger |
| --- | --- | --- | --- |
| `[proxy ID]` | `[contract]` | `[appearance]` | `[silhouette/material/articulation requirement]` |

### Three proxy-route runs

| Run | Build/environment | Route result | Control/camera observation | State/reset observation | Defect and disposition | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | `[build/environment]` | `[result]` | `[observation]` | `[observation]` | `[fix/open]` | `[trace/capture]` |
| 2 |  |  |  |  |  |  |
| 3 |  |  |  |  |  |  |

### Bug observation record

| Field | Record |
| --- | --- |
| State reached | `[state]` |
| Input performed | `[input]` |
| Expected visible or behavioral result | `[expected]` |
| Observed result | `[observation]` |
| Reproduction frequency | `[runs / attempts]` |
| Capture or trace | `[artifact]` |
| Traced cause | `[evidence-backed cause]` |
| Smallest explanatory change | `[change]` |
| Same-procedure rerun | `[result]` |

### Playable-spine lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `vertical-slice-contract.md` plus proxy build; `[input, camera, traversal, interaction, outcomes, reset, and ownership]` |
| Lock condition | `[proxy build completes the intended route and repeats after reset]` |
| Closing evidence | `[three run records and tests]` |
| Still mutable afterward | `feel values inside tested bands and proxy appearance` |
| Reopen trigger | `[control, collision, authority, route, interaction, outcome, or state change]` |
| Dependent work invalidated | `affected visual staging, asset dimensions, journey evidence, captures, and downstream proof` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 3 — Frame coverage

Use three to five states. Delete unused state cards; add a state only when it covers a distinct promise.

### Coverage index

| State ID | Role | Reachable from | Story-critical promise covered | Capture owner | Status |
| --- | --- | --- | --- | --- | --- |
| `[arrival ID]` | `arrival` | `[entry]` | `[place/scale/route/player/UI]` | `[owner]` | `[proposed/locked/captured]` |
| `[action ID]` | `core action` |  |  |  |  |
| `[pressure ID]` | `pressure` |  |  |  |  |
| `[signature ID]` | `signature` |  |  |  |  |
| `[aftermath ID, if needed]` | `aftermath` |  |  |  |  |

### Target-state card — `[state ID and role]`

| Field | Locked value |
| --- | --- |
| Reachable state identifier | `[ID]` |
| Real-route reproduction steps | `[steps from documented entry]` |
| Debug setup, if separately available | `[setup; never substitute for journey proof]` |
| Gameplay camera type and anchor/transform | `[value]` |
| FOV or zoom | `[value]` |
| Aspect ratio and capture resolution | `[value]` |
| Quality tier, render scale, UI resolution | `[value]` |
| Foreground framing | `[required structure]` |
| Player/action plane | `[required structure]` |
| Midground landmark | `[required structure]` |
| Background/depth structure | `[required structure]` |
| Required silhouettes and scale relations | `[requirements]` |
| Material families, texture scale, and response | `[requirements]` |
| Motivated lights, exposure, shadow, atmosphere, reflection | `[requirements]` |
| Navigation, danger, interaction, reward, decoration, and UI color hierarchy | `[requirements]` |
| Motion visible over time | `[requirements and temporal evidence]` |
| HUD, reticle, prompts, captions, and safe areas | `[requirements]` |
| Most expensive visible features | `[cost risks]` |
| Must-read features | `[non-negotiable]` |
| Negotiable details | `[safe simplifications]` |
| Reference origin and rights status | `[owned/generated/authorized plus ledger IDs]` |
| Acceptance procedure | `[capture and review steps]` |

Copy the state card for every indexed state.

### Story-promise coverage

| Promise or beat | State(s) that show it | Behavioral evidence paired with the frame | Gap |
| --- | --- | --- | --- |
| Arrival and place identity | `[IDs]` | `[journey]` | `[none/gap]` |
| Core verb and causal response |  |  |  |
| Pressure and changed decision |  |  |  |
| Signature event |  |  |  |
| Consequence and exit |  |  |  |

### Shared visual grammar

| Axis | Shared rule | State-specific variation | Counterexample to reject | Review evidence |
| --- | --- | --- | --- | --- |
| Shape | `[silhouette, proportion, edge, distance density]` | `[variation]` | `[rejected inconsistency]` | `[evidence]` |
| Surface | `[material families, macro/fine detail, wear, scale]` |  |  |  |
| Light | `[sources, contrast, exposure, shadow, atmosphere]` |  |  |  |
| Color | `[world/navigation/interaction/danger/reward/UI hierarchy]` |  |  |  |
| Motion | `[action, response, environmental tempos, cleanup]` |  |  |  |
| Lens and camera | `[height, FOV, follow, shake, occlusion, transitions]` |  |  |  |
| Interface | `[type, spacing, icons, focus, input states, world relationship]` |  |  |  |
| Sound | `[ambience, onset, warning, impact, confirmation, silence]` |  |  |  |

### Frame-coverage lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `visual-standard.md`; `[how every critical visual promise appears in reachable play]` |
| Lock condition | `[all story-critical promises covered and shared rules agree across three to five states]` |
| Closing evidence | `[coverage review and runtime feasibility check]` |
| Still mutable afterward | `small prop placement, surface variation, and [safe details]` |
| Reopen trigger | `[camera/FOV, major composition, time of day, signature event, HUD, or coverage change]` |
| Dependent work invalidated | `affected target comparisons, asset briefs, captures, visual reviews, and performance states` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 4 — Runtime budget

### Measurement environment

| Field | Locked value |
| --- | --- |
| Target device/class | `[device and whether actually available]` |
| Test machine hardware | `[CPU/GPU/RAM/device]` |
| OS and version | `[value]` |
| Engine/browser/runtime and version | `[value]` |
| Renderer/backend | `[value]` |
| Headed, headless, emulated, remote, or software-rendered | `[classification]` |
| Display resolution and refresh | `[value]` |
| World render resolution/scale | `[value]` |
| Interface resolution/scale | `[value]` |
| Quality tier and relevant flags | `[value]` |
| Measurement tools | `[profiler/counters/manual limitation]` |
| Build configuration | `[debug/development/release]` |

### Targets and constraints

| Budget | Locked target | Basis | Measurement procedure | Pass condition | If unavailable |
| --- | --- | --- | --- | --- | --- |
| Frame target | `[for example, a project target; label provisional values]` | `[source/proposal]` | `[procedure]` | `[median/percentile rule]` | `[narrow claim]` |
| Slow-frame percentile | `[target]` |  |  |  |  |
| Loading / first-interactive | `[target]` |  |  |  |  |
| Memory | `[target or unmeasured]` |  |  |  |  |
| Download / shipped size | `[target]` |  |  |  |  |
| Draw calls / primitives / instances | `[envelope]` |  |  |  |  |
| Shader/material/texture count | `[envelope]` |  |  |  |  |
| Texture and geometry memory | `[envelope]` |  |  |  |  |
| Streaming / compilation / long-work limit | `[target]` |  |  |  |  |

### Representative and stress states

| State | Exact setup | Geometry/effects/UI/movement present | Duration and sample count | Why it is representative | Evidence output |
| --- | --- | --- | --- | --- | --- |
| Representative route | `[setup]` | `[contents]` | `[duration]` | `[reason]` | `[trace]` |
| Densest controlled stress state | `[setup]` | `[densest expected combination]` | `[duration]` | `[reason]` | `[trace]` |

### Quality-tier contract

| Tier | What may change | What must not change | Visual states recaptured | Performance rerun |
| --- | --- | --- | --- | --- |
| `[tier]` | `[shadows/effects/LOD/render scale/etc.]` | `[player promise, route, must-read features, UI readability]` | `[IDs]` | `[procedure]` |

### Runtime-budget lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `[platform, resolution, frame/loading/memory/size targets, and measurement environment]` |
| Lock condition | `[target is measurable in the available runtime and compatible with the promise]` |
| Closing evidence | `[baseline trace and feasibility review]` |
| Still mutable afterward | `quality thresholds that preserve the same experience and must-read features` |
| Reopen trigger | `[device, renderer, resolution, runtime backend, or performance-class change]` |
| Dependent work invalidated | `asset density, LOD, texture, effects, loading, capture, and performance claims affected by the change` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 5 — Representation plan

### Asset and content-family ledger

| Stable ID / family | Target states and runtime role | Chosen representation | Reason | Owner | Source/origin | Creator/generator/tool and version | Rights/license/redistribution | Editable source | Runtime form/export | Scale/pivot/axes/collision or UI equivalent | Variants/LOD/state coverage | Cost estimate | Fallback | Validation evidence | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `[ID]` | `[states/role]` | `existing / authored DCC / modular / procedural / generated / instanced / shader / particle / sprite / UI / audio` | `[why fit]` | `[owner]` | `[path/URL/original]` | `[record]` | `[record]` | `[path]` | `[path/format]` | `[contract]` | `[coverage]` | `[time/API/memory/size]` | `[fallback]` | `[in-runtime evidence]` | `[planned/ready/accepted/rejected]` |

Every feature in every target-state card must map to at least one ledger row. Every row that ships must have an origin and rights status.

### DCC asset specification — `[asset ID]`

| Field | Value |
| --- | --- |
| Gameplay viewing distance and angles | `[values]` |
| World units, forward/up axes, origin, pivot | `[values]` |
| Attachment points and naming | `[values]` |
| Moving parts, deformation, sockets, damage states | `[requirements]` |
| Collision | `[requirements]` |
| Silhouette features visible at target resolution | `[features]` |
| Material families and texture channels | `[requirements]` |
| Triangle, batch, texture, and LOD envelope | `[budget]` |
| Editable source path | `[path]` |
| Export path and settings | `[path/settings]` |
| Actual runtime-import validation | `[procedure/evidence]` |

Copy this specification for each silhouette-critical DCC asset.

### Procedural or generated-system specification — `[system ID]`

| Field | Value |
| --- | --- |
| Authoritative rule set | `[owner/path]` |
| Visible form | `[rule]` |
| Collision or interaction agreement | `[rule]` |
| Persistence/regeneration agreement | `[rule]` |
| Seed or fixture | `[stable test value]` |
| Streaming boundary | `[rule]` |
| Detail-level transition and overlap | `[rule]` |
| External generation authorization, if any | `[tool/data/cost/rights record]` |
| Deterministic test | `[procedure]` |
| In-motion transition test | `[procedure]` |

### Representation-plan lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `asset-ledger.md`; `[who produces each visible family, by which route, in which runtime form, at what cost and rights status]` |
| Lock condition | `[every target feature has owner, source, runtime form, fallback, and cost estimate]` |
| Closing evidence | `[coverage audit and capability/rights check]` |
| Still mutable afterward | `variants inside the same family and accepted cost envelope` |
| Reopen trigger | `[signature silhouette, material system, generation source, license, runtime form, or family ownership change]` |
| Dependent work invalidated | `relevant source assets, exports, imports, captures, rights review, and performance evidence` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 6 — Integrated presentation

### Causal production passes

| Pass | Named states inspected | Observable acceptance condition | Evidence before | Changes accepted | Evidence after | Regression check | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Composition and camera | `[IDs]` | `[route, axes, landmark, depth, FOV, camera/occlusion rules]` | `[capture]` | `[changes]` | `[capture]` | `[journey/camera test]` | `[status]` |
| Scale and silhouette |  | `[recognizable massing, human/door/prop scale, negative space, articulation]` |  |  |  |  |  |
| Surface response |  | `[material distinction, scale, channel use, seams, wear, authored labels]` |  |  |  |  |  |
| Light, exposure, and air |  | `[motivated light, shadows, exposure, atmosphere, reflection, route readability]` |  |  |  |  |  |
| Motion and world response |  | `[causal action response, environmental tempos, transient caps and cleanup]` |  |  |  |  |  |
| Interface, sound, loading, and transitions |  | `[coherent UI/audio/input/loading/reset presentation]` |  |  |  |  |  |

### Real-route state reachability

| State ID | Real input path | Must-read features present? | Frame budget met? | Behavior remained correct? | Fresh capture/trace | Result |
| --- | --- | --- | --- | --- | --- | --- |
| `[ID]` | `[journey]` | `[yes/no plus defect]` | `[yes/no/unverified]` | `[yes/no]` | `[artifact]` | `[accepted/open]` |

### Discrepancy ledger

| State | Observable mismatch | Likely cause family | Evidence | Smallest corrective pass | Result after same-state rerun | Closed by build |
| --- | --- | --- | --- | --- | --- | --- |
| `[state]` | `[observation, not vague preference]` | `[camera/silhouette/surface/light/motion/UI/audio/runtime]` | `[artifact]` | `[change]` | `[observation]` | `[build/open]` |

### Integration regression matrix

| Change family | Behavior rerun | Visual states recaptured | Performance rerun | Rights/provenance rechecked | Stale evidence removed |
| --- | --- | --- | --- | --- | --- |
| `[change]` | `[procedures]` | `[IDs]` | `[states]` | `[rows]` | `[artifact IDs]` |

### Integrated-presentation lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `[integrated runtime build; whether assets, materials, lighting, motion, effects, UI, audio, and transitions serve the spine]` |
| Lock condition | `[all named states reachable through real input, must-read features present, no gameplay regression, budget respected]` |
| Closing evidence | `[journeys, fresh capture set, regression tests, traces]` |
| Still mutable afterward | `final values inside the accepted evidence range` |
| Reopen trigger | `[gameplay regression, state miss, artifact, budget breach, or relevant asset/presentation change]` |
| Dependent work invalidated | `[affected journey, capture, quality review, score, benchmark, and handoff claims]` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

---

## Lock 7 — Release proof

### Evidence-record schema

Use one row or linked record per claim.

| Field | Required record |
| --- | --- |
| Evidence ID and type | `[stable ID; behavior / visual / temporal / performance / rights / manual]` |
| Claim | `[one bounded claim]` |
| Build or revision | `[exact build]` |
| State and entry | `[state ID plus real/debug entry distinction]` |
| Environment | `[machine/runtime/backend/settings]` |
| Procedure | `[reproducible steps or command]` |
| Artifact | `[trace, log, screenshot, video, ledger row, or observation record]` |
| Observed result | `[fact, not conclusion alone]` |
| Judgment and criterion | `[pass/fail with declared criterion]` |
| Limits | `[what this artifact cannot prove]` |
| Invalidation trigger | `[changes requiring rerun]` |
| Reviewer and UTC date | `[record]` |

### Verification matrix

| Claim | Direct procedure | Required evidence | Evidence IDs | Observed result | Status and limitation |
| --- | --- | --- | --- | --- | --- |
| Clean start works | Follow setup from a fresh process or clean play session. | Command output or recorded procedure and first frame. | `[IDs]` | `[observation]` | `[pass/fail/unverified]` |
| Player gains control | Use every required input from arrival. | Input assertions or manual observation. |  |  |  |
| Core verb changes the world | Use it on one valid and one invalid target. | State trace plus action capture. |  |  |  |
| Pressure changes the decision | Reach pressure through the real route and take two adjacent choices. | Journey traces and pressure capture. |  |  |  |
| Signature event is causal | Trigger it through play; verify gameplay, visual, audio, and persistent consequences. | State evidence plus before/during/after captures. |  |  |  |
| Outcome and reset are stable | Complete, fail or interrupt, then restart at least twice. | Assertions or repeated manual record. |  |  |  |
| Camera remains playable | Traverse edges, tight spaces, target transitions, and obstructions. | Camera checks and representative captures. |  |  |  |
| All target states are reachable | Reproduce every capture-matrix row from documented entry. | Fresh captures at locked settings. |  |  |  |
| Assets are original or authorized | Audit every shipping non-code asset. | Asset ledger with origin and rights. |  |  |  |
| Visual grammar is coherent | Review all eight grammar axes across the set. | Review table and discrepancy closure. |  |  |  |
| Performance meets stated target | Run representative and stress procedures in the recorded environment. | Trace, counters, percentile timings, loading result. |  |  |  |
| Degraded quality remains readable | Exercise supported quality, resolution, input, caption, and reduced-motion paths. | Settings matrix and captures. |  |  |  |

Add engine- and mechanic-specific rows without removing these responsibilities.

### Final capture matrix

| State ID | Real-route reproduction | Build | Camera/FOV | Resolution/aspect | Quality/render/UI scale | World and UI state | Capture path | Temporal evidence | Captured UTC | Accepted? |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `[ID]` | `[steps]` | `[build]` | `[settings]` | `[settings]` | `[settings]` | `[state]` | `[path]` | `[video/observation if motion matters]` | `[time]` | `[yes/no]` |

### Supported-settings matrix

| Setting path | Values tested | Required readability/behavior | Evidence | Result | Unsupported limitation |
| --- | --- | --- | --- | --- | --- |
| Quality tier | `[values]` | `[requirements]` | `[artifacts]` | `[result]` | `[limit]` |
| Resolution/aspect |  |  |  |  |  |
| Input device |  |  |  |  |  |
| Captions/subtitles |  |  |  |  |  |
| Reduced motion |  |  |  |  |  |
| Color/readability support |  |  |  |  |  |

### Release heuristic

Score `0` only when absent or broken, `1` when functional but generic or inconsistent, and `2` when project-specific and stable. This is a disclosed heuristic, not a universal art score.

| Axis | Score 0–2 | Direct evidence | Remaining defect | Central to promise? |
| --- | --- | --- | --- | --- |
| Playable identity | `[score]` | `[evidence]` | `[defect]` | `[yes/no]` |
| Composition |  |  |  |  |
| Silhouette |  |  |  |  |
| Surface and light |  |  |  |  |
| Motion and response |  |  |  |  |
| Interface and transitions |  |  |  |  |
| Runtime stability |  |  |  |  |
| Originality and rights |  |  |  |  |
| **Total disclosed score** | `[sum / 16]` | `[review record]` |  |  |

Release as high fidelity only when no axis is `0`, every axis central to the promise is `2`, evidence is current, and unresolved `1` items are disclosed. Otherwise name the delivery honestly as a prototype or partial slice.

### Release-proof lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `verification.md`; `[whether a clean run supports every delivered claim]` |
| Lock condition | `[clean start reaches, completes, fails/interrupts, resets, and reproduces every release capture with current evidence]` |
| Closing evidence | `[completed matrices, score, current artifact index]` |
| Still mutable afterward | `additional evidence and scoped cosmetic fixes that do not invalidate existing proof` |
| Reopen trigger | `[any behavior, asset, presentation, runtime-setting, or code change after evidence capture]` |
| Dependent work invalidated | `[specific tests, captures, traces, score rows, and claims requiring rerun]` |
| Status / owner / version | `[status] / [owner] / [version and UTC date]` |

## Final handoff

| Required item | Delivered record |
| --- | --- |
| Playable entry point | `[path/URL/scene]` |
| Exact setup, build, and run commands | `[commands]` |
| Supported controls and platform | `[controls/platform]` |
| Player promise and actual measured duration | `[paragraph and duration evidence]` |
| Files changed | `[paths grouped by responsibility]` |
| Important project-owned assets created | `[asset IDs and paths]` |
| Capability ledger | `[link]` |
| External APIs/MCP/services actually used | `[names, authorized scope, outputs, costs; or none]` |
| Asset ledger and rights audit | `[link/result]` |
| Fresh capture matrix | `[link]` |
| Functional checks | `[summary and evidence]` |
| Performance environment, procedure, and results | `[summary and trace]` |
| Release scores | `[all axes and total]` |
| Temporary proxies | `[IDs, reason, replacement contract]` |
| Known defects and unsupported paths | `[ranked list]` |
| Unverified claims | `[explicit list]` |
| Next three changes by player-visible value | `1. [change]`<br>`2. [change]`<br>`3. [change]` |

### Final truth check

- [ ] No deployment claim lacks deployment evidence.
- [ ] No frame-rate claim lacks a recorded environment and trace or equivalent observation.
- [ ] No accessibility, input, controller, mobile, or device claim exceeds the tested matrix.
- [ ] No screenshot is presented as behavioral or performance proof.
- [ ] No test or code-presence result is presented as visual proof.
- [ ] No asset ships without origin and rights status.
- [ ] No proxy is described as final without disclosing the limitation.
- [ ] No stale evidence remains linked after a relevant change.
- [ ] External tools and paid operations are named rather than implied to be part of the Skill.
