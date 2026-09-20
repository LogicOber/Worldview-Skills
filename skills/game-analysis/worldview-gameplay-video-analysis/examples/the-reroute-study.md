# The Reroute Study

This is a fictional, original example of a completed contract. It demonstrates the difference between timecoded evidence and a new design proposal. The names, timings, topology, tags, and conclusions are invented for this Skill and are not a source walkthrough.

## Brief

The designer supplied one authorized local MP4, `harbor-warden-run.mp4`, and asked: “Why do new players keep circling after the bell tower pursuit, and how can a new chase route teach recovery without copying this level?” No screenshots were supplied. The analyst recommended three frames for later capture but continued with the MP4.

The footage was 17:42 long, single-player, with game audio and no face-cam. It had two visible cuts and one loading screen. The route was inspected as an abstract topology, not redrawn as the source level.

## Evidence ledger

| ID | Source/timecode | Observation | Class | Confidence |
| --- | --- | --- | --- | --- |
| S01 | V01 04:06–04:32 | The player crosses a flooded hall, stops at a bell sound, rotates twice, and chooses the lit stair after the camera briefly frames a hanging red pennant. | observed | high |
| S02 | V01 04:33–04:58 | A gate shuts behind the player. They look back, test it once, then run toward the stair; a pursuer is heard but not clearly seen. | observed | high |
| S03 | V01 05:11–05:47 | At a fork, the player takes the dry passage, reaches a dead end, laughs, reverses, and returns to the pennant. | observed | high |
| S04 | V01 05:48–06:16 | The camera points toward the upper balcony while footsteps become louder; the player crouches behind a crate and waits. | observed | medium |
| S05 | V01 06:17–06:58 | After the footsteps fade, the player exits through a side door and reaches a checkpoint. The footage cuts shortly after. | observed | medium |

The pursuer's exact awareness state is not claimed: audio and movement imply pressure, but the cut and occlusion hide whether it searched, paused, or reset.

## Event interpretation

The visible loop is:

```text
bell cue → landmark scan → gate commitment → fork choice
→ bounded wrong turn → landmark reorientation → hide/wait
→ side-door recovery → checkpoint
```

The player does not appear lost everywhere. The wrong turn is short because the pennant remains visible on return. The likely confusion is not “the map is too large”; it is that the two fork branches have similar entry silhouettes and only one branch exposes a recovery landmark.

## Abstract 2.5D route annotation

```text
[Flood hall / low]
   | bell audible; pennant visible
   v
[Gate threshold / low] --closes behind player--X return blocked
   |
   +--> [Dry fork / low] --> [dead end / low]
   |        ^                  (wrong turn, recoverable)
   |        |
   +--> [Stair / up] --> [upper landing / high]
                         | footsteps masked by stone wall
                         v
                    [side door / low] --> [checkpoint]
```

Edges to the dead end and side door are observed. The pursuer route and exact balcony connection are candidate edges because the camera never gives a clean view. The main map need is a compact “return anchor” layer: landmark, last safe node, and one-way commitment should be visible without exposing the whole route.

## Mechanism tags

| Tag | Definition here | Evidence | Confidence | Transfer |
| --- | --- | --- | --- | --- |
| `landmark_reorientation` | A durable visible object lets the player recover after a wrong turn. | S01, S03 | high | Pair one memorable landmark with a bounded branch; test whether a first-time player can point back to the fork. |
| `door_as_commitment` | A readable closure changes the return decision without erasing the forward route. | S02 | high | Use a visible commitment plus a downstream recovery anchor; do not copy a gate or pennant. |
| `occluded_threat_audio` | Sound raises pressure while geometry withholds a confident enemy read. | S02, S04 | medium | Test audio direction and masking separately from enemy AI; label awareness state explicitly. |
| `bounded_wrong_turn` | A mistaken branch costs time and stress but returns through known space. | S03 | high | Set a maximum wrong-turn cost and preserve one recognition cue. |

## Pattern and anti-pattern

Pattern: “commit, confuse briefly, recover visibly.” The player receives a strong commitment cue, has a plausible but bounded wrong choice, and can use a landmark to regain the route. This is transferable when the goal is pressure with learning rather than maze exhaustion.

Anti-pattern: “unseen pursuer proves dynamic hunt.” The footage does not support that claim. The cut and occlusion make it impossible to distinguish active search from a scripted or audio-only beat. A new project should expose enough state—sound direction, partial silhouette, or an explicit reset—to let the designer test the intended pressure.

## New chase-route handoff

Design name: **The Saltline Switchback**.

```text
start state: courier enters a two-level pump station with one visible switchback
objective: reach the manual release on the upper catwalk
threat trigger: switching the first valve starts a timed search state
route choices: fast exposed ramp or slower maintenance loop with a one-use shutter
sightline beats: threat silhouette appears only at the cross-level landing;
  opaque pipe banks hide the next decision, not the recovery anchor
acoustic cues: valve clank establishes direction; water noise masks the slow loop
landmarks: striped pressure gauge at the fork; green emergency light at recovery
anchor: service alcove beside the gauge, always reachable before the final ramp
failure/retry: caught player restarts at the valve with shutter state reconstructed;
  no item duplication and no route that becomes unreachable after retry
verification: first-time tester names the two routes, identifies the anchor after
  one wrong turn, and can complete after one failed pursuit
```

This handoff borrows the relationship between commitment, bounded error, landmark, and pressure—not the source's architecture, prop, audio, enemy, wording, or visual identity.

## Limits and next capture

No screenshot was required to produce the finding, but the next capture should include one frame at the fork and one frame of the upper landing. A clean unedited run would test whether the pursuit actually searches the balcony and whether the checkpoint follows the side-door event. Until then, enemy-state claims remain medium or low confidence.
