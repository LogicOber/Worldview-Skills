# Worked example — The Glass Tide Station

This is an original fictional worked example for `worldview-game-high-fidelity-vertical-slice`. It shows how a sparse story can become a concrete production contract without making the user supply rendering vocabulary.

No project was built or measured for this document. Story, names, mechanics, measurements, paths, budgets, and asset plans below are illustrative proposals. Procedures and acceptance values are deliberately concrete, but every evidence row remains `planned` or `unverified` until a receiving project actually produces it. None of these values is a default for another game.

## Starting story

> A courier must carry a glass seed through an abandoned tide station while the city’s water climbs toward the ceiling. The station should feel old, costly, and physically credible. Deliver one short third-person chapter.

## Document control

| Field | Example value |
| --- | --- |
| Slice | **The Glass Tide Station** / `glass-tide-station` |
| Status | `implementation-ready proposal; no runtime evidence` |
| Target duration | 6–8 minutes on a first successful run |
| Target platform | Desktop keyboard/mouse and controller |
| Proposed runtime | Existing project’s 3D runtime; if starting empty, a current engine with a supported deferred desktop renderer |
| Camera | Third-person follow camera, 3.2 m nominal boom, 58° vertical FOV |
| Scope | One station route, one carried seed, four functional couplers, one pressure system, one ending |
| Explicit exclusion | Combat, inventory grid, dialogue tree, open city, swimming, crafting, multiplayer, and post-ending chapter |

## Source boundary

| Statement | Classification | Record |
| --- | --- | --- |
| Courier, glass seed, abandoned tide station, upward flood | Source fact for this fictional brief | Starting story above |
| Character name, station name, route, controls, mechanics, art direction, values | Proposal authored for this example | This document |
| Existing project architecture and assets | Unknown | Must be recovered before implementation |
| Runtime behavior and performance | Unverified | No executable project or capture exists for this example |
| External tools | Unspecified | Must be inventoried and authorized in the receiving Harness |

## Capability ledger

These are requirements and fallbacks, not claims that a tool is present.

| Capability | Desired route | Scope and boundary | Fallback |
| --- | --- | --- | --- |
| Runnable 3D project | Existing runtime and build commands | Preserve current engine and user changes | Deliver patch plan and keep all behavior unverified |
| Frame capture | Five named states at 1920×1080 | Runtime frames only | Produce state sheets and say visual matching is open |
| Input automation | Journey fixture plus manual controller pass | Real controls; debug states only accelerate capture | Exact repeatable manual procedure |
| Image generation | Original multi-state target sheets after the camera is locked | No paid call or upload without authorization | Text grammar and blockout captures |
| Blender or another DCC | Original courier, seed, crown, and close machinery | Prefer configured MCP or scripting; retain editable source | Implementation-ready asset briefs and improved proxy massing |
| Profiler | Representative route and crown-release stress trace | Record real environment | Report only directly observable timings |
| Audio production | Original machinery, seed resonance, water, UI | Record origin and rights per asset | Labeled temporary sounds plus final hooks |

No third-party download is assumed. No secret belongs in a repository file.

---

## Lock 1 — Player promise

> The player is **Nera Voss, a civic seed courier**, inside **Orison Tide Station Seven**, repeatedly **bracing a carried pressure-glass seed into brass couplers** to reach the sealed crown lift while **the seed accumulates fracture load near the inverted ceiling tide**, culminating in **the station crown drawing the suspended water into one upward glass column**, and ending when **Nera locks the intact seed into the departing lift cradle**.

### Five beats

| Beat | Concrete event |
| --- | --- |
| Arrival | Nera steps from a dry municipal tram into the silent turnstile hall. The seed’s faint internal line points toward the first brass coupler; a ceiling reflection reveals water moving upward before any text explains it. |
| First useful action | Holding the brace input for 1.25 seconds seats the seed in `coupler_west`. The coupler powers a maintenance bridge, the seed load vents from 28 to 8, and the bridge becomes traversable. |
| Pressure | In the pump gallery the player chooses a 24 m exposed shortcut under dense ceiling tide or a 39 m dry service stair. The shortcut is faster but adds approximately 46 load at ordinary movement speed. |
| Signature event | Seating the seed in `coupler_crown` commits the final state. Four station vanes turn, water from every ceiling channel converges upward into a clear column, reflected light sweeps the chamber, and the lift cradle descends. |
| Exit | Nera removes the now-stable seed, walks into the crown lift, and locks it into the transport cradle. Doors close only after the seed commit and player occupancy are authoritative. The result screen offers restart. |

### Input decisions

| Input | Decision changed | Example binding |
| --- | --- | --- |
| Move / look | Choose route and manage exposure while reading ceiling flow | WASD + mouse / left + right stick |
| Sprint | Trade precise turning and faster load gain near turbulent water for shorter exposure | Left Shift / left-stick press |
| Brace or release seed | Commit to a 1.25 s stationary interaction that vents load and powers local machinery | E / west face button |
| Focus glance | Temporarily bias the camera toward the seed line or active coupler; it does not reveal hidden routes | Q / left bumper |
| Pause | Stop local single-player simulation and expose controls, captions, reduced motion, and restart | Escape / menu |

There is no jump, attack, crouch, or free inventory input because none changes a decision in this slice.

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | The six-to-eight-minute route, seed loop, two route choices, crown event, and lift ending fit one runtime target. |
| Still mutable | Character and street names, minor signs, surface wear, small prop placement, and nonfunctional background rooms. |
| Reopen trigger | Removing the carried seed, changing perspective, adding combat, changing the ending, or targeting touch-first mobile play. |
| Invalidated work | Every later lock, because route timing, camera coverage, asset scale, UI, and performance all depend on this promise. |
| Status | `proposed` until reviewed against a real project |

---

## Lock 2 — Playable spine

### State ownership

| State | Proposed authority | Persistence and reset |
| --- | --- | --- |
| `SeedState { carried, socketId, load, integrity }` | One gameplay component, never the mesh, sound, or UI | Reset sets `carried=true`, `socketId=null`, `load=28`, `integrity=intact` |
| `CouplerState[id] { available, engaged }` | Station interaction system validates and commits | All return to their route-defined initial state; crown latch clears |
| `RouteState { bridge, irisDoor, crownLift }` | Route controller reads committed coupler events | Restores blocked/open states in one reset transaction |
| `TideField { zoneIntensity, flowPhase }` | Tide simulation owns exposure values | Deterministic seed `71104`; visual particles subscribe |
| `SliceState { active, success, failure, resetting }` | Slice coordinator | Cancels pending interaction, audio, particle, camera, and door callbacks before re-entry |

### Interaction and pressure rules

- Nera may brace only within 1.4 m, inside a 55° facing cone, grounded, carrying the intact seed, and targeting an available coupler.
- Brace progress lasts 1.25 seconds. Movement, loss of reach, failure, pause-to-restart, or an invalid authority response cancels it without changing coupler or route state.
- Commit atomically sets `seed.socketId`, clears `carried`, sets the coupler engaged, vents load to the coupler’s floor, and publishes one route event.
- Release takes 0.55 seconds and reverses only couplers declared removable. The crown coupler becomes non-removable after the signature commit.
- Tide load increases by the zone’s rate while the seed is carried: dry berth `0/s`, service stair `2/s`, west gallery `5/s`, exposed shortcut `9/s`, crown approach `6/s`.
- A coupler vents load at `20/s` to its declared floor. The HUD shows numerical load, a four-step crack icon, and a seed pulse; warning never relies on color or audio alone.
- At load 85, a two-second critical warning begins. At 100, `integrity=fractured`, control returns after the failure pose, and restart becomes available. The game does not secretly reduce load to protect the player.

### Route

| Segment | Required state/action | Decision | Exit |
| --- | --- | --- | --- |
| `tram_turnstile` | Gain control with seed load 28 | Learn ordinary carry speed and focus glance | Brace at `coupler_west` |
| `maintenance_bridge` | West coupler engaged, bridge open | Cross, release seed, and retrieve it | Enter pump gallery with load 8–12 |
| `pump_gallery_split` | Carry seed through the junction | 24 m shortcut at 9 load/s or 39 m stair at 2 load/s | Reach `coupler_iris` |
| `iris_machine` | Brace seed and vent to floor 12 | Wait long enough to create safety margin or depart early | Iris door opens; seed can be released |
| `rotor_walk` | Carry through two moving but deterministic vane gaps | Sprint through one gap or take two slower safe cycles | Reach crown approach |
| `crown_chamber` | Brace at non-removable `coupler_crown` | Commit only after choosing to finish exploration | Trigger crown release and lift |
| `crown_lift` | Retrieve stabilized seed after event and occupy lift | Lock seed into cradle | Stable success boundary |

### Success, failure, interruption, and reset

| Path | Proposed result |
| --- | --- |
| Success | Crown event commits once, lift becomes available, seed-cradle commit ends input, and final frame remains stable until restart or exit. |
| Failure | Seed fracture stops new interaction requests, freezes load, plays one state-driven response, and exposes restart after 1.1 seconds. No real save data is deleted. |
| Interrupted brace | Progress resets to zero; seed and coupler remain in their pre-interaction state. |
| Restart | Enter `resetting`; cancel outstanding timers, tweens, particles, queued audio, camera impulses, and route callbacks; restore all owners; place player at tram marker; wait for route/nav readiness; then enter `active`. |
| Two consecutive restarts | Must produce the same seed load, tide seed, route geometry, UI, and camera without duplicate events. |

### Proxy contract

| Proxy | Required final-compatible fields | Replacement requirement |
| --- | --- | --- |
| Seed capsule | 0.42 m long, carry socket at sternum height, centered pivot, 0.18 m interaction envelope | Final glass silhouette must expose four crack stages at gameplay distance. |
| Coupler | 1.05 m work height, forward vector, seed socket, reach collider, engaged state | Final brass assembly needs visible jaws and an authored seed contact point. |
| Station kit | 3.2 m floors, 1.1 m rails, 1.05 m doors, 0.18 m curb | Final modular kit retains dimensions and collision seams. |
| Tide field | Box volumes with numeric intensity | Final water must read above the player without changing authority or zone boundaries. |

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | A proxy build completes both gallery routes, triggers failure, succeeds, and restarts twice without stale state. |
| Still mutable | Acceleration, camera lag, brace duration, and load rates within measured bands that preserve both route choices. |
| Reopen trigger | Input, route graph, seed transaction, tide ownership, collision, outcome, or reset ordering changes. |
| Invalidated work | Target staging, asset dimensions, journey timing, load balance, captures, and behavioral proof. |
| Status | `proposed; requires three real proxy runs` |

---

## Lock 3 — Frame coverage

### Shared visual grammar

| Axis | Original rule for this example |
| --- | --- |
| Shape | Station architecture uses deep circular ribs interrupted by thin vertical service frames. Nera and the oval seed remain the only soft silhouettes. Dense machinery stays above shoulder height so the walking plane reads. |
| Surface | Old civic expense appears as pale salt-glazed stone, oxidized brass joints, dark rubber seals, thick hand-cast glass, and numbered enamel plates. Wear follows hands, tide seams, and maintenance access rather than random edge noise. |
| Light | Cold upward water scatter supplies broad moving fill. Warm inspection lamps mark safe dry bays. The seed is a pale internal source whose crack lines intensify with load. Exposure protects Nera and interactable brass before ceiling sparkle. |
| Color | Navigation uses warm dry light; interaction uses restrained ivory; danger uses shape, rate, and a narrow magenta fracture band; decorative cyan never marks a valid action. |
| Motion | Droplets and hanging scraps travel upward at different speeds. Massive crown vanes move slowly; seed pulses accelerate with load; brace motion has a clear contact and lock. Reduced-motion mode replaces camera impulse and limits particle velocity while preserving state timing. |
| Lens/camera | 58° vertical FOV, 3.2 m boom, 1.55 m focus height, 0.18 s follow lag, shoulder swap only at two authored occlusion volumes, camera shake capped at 0.35° outside reduced-motion mode. |
| Interface | Condensed civic lettering, generous numeric spacing, seed load close to the character rather than a distant corner, captions with source direction and non-audio event labels. |
| Sound | Low station structure, upward water hiss, seed resonance, brass lock, fracture warning, crown movement, and deliberate silence inside the lift form separate layers. |

### Five target states

| State ID | Reachable setup | Camera and resolution | Composition and must-read content | Motion/UI | Expensive risks |
| --- | --- | --- | --- | --- | --- |
| `arrival_turnstile` | Clean start; walk six steps from tram | Follow camera, 58°, 16:9, 1920×1080 | Brass turnstile foreground; Nera and seed center-left; lit west coupler midground; inverted water and crown ribs above; dry route reads warm | Upward droplets, seed pulse, load 28, move/focus prompt | Water reflection and glass refraction overlap |
| `west_brace` | Engage `coupler_west` | Camera eases 12° toward contact without leaving gameplay anchor | Nera’s hands, seed jaw, and bridge response share one diagonal; bridge destination remains visible | 1.25 s brace ring, contact animation, brass lock caption | Character/seed contact, local light response, bridge motion |
| `gallery_pressure` | Take exposed shortcut with load 72–88 | Normal follow; no cinematic cut | Low rail foreground; Nera silhouette against pale ceiling tide; dry stair visible through side grating as the forgone choice | Four-step crack icon, numeric load, urgent pulse, reduced-motion equivalent | Dense particles, wet surfaces, camera readability in motion |
| `crown_release` | Commit `coupler_crown` through real route | Gameplay camera widens to 64° over 1.4 s, then returns to 58° | Seed/coupler foreground; Nera action plane; four vanes midground; converging upward column centered; lift descends behind column but remains readable | Before/during/after state, captions for crown and lift, capped camera response | Water column, four moving vanes, reflection, volumetric light, particles, audio peak |
| `lift_aftermath` | Lock stabilized seed in cradle | 58°, boom shortens to 2.6 m in lift volume | Quiet seed and Nera foreground; crown column framed through closing doors; route consequence visible | HUD load fades only after cradle commit; final prompt shows restart/exit | Transparent doors and retained distant water state |

All five are runtime camera states. A generated reference may refine their surfaces and lighting, but may not introduce an impossible lens, hidden room, absent crowd, or nonfunctional water geometry.

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | Every promise beat maps to at least one reachable state and the eight grammar axes agree across all five. |
| Still mutable | Small tool placement, salt-stain variants, minor background pipes, and decal rotation. |
| Reopen trigger | FOV, camera anchor, signature event, time of day, major composition, UI hierarchy, or route-state coverage changes. |
| Invalidated work | Affected targets, asset briefs, comparisons, lighting reviews, captures, and stress-state assumptions. |
| Status | `proposed; runtime feasibility unverified` |

---

## Lock 4 — Runtime budget

The following is an illustrative target, not an observed benchmark.

| Field | Proposed value |
| --- | --- |
| Reference machine | Ryzen 7 7700, GeForce RTX 4070 12 GB, 32 GB RAM, Fedora 42, native desktop build |
| Resolution / UI | 1920×1080 world and UI; 100% render scale; high tier |
| Frame target | Median frame interval at or below 16.7 ms and 95th percentile at or below 20.0 ms over each 60 s capture |
| Loading target | Clean launch to controllable arrival at or below 5.0 s from local SSD; route transitions contain no blocking load longer than 100 ms |
| Memory envelope | 3.0 GB total process resident memory during the slice on the reference machine |
| Shipped slice envelope | 450 MB compressed, excluding engine shared files already in the project |
| Visible scene envelope | 2.5 million submitted triangles before engine culling, 900 draw calls, 160 visible material instances at the crown stress state |
| Stress state | `crown_release`, with water column, four vanes, maximum allowed droplets, lift, HUD, captions, reflection, and Nera moving during the return to normal FOV |
| Representative state | Full six-to-eight-minute route using the exposed shortcut once and restarting after one induced fracture |

Low tier may reduce water reflection resolution, droplet cap, distant pipe detail, and shadow cascade distance. It may not remove the water column, seed cracks, route lighting, character silhouette, captions, or UI resolution.

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | A baseline project can expose the required counters and the target experience is feasible on the declared environment. |
| Still mutable | Low/high thresholds inside the must-read contract. |
| Reopen trigger | Platform, renderer, device class, resolution, camera coverage, or crown-event cost model changes. |
| Invalidated work | Mesh/texture/effect budgets, LODs, quality tiers, stress captures, and all performance claims. |
| Status | `proposed; no benchmark exists` |

---

## Lock 5 — Representation plan

| ID / family | Representation and reason | Proposed runtime envelope | Origin and rights | Fallback and validation |
| --- | --- | --- | --- | --- |
| `nnera` courier | Original authored DCC character because coat, carry harness, hands, and brace pose define the action | LOD0 62k triangles, LOD1 31k, LOD2 12k; three material batches; 2k body and 1k accessory sets | New project-owned source; generator use, if any, recorded only as reference | Refined rigged proxy if DCC absent; validate carry contact, silhouette, cloth limits, collision, and all target angles in runtime |
| `seed_mk1` | Original authored glass-and-brass prop with four crack states | 11k triangles; two materials; one 1k texture set plus authored crack mask | New project-owned source | Lathed runtime mesh with authored textures; validate contact, transparency ordering, load states, and cradle/socket pivots |
| `station_kit_a` | Twelve-piece modular authored kit with instances and three decal families | Average 8k triangles per unique module; shared 2k trims; at most five material families | New project-owned source | Runtime blockout with trim materials; validate seams, collision, scale, repetition, and route landmarks |
| `crown_machine` | Authored hero architecture for four readable vanes and lift cradle | 180k LOD0 across instanced vane sections; six material batches; authored pivots | New project-owned source | Segmented runtime massing; validate vane clearances, shadow, contact, and final-event framing |
| `tide_field` | Procedural state-driven surface plus particles because water continuity and flow state must agree through the route | One shared surface system, two reflection zones, 1,800 visible droplets high / 700 low | Original runtime code and project-authored textures | Simplified translucent surface with upward sprite flow; validate zone/state agreement, reduced motion, cleanup, and stress cost |
| `station_surfaces` | Tiled material families, trim sheets, authored labels, decals, vertex dirt masks | Four 2k shared sets, two 1k detail sets, label atlas; no generated text | New project-owned source | Lower-resolution originals; validate scale, channels, compression, seams, and every locked light state |
| `seed_hud` | Runtime UI bound to authoritative `SeedState` | Vector/icon assets plus runtime number and crack stages; resolution-independent | Original project UI | Plain accessible meter; validate exact state, captions, focus, controller prompts, reduced motion, and 16:10/21:9 safe areas |
| `station_audio` | Original layered audio triggered from state events | Six ambience loops, twelve interaction/impact one-shots, crown sequence stems | Original recordings/synthesis or explicitly authorized generator; ledger records each | Labeled temporary tones; validate hierarchy, captions, no stale loops after reset |

### DCC example: `seed_mk1`

- World length: 0.42 m; local forward points toward the socket tip; origin lies on the brace contact plane.
- Attachment points: `carry_root`, `hand_l`, `hand_r`, `socket_tip`, `cradle_lock`, and `pulse_origin`.
- Four crack masks represent load bands `0–49`, `50–69`, `70–84`, and `85–99`; fracture at 100 is a state transition, not a fifth merely cosmetic mask.
- Editable source would live at `art/source/props/seed_mk1.blend`; runtime export would follow the receiving project’s established asset directory and import settings.
- Acceptance requires in-runtime pivot, scale, hand contact, socket contact, transparency order, crack readability at 1080p, and stress-state material cost. A Blender viewport image is insufficient.

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | Every required feature in all five states maps to an owner, source, representation, runtime form, fallback, rights status, and cost envelope. |
| Still mutable | Variants within the same family and budget, such as decal rotation or one additional pipe length. |
| Reopen trigger | Character/seed/crown silhouette, tide system, material architecture, source/license, or runtime form changes. |
| Invalidated work | Corresponding source/export, import checks, captures, rights audit, and performance traces. |
| Status | `proposed; no external tool or asset is authorized by this example` |

---

## Lock 6 — Integrated presentation

### Causal pass plan

| Pass | Highest-value acceptance for this slice | Cross-state check |
| --- | --- | --- |
| Composition and camera | West coupler, gallery choice, crown, and lift remain legible through real movement with no wall clipping or uncontrolled FOV change. | Recapture all five states and traverse both gallery routes. |
| Scale and silhouette | Nera, seed, couplers, crown vanes, doors, rails, and station ribs remain recognizable at their actual viewing distances. | Review `arrival_turnstile`, `gallery_pressure`, and `crown_release`. |
| Surface response | Salt stone, oxidized brass, rubber, enamel, and glass respond differently under the same light; labels stay authored and readable. | Inspect arrival warm bay, pressure cyan fill, and crown peak. |
| Light and air | Warm dry bays guide the route; upward water reads as the ambient source; exposure preserves the seed and action during the crown peak. | Compare all five with fixed exposure rules. |
| Motion and response | Brace contact, load cracks, bridge, droplets, vanes, water column, lift, camera, and audio begin from authoritative events and clean up on restart. | Record brace, fracture/restart, and before/during/after crown video. |
| UI, sound, loading, transitions | Input prompts, captions, seed status, pause, restart, lift transition, and audio hierarchy match the same civic visual language. | Run keyboard/mouse, controller, captions, and reduced-motion procedures. |

### Example discrepancy entries

These are anticipated diagnostic examples, not observed defects.

| State | Observable mismatch | Likely cause | Smallest corrective pass | Required rerun |
| --- | --- | --- | --- | --- |
| `gallery_pressure` | Seed crack silhouette disappears against the brightest ceiling reflection. | Color/exposure hierarchy rather than missing geometry | Clamp local reflection contribution behind the seed and retune crack value without changing load truth. | Pressure capture, both routes, low/high quality, performance trace |
| `west_brace` | Nera’s right hand crosses the coupler jaw during the last 0.2 s. | Contact animation and socket alignment | Correct hand target and final pose only; do not move authoritative reach volume. | Valid/invalid brace, release, restart, action capture |
| `crown_release` | Low tier removes so many droplets that upward flow direction becomes ambiguous. | Quality-tier particle threshold | Preserve a directional core population and reduce only decorative peripheral droplets. | Low-tier signature capture, reduced motion, stress trace |

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | The real route reaches all five states, must-read features pass, spine behavior remains intact, and measured budgets pass. |
| Still mutable | Final values that stay within the accepted capture and trace range. |
| Reopen trigger | Any route regression, state miss, artifact, stale effect, unreadable must-read feature, or budget breach. |
| Invalidated work | Evidence tied to the earliest responsible lock and every downstream score or claim. |
| Status | `not started; depends on an executable project` |

---

## Lock 7 — Release proof

### Planned verification matrix

| Claim | Exact planned procedure | Required artifact | Current status |
| --- | --- | --- | --- |
| Clean start | Launch a fresh non-editor process with documented command and no prior slice state. | Command output, first controllable frame, build ID | `unverified` |
| Player control | From arrival, use move, look, sprint, focus, brace, pause, keyboard/mouse, and controller. | Input log or manual record | `unverified` |
| Core verb | Brace `coupler_west`; attempt from 1.6 m, outside facing cone, without seed, and while moving. | State trace and `west_brace` capture | `unverified` |
| Pressure decision | Reach gallery through real route; complete once by shortcut and once by service stair without changing debug state. | Two journey traces, load curves, pressure capture | `unverified` |
| Causal signature | Enter crown with intact seed; record state, visuals, audio, route, and lift before, during, and after commit. | Event trace plus three captures/video | `unverified` |
| Failure and reset | Force load to 100 through ordinary exposure, restart twice, then complete successfully. | Three journey records showing no duplicate or stale state | `unverified` |
| Camera | Sweep arrival edges, bridge rail, stair corner, rotor gaps, crown event, and lift volume. | Camera collision/occlusion record and captures | `unverified` |
| State reachability | Reproduce all five state IDs from clean arrival using documented input. | Fresh capture matrix | `unverified` |
| Asset rights | Audit each shipping row and its source files. | Completed asset ledger | `unverified` |
| Visual grammar | Review all eight axes across the five fresh frames and temporal evidence. | Review table and closed discrepancy ledger | `unverified` |
| Performance | Run 60 s representative and crown stress traces on the declared reference machine at high and low tiers. | Frame-interval percentiles, counters, loading, memory | `unverified` |
| Degraded readability | Run low quality, 16:10 and 21:9, controller, captions, and reduced motion. | Settings matrix and captures | `unverified` |

### Planned capture paths

```text
game-production/glass-tide-station/evidence/<build-id>/
├── arrival_turnstile.png
├── west_brace.png
├── gallery_pressure.png
├── crown_release-before.png
├── crown_release-during.png
├── crown_release-after.png
├── lift_aftermath.png
├── crown-release-motion.webm
├── representative-route-trace.json
└── crown-stress-trace.json
```

These paths are proposals. Their presence would not by itself prove the files contain valid current evidence; `verification.md` must bind each artifact to build, environment, state, settings, procedure, result, limits, and invalidation trigger.

### Release heuristic

No score is assigned before evidence. A completed implementation would disclose all eight axes:

| Axis | Central to this promise? | Evidence needed for a `2` |
| --- | --- | --- |
| Playable identity | Yes | Seed carrying, venting, route pressure, crown consequence, and ending read through play without relying on this document. |
| Composition | Yes | All five states preserve route, landmark, depth, scale, and action framing. |
| Silhouette | Yes | Nera, seed, couplers, and crown remain recognizable at gameplay distance. |
| Surface and light | Yes | Five named materials and motivated tide/dry-bay light remain distinct across states. |
| Motion and response | Yes | Brace, load, fracture, crown, lift, water, audio, and cleanup follow authoritative causes. |
| Interface and transitions | No, but required | UI, prompts, pause, captions, loading, restart, and ending share the station language and remain accurate. |
| Runtime stability | Yes | Representative and stress procedures meet the declared target in the recorded environment. |
| Originality and rights | Yes | Every shipped asset has original or authorized provenance and the project is not a thin imitation. |

Release as high fidelity would require no `0`, every central row at `2`, and honest disclosure of any remaining `1`. This example remains unscored because it has no runtime evidence.

### Lock control

| Field | Example decision |
| --- | --- |
| Closed when | A clean build completes, fails, restarts twice, reproduces every final capture, passes the stated runtime procedure, and links each claim to current evidence. |
| Still mutable | Additional evidence and cosmetic fixes whose affected proof is rerun. |
| Reopen trigger | Any behavior, asset, presentation, settings, or code change after the relevant capture or trace. |
| Invalidated work | Named tests, captures, videos, traces, ledger reviews, score rows, and handoff claims. |
| Status | `open; all procedures planned` |

## Example handoff, if implemented

A truthful handoff would name the exact run command and entry scene, keyboard/mouse and controller mappings, actual measured duration, files and original assets created, external API or MCP use and cost, final capture matrix, functional checks, performance environment and percentile results, eight-axis score, remaining proxies and defects, unsupported devices, and every unverified claim.

The next three changes would be ranked by player-visible value. For this fictional plan, likely candidates after a verified proxy route would be:

1. replace the seed and coupler proxies because their contact and crack silhouette express the core verb in four target states;
2. establish the tide surface and upward motion grammar because it defines place, pressure, and the signature event;
3. author the crown vane silhouette and validate its stress-state cost because it carries the ending.

That order is an example judgment tied to this scenario. Another project should rank its own work from its player promise, evidence gaps, and actual bottleneck.
