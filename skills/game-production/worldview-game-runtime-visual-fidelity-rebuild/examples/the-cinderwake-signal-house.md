# Completed Fictional Example — The Cinderwake Signal House

This is an original fictional example of a completed fidelity-rebuild record. No project named here exists in this repository, and no build, capture, profiler run, or external generation was performed for this example. Paths, observations, asset records, and measurements below are illustrative facts inside the fictional scenario; they are not claims about tested software and must not be reused as tuning defaults.

## Source boundary

The scenario, place, mechanics, state IDs, asset names, visual direction, values, and evidence names were written for this repository. It does not depend on a named game, third-party asset, external Skill, supplied codebase, or supplied post. The fictional team owns its preexisting source and the new sources described below.

## Request and recovered project

The fictional project is a four-minute 3D game in which a keeper crosses a sea platform, aligns three induction coils, withstands an electrical overload, and restores a signal lantern. The entire route works, but the baseline uses gray boxes, identical glossy materials, a white ambient light, stock progress bars, and three unrelated free sound placeholders.

| Field | Completed example decision |
| --- | --- |
| Repository | Fictional `/work/cinderwake-signal-house` |
| Baseline revision | Fictional revision `cw-baseline-17`; clean worktree |
| Entry point | `SignalHouse.scene`; fictional command `signalhouse --play SignalHouse.scene` |
| Target | Windows desktop, 1920×1080, keyboard/controller, project quality tier `Harbor` |
| Protected result | Arrival → three correct coil phases → overload survival → beacon restored → exit skiff available |
| Visual direction | Salt-dark iron frames, pale ceramic insulators, wet slate decks, and contained amber current; broad forms remain readable through rain |
| Evidence root | Fictional `evidence/fidelity-cinderwake/` |
| Out of scope | New rooms, new hazards, balance, altered coil solution, route changes, save migration, online play, marketing captures |

The baseline observation “all interactable equipment and the floor share the same gray value and gloss response” is treated as a fact in the fictional record. “The station feels like a construction kit” is a judgment. “Separate equipment through ceramic silhouettes and controlled amber current without changing interaction volumes” is the proposal tested below.

## Completed layer locks

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| **Protected Behavior Lock** | Fictional `protected-behavior.md`: input actions, 4.0 m/s movement, interaction IDs and volumes, north-catwalk collision, coil order `west → crown → east`, phase values `2/5/3`, 1.25 s phase step, 22 s overload window, arc schedule seed `71`, local AI-less hazard authority, save schema `3`, camera aim mapping, captions, high-contrast prompts, reduced flash and reduced motion | Baseline state trace `behavior/baseline-route-01.json`, tests `interaction-contract.xml`, and one keyboard plus one controller journey | Each protected field has an owner and exact/toleranced check; both baseline journeys complete with state checksum `9d-71-253` | Meshes, materials, lights, nonauthoritative animation, UI layout, audio, and camera follow damping within `0.18–0.24 s` | Any phase value, route collider, interaction ID/volume, hazard schedule, timing, aim mapping, save field, or accessibility effect changes | All four state series, every calibration result, frame-time runs, and regression traces |
| **Baseline State Lock** | Fictional `baseline-and-states.md`: `dock_arrival`, `coil_alignment`, `storm_overload`, `beacon_recovered`; fixed seed/save, camera anchor, 1080p `Harbor` tier, UI scale 100%, English, rain phase marker, ready flags, and reset commands | Baseline still/video/state trace under `states/<id>/baseline/`, captured from `cw-baseline-17` | All four states reproduce twice with matching protected checksum and their declared ready condition | Diagnostic wireframe, material-ID, and luminance views that do not change simulation | Seed `71`, save `fixture-cw3`, viewport, quality, locale, UI scale, camera contract, rain phase, or ready flag changes | Comparisons and performance results for every affected state |
| **Causal Fidelity Lock** | Fictional `fidelity-diagnosis.md`: four priorities—equipment silhouette, material-family response, motivated signal lighting, and cause-aligned motion/UI/audio; each has one bounded intervention | Annotated baseline captures `diagnosis/D01–D09` and state traces | Each priority cites a visible observation in at least two states, names protected fields, and states what would disprove it | Ordering of two equal-impact surface refinements | A comparison shows that a supposed cause does not improve recognition, or a proposal moves protected gameplay data | The disproved intervention, its asset work, and all comparisons derived from it |
| **Production and Rights Lock** | Fictional `production-and-rights-ledger.md`: local Blender route for the triple-yoke relay and ceramic coil shells; project procedural route for deck kit/rain; hand-authored project textures/UI; project synthesis for audio; no image API and no Blender MCP | Team ownership record `rights/project-origin.md`, local-tool authorization `tools/local-dcc.md`, export checks, and ledger rows `AR-01–AR-08` | Every planned input/output has project ownership, editable and runtime paths, allowed redistribution, acceptance check, and fallback | Variants made from the same recorded sources within the material and runtime envelope | A source, term, DCC route, signature silhouette, or runtime representation changes | Affected outputs are quarantined; their captures, profiler runs, and shipping statement are invalid |
| **Calibration Lock** | Fictional `comparison-index.md`: accepted camera restraint, four material families, two motivated light roles, event-bound current/rain response, station UI grammar, and audio priority rules across all states | Paired media `comparisons/<state>/<pass>/`, protected checks, and pass logs `CP-01–CP-06` | Every accepted rule improves its diagnosed condition across all affected states, keeps required cues legible, passes protected checks, and remains inside the proposed frame envelope | Listed ranges for damping, wetness variation, emitter intensity, decorative rain density, and ambience level | One accepted rule hides an action, breaks another state, crosses a protected field, or pushes the measured stress run outside its envelope | Affected comparisons plus final performance and regression evidence |
| **Runtime Proof Lock** | Fictional `performance-evidence.md` and `regression-and-handoff.md` tied to revision `cw-fidelity-24` and asset manifest `am-24-6` | Clean build, four final state series, representative/stress traces, keyboard/controller routes, disposable save round trip, accessibility variants, and restart-twice run | All supported journeys pass, rights rows are cleared, protected checksum stays `9d-71-253`, and representative/stress frame evidence is recorded on the declared machine | New notes and captures that do not change source, assets, environment, or settings | Any final source, asset, tier, device, setting, or platform changes | The affected captures, measurements, journey results, and release claims |

If the crown coil moves from the lantern chamber to the west catwalk, reopen the Protected Behavior Lock and Baseline State Lock; discard all four comparison series, checksum `9d-71-253`, frame runs `PF-F-01` and `PF-F-02`, and regression journeys `RJ-02` through `RJ-06` before continuing.

## Tool and authorization decision

| Capability | Fictional decision | Fallback or limit |
| --- | --- | --- |
| Runtime and captures | Local executable and capture harness authorized for the project only | If the runtime stops launching, retain the last good revision and mark every later claim unverified |
| Local Blender | Fictional Blender CLI and checked-in export script authorized for `art/source/relay/` and `art/source/coils/` | Preserve labeled geometric proxies and deliver asset briefs if export validation fails |
| Blender MCP | Not connected and not authorized | Use the authorized local CLI route; do not claim MCP use |
| Image API | Not authorized; no upload or paid generation permitted | Use the project’s owned sketches and the written material/shape grammar |
| Audio | Project-owned synthesis patches and recordings authorized | Keep event hooks and intentional silence if a cue fails review |
| Profiling | Project’s frame recorder and renderer counters authorized | Narrow any unavailable GPU attribution rather than infer it |

No credentials appear in the record. No external service is required.

## Protected behavior matrix

| ID | Protected field | Authority and final check |
| --- | --- | --- |
| `PB-01` | Movement at 4.0 m/s and interaction result IDs | Local simulation; baseline/final action traces match exactly |
| `PB-02` | Catwalk/deck collision and route topology | Physics world; contact pair and route checkpoint sets match exactly |
| `PB-03` | Coil order `west → crown → east`, values `2/5/3`, 1.25 s step | Coil system; valid and invalid input traces match exactly |
| `PB-04` | Seed `71`, 22 s overload, arc schedule and damage | Hazard system; event IDs/timestamps match within existing 1 ms trace precision |
| `PB-05` | Camera aim mapping and required target visibility | Camera/input systems; mapping exact, framing remains inside recorded safe region |
| `PB-06` | Save schema `3`, coil state, damage, objective, settings | Persistence owner; disposable save bytes decode to matching fields before and after |
| `PB-07` | Captions, high-contrast prompts, reduced flash, reduced motion | Settings system; every toggle still changes the same owned channels |

The mesh follows relay state; it never determines phase validity, damage, or objective completion. New animation markers produce presentation events only. Collision remains on the original hidden proxies. The project has no multiplayer, so network authority is marked not present rather than “passed.”

## Four locked runtime states

| State ID | Reproduction and authoritative fields | Camera/capture condition | Baseline symptom |
| --- | --- | --- | --- |
| `dock_arrival` | Load disposable fixture `fixture-cw3`, enter from skiff, stop after control prompt; objective `reach_relay`, health `4`, coils `0/0/0` | Arrival camera settles inside ±0.5°; rain phase marker `R-12`; HUD ready | Signal house, deck, and relay read as equal gray blocks; route has no landmark |
| `coil_alignment` | At relay, set west coil from `1` to correct value `2`; event `coil_step/west/2` resolved | Interaction camera anchored to relay socket; prompt fully visible | Three identical cylinders and stock progress bar fail to show coil identity or accepted input |
| `storm_overload` | All coils `2/5/3`; start seed `71`; capture 11.0 s into the 22 s window with arc set `A4/A7`, health `3` | Camera in north safety bay; both arcs and exit route in frame | White particles, white light, and white HUD overlap; effect volume has no causal center |
| `beacon_recovered` | Objective `beacon_restored`; arcs stopped; exit skiff flag true; save dirty flag resolved | Lantern rotation reaches north marker; UI completion state ready | State differs mainly by a green stock bar; environment has no persistent recovery response |

State traces keep the same checksum in baseline and final. The fictional comparison uses 1920×1080, `Harbor` tier, 100% UI scale, English, reduced motion off for the primary series, then repeats required accessibility variants as regressions.

## Causal diagnosis and bounded tests

| ID | Observed fact | Hypothesis and bounded test | Result inside this fictional record |
| --- | --- | --- | --- |
| `CF-01` | Relay and building share rectangular outlines in all four states | A triple-yoke outer silhouette and tall ceramic gaps will create a station landmark; swap render mesh only and keep interaction/collision proxies | Accepted: relay recognized in `dock_arrival` and each coil remains distinct in `coil_alignment`; protected traces unchanged |
| `CF-02` | Floor, frame, coil, and housing share one gloss response | Four controlled material families will establish scale and function; test slate, salt-dark iron, ceramic, and lacquered copper under existing camera states | Accepted after reducing wet iron highlights that first hid the east coil |
| `CF-03` | Uniform white ambient light gives no source or state transition | A cool storm hemisphere plus local amber current/lantern sources will explain hierarchy; do not change target visibility bounds | Accepted with high-contrast prompt outline retained; first darker variant rejected because it obscured `A7` |
| `CF-04` | Particles, progress bar, and sound start independently from the same input callback | Driving nonauthoritative response from resolved coil/hazard/objective events will align cause and effect | Accepted: invalid input stays restrained, valid phase has onset/contact/result, and interruption cleanup passes |

The rejected shortcut was a heavy teal grade with stronger bloom. It made the hero view dramatic but further merged the white arcs, prompt, and wet deck in `storm_overload`, so it did not test any locked cause and was removed.

## Production routes and rights

| Family | Route and runtime acceptance | Fallback |
| --- | --- | --- |
| Triple-yoke relay and coil shells | Original project-owned Blender sources; meters, +Y forward, ground origin, separate yokes, coil sockets bound to existing IDs; export reimported with collision disabled and original proxies visible in debug | Existing proxy meshes with written production brief |
| Deck and station shell | Existing project geometry dressed through a project-native modular trim/decal system; route meshes and collisions untouched | Existing gray geometry with accepted materials only |
| Rain and electrical response | Existing deterministic rain plus pooled event-driven ribbons/sparks; effect IDs observe resolved arc events, clean on reset, and have reduced-motion/flash variants | Existing minimal particles |
| Materials | Hand-authored scalar masks and procedural maps saved in project sources; no external texture inputs | Flat project-owned colors preserving family separation |
| Interface | Project-authored vector icons, type scale, focus and prompt components; authoritative values read from unchanged state | Existing accessible stock controls |
| Audio | Project-owned synthesized ceramic hum, relay contact, arc warning, and lantern rotation; priority and voice limits declared | Event hook plus intentional silence |

| Asset ID | Origin / terms | Editable source → runtime output | Status |
| --- | --- | --- | --- |
| `AR-01` relay yokes | Fictional team original; project distribution allowed | `art/source/relay/relay-yokes.blend` → `assets/models/relay-yokes.mesh` | Cleared; export log `rights/AR-01.txt` |
| `AR-02` coil shells | Fictional team original; project distribution allowed | `art/source/coils/coil-shells.blend` → `assets/models/coil-shells.mesh` | Cleared |
| `AR-03` four material families | Fictional team procedural/hand-authored; no external inputs | `art/source/materials/` → `assets/materials/station/` | Cleared |
| `AR-04` station icons | Fictional team vector originals | `art/source/ui/station-icons.svg` → `assets/ui/station-icons.atlas` | Cleared |
| `AR-05` fictional baseline placeholder sounds | Mixed unknown free-download origins | baseline files only | Rejected and absent from final manifest |
| `AR-06` final signal audio | Fictional team synthesis patches and recordings | `audio/source/signal-bank/` → `assets/audio/signal-bank.bundle` | Cleared |

## Accepted calibration passes

| Pass | Exact decision | Same-state finding and protected result |
| --- | --- | --- |
| `CP-01` camera and scale | Keep vertical FOV and aim mapping; reduce follow damping from the baseline 0.24 s to 0.21 s, inside the protected range; add no shake | Route and targets remain inside safe regions in all states; reduced-motion path uses baseline damping |
| `CP-02` silhouettes | Add the triple-yoke relay, open ceramic gaps, and a single lantern cage; render components map to existing stable IDs | `dock_arrival` gains a landmark; coil selection and collision traces match |
| `CP-03` materials | Use slate, salt-dark iron, pale ceramic, and lacquered copper with recorded texel scale and mip checks | First wet-iron variant rejected for glare; revised family separates coils in all views |
| `CP-04` light | Cool storm field, amber current sources, and recovered lantern source; fixed exposure per state family, restrained fog | `A4/A7` and the north safety bay remain legible; reduced-flash replaces pulses with steady bounded emission |
| `CP-05` motion/VFX | Event-owned current travel, restrained contact sparks, two rain tempos, persistent post-overload steam; pooled and idempotently cleared | Valid/invalid input differs without timing changes; pause, failure, and two restarts leave zero owned transients |
| `CP-06` UI/audio/edges | Station dial grammar, persistent focus outline, captions for warning/impact direction, prioritized relay/arc/lantern cues, styled loading/failure/restart | Values remain authoritative; keyboard/controller focus, mute persistence, captions, high contrast, and background return pass |

## Same-state comparison result

| State | Baseline/final fictional evidence | Shared conditions | Accepted conclusion |
| --- | --- | --- | --- |
| `dock_arrival` | `comparisons/dock_arrival/baseline.png` and `final.png`; paired trace | Seed, state, camera, viewport, tier, UI, rain ready marker | Relay silhouette becomes the route landmark without moving the route or camera duty |
| `coil_alignment` | `comparisons/coil_alignment/baseline.webm` and `final.webm`; event traces | Same west-coil action and interaction anchor | Coil identity and accepted input are readable; IDs, value, and step time match |
| `storm_overload` | `comparisons/storm_overload/baseline.webm` and `final.webm`; hazard traces | Same 11.0 s state window and `A4/A7` set | Event-owned current and light separate hazard, safe bay, and HUD; damage schedule matches |
| `beacon_recovered` | `comparisons/beacon_recovered/baseline.png` and `final.png`; objective/save traces | Same north rotation marker and ready condition | Lantern, wet surfaces, UI, and audio communicate a persistent recovery state; exit and save fields match |

These fictional comparisons support the stated observations only under the listed desktop conditions. They do not establish another platform or a universally superior style.

## Illustrative runtime evidence

The fictional project target is a median frame interval at or below 16.7 ms, a 95th-percentile interval at or below 20.0 ms, and no more than two frames over 33.3 ms in a 120 s capture. Those are project-specific acceptance decisions, not defaults supplied by this Skill.

All four fictional runs use Windows 11, Ryzen 5 5600, Radeon RX 6600, the same driver, headed renderer, 1920×1080, `Harbor` tier, 30 s warmup, and 120 s sampling.

| Run | State/version | Median / 95th / >33.3 ms | Selected counters | Fictional conclusion |
| --- | --- | --- | --- | --- |
| `PF-B-01` | `dock_arrival`, baseline | 9.8 / 12.6 ms / 0 | 286 draws, 83 materials, 1.1 GB resident graphics memory | Baseline representative record |
| `PF-F-01` | `dock_arrival`, final | 11.2 / 15.7 ms / 1 | 214 draws, 41 materials, 1.4 GB | Added material/lighting cost remains inside target; batching reduces draws |
| `PF-B-02` | `storm_overload`, baseline | 11.7 / 15.2 ms / 1 | 344 draws, 410 live particles, 14 audio voices | Baseline stress record |
| `PF-F-02` | `storm_overload`, final | 14.2 / 18.8 ms / 2 | 271 draws, 620 bounded particles, 18 voices, 1.6 GB | Final stress record meets this fictional target; trace shows the largest cost in transparent effects |

The evidence does not claim integrated-GPU, handheld, macOS, or console performance. A lower fictional `Breakwater` tier was recorded as a proposal for future hardware testing, not advertised as supported.

## Regression result

| Journey | Fictional result |
| --- | --- |
| `RJ-01` clean launch → settings → control | Pass twice; shader-ready flag precedes capture and failed optional decal falls back to flat owned material |
| `RJ-02` arrival → valid and invalid coil input | Pass on keyboard and controller; exact state/event traces match baseline |
| `RJ-03` full overload pressure | Pass; hazard, health, collision, UI authority, audio priorities, reduced-flash cue, and cleanup verified |
| `RJ-04` damage/failure → pause/background → recovery → restart twice | Pass; no duplicate timers, particles, voices, observers, or input capture after either restart |
| `RJ-05` restore beacon → aftermath → exit flag | Pass; objective and exit fields match, and recovered presentation persists until reset |
| `RJ-06` save → close → load → continue | Pass with disposable schema-3 profile; coil, health, objective, captions, volume, high contrast, and reduced-motion fields match; no user save altered |
| `RJ-07` multiplayer | Not present; no network claim made |

Keyboard, controller, captions, high-contrast prompts, reduced flash, reduced motion, mute/volume persistence, pause, and background return are supported and exercised in the fictional record. Touch, screen reader semantics, localization beyond the English space check, and every unlisted device remain unsupported rather than silently claimed.

## Truthful fictional handoff

The fictional final is revision `cw-fidelity-24` with manifest `am-24-6`. It changes presentation sources and adapters while retaining checksum `9d-71-253`, save schema `3`, original route/collision, exact coil solution and event ownership, and local authority. The image API and Blender MCP were not used; local Blender CLI, project-authored visual sources, project synthesis, runtime capture, and project profiler were used inside the scenario.

All final assets in the fictional manifest have cleared origin records; the three baseline placeholder sounds with unknown origins were rejected. Four same-state series, two frame-state pairs, four performance runs, six calibration passes, and six applicable regression journeys support the scenario’s final claims.

Remaining limits are explicit: no touch path, no non-English localization test, no network mode, no integrated-GPU or console measurement, and no claim that the illustrative numbers apply to a real build. The fictional next priorities are a measured low-spec tier, a localization expansion test for the station dial, and a second owned rain surface variant; each requires reopening Runtime Proof after implementation.
