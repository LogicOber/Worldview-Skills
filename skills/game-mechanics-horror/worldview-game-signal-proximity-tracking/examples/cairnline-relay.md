# Cairnline Relay

**Cairnline Relay** is an original fictional example authored for this Skill. It is not based on an external game, character, level, or Skill.

## Invocation

```text
/worldview-game-signal-proximity-tracking

In the underground Cairnline relay, give the player a handheld induction meter
that reacts to the unseen resonant drifter moving through connected service
passages. The player must use the reading to choose one of two archive routes.
Live transformers create a recognizable interference pattern. Preserve the
existing threat and map, provide non-audio cues, and verify success and failure.
```

## Source boundary

The brief declares a relay station, a moving threat called the resonant drifter, two archive routes, an induction meter, and transformer interference. It does not establish the receiving project’s geometry, source authority, timings, signal equation, controls, or assets. The design below is a proposal until those facts are recovered and run.

## Layer lock record

These entries lock the fictional design relationships without claiming that thresholds or response times were measured in a runtime.

| Lock | Concrete locked content | Lock evidence / condition | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Source Observation Lock | Proposed authority `CairnlineSignalAuthority` accepts one active `resonant_drifter`. The allowed sample contains portal-path distance, current connected passage, intervening shield-door states, and transformer field at the receiver. Exact coordinates, speed, identity beyond eligibility, destination, and debug distance remain hidden. | The information model below enumerates the allowed fields. Runtime lock requires baseline, dormant/destroyed exclusion, and authoritative-source traces. | Storage format and debug display that do not widen the allowed sample. | Adding another emitter, changing source ownership or aggregation, or exposing speed/coordinates reopens this lock and invalidates sampling, hidden-information, multiplayer, and all downstream signal evidence. |
| Spatial Propagation Lock | The short metal service passage and longer cable gallery are separate portal paths despite close parallel walls. Shield doors alter portal connectivity. The cable-gallery transformer adds bounded interference; the grounded divider removes interference without removing the drifter sample. | Controlled positions on both sides of the parallel wall, shield doors, transformer field, and divider must produce the relationships stated below. No numeric propagation claim is locked until run. | Coefficients and optimization inside the later verified relationship. | Moving a portal, door, transformer field, grounded divider, or changing from path distance reopens this lock and invalidates raw traces, band thresholds, and route evidence. |
| Reading Vocabulary Lock | Output states are `baseline`, `trace`, `near`, and `critical`, plus a separate `interference` marker. Segments and text carry band; regular pulse cadence is optional audio/haptic expression; a broken diagonal and irregular double pattern distinguish interference. Critical cannot be suppressed by interference. | The proposed band table and transformer rule below define meanings. Runtime lock requires both sides of each threshold, hysteresis, audio-muted recognition, and calibration against a controlled drifter crossing. | Visual art, sound, labels, and exact thresholds inside the verified semantic and response envelope. | Adding a band or changing meaning, smoothing delay, calibration, interference signature, or accessible equivalence reopens this lock and invalidates cue assets, tutorials, boundary tests, and player decisions. |
| Response Window Lock | At the archive junction, `near` supports waiting in the shielded records alcove or choosing the weaker branch; `critical` requires retreat. Success is wait until `trace`, then take the cable gallery to the archive console. Failure is entering the short service passage during `critical`. The required relation is `first actionable warning to contact > recognition + input + route to alcove`. | The success/failure paths below fix the decisions. Runtime lock requires the fastest drifter approach, slowest supported controls, detector update delay, and actual alcove travel trace. | Threat and detector timing only within the measured positive margin; presentation cost that preserves the same response. | Changing threat path/speed, junction geometry, alcove, detector update rate, equip cost, or supported response timing reopens this lock and invalidates warning margins, both playthroughs, restart evidence, and balance claims. |

If the shield door is moved so the short service passage no longer forms a distinct portal route, reopen the Spatial Propagation Lock, Reading Vocabulary Lock, and Response Window Lock; discard every threshold trace, the critical-warning margin, and the wait-and-divert success and failure playthroughs.

## Intended decision

The player reaches a junction with a short metal service passage and a longer cable gallery. The drifter can approach through either connected route but remains out of sight until near the junction. The meter reports a stronger band for the route whose portal path places the drifter nearer. The player can wait in a shielded records alcove or take the weaker branch.

The meter does not reveal the drifter’s exact distance, speed, identity, or destination. It gives the player enough information to avoid treating the junction as a coin toss.

## Proposed information model

```text
authoritative truth:
  active drifter position and current connected passage

allowed sample:
  portal-path distance from receiver to active drifter
  current intervening shield doors
  transformer interference field at receiver

player output:
  baseline / trace / near / critical band
  left-right bias only while both route antennas are exposed
  explicit irregular interference marker
```

Path distance is used because the parallel passages run close together behind thick walls. Straight-line distance would make the meter report contact through a barrier that requires a long turn to traverse.

## Proposed bands

| Band | Player-facing behavior | Intended decision |
| --- | --- | --- |
| Baseline | One dim segment; no pulse | Continue normal exploration. |
| Trace | Two segments and a slow regular pulse | Begin checking branches and cover. |
| Near | Three segments and a denser pulse | Prefer the weaker route or wait in the alcove. |
| Critical | Full segmented bracket and rapid pulse | Do not enter the exposed junction; retreat to the alcove. |

Actual thresholds are derived from the map’s portal distances, threat speed, player acceleration, door interaction, and the time required to reach the records alcove. They are not fixed by this example.

## Transformer interference

The cable gallery’s live transformer adds an irregular double pulse and a broken diagonal overlay. It can elevate apparent strength within a bounded area but cannot suppress a genuine critical reading. Moving behind the grounded divider removes the interference while preserving the drifter signal, giving the player a second observation.

The interference therefore complicates the reading without presenting arbitrary silence or an indistinguishable false result.

## Success

The player observes a near reading biased toward the short service passage, waits in the shielded alcove until the band falls to trace, then takes the cable gallery and reaches the archive console. A state trace shows that the reading changed from the drifter’s portal distance and shield-door state, not from a scripted junction trigger.

## Failure that teaches the rule

The player sees the critical band at the junction and continues into the short service passage. The drifter reaches contact before the player can reverse. The meter remains critical throughout, so failure follows an ignored warning rather than a hidden exception.

An interference failure is also valid if the player mistakes the irregular transformer overlay for an ordinary near band without taking the available grounded-divider reading. It is not valid if interference silently removes the critical warning.

## Expected saved output

```text
gameplay/cairnline-relay/
├── mechanic.md
├── tunables.yaml
└── verification.md
```

## Evidence expected

| Claim | Direct evidence |
| --- | --- |
| Reading follows live threat state | Trace of source path distance, transformed signal, accepted band, and cue |
| Walls do not create false direct proximity | Controlled positions in parallel passages |
| Interference is identifiable | Comparison inside and outside transformer field with the drifter fixed |
| Cue supports a route decision | Reproducible wait-and-divert success playthrough |
| Critical warning remains fair | Fastest supported approach and measured response margin |
| Accessibility preserves information | Audio-muted playthrough using segmented and interference overlays |
| Reset is clean | Restarts from every band, interference, contact, success, and failure |

## What is not claimed

This example does not claim real-world induction behavior, tested numeric thresholds, final balance, production assets, network support, gamepad haptics, or compatibility with a specific engine. Those claims require implementation and direct evidence in the receiving project.
