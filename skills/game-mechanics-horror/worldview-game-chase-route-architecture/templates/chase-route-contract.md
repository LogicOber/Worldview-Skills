# Chase route contract

Fill this file before implementation. Keep declared project facts, observed runtime facts, and new proposals separate. Do not treat a generated floor plan as runtime proof.

## Brief

- Encounter name:
- Player promise:
- Story position (early / middle / late / finale):
- Intended duration:
- Existing project and runtime:
- Primary input devices:
- Required horror mechanics:
- Accessibility constraints:

## Source boundary

### Declared by the user or project

- World and story rules:
- Existing map or screenshots:
- Existing player and pursuer:
- Existing items, doors, checkpoints, sound, microphone, or sanity systems:

### Observed in a running build

- Build/version:
- Map facts:
- Collision/navmesh facts:
- Perception facts:
- Player reaction or playtest observation:
- Evidence paths:

### Proposed additions

- New geometry:
- New route rule:
- New item or sensor:
- Why it is needed:
- What would cause it to be reopened:

## Layer locks

| Lock | Artifact | Locked when | Mutable fields | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- |
| Route promise | | | | | All later locks |
| Architectural graph | | | | | Runtime geometry and route traces |
| Runtime geometry | | | | | Navmesh, LOS, audio, timing |
| Pursuer evidence | | | | | AI, route pressure, failure traces |
| Route readability | | | | | Signage, lighting, UI, tutorial beats |
| Interacting mechanics | | | | | Item, sound, microphone, sanity traces |
| Timing and margin | | | | | Balance claims and captures |
| Checkpoint and reset | | | | | Retry and soft-lock evidence |
| Presentation and delivery | | | | | Screenshot, URL, final claims |

## Diagram legend

| ID | Landmark or edge | Architectural geometry | Collision/navmesh | LOS | Audio/noise | Player meaning |
| --- | --- | --- | --- | --- | --- | --- |
| A01 | Player start | | | | | |
| A02 | Main route landmark | | | | | |
| A03 | Alternate route | | | | | |
| A04 | Pursuer commitment | | | | | |
| A05 | Item or interaction gate | | | | | |
| A06 | Checkpoint / recovery | | | | | |
| A07 | Success boundary | | | | | |

Attach the current diagram here or record its path, version, coordinate scale, author, and generation tool. Red may mark player success/failure routes, but the legend must distinguish player paths from pursuer paths, visibility, sound, and blocked edges.

## Route graph

| Edge | From → to | Player action | Pursuer response | Cost/risk | Failure and recovery | State carried across merge |
| --- | --- | --- | --- | --- | --- | --- |
| R01 | | | | | | |
| R02 | | | | | | |
| R03 | | | | | | |

### Required route set

- Main successful route:
- Alternate successful route (if any):
- Survivable wrong route:
- Deliberately fatal or capture route:
- Recovery / retreat edge:
- First-attempt learning beat:
- Merge landmark:

## Edge decision audit

Complete this for every edge that can change success, capture, resource, or route knowledge. Do not leave “cue,” “cost,” or “recovery” as generic words; name the actual object, sound, landmark, input, and state.

| Edge | Notice before commitment | Player hypotheses | Commitment and cost | Pursuer knowledge/response | Immediate feedback | Wrong but useful result | Recovery anchor | Next-attempt change |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| R01 | | | | | | | | |
| R02 | | | | | | | | |
| R03 | | | | | | | | |

### Shortcut review

Mark each as `absent`, `present with repair`, or `accepted with reason`:

- [ ] Live-transform pursuit through walls.
- [ ] Decorative corridors with no route trade.
- [ ] One correct door with no safe rehearsal.
- [ ] Key/fuse fetch that does not change a route variable.
- [ ] Random branch or capture with no observable cause.
- [ ] Checkpoint that repeats solved setup.
- [ ] Generated diagram used as runtime proof.

## Player and pursuer timing

Record world units, not only seconds. Include acceleration, door/lever animations, camera or interaction locks, sound generation, and the narrowest turn.

```text
player route time = movement + interactions + animation locks + uncertainty allowance
pursuer route time = path traversal + door/obstacle handling + search/inspection hold
timing margin = pursuer route time - player route time
```

| Scenario | Player path | Player time | Pursuer path | Pursuer time | Margin | Result |
| --- | --- | ---:| --- | ---:| ---:| --- |
| Intended success | | | | | | |
| Early mistake | | | | | | |
| Late departure | | | | | | |
| Assisted input | | | | | | |

## Perception and linked mechanics

| Mechanic | Event | Runtime authority | Route edge changed | Player cue | Failure / reset rule |
| --- | --- | --- | --- | --- | --- |
| Sight / LOS | | | | | |
| Hearing / authored sound | | | | | |
| Microphone (optional) | | | | | |
| Sanity / perception | | | | | |
| Item or door | | | | | |
| Other | | | | | |

For microphone input, define permission, fallback input, sampling, privacy behavior, calibration, and what happens when hardware is unavailable. For sanity or perceptual distortion, never alter the collision map invisibly; keep route truth stable unless the contract explicitly makes a perception illusion the mechanic.

## Checkpoint and reset

- Checkpoint location and saved state:
- What remains solved:
- What resets:
- What is cleared from pursuer memory:
- What happens after capture:
- Soft-lock prevention:
- Restart evidence:

## Verification

- [ ] Diagram has scale, legend, IDs, version, and source.
- [ ] All route edges are legal in collision and navigation.
- [ ] LOS and audio boundaries match the authored geometry.
- [ ] One successful route and one teaching failure were played.
- [ ] Timing margins were measured at supported input settings.
- [ ] Pursuer never reads undeclared live player position.
- [ ] Item, microphone, sanity, and door dependencies were tested or marked unavailable.
- [ ] Checkpoint retries do not repeat solved busywork.
- [ ] No branch or capture state soft-locks the player.
- [ ] Screenshot and runtime URL (if available) point to the tested build.
