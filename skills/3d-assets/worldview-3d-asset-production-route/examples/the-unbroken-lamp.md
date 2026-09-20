# The Unbroken Lamp

An original worked example of route selection. It is fictional, and its names, setting, measurements, and decisions are not defaults for another project.

## Brief

The first-person horror game *Below the Waking Room* takes place in a flooded municipal archive. The player carries a hand lamp that is visible at arm’s length, can be raised to inspect labels, and is used to reveal ink that ordinary light cannot see. Sixteen lamps appear in a maintenance store as background props; only the player lamp is animated and interaction-critical.

The art direction calls for painted steel, chipped enamel, a cloth-wrapped cable, warm tungsten light, and one distinctive crescent dent near the handle. The browser build targets a mid-range laptop. The team has a local Blender install. A Tripo account is configured but the brief does not authorize spending credits until a test proves that a static prop will save time.

The same chapter also contains a recurring archive custodian. The custodian is visible in a corridor, turns toward the player, reaches for a door, and runs during one alarm. A generated character preview may help establish clothing and silhouette, but it is not allowed to become the runtime character without retopology, a deliberate skeleton, weights, and animation checks.

## Decomposition

| Asset | Role | Camera/interaction | Risk |
| --- | --- | --- | --- |
| `lamp_player_a` | hero + interactive | hand-held, 0.35–1.2 m; switch, battery, raised inspection pose | pivot, grip, emissive lens, animation, collision |
| `lamp_store_static` | repeatable background | 2–8 m; never picked up | silhouette, batch consistency, loading |
| `lamp_light_cone` | runtime effect | follows player lamp | performance, shadow, reset |
| `lamp_broken_variant` | state variant | close-up after water event | continuity, material state, socket |
| `archive_custodian` | deforming character | 1–6 m; turn, reach, run, damage reaction | topology, bind pose, weights, feet, face, animation |

The sixteenth background lamp is not a separate sculpt. It is an instance of the static family with deterministic scratches and slight rotation variation.

## Route decision

| Candidate | Result | Reason |
| --- | --- | --- |
| Hand-authored Blender | selected for `lamp_player_a` and the broken variant | The player reads the dent and handle at close range; the switch, grip pivot, cable socket, collision, and light alignment must be exact. |
| Procedural | selected for `lamp_store_static` variation | The family repeats and needs controlled rotation, color, and scratch variation. |
| Image-to-3D | test only, then rejected for player lamp | The first candidate was visually attractive, but the handle underside had an open shell, scale was unknown, and the switch area had no reliable movable separation. It remains a reference, not a runtime asset. |
| Hybrid | selected for `lamp_broken_variant` | The authored player mesh is retained; a generated rust texture was used as a reference, then repainted and baked into the project’s material set. |

For `archive_custodian`, image-to-3D was accepted only as a clothing/silhouette blockout. The face, hands, joint loops, shoe contact, separate coat panels, skeleton, weights, and representative animations were rebuilt or corrected in Blender. The generated mesh itself remains `blockout/reference-only`; a rendered preview cannot close the deformation gate.

The Tripo test was authorized for one static candidate only. It recorded the provider/model/version, task ID, input reference class, credit use, output path, and current terms. No API key entered the project. Since the result was not used in the shipped mesh, the contract marks it `reference-only`.

## Contract excerpt

| Field | Locked value |
| --- | --- |
| Units | metres; lamp length 0.31 m |
| Pivot | grip centre; forward axis follows the player hand socket |
| Player lamp collision | small convex body; lens is a trigger for inspection, not a solid collider |
| Sockets | `hand_grip`, `light_origin`, `cable_anchor`, `battery_slot` |
| Animation | raise, lower, inspect, battery removal; no procedural bend in the cable beyond a constrained curve |
| Materials | painted steel, chipped enamel, cloth, glass lens, emissive bulb; five runtime slots maximum |
| LOD | hero at 0–3 m, simplified at 3–10 m, billboard/hidden beyond scene policy |
| Runtime fallback | authored low-poly body with a simple emissive cone and a labelled temporary cable |
| Acceptance camera | 70° first-person FOV, lamp occupies 8–22% of frame during inspection |

### Character contract excerpt

| Field | Locked value |
| --- | --- |
| Character scale | 1.78 m; feet grounded at the archive floor datum |
| Bind pose | neutral A-pose; pelvis at origin; forward axis faces the corridor |
| Required rig | pelvis, spine, neck, head, upper/lower arms, hands, upper/lower legs, feet; coat panels simulated only after base rig passes |
| Required tests | idle, turn 90°, reach door handle, six-step run, stop, damage recoil, camera-distance silhouette |
| Deformation gate | elbows, shoulders, hips, knees, wrists, fingers, mouth, and coat hem show no unacceptable collapse or stretching |
| Runtime fallback | non-deforming mannequin with authored coat silhouette and a clear `blockout` label; never silently shipped as the final character |

## Representative test

Before producing the store batch, the team built one authored lamp and one procedural variation. The following tests closed the route:

1. The crescent dent remains on the player’s left side when the lamp is raised, lowered, and rotated.
2. The grip socket aligns with the hand without visible float or wrist penetration.
3. The switch is a separate mesh and receives the intended input once; a second press during the animation does not duplicate the event.
4. The light origin follows the lens, not the mesh origin, and the shadow direction remains plausible.
5. The convex collision does not snag the archive desk or block the player’s view.
6. The authored mesh imports with expected material slots and no texture path warnings in the browser build.
7. Sixteen procedural store instances use one mesh/material set and remain within the scene’s loading and draw-call budget.
8. The broken variant reuses the same sockets, footprint, and crescent dent; only the recorded damage state changes.
9. The custodian’s generated blockout is never marked final; after retopology and binding, the neutral pose, turn, reach, run, stop, recoil, and close-camera checks pass in the runtime.
10. The custodian’s feet stay grounded, hands reach the door handle, coat panels do not explode, and a failed rig automatically falls back to the labelled mannequin.

## Evidence record

| Claim | Evidence | Status |
| --- | --- | --- |
| Player lamp scale and pivot | Blender scene measurement and clean runtime import | observed |
| Switch interaction | input journey: idle → press → animation → state | observed |
| Store batch performance | browser capture with 16 instances in maintenance scene | observed for test laptop |
| Generated candidate geometry | wireframe inspection showing open underside and detached fragment | observed; rejected |
| Commercial use of generated candidate | not needed because it is not shipped; provider terms recorded for provenance | reference-only |
| Cable deformation | constrained curve test in raise/lower/inspect states | observed; limited to authored states |
| Generated custodian preview | clothing/silhouette reference only; no final rig claim | blockout/reference-only |
| Custodian deformation | authored/repaired mesh and runtime pose journey | observed after retopology and binding |

## Handoff

`lamp_player_a.glb` and `lamp_broken_variant.glb` are marked `ship-ready` for the tested browser build. The store family is `ship-ready` for the recorded scene budget. The Tripo output is stored outside the runtime package as `reference-only`; it is not represented as an authored or commercial source. The next safe step is to add a second material variant and rerun the representative scene profile before expanding the batch.
