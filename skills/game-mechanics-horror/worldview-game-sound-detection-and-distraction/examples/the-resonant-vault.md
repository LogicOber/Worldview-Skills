# Original example — The Resonant Vault

This is a new fictional scenario written for this repository. It is an implementation example, not a claim that a playable build exists.

## Invocation

```text
/worldview-game-sound-detection-and-distraction

Use the existing circular vault, its bell-glass and cork floors, and the sightless
caretaker. Let the player's footsteps, recorder, and five-click resonator create
authoritative sound events that travel through the vault's doors. The resonator
should buy one real recorder window without disabling sight or stronger evidence.
Verify quiet travel, redirection, competing sounds, a late failure, and restart.
```

## Brief

Beneath a weather station, the player must copy a pressure record from a hand-cranked recorder in a circular storage vault. A sightless caretaker moves between the recorder and the only return stair. The floor alternates between suspended bell-glass panels and strips of cork. The player carries one wind-up resonator that clicks five times wherever it is placed and can be retrieved after it stops.

The intended decision is not “throw an object and disable the enemy.” The player must decide how to cross quietly, where the vault carries sound, and whether the caretaker's investigation creates enough time to operate the recorder.

## Fictional project facts

- The existing controller supports walking, sprinting, crouching, placing, retrieving, and a hold interaction.
- Floor contacts already expose stable material IDs.
- The vault has three rooms connected by door portals; door states are authoritative.
- The caretaker has navigation, current sight confirmation at short range, and a patrol state, but no hearing memory.
- The recorder requires 2.2 seconds of continuous cranking.
- The project is single-player and supports subtitles plus controller vibration.

## Layer lock record

This is a filled proposal. The named evidence files do not exist until an implementation produces them, so no row is yet a verified runtime claim.

| Lock | Concrete locked content | Lock condition and evidence path | Still mutable | Reopen trigger and invalidated work |
| --- | --- | --- | --- | --- |
| Emission-event lock | One event per foot plant, crank start, or resonator click; captured world origin; monotonic event ID; five resonator clicks at 0.7-second cadence | Close after event traces at `gameplay/resonant-vault/verification.md#snd-01` | Source intensities and the five-click cadence inside tested ranges | A second footstep callback or moving resonator source invalidates propagation, priority, persistence, and duplicate tests |
| Propagation-map lock | Three-room portal graph; `received = max(0, base * product(portal multipliers) - 0.25 * within-room path meters)`; open link `0.75`, closed link `0.20`; routine threshold `2.5` | Close after open/closed and threshold traces at `#snd-02-to-03` | Multipliers and falloff inside the same three-room topology | Adding a vent, moving a door owner, or changing from portal to direct distance invalidates threshold, score, and route traces |
| Listener-decision lock | `score = received_intensity - 0.20 * age_seconds`; sight bypasses sound; redirect only when candidate score is strictly greater than current score + `0.75`; exact equality retains current; idle ties use higher received intensity, earlier `started_at`, then lower event ID. A same-resonator/same-origin click heard during travel updates `last_heard_at` without changing route; after arrival it resets the 3.50-second inspection deadline. | Close after fixed-origin, sight, switch-margin, equality, idle-tie, and same-origin tests at `#snd-04-to-06c` | Threshold, age rate, and `0.75` margin inside verified ranges | Any score term, comparator, margin, tie order, sight override, or refresh rule invalidates response code and all competition/timing evidence |
| Distraction-opportunity lock | Resonator at east portal; caretaker route crosses recorder junction; `0.45 + 4.00 + 3.50 = 7.95 s` commitment; player `0.65 + 1.20 + 2.20 + 0.80 = 4.85 s`; proposed margin `3.10 s` | Close after successful and late/noisy traces at `#snd-07-to-08` | Named route timings and device count inside verified bounds | Moving the recorder, east portal, junction, or changing crank duration invalidates the 3.10-second margin and both outcome traces |
| Hearing-authority proof lock | Single-player simulation owns IDs, propagation, memory, device, objective, and outcome; captions/haptics consume the same event without affecting AI; network rows SND-12A–12E are `not applicable` | Close after restart, accessibility, and render-schedule evidence at `#snd-09-to-11` | Caption wording and capture format without extra knowledge | Network play, a new information channel, or save-boundary change invalidates authority, accessibility, and restart evidence |

If the recorder moves west of the caretaker junction, reopen the **Distraction-opportunity lock**; discard the 7.95-second commitment, 4.85-second player time, 3.10-second margin, and both the success and louder-evidence failure traces.

## Proposed event language

Gameplay intensity uses a normalized 0–10 scale unrelated to playback volume.

| Source | Base intensity | Notes |
| --- | ---: | --- |
| Crouch step on cork | 1.0 | intended quiet baseline |
| Walk on cork | 2.0 | received only at close range |
| Walk on bell-glass | 4.5 | carries across one open portal |
| Sprint on bell-glass | 7.0 | strong enough to interrupt routine investigation |
| Recorder crank start | 5.0 | one impulse, not one event per frame |
| Resonator click | 6.0 | five event IDs at a fixed 0.7-second cadence |

These are proposals to test, not simulated decibels.

Propagation follows the vault's room-portal graph. Open portals apply `0.75` per link; closed doors apply `0.20`; distance within each room supplies additional linear falloff. The caretaker's routine threshold begins at `2.5`. Current visual confirmation has higher priority than every resonator event.

## Listener memory and response

Each received click stores its own origin and time. The caretaker orients toward the first qualifying click, then walks to the resonator. A later click from the same resonator and origin updates `last_heard_at` without changing the route. Once the caretaker reaches that origin, the 3.50-second minimum inspection begins; a qualifying same-origin click received during inspection resets that deadline. Other sound events use `score = received_intensity - 0.20 * age_seconds`. A new origin redirects only when its score is strictly greater than the committed score plus `0.75`; exact equality retains the current target. With no commitment, ties resolve by higher received intensity, earlier `started_at`, then lower event ID. Current sight bypasses sound scoring.

At the origin it traces two short inspection arcs around the stored point, then resumes patrol if it neither sees the player nor receives a higher-priority event. It never queries the hidden player's transform to choose those arcs.

## Intended route

1. The player learns the surface difference by crossing one cork strip while the caretaker is behind a closed door.
2. The player winds the resonator, places it beside the open east portal, and retreats over cork.
3. The first click crosses the portal above threshold. The caretaker gives a visible head-and-lantern orientation response, then travels east.
4. Once the caretaker passes the recorder junction, the player crosses a short bell-glass panel and begins cranking.
5. The remaining clicks reinforce the same east target during travel; the declared 3.50-second inspection after arrival creates the recorder window. A later louder event can still redirect the caretaker under the locked priority rule.
6. The player returns by cork and retrieves the resonator after the caretaker resumes its western loop.

## Diagnostic outcomes

### Success

One resonator sequence creates one eastward commitment. The player reaches and completes the recorder interaction, returns without visual confirmation, and keeps ownership of the retrieved device.

### Failure: louder evidence wins

The player sprints across bell-glass during the investigation. That new event reaches the caretaker with greater priority, stores the crossing origin, and redirects it toward the player route. The failure follows from a declared comparison rather than an exception scripted for the scene.

### Failure: sound does not pass equally through every door

The player places the resonator in the west room and closes both intervening doors. The first click falls below threshold. The caretaker continues patrol, leaving the recorder blocked. Feedback shows that the device emitted, while the lack of the caretaker's orienting response shows it was not received.

### Failure: sight overrides uncertain sound

The player activates the resonator while already in the caretaker's short clear sight line. Confirmed pursuit remains dominant; the routine click does not erase visual knowledge.

## Accessibility behavior

- Every player-generated gameplay event can drive a small non-color-only intensity pulse near the character reticle.
- Directional captions report event kind and coarse direction when the player could normally hear it; they do not display the hidden caretaker path.
- The caretaker's receipt uses a lantern tilt and a short captioned mechanical intake in addition to sound.
- Playback-volume changes do not alter gameplay intensity.
- Vibration may be disabled; the visual pulse remains.
- A planning assist may show three qualitative bands—quiet, carries nearby, carries through an open portal—derived from the same propagation query before placement.

## Required evidence

- event logs showing one identity per footfall, crank start, and resonator click;
- propagation traces through open and closed portal states;
- just-below and just-above caretaker threshold tests;
- proof that stored click origin remains fixed while the player moves;
- deterministic priority tests on both sides of the `0.75` switch margin, at exact equality, through the idle tie order, for same-origin refresh, and against current sight;
- measured caretaker commitment and player recorder timing;
- restart during click sequence, investigation, search, pursuit, success, and failure;
- equivalent rule outcomes at two render schedules;
- one screenshot labeled as scene evidence rather than hearing evidence.

Until those checks run, every numeric value and route claim in this example remains proposed.
