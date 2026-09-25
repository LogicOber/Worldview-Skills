# The Brass North

This is an original fictional example for the Skill. It demonstrates a design contract; it is not an implemented or playtested level.

## Invocation

```text
/worldview-game-perception-distortion-and-trust

In the Silt Archive, singing pipes create memory bleed. Room labels, reflections,
and distant footsteps may become unreliable, but a brass survey compass always
points toward the archive's sealed north wall. Build one route where the player
must use that fact, then spend a dry filter at a survey station to recover.
```

## Source boundary

- **Invocation facts:** the authored fictional brief specifies a flooded archive, singing pipes, affected channels, brass compass, and recovery station.
- **Proposed here:** route, tiers, authored false label, costs, success, failure, and accessibility alternatives.
- **Unverified:** actual engine, timing, effects, comfort, localization, controls, and save implementation.

## Layer lock record

| Lock | Concrete decision | Status | Reopen trigger and fallout |
| --- | --- | --- | --- |
| World truth | The sealed north wall, compass bearing, Gallery C key, Gallery F leak, east floodgate exit, collision, objective, and custodian route remain authoritative. | Locked for this fictional contract | Moving a gallery, key, wall, or exit invalidates all later cue and route claims. |
| Distortion scope | `memory_bleed` is an authoritative 0–100 exposure value with Clear, Unsettled, Unreliable, Critical, and Recovering states. The complete provisional entry, exit, hysteresis, residence, and simultaneous-effect grammar appears below. Enamel labels, reflections, and distant footsteps are eligible; direct nearby contact, compass behavior, collision, objective, system UI, and accessibility settings remain stable. | Open: paper grammar is complete, but thresholds and comfort require runtime proof | Changing a threshold, tier budget, direct geometry, controls, or nearby contact invalidates the cue grammar, recovery, save, and accessibility evidence plan. |
| Reliable anchors | Brass north verifies direction only. It is taught by agreement among needle, floor inlay, and visible sealed wall, and remains available through shape, text, spoken bearing, and haptic pulse. | Locked as the required decision path | Expanding the compass to identify rooms or allowing memory bleed to counterfeit its verification behavior invalidates both route traces. |
| False-cue grammar | In unreliable state, Gallery C and F enamel letters may exchange; the compass exposes the spatial contradiction. Trusting the label enters F and costs time/exposure; testing it reaches C and the key. Reflection lag and distant footsteps cannot assert a different collision or objective. | Locked as one authored substitution | Adding another label mapping or procedural room swap invalidates the deterministic save case and success/failure traces. |
| Recovery and comfort | One dry filter at the survey station suppresses label substitution for ninety illustrative seconds without revealing the custodian. Reduced motion removes reflection lag, no-audio uses captions, and photosensitivity-safe mode replaces flicker. | Contract locked; duration and comfort untested | Changing recovery scope, cost, camera motion, flicker, or access path invalidates recovery and comfort evidence. |
| Reproduction proof | Required evidence includes fixed room assertions, forced-tier channel checks, each compass expression, both route consequences, exact recovery scope, stable substitution on reload, and residue-free restart. | Evidence plan only | Save schema, random selection, private/shared authority, or any earlier lock change requires new traces and per-tier captures. |

If Gallery C or Gallery F moves relative to brass north, reopen **World truth**, **Reliable anchors**, and **False-cue grammar**; discard the current success/failure routes, the committed-substitution save case, and every tier capture.

## Truth layer

The sealed north wall and brass compass direction never change. Gallery C contains the required pressure key. Gallery F contains a leaking pipe that raises exposure and delays the route. The east floodgate is the exit.

The underlying rooms, collision, objective, and threat route remain fixed. Only selected labels, reflections, and distant sound may differ.

## Teaching state

At clear exposure, the player passes a survey plate explaining that all brass needles align with the sealed wall. The compass, a floor inlay, and the visible wall agree. The player then sees `GALLERY C — WEST OF NORTH` on a stable enamel sign and retrieves a small optional note there.

This establishes both the anchor's scope—direction only—and the label's normal relationship before distortion begins.

## Provisional tier grammar

`memory_bleed` is owned by the authoritative simulation, clamped from 0 to 100, and updated only during unpaused play. It gains 8 units per second while the player occupies a singing-pipe zone. After the player leaves all such zones, a three-second grace period passes before it decays at 4 units per second. These values make the example executable on paper; they remain open until movement, comfort, and route tests measure them.

| Tier | Entry | Exit | Minimum residence | Eligible presentation | Maximum simultaneous |
| --- | --- | --- | ---: | --- | ---: |
| Clear | Initial state; or Unsettled reaches 20 or less | Rises to 30 or more | 2 s | No distortion | 0 |
| Unsettled | Clear rises to 30 or more; or Unreliable falls to 45 or less | Falls to 20 or less; or rises to 60 or more | 4 s | One reflection lag or one uncertain distant-footstep cue; labels remain truthful | 1 |
| Unreliable | Unsettled rises to 60 or more; or Critical falls to 65 or less | Falls to 45 or less; or rises to 85 or more | 6 s | The one authored C/F label substitution, plus at most one reflection or distant-footstep effect | 2 |
| Critical | Unreliable rises to 85 or more | Falls to 65 or less | 8 s | The same one C/F substitution plus at most one intensified reflection or distant-footstep effect; no new factual channel becomes eligible | 2 |
| Recovering | The authority accepts use of the one dry filter | The 90-second protection expires, then the current exposure band selects the next tier | 90 s | Labels become truthful immediately; at most one already-started reflection or distant-footstep effect fades | 1 |

Hysteresis is stateful: upward transitions use 30, 60, and 85, while downward transitions use 20, 45, and 65. The current tier must satisfy its minimum residence before an ordinary adjacent transition, and the authority processes at most one adjacent tier transition per simulation update. An accepted dry filter is the only override: it enters Recovering immediately and ends any label substitution. When its 90 seconds expire, exposure 0–29 enters Clear, 30–59 enters Unsettled, 60–84 enters Unreliable, and 85–100 enters Critical. Exposure continues to update while protected, so recovery suppresses a declared presentation scope rather than secretly clearing the cause.

Tier and exposure, elapsed residence, grace-period remainder, the active substitution identifier, recovery remainder, and any eligible presentation event identifiers must serialize together. Reload restores those values; it does not reroll the C/F substitution or replay an expired effect.

## Distortion state

Crossing beneath the singing pipes raises memory bleed through Unsettled and then Unreliable. Unsettled introduces at most one ambiguous reflection or distant-footstep cue while labels remain truthful. At Unreliable, one authored substitution becomes eligible: the enamel labels for Galleries C and F exchange letters. The compass remains stable. A reflection may show the old label for half a second, or distant footsteps may come from the wrong gallery, but the tier budget never permits both ambient effects alongside the substituted label. Direct nearby contact audio and captions remain truthful.

The player can:

- follow the changed `C` label and enter Gallery F;
- compare the label's claimed location with brass north and choose the true Gallery C;
- spend a dry filter at the survey station to make labels stable for the next route.

## Guide history and competing interpretations

An in-world custodian named Oren Vale speaks through the archive's wired call boxes. Oren has legitimate access to the flood pumps, enamel-label tracks, and survey station, but cannot change the brass compass or the stamped mechanical access strip inside the station.

Before exposure rises, Oren gives two bounded directions. He tells the player which valve drains the entry stair and warns that the center bridge will close after the pressure key is removed. Both predictions become visibly true. He also promises that he will not operate a label track while the player is below. This establishes useful route knowledge and a testable promise without making him universally trustworthy.

At Unreliable exposure, Oren asks the player to place the compass in the survey station's calibration slot and follow the `C` label immediately. He claims the brass housing is amplifying the pipe signal. The request exceeds his previous behavior because it removes the player's only directional anchor while he has legitimate access to the label machinery.

The same retained facts support two causal interpretations:

| Retained fact | Interpretation A | Interpretation B |
| --- | --- | --- |
| Oren's first two directions were correct | he understands the archive and is trying to help | he built credibility before an important misdirection |
| C/F labels exchange during exposure | memory bleed authors the substitution | Oren uses the label track while exposure hides the physical transition |
| Oren asks for the compass | he believes its housing worsens the signal | he wants the player to lose the independent anchor |
| mechanical strip records a label-track operation | an old automatic correction coincided with exposure | Oren broke his promise through his legitimate access |

The stamped strip is an inspectable record, not a UI declaration. It logs the last operation time and source lever without interpreting motive. The player can compare it with the saved onset time of the active substitution. If the lever operation predates the cue, Interpretation A remains viable. If it occurs during Oren's spoken promise, Interpretation B gains direct support. Both readings preserve the same room geometry, compass direction, earlier successful guidance, and exposure history.

The eventual trust decision cites scope and history: keep the compass and inspect the strip, surrender it and follow Oren, or spend the dry filter before accepting either instruction. The game does not display a trust percentage.

## Consequences

Using the compass reaches Gallery C and the pressure key. Trusting the changed label enters Gallery F, where a leaking pipe consumes time and raises exposure through the 85-point Critical entry threshold. That is a recoverable failure: the player can retreat, but the longer route lets the archive custodian reach the central bridge first.

Recovery consumes the only dry filter and suppresses label substitutions for ninety illustrative seconds. It does not reveal the custodian or remove ordinary threat pressure.

After taking the Gallery C key, Oren opens one route toward the east floodgate and requests that the player ignore the survey station. If the strip shows he operated the track during his promise, following him opens the shorter route but grants him control of its closing gate. Refusing him costs time but preserves an independently verified path. If the strip clears him, refusal still remains legal and costly; the game does not punish caution with an impossible route.

Save the authoritative event, player's current interpretation, active C/F presentation, strip snapshot, Oren's promise history, permission reference, compass ownership, and any gate consequence separately. Reload cannot reroll the label, make Oren know an unseen strip result, repair a broken promise, or replay the gate transition.

## Accessibility expressions

- The compass has shape, text, optional spoken bearing, and haptic north pulse.
- Changed labels never rely on color alone.
- Reduced-motion mode removes reflection lag and camera drift; the false label decision remains.
- No-audio play uses directional captions for truthful nearby contact and marks ambiguous distant sound as `UNCERTAIN FOOTSTEPS`.
- A deception-assistance option keeps the compass bearing text visible beside any distortable label.
- Photosensitivity-safe mode replaces pipe flicker with a slow luminance change.

## Evidence an implementation would need

| Claim | Required evidence |
| --- | --- |
| Gallery locations never change | Collision, objective, and route assertions across all tiers |
| Only eligible labels substitute | Deterministic forced-tier test and forbidden-channel assertions |
| Every tier boundary follows the proposed hysteresis | Sweep exposure upward and downward across 20, 30, 45, 60, 65, and 85 while checking minimum residence and one-step transitions |
| Each tier respects its simultaneous budget | Force every eligible effect together in Clear, Unsettled, Unreliable, Critical, and Recovering; reject excess events |
| Compass remains a valid directional anchor | Success trace using compass in each supported expression |
| Wrong trust has a coherent cost | Trace entering Gallery F and reaching the declared delayed state |
| Recovery has the exact declared scope | Before/after state and presentation checks at the station |
| Save/load does not reroll the committed label | Save in unreliable tier, reload, and compare substitution identifier |
| Event, cue interpretation, presentation, and evidence remain distinct | Compare fixed rooms, player hypothesis, active label, and stamped strip before and after reload |
| Both interpretations preserve retained facts | Run old automatic operation and live custodian operation sequences against the same geometry and exposure history |
| Trust follows permission and history | Verify early directions, promise, exception request, access use, and both follow/refuse consequences |
| Restart is clean | Restart during pipe audio, substitution, reflection, recovery, and failure |

## Limits

This example does not claim clinical realism, final accessibility, production tuning, broad procedural generation, or compatibility with a particular engine. The fictional term `memory bleed` describes only the authored supernatural rule.
