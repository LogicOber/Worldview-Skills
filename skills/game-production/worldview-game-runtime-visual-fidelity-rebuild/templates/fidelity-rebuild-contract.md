# Runtime Visual Fidelity Rebuild Contract

Copy this template into the project’s evidence or production directory. Replace every bracketed field. Mark unavailable evidence explicitly; do not convert a proposal into an observed result by removing the label.

## Request and project intake

| Field | Record |
| --- | --- |
| Rebuild slug | `[slug]` |
| Repository and scoped writable paths | `[paths]` |
| Baseline revision / dirty-worktree note | `[revision and preserved changes]` |
| Entry point and run/build commands | `[commands]` |
| Intended platforms | `[platforms; fact, user requirement, or proposal]` |
| Current presentation problem | `[observable symptoms in the actual runtime]` |
| Intended identity | `[owned references and written visual grammar]` |
| Explicitly out of scope | `[mechanics, content, deployment, marketing, or other boundaries]` |
| Decision owner | `[person or project record that can authorize scope and tool changes]` |
| Evidence root | `[path]` |

## Source, proposal, and judgment boundary

| ID | Type | Statement | Evidence or decision owner | Status |
| --- | --- | --- | --- | --- |
| `SPJ-01` | Fact / proposal / judgment | `[one claim]` | `[file, capture, trace, user decision, or owner]` | Proposed / observed / accepted / rejected |

Facts require a source or observation. Proposals remain proposals until controlled evidence accepts them. Judgments name the evaluator and criteria; they do not masquerade as measurements.

## Layer lock record

Use the exact sequence below. A later decision may not silently redefine an earlier lock. When a trigger fires, reopen the earliest affected row and invalidate all listed dependent work.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| **Protected Behavior Lock** | `[protected-behavior.md path; exact inputs, timing, collision, routes, objectives, AI, economy, RNG, camera duties, saves, authority, accessibility behavior, and tolerances]` | `[tests and observed baseline journey]` | `[each protected field has an owner and comparison method]` | `[presentation-only adapters and bounded values]` | `[rule, topology, authority, persistence, or gameplay-camera duty changes]` | `[all state captures, diagnosis, production, calibration, performance, and regression evidence]` |
| **Baseline State Lock** | `[baseline-and-states.md path; three to five state IDs, fixtures, state traces, capture settings, and reset paths]` | `[baseline revision, environment, and reproducible journeys]` | `[every state is reproducible and its media belongs to the recorded conditions]` | `[annotations and non-state-changing diagnostic views]` | `[entry path, seed/save, camera contract, viewport, quality, locale, UI, readiness, or ownership changes]` | `[comparisons and measurements for affected states]` |
| **Causal Fidelity Lock** | `[fidelity-diagnosis.md path; ranked observations, hypotheses, and falsifiable interventions]` | `[named baseline captures and traces]` | `[each priority cites evidence and a bounded test]` | `[ranking among equal-impact cosmetic items]` | `[new evidence disproves cause or intervention touches protected behavior]` | `[affected production work, comparisons, and conclusions]` |
| **Production and Rights Lock** | `[production-and-rights-ledger.md path; content routes, rights, authorization, fallbacks, editable and runtime forms]` | `[license, ownership, generation, tool, cost, privacy, and runtime acceptance records]` | `[every planned non-code input/output has lawful origin and authorized route]` | `[variants within the recorded source and envelope]` | `[origin, terms, tool authorization, signature design, or runtime representation changes]` | `[affected assets, captures, performance runs, distribution claims]` |
| **Calibration Lock** | `[comparison-index.md path; accepted material, light, camera, motion, UI, audio, and transition rules]` | `[same-state comparisons across every affected state]` | `[rules improve identity/readability without crossing behavior or performance bounds]` | `[small values within accepted ranges]` | `[a pass breaks another state, obscures a cue, crosses behavior, or exceeds the envelope]` | `[affected captures, pass conclusions, performance and regression evidence]` |
| **Runtime Proof Lock** | `[performance-evidence.md and regression-and-handoff.md paths]` | `[fresh build, final asset versions, journeys, traces, captures, and profiler records]` | `[required paths pass and representative/stress performance is recorded]` | `[additional evidence and nonfunctional polish]` | `[source, asset, setting, environment, platform, or revision changes after proof]` | `[affected final captures, measurements, journey results, and handoff claims]` |

Final review: `[confirm that no late change bypassed a reopen trigger; name every reopened lock and rerun artifact, or state none]`.

## Tool and authorization ledger

| Capability | Available evidence | Authorized scope | External effect / cost / privacy boundary | Intended use | Fallback | Actual use |
| --- | --- | --- | --- | --- | --- | --- |
| Repository and version history | `[fact]` | `[paths/operations]` | `[boundary]` | `[use]` | `[read-only plan]` | `[result]` |
| Runnable game and capture surface | `[fact]` | `[commands/platform]` | `[boundary]` | `[use]` | `[mark unverified]` | `[result]` |
| Image API or built-in image tool | `[provider/tool or absent]` | `[input/output rights and purpose]` | `[cost, upload, retention]` | `[direction study or asset input]` | `[owned references and written grammar]` | `[result and output record]` |
| Blender MCP | `[connection evidence or absent]` | `[scene/files/save/export]` | `[external effect]` | `[specific assets]` | `[authorized local DCC, procedural route, or proxy]` | `[result]` |
| Local Blender or other DCC | `[executable/manual owner]` | `[files and exports]` | `[boundary]` | `[specific assets]` | `[brief and stop condition]` | `[result]` |
| Audio route | `[owned/licensed/synth/generator]` | `[content and distribution]` | `[cost/privacy]` | `[cue families]` | `[labeled temporary cue or silence]` | `[result]` |
| Profiler and automation | `[tool/counters]` | `[environment]` | `[boundary]` | `[metrics/journeys]` | `[narrowed claims]` | `[result]` |

Do not record credentials here.

## Protected behavior matrix — owned by Protected Behavior Lock

| Behavior ID | Field or journey | Current authority | Baseline observation/test | Allowed tolerance | Presentation seam | Final result |
| --- | --- | --- | --- | --- | --- | --- |
| `PB-01` | `[input and action result]` | `[system/host/server]` | `[evidence]` | `[exact or bounded]` | `[adapter/event read]` | Pending / pass / fail / unverified |
| `PB-02` | `[movement, timing, collision, or route]` | `[owner]` | `[evidence]` | `[tolerance]` | `[seam]` | Pending |
| `PB-03` | `[AI, objective, economy, RNG, or progression]` | `[owner]` | `[evidence]` | `[tolerance]` | `[seam]` | Pending |
| `PB-04` | `[camera gameplay duty]` | `[owner]` | `[evidence]` | `[safe composition range]` | `[presentation-owned values]` | Pending |
| `PB-05` | `[save/version behavior, if present]` | `[owner]` | `[disposable-profile test]` | `[exact schema/state]` | `[visual-only data, if any]` | Pending / not present |
| `PB-06` | `[network authority/reconciliation, if present]` | `[host/server/client owner]` | `[journey]` | `[exact IDs and decisions]` | `[predictive visual only]` | Pending / not present |
| `PB-07` | `[accessibility setting behavior]` | `[owner]` | `[journey]` | `[exact required effect]` | `[style within behavior]` | Pending |

Save safety: `[disposable test profile, backup/recovery boundary, and confirmation that the user’s only save will not be rewritten or deleted]`.

## Named runtime states — owned by Baseline State Lock

Choose three to five. They must describe ordinary and pressured play, not only attractive frames.

| State ID | Purpose | Seed/save/fixture and entry path | Input sequence | Expected authoritative fields | Camera anchor / tolerance | Capture and ready condition | Reset path | Baseline evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `[orientation_id]` | Orientation | `[path]` | `[inputs]` | `[fields]` | `[rule]` | `[condition]` | `[reset]` | `[paths]` |
| `[core_action_id]` | Core action | `[path]` | `[inputs]` | `[fields]` | `[rule]` | `[condition]` | `[reset]` | `[paths]` |
| `[pressure_id]` | Dense pressure | `[path]` | `[inputs]` | `[fields]` | `[rule]` | `[condition]` | `[reset]` | `[paths]` |
| `[recovery_id]` | Recovery/aftermath | `[path]` | `[inputs]` | `[fields]` | `[rule]` | `[condition]` | `[reset]` | `[paths]` |
| `[optional_boundary_id]` | `[loading/failure/pause/inventory/dialogue]` | `[path]` | `[inputs]` | `[fields]` | `[rule]` | `[condition]` | `[reset]` | `[paths]` |

Baseline conditions: `[revision, environment, OS, device/VM, engine/browser, backend, headed/headless, viewport, physical resolution, render scale, quality tier, locale, input, accessibility and audio settings]`.

## Causal diagnosis — owned by Causal Fidelity Lock

| Diagnosis ID | State and observed fact | Cause family | Hypothesis | Bounded intervention | Protected fields to check | Identity/readability value | Production/runtime risk | Falsifying result | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `CF-01` | `[state, capture, observation]` | Composition / silhouette / surface / light / motion / UI / audio / cohesion / delivery | `[cause]` | `[small test]` | `[PB IDs]` | `[reasoned judgment]` | `[risk]` | `[what would disprove cause]` | Proposed / accepted / rejected |

Rejected shortcut and why: `[specific decoration or broad replacement rejected because it would not test the observed cause]`.

## Content production plan — owned by Production and Rights Lock

| Family ID | Content family and scope | Chosen production route | Why this route fits | Editable source | Runtime output | Acceptance check | Fallback |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `PR-01` | `[signature asset / architecture / procedural world / material / 2D / VFX / UI / audio]` | `[existing cleanup / DCC / procedural / project-authored / authorized generation]` | `[reason]` | `[path/form]` | `[path/form]` | `[runtime check]` | `[route]` |

For every DCC asset, record units, axes, origin, pivot, gameplay-distance silhouette, moving parts, sockets, deformation, collision independence, material families, texture channels, detail levels, editable path, export path, and reimport test: `[records]`.

For every image-assisted input, record allowed input ownership, provider/model where disclosure permits, date, purpose, prompt-record path, output ID/hash, transformations, review, terms, and rejection criteria: `[records]`.

## Asset rights ledger — owned by Production and Rights Lock

| Asset ID | Family | Origin and creator | License/terms or generation record | Modifications | Redistribution allowed | Editable source | Runtime output | Status and evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `AR-01` | `[family]` | `[origin]` | `[terms/record]` | `[changes]` | Yes / no / conditional | `[path]` | `[path]` | Planned / cleared / quarantined / rejected; `[evidence]` |

An unknown row is quarantined and absent from final captures and distribution artifacts.

## Calibrated pass log — owned by Calibration Lock

| Pass ID | Family | State(s) | Observed mismatch | Exact change | Protected checks | Same-state comparison | Performance delta | Decision and reason |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `CP-01` | Camera and scale | `[IDs]` | `[fact]` | `[change]` | `[PB IDs/results]` | `[paths]` | `[measured or unverified]` | Accept / revise / reject |
| `CP-02` | Silhouette and construction | `[IDs]` | `[fact]` | `[change]` | `[checks]` | `[paths]` | `[result]` | `[decision]` |
| `CP-03` | Materials and surface scale | `[IDs]` | `[fact]` | `[change]` | `[checks]` | `[paths]` | `[result]` | `[decision]` |
| `CP-04` | Lighting, exposure, atmosphere, reflections | `[IDs]` | `[fact]` | `[change]` | `[checks]` | `[paths]` | `[result]` | `[decision]` |
| `CP-05` | Motion, VFX, world response | `[IDs]` | `[fact]` | `[change]` | `[checks]` | `[paths]` | `[result]` | `[decision]` |
| `CP-06` | UI, audio, loading, failure | `[IDs]` | `[fact]` | `[change]` | `[checks]` | `[paths]` | `[result]` | `[decision]` |

Accessibility alternatives for flash, motion, color, audio-only information, text, focus, and supported input paths: `[exact implementation and checks]`.

## Same-state comparison index — owned by Calibration Lock

| State ID | Baseline media and trace | Final media and trace | Shared conditions | Authorized differences | Protected-field result | Reviewer judgment | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[state_id]` | `[paths]` | `[paths]` | `[revision-excluded conditions that match]` | `[visual changes]` | `[PB results]` | `[identity/readability judgment and owner]` | Comparable / invalidated / unverified |

If an exact frame cannot repeat, define the temporal window or distribution: `[method]`.

## Performance evidence — owned by Runtime Proof Lock

Target: `[existing project target, user requirement, or clearly labeled proposal]`.

| Run ID | Revision/assets | State | Environment and backend | Viewport/resolution/render scale/tier | Warmup/sample | Frame median | Slow percentile and long frames | CPU/GPU where available | Draw/resource/memory/audio counters | Loading/compile/stream/GC notes | Evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `PF-B-01` | `[baseline]` | `[representative]` | `[details]` | `[details]` | `[method]` | `[value/unavailable]` | `[value/unavailable]` | `[value]` | `[values]` | `[notes]` | `[trace]` |
| `PF-F-01` | `[final]` | `[same representative]` | `[same details]` | `[same details]` | `[same method]` | `[value]` | `[value]` | `[value]` | `[values]` | `[notes]` | `[trace]` |
| `PF-B-02` | `[baseline]` | `[stress]` | `[details]` | `[details]` | `[method]` | `[value]` | `[value]` | `[value]` | `[values]` | `[notes]` | `[trace]` |
| `PF-F-02` | `[final]` | `[same stress]` | `[same details]` | `[same details]` | `[same method]` | `[value]` | `[value]` | `[value]` | `[values]` | `[notes]` | `[trace]` |

Conclusion: `[what the measurements support, what they do not support, and any measured quality tiers]`.

## Regression journeys — owned by Runtime Proof Lock

| Journey ID | Start/reset | Real input route | Protected checkpoints | Presentation checks | Save/network/accessibility variant | Repetitions | Result and evidence |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `RJ-01` | Clean launch | `[loading → settings → control]` | `[fields]` | `[fallback/readiness]` | `[variant]` | `[count]` | Pass / fail / blocked; `[path]` |
| `RJ-02` | Orientation | `[core action valid and invalid]` | `[fields]` | `[feedback]` | `[variant]` | `[count]` | `[result]` |
| `RJ-03` | Pressure | `[dense actors/effects/UI/audio]` | `[fields]` | `[cleanup/readability]` | `[variant]` | `[count]` | `[result]` |
| `RJ-04` | Failure | `[damage/failure → pause/background → recover → restart twice]` | `[fields]` | `[teardown/reload]` | `[variant]` | `2+` | `[result]` |
| `RJ-05` | Completion | `[objective success → aftermath]` | `[fields]` | `[persistent visual state]` | `[variant]` | `[count]` | `[result]` |
| `RJ-06` | Disposable save | `[save → close → load → continue]` | `[schema and exact state]` | `[presentation settings]` | `[save version]` | `[count]` | `[result/not present]` |
| `RJ-07` | Multiplayer | `[host/client/disconnect/late join/reconcile]` | `[authority and IDs]` | `[predictive visual cleanup]` | `[roles]` | `[count]` | `[result/not present]` |

Teardown result for audio, particles, timers, tweens, observers, input capture, loaders, workers, GPU/renderer resources, and failed asset fallbacks: `[result and evidence]`.

## Truthful handoff — owned by Runtime Proof Lock

- Exact final revision/worktree and entry commands: `[record]`
- Protected behavior and authorized exceptions: `[record]`
- Named states and fresh comparisons: `[record]`
- Changed source, runtime, and asset files: `[record]`
- Tools actually used, external effects, cost, and fallbacks: `[record]`
- Rights status and quarantined assets: `[record]`
- Accepted and rejected passes: `[record]`
- Representative and stress performance conclusion: `[record]`
- Regression, accessibility, persistence, and authority conclusion: `[record]`
- Remaining proxies, defects, unsupported paths, and unverified claims: `[record]`
- Next three high-value changes with regression risk: `[record]`
- Final lock/reopen audit: `[record]`
