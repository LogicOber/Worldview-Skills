# Original example — The Ash Cartographer

This fictional scenario was created for this repository. It demonstrates the roaming-pressure contract and is not evidence that an implementation already exists.

## Invocation

```text
/worldview-game-roaming-stalker-pressure

Use the four existing weather-station zones and their streamed connectors. Make
one ash cartographer roam between them, follow only declared evidence, and create
bounded pressure while the player calibrates three instruments. It may travel
abstractly through an unloaded connector but may materialize only at a legal
loaded anchor. Include warning, counterplay, recovery, save/load, and restart.
```

## Brief

The player must calibrate three instruments in a cliffside weather station: the rain drum in the lower gallery, the cloud lens in the east dome, and the wind vane above the west bridge. An ash-covered cartographer roams the station, sketching changes onto hanging slate maps. It uses halls, stairs, and one narrow maintenance bridge; after the cloud lens is restored, it can also open two shutter passages.

The cartographer should feel present across the route without appearing wherever the director wants. It leaves fresh ash at connectors, moves hanging map slates, follows instrument signals to a zone, and can lose the player after a bounded search. The player can lock one manual gate at a time, close shutters, or ring a remote wind cup to create evidence elsewhere.

## Fictional project facts

- The station consists of four streamable zones: central gallery, lower gallery, east dome, and west bridge.
- Stable doors and stair connectors already expose open, locked, and traversal state.
- The player controller supports interaction, crouching, sprinting, gate cranking, and one remote wind-cup charge.
- The cartographer has navigation, sight, last-known-position search, and a valid attack windup, but no cross-zone owner.
- Each instrument emits a world signal identifying its zone when calibration completes.
- The project is single-player and supports manual saves at the central desk when no episode is active.

## Layer lock record

These are completed design rows, not runtime results. Each evidence path remains required before the fictional implementation may claim verification.

| Lock | Concrete locked content | Lock condition and evidence path | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| World-route-and-identity lock | Four zones; shared main doors/stairs; west maintenance bridge is stalker-only until repair; one owner for `ash_cartographer_01`; abstract progress may cross the unloaded east-stair route, but physical staging waits for the east dome to load and pass anchor checks | Close after connector, unloaded-travel, single-instance, and materialization traces at `gameplay/ash-cartographer/verification.md#roam-01-to-04` | Connector travel times and weights among legal anchors | A zone, connector, bridge ability, streaming owner, or stalker owner change invalidates materialization, encounters, and save/load evidence |
| Stalker-knowledge lock | Current sight grants current position; ash trace grants its connector only; instrument signal grants its named zone; wind cup grants its event origin; last-known search freezes when confirmation ends | Close after evidence/hidden-movement traces at `#roam-07` | Evidence lifetime and search breadth inside the same meanings | A sense, signal payload, memory field, or precedence change invalidates search, selection weighting, and failure traces |
| Pressure-eligibility lock | `eligible = budget >= 60 AND recovery >= 35 s AND state == roaming AND no save/menu/success exclusion AND at least one legal candidate`; start spends 55; if no candidate is legal, retain budget capped at 100, start no cooldown, and do not stage; seeded ties exclude the last two connector/shape choices | Close after hard-rejection, no-candidate, below/equal/above threshold, one-time spend, cooldown, and seed traces at `#roam-04-to-05a-and09-and12` | Gain, threshold, spend, and cooldown inside verified ranges | Any input, `>= 60` comparison, exclusion, debt policy, seed rule, or hard rejection change invalidates selection and pressure-route evidence |
| Encounter-and-warning lock | Lower-gallery connector crossing and east/west objective investigation/search; warning follows actual route with at least 3.5 s before contact; gate, wind cup, hiding, and rotating screen change simulation state; episodes withdraw into 35 s recovery | Close after warning, counterplay, withdrawal, and bounded-route traces at `#roam-06-and-08-to-10` | Warning/search/attack values inside verified ranges | Moving an anchor or objective, changing a cue, counterplay, route, or contact rule invalidates outcome and accessibility traces |
| Persistence-and-authority lock | Single-player world owner controls identity, abstract connector progress, knowledge, budget, seed, materialization, attack, objectives, and success; saves exclude an in-flight materialization transaction and reconstruct it from connector progress | Close after abstract-travel save/load, every-state restart, and settings traces at `#roam-03-and-11-to-13a`; network rows ROAM-13B–13F are `not applicable` | Trace and presentation format | A save boundary, host topology, relevant-player set, or replication path invalidates persistence, authority, accessibility, and restart evidence |

If the east stair becomes a streamed lift with no abstract connector state, reopen the **World-route-and-identity lock**, **Pressure-eligibility lock**, and **Persistence-and-authority lock**; discard the east-stair travel timing, unloaded save/load trace, east-dome staging selection, and every dependent encounter replay.

## Zone and identity proposal

One world-level owner holds `stalker_id: ash_cartographer_01`. Local zone scenes never instantiate an autonomous duplicate. When the cartographer takes the east stair while the east dome is unloaded, the owner records connector progress and advances abstract travel at the connector's measured time without a local scene instance. It cannot stage, foreshadow, or make contact there. Materialization occurs only after the east dome loads and a declared anchor passes route, visibility, recent-inspection, occupancy, distance, and exclusion checks.

The central desk and its short approach are excluded while saving. Instrument interaction spaces are interruptible except for the final 0.35-second calibration latch, during which new contact cannot begin.

The player and cartographer share stairs and main doors. The west maintenance bridge is cartographer-only until the player repairs its floor after calibrating the cloud lens. The relationship is communicated by an earlier distant crossing.

## Territory grammar, claim, and first safe observation

Before the first contact-capable episode, the route teaches three territory cues:

| Cue | What it predicts | Safe proof |
| --- | --- | --- |
| a straight ash line beneath a latch | the cartographer physically crossed that compatible door; it does not prove current presence | the player inspects the east-stair line while the central desk exclusion is active |
| a slate rotated toward a connector | the cartographer inspected or selected that route during a prior pass | from protected desk glass, the player sees it rotate a lower-gallery slate and leave north |
| two narrow parallel prints at a maintenance rail | the cartographer can use the narrow west bridge that is not yet player-safe | the player watches one distant crossing through the cloud lens before any west encounter is eligible |

A handwritten station warning claims, “The cartographer never crosses a working rain channel.” The writer is a former technician describing an earlier configuration and appears sincere. The first safe observation contradicts the universal claim: the cartographer crosses above the channel on the maintenance rail without touching its water. The authoritative rule is narrower—the wet floor slows its main-door traversal but does not block the overhead rail.

The warning remains in the evidence history with its claimant and context. It is not rewritten as a lie. The player can now predict that flooding the main lower-gallery threshold buys time but cannot make the west rail safe.

## Pressure proposal

Pressure uses a 0–100 scheduling budget. The following values are example proposals rather than proven balance:

- normal exposed travel adds 0.6 per second;
- entering a newly calibrated instrument zone adds 8 once;
- completing an instrument signal adds 24;
- a full episode is eligible at `budget >= 60`, not merely “high pressure”;
- beginning a full pressure episode spends 55;
- recovery requires at least 35 seconds and a return to roaming state;
- safe saving and accessibility menus do not add debt;
- if budget is at least 60 but no candidate is legal, the director retains it capped at 100, starts no cooldown, and stages nothing.

Choice is seeded for reproducible testing and weighted away from the last two connectors and encounter shapes.

## Warning language

- **Connector crossing:** ash sifts from the actual approaching door, followed by slate movement and directional steps. Minimum contact time is proposed at 3.5 seconds.
- **Objective investigation:** the completed instrument changes a station bell pattern; the cartographer answers from the first connector on its valid route. The signal reveals the instrument zone, not the player's later hiding place.
- **Nearby search:** chalk strokes appear only at a trace site the cartographer physically reached. Directional captions and slate motion carry the same coarse route information as audio.

No global sting claims a direction unrelated to the actual path.

## Bounded route

### Orientation and first evidence

The player leaves the central desk for the lower gallery. A fresh ash line at the east stair records a previous cartographer crossing. The director cannot begin contact yet; this is trace evidence that teaches the connector language.

### Rain drum — route crossing

Calibrating the rain drum raises the budget and signals the lower gallery. The legal selected encounter stages the cartographer above the north stair. Ash and slate warnings give the player time to close the north gate or retreat through the longer pump stair.

If the player closes the gate before the cartographer commits to the connector, its path is invalidated and it reroutes through the gallery. The player spends gate position: only one manual gate can remain locked, so this counterplay changes later options.

If confirmation is broken at the pump stair, the cartographer searches the rain-drum alcove, north-gate recess, and last-heard pump landing in that order. It releases only after those three declared sites are clear or the remote wind cup supplies newer evidence. It then withdraws through the central-gallery north connector. The player receives the end state through receding directional steps, the visible central slate turning north, and the caption `ASH ROUTE: NORTHBOUND`. The 35-second recovery starts only after that connector crossing commits.

### Recovery and choice

The cartographer crosses the central gallery at a distance rather than starting pursuit. It enters recovery and continues toward the east dome. The player may visit the desk only after the episode closes. Saving retains its current connector and used encounter history.

### Cloud lens — objective investigation

Completing the lens rings the east bell. The cartographer learns `east_dome_signal`, not the player transform. The player can remain and risk the final shutter opening, hide using the project's declared sight rules, or spend the wind-cup charge in the central gallery. The remote event redirects investigation only if the cartographer has no current sight.

When the lens completes, shutter passages become valid stalker connectors and the change is shown by the cartographer opening one at a distance. This new ability is not enabled silently.

Breaking sight inside the dome starts a two-site search of the lens cradle and east shutter. Closing the shutter before approach removes the second site and causes immediate withdrawal down the east stair; a timer alone cannot end the search while either legal site remains unchecked.

### Wind vane — stronger search

The west bridge creates a search encounter. Warning arrives through the actual repaired bridge. The player can lock the gallery gate, retreat around the exterior stair, or finish the vane and use its rotating screen to break sight. Ignoring the warning while holding the calibration produces a valid pursuit and possible failure.

### Success

When all three stable objective IDs commit, success locks before any new pressure opportunity. The cartographer may appear at a distant slate balcony as presentation, but cannot start another attack.

## Hard rejection examples

- The east dome anchor is rejected while visible through the lens.
- The west bridge exit is rejected for eight seconds after the player fully inspects its dead end.
- The central desk approach is rejected during save and load stabilization.
- A point beyond the closed north gate is rejected if no valid cartographer route reaches it.
- An east-dome physical anchor is rejected while that zone is unloaded; the cartographer may continue its separate abstract east-stair progress without staging an encounter.
- A lower-gallery candidate is rejected when both exits are broken and the player has no supported counterplay.
- If every point fails, the director leaves the cartographer roaming and may present only a distant trace later.

## Diagnostic outcomes

### Success through route reasoning

The player recognizes the lower-gallery warning, closes the north gate, completes the rain drum, and uses recovery to reach the desk. Later, the player spends the wind cup after the cloud signal and preserves the west gate for the final vane. Each action changes a route or evidence state.

### Failure from ignored warning

The player continues calibrating the vane through the minimum warning, remains in a clear sight line when the cartographer enters, and fails to break sight before the valid attack windup resolves. The trace records warning, route, confirmation, windup, and contact.

### Capture recovery with retained route knowledge

Capture at the vane returns the player to the central desk after the rain drum and cloud lens. Completed instruments, repaired west bridge, gate state, and the single cartographer identity persist. Immediate confirmation, attack, search, and in-flight warning clear. The cartographer reconstructs halfway along the west-to-central withdrawal connector with no player position evidence; the director enters the full 35-second recovery and cannot select the west bridge for the next episode.

The player's route notebook retains the observed maintenance-rail crossing and adds the exact connector that produced the vane warning. This is the retry modifier: it improves territory knowledge without opening a door or revealing live position. The spent wind-cup charge remains spent if the authoritative event had already emitted; a capture before emission restores the staged item. No hidden pressure debt, increased speed, or extra stalker copy is added.

### Canceled opportunity

The budget reaches exactly 60 while the player stands at the only west-bridge exit and the other connector is locked. Every candidate either blocks the mandatory step or offers no counterplay. The director retains budget 60, starts no cooldown, chooses no encounter, and does not spawn behind the player.

### Save/load continuity

The player saves after the rain-drum episode with the cartographer halfway through abstract east-stair travel and the east dome unloaded. Loading restores the same identity, connector progress, gate state, encounter history, spent budget, and recovery time without a local stalker instance. Loading the east dome later runs the physical anchor predicate once; it does not instantiate a second cartographer or begin an encounter before the anchor passes.

Saving during rain-drum search restores the exact remaining sites and last-known evidence. Saving after release restores the selected north withdrawal connector and end cue state; it does not place the cartographer back outside the hiding place. Saving after capture restores the retained notebook cue, west-bridge exclusion, resource transaction, and recovery state exactly.

## Accessibility behavior

- Every contact-capable warning has directional captions and a world-motion cue in addition to spatial audio.
- Reduced effects remove screen ash and camera impulse while preserving stable slate and caption cues.
- A timing assist extends minimum warning and attack windup through named values; hard candidate exclusions never weaken at higher difficulty.
- Menu, text-reading, and central-desk save time do not accumulate pressure debt.
- Gate cranks support hold or toggle and can be interrupted safely.

## Required evidence

- single-ID and single-instance traces across all streaming transitions;
- connector traversal and abstract-travel timing logs;
- candidate lists showing each hard rejection reason and a valid no-encounter result;
- budget traces just below, exactly at, and above 60 with one legal candidate held constant, followed by one-time spend and recovery/cooldown start;
- warning-to-contact measurements for every supported presentation mode;
- proof that objective signals reveal zones rather than the live player position;
- gate, wind-cup, hiding, search, withdrawal, and cooldown state traces;
- territory-cue and first-safe-observation traces proving one route prediction before contact;
- local-warning provenance plus observed contradiction without rewriting the warning;
- release traces proving search sites, withdrawal connector, end cue, and cooldown occur in order;
- capture traces from warning, pursuit, search, and release with the declared retained knowledge and resource boundary;
- seeded route replays with legal variation;
- save/load during roaming, abstract travel, recovery, and post-objective state;
- restart from staging, warning, pursuit, search, success, and failure;
- one screenshot labeled as spatial evidence only.

Until those checks run in the fictional project, all timings, budget values, and route outcomes remain proposals.
