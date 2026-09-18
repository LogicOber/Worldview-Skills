# The Glass Orchard Infirmary

## Source boundary

This is a newly authored fictional example for `worldview-game-wounds-infection-and-treatment`. It is not derived from a named game, real patient, published character, external Skill, or recognizable level.

## Invocation

```text
/worldview-game-wounds-infection-and-treatment

Use a sealed greenhouse after its irrigation system fails. A broken tube can
cause a wound exposed to a fictional growth medium. Let the player inspect and
stabilize it, choose a short dangerous route or long quiet route to the infirmary,
complete treatment and reassessment, and use a reduced-intensity presentation.
```

## Fictional and medical boundary

The Glass Orchard uses an invented luminescent culture to grow food in a sealed habitat. Its wound and contamination behavior is fictional. The example does not describe real first aid, infection timing, medication, dosage, or prognosis and must not be presented as medical guidance.

The injured player character remains a person with full narrative agency throughout every state. Escalation changes route cost and treatment needs; it does not mark the character as impure, evil, or disposable. No enemy behavior is justified by resemblance to real illness or disability.

## Layer lock record

All values below are invented gameplay proposals. The evidence paths describe work a future implementation must produce and support no real medical claim.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Fiction and Representation Lock | `orchard_growth_medium` is explicitly fictional; no diagnosis, dosage, real prognosis, impurity, or loss-of-personhood claim is permitted; neutral diagram, patterned status, and plain-language log carry all required information; failure is evacuation. | Fictional/medical boundary above; planned review at `gameplay/glass-orchard-infirmary/verification.md#representation`. | Every state label, treatment action, warning, and outcome is categorized as fictional and remains complete in reduced-intensity mode. | Invented terminology and optional imagery/audio intensity. | Realism, transformation, or a presentation channel with unique information is added. | Invalidate text, warnings, stage descriptions, playthrough captures, and representation review. |
| Condition Model Lock | Wound `orchard_forearm_01` has separate `physical_state`, `growth_medium`, `infection_stage`, and `treatment_state`; contact creates `unresolved/present/not_established/none`; valid stages may produce `stable`, `localized_escalation`, `treatment_incomplete`, and `recovering` only through named transitions. | Hazard proposal below; planned `gameplay/glass-orchard-infirmary/condition-model.md#transitions`. | Hazard resolution creates one ID, each transition names its cause/signal/intervention, and prompt plus delayed routes are representable without an opaque sickness value. | Numeric timing and bounded mechanical-effect strength. | A dimension, stage, transition cause, or failure meaning changes. | Invalidate every clock, treatment, save, and causal trace. |
| Clock Policy Lock | `condition_elapsed` advances only in unpaused active simulation; pause, condition/treatment selection menus, loading, suspend, and application closure add zero; an active treatment stage uses its own declared simulation timer; save/load restores both without offline catch-up. | Fictional clock proposal; planned `gameplay/glass-orchard-infirmary/verification.md#clock-policy`. | Pause, focus, menu, treatment, load, and suspend boundary traces restore the same condition and stage clocks. | Thresholds and stage durations remain mutable until the Treatment Route Lock. | Clock source, pause policy, stage-timer ownership, or deterministic restore changes. | Invalidate every timing margin, save fixture, prompt/delayed trace, and difficulty result. |
| Treatment Route Lock | The player starts with one wrap charge; the infirmary owns two clinic-pack charges. Wrap completion changes only `physical_state` to `stable` in `3.0 s`. Contamination present at `condition_elapsed=80 s` enters `localized_escalation`; bridge target is `32 s`, cultivation loop `68 s`, so `15 s delay + 3 s + 68 s > 80 s` demonstrates delayed escalation. Fictional-medium removal takes `2.5 s`, each clinic-pack application `3.0 s`, and each scanner reassessment `4.0 s`. Prompt recovery consumes one pack charge; escalated recovery consumes the first pack, receives `treatment_incomplete` at reassessment, then consumes the second pack before final reassessment. Invalid requests consume zero; pre-commit interruption releases the reservation and resets stage progress while condition time remains; post-commit interruption preserves one effect and one charge. | Treatment, resource ledger, and interruption proposal below; planned `gameplay/glass-orchard-infirmary/verification.md#treatment-routes`. | Valid, invalid, pre/post-commit interrupted, prompt, delayed, reduced-intensity, and assisted routes each have a declared resource/state result and pass boundary traces immediately before and after `80 s`; the two-charge escalated route reaches recovery. | Threshold, stage durations, resource count, machinery speed, and assist values inside verified route bounds. | An intervention changes a different dimension, a route closes, threshold order, count, charge boundary, resource ownership, or assist clock semantics changes. | Invalidate timing, resource-ledger, interruption, route, accessibility, success, and escalation traces. |
| Persistence and Authority Lock | Single-player `ConditionAuthority` owns wound ID, dimensions, `condition_elapsed`, partial stage, reservations, consumed wrap and clinic-pack charges, machinery state, and outcome revision; save/load never adds offline time; a transaction ID makes every treatment commit idempotent; restart restores the authored baseline without changing settings. | Persistence proposal; planned `gameplay/glass-orchard-infirmary/verification.md#round-trip`. | Save/load at each stage, duplicate treatment, pre/post-commit interruption, suspend, migration fixture, and restart reproduce exactly one coherent state and resource ledger. | Serialization layout, debug logs, and presentation reconstruction. | Save schema, clock serialization, resource transaction boundary, baseline, or network mode changes. | Invalidate round-trip, duplicate-request, interruption, migration, restart, and authority evidence. |

> If the cultivation loop's measured prompt-stabilized travel exceeds the `80 s` escalation boundary, reopen the Treatment Route Lock; discard the `68 s` margin, both route-completion traces, and the reduced-intensity delayed-route playthrough.

## Hazard and state

A cracked irrigation tube bends into the maintenance aisle. Its reflection, leaking sound, patterned floor marker, and optional haptic warning make the hazard readable. Contact during a rushed crossing creates one forearm wound instance with two initial fictional dimensions:

```text
physical state: unresolved
growth-medium contamination: present
infection stage: not established
treatment state: none
```

The condition screen names those states in text. A neutral diagram and patterned icon replace graphic imagery when reduced intensity is enabled.

## Treatment decisions

The player carries one compact stabilization wrap with one charge. Applying it takes `3.0 s` of unpaused simulation time in a safe position and changes the immediate physical state to stable for travel. The wrap charge is reserved at stage start and decremented atomically with the `stable` transition at completion. It does not remove contamination or claim to treat infection.

The infirmary contains a setting-specific dispenser with two clinic-pack charges and a scanner. Reaching it offers three abstract stages: remove the fictional growth medium, apply a clinic-pack charge, and reassess. These are game actions with invented feedback, not transferable medical instructions.

Two routes connect the hazard to the infirmary:

| Route | Pressure | Treatment relationship |
| --- | --- | --- |
| Service bridge | Short, exposed to a moving maintenance arm | Reaches complete treatment sooner but requires timing or prior shutdown. |
| Cultivation loop | Longer, no moving machinery | Gives more travel safety but allows the fictional condition clock to approach its next readable stage. |

Both remain viable after prompt stabilization. Delaying stabilization and taking the longer route produces a recoverable localized escalation that requires an additional clinic-pack-and-reassessment cycle. This is a proposed game relationship, not a clinical timeline.

### Resource and outcome ledger

| Path or attempt | Wrap result | Clinic-pack result | Condition result |
| --- | --- | --- | --- |
| Prompt, non-escalated recovery | `1 -> 0` when stabilization commits | `2 -> 1` when the pack stage commits | Removal, one pack application, and reassessment enter `recovering` |
| Delayed localized escalation | `1 -> 0` when stabilization commits | First application `2 -> 1`; reassessment returns `treatment_incomplete`; follow-up application `1 -> 0` | Final reassessment after the second application enters `recovering` |
| Clinic pack requested before fictional-medium removal | Unchanged | Remains `2`; no reservation or decrement | Request rejected with `REMOVE GROWTH MEDIUM FIRST`; no treatment state changes |
| Any stage interrupted before commit | A reserved wrap returns to the count, if applicable | A reserved pack returns to the dispenser count | Stage progress resets; treatment state remains at its pre-stage value; legitimately elapsed `condition_elapsed` remains |
| Presentation interrupted after commit | Committed count remains | Committed count remains | Committed state remains; the same transaction ID resumes feedback or reassessment without another decrement |

Each resource stage follows `validate -> reserve -> time -> atomically commit state plus decrement -> feedback`. Moving out of the safe interaction volume, taking a declared interrupting hit, or canceling before commit releases the reservation. A repeated transaction ID returns its recorded result. Insufficient packs after escalation leave `treatment_incomplete` readable and nonterminal at the infirmary; this authored route begins with two charges precisely so the demonstrated escalation remains recoverable.

## Feedback and accessibility

Every transition appears as plain language in the condition log. Shape and texture distinguish stable, progressing, treatment-incomplete, and recovering states. Sound and haptics supplement but never carry unique information.

Reduced-intensity mode replaces wound imagery, pulsing light, invasive audio, and camera disturbance with the neutral diagram and status banner. A treatment-timing assist pauses surrounding threats while the treatment interface is open. A mechanical assist removes temporary action-cost effects while retaining the same treatment choices and state information.

## Success, escalation, and restart

Success occurs after complete infirmary treatment and reassessment enters the recovering state. A failure boundary exists only after multiple signaled transitions and missed treatment opportunities; the current attempt ends through incapacitation and evacuation, not dehumanizing transformation.

Restart restores the authored hazard, player state, resources, route machinery, condition clock, and outcome. Loading during a partial treatment restores one coherent stage and does not advance time for application closure.

## Expected saved output

```text
gameplay/glass-orchard-infirmary/
├── mechanic.md
├── condition-model.md
├── tunables.yaml
└── verification.md
```

## Evidence required before handoff

| Claim | Evidence |
| --- | --- |
| The hazard is avoidable | Crossing trace using non-color and sound-independent warning cues |
| State is causal | Transition log from one wound identifier through prompt and delayed routes |
| Stabilization is not a universal cure | Assertions showing only declared dimensions change |
| Both routes remain viable | Reproducible completion trace for bridge and cultivation loop |
| Escalation is readable and recoverable | Delayed route trace through both clinic-pack charges, `treatment_incomplete`, follow-up treatment, and final reassessment |
| Invalid treatment is safe | Pre-removal clinic-pack request showing no stage, state change, reservation, or decrement |
| Pre-commit interruption is safe | Wrap and clinic-pack interruptions showing released reservations, unchanged treatment state/count, and only legitimate condition-clock advance |
| Post-commit interruption is idempotent | Reload/retry after each commit showing one state effect and one decrement for the same transaction ID |
| Resource counts close | Snapshot ledger proving prompt route ends with one pack and escalated route ends with zero |
| Reduced intensity preserves decisions | Side-by-side state-information audit and complete playthrough |
| Persistence is exact | Pause, menu, partial-treatment save/load, suspend, and restart comparisons |
| Representation boundary holds | Review of player-facing text, objectives, failure, and character references |

No evidence from this fictional scenario can support a real medical claim. Any later move toward realism requires separately documented qualified review.
