# <Return-route name>

## Intended spatial change

What should the player remember from the first visit? What becomes newly possible or newly risky after acquisition?

## Source boundary

### Declared by the user or project

- Blocked objective:
- Existing map and route:
- Existing item/progression system:
- Existing save and network architecture:

### Observed in a running build

- Gate behavior:
- Current reachability:
- Persistence behavior:

### Proposed for this mechanic

- Key relationship:
- Return change:
- Why each is needed:
- Evidence that would revise the proposal:

## Layer lock record

Fill these rows in order. Keep progression meanings and route snapshots aligned when any lock reopens.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Progression Relationship Lock |  |  |  |  |  |  |
| State-Aligned Route Lock |  |  |  |  |  |  |
| Return Transformation Lock |  |  |  |  |  |  |
| Atomic Application Lock |  |  |  |  |  |  |
| Navigation Pressure Lock |  |  |  |  |  |  |

## Gate contract — Progression Relationship Lock

| Field | Definition |
| --- | --- |
| Stable gate identifier |  |
| Physical obstruction |  |
| First-visit feedback |  |
| Recognition cues |  |
| Map/objective record |  |
| Accepted item or capability |  |
| Locked collision/navigation |  |
| Unlocked collision/navigation |  |

## Key-item contract — Progression Relationship Lock

| Field | Definition |
| --- | --- |
| Stable item/capability identifier |  |
| Acquisition location and action |  |
| Relationship to gate |  |
| Full-inventory behavior |  |
| Retained / consumed / installed |  |
| Authoritative owner before application |  |
| Authoritative owner after application |  |
| Installed socket/capability record |  |
| Drop and recovery policy |  |
| Save representation |  |

## Bounded target compatibility — Progression Relationship Lock

| Verb | Valid target class/precondition | Excluded target class | Range/duration | Cost/cooldown | Authoritative effect | Invalid feedback | Final-use dependency |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

- Calm teaching use:
- Pressured use and what changes around it:
- Final target-class preview:
- Why the item is not universal:

## Physical, knowledge, and operation ownership — Atomic Application Lock

| State/phase | Physical holder or socket | Knowledge holders | Authorized operators | Witnesses | World location | Save representation |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

| Handoff | Prior holder | New holder | Knowledge transmitted/retained | Permission change | Acknowledgement | Failure/disconnect fallback | Final custody |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

## Route graph — State-Aligned Route Lock

| Node | Landmark cues | Connections | Hazards | Safe anchor |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

| Connection | Direction | Condition | Traversal cost | Visible from | Persistent state |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

## Progression snapshots — Progression Relationship / State-Aligned Route Locks

### S0 — Before lock inspection

- Named safe anchor:
- Reachable nodes:
- Blocked nodes:
- Active feedback:

### S1 — Lock known, key not acquired

- Named safe anchor:
- Reachable nodes:
- Objective/map change:
- Recovery routes:

### S2 — Key acquired, return state active

- Named safe anchor:
- Reachable nodes:
- World change and visible cause:
- Return choices:
- Wrong-turn recovery:

### S3 — Gate unlocked

- Named safe anchor:
- Reachable nodes:
- Shortcut or downstream state:
- Persisted records:

## Return transformation — Return Transformation Lock

| Familiar element | What remains stable | What changes | Cause player can perceive | New decision |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Route measurements — Navigation Pressure Lock

| Measurement | Observed value | Evidence |
| --- | ---: | --- |
| Outbound traversal |  |  |
| Direct unchanged return |  |  |
| Authored changed return |  |  |
| Earned shortcut |  |  |
| Plausible wrong turn |  |  |

## Tunables

| Name | Value | Unit | Reason | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success, failure, and recovery

- Successful progression state:
- Plausible navigation or hazard failure:
- What the player learns:
- Recovery anchor and cost:
- Why no supported state becomes a softlock:

## Restart

For S0 through S3, list the authoritative progression snapshot and every transient prompt, animation, path request, trigger, threat state, audio loop, and input lock cleared on restart.

## Accessibility

- Shape/text alternatives to color:
- Visual/haptic alternatives to audio:
- Map and text scaling:
- Optional reminder:
- Breadcrumb/navigation assist:
- Timing/threat adjustment:
- Remappable interaction:

## Persistence and migration — Atomic Application Lock

- Authoritative progression records:
- Pre-commit key owner and gate state:
- Post-commit installed-socket owner and gate state:
- Atomic owner-conversion and unlock rule:
- Safe load locations by snapshot:
- Interrupted-transition recovery:
- Older-save migration:

## Multiplayer authority

Complete only if network play is implemented.

- Authoritative owner:
- Acquisition request:
- Gate interaction request:
- Idempotency rule:
- Late-join reconstruction:
- Disconnect recovery:

## Verification

- [ ] Gate feedback, collision, navigation, and map agree while locked.
- [ ] Item acquisition survives a full ordinary inventory.
- [ ] Return change occurs once and has a visible cause.
- [ ] Intended return and plausible wrong turn remain navigable.
- [ ] Shortcut obeys direction and state rules.
- [ ] Every claimed return route, including any longer alternate, independently reaches the gate.
- [ ] Key application atomically converts ownership from protected storage to the installed socket; no state contains two owners or neither owner.
- [ ] S0, S1, S2, and S3 load at named safe anchors and can reach completion.
- [ ] Accessibility routes and reminders were exercised.
- [ ] Network races were tested if claimed.
- [ ] Screenshot, logs, route traces, and limitations are recorded.
- [ ] No late implementation or tuning change bypassed a reopen trigger; every affected state graph and dependent check was invalidated and rerun.
- [ ] Every valid and excluded target class was tested; invalid use consumes no cost or ownership.
- [ ] A calm use teaches the same operation and compatibility later used under pressure.
- [ ] Physical holder, knowledge holder, operator permission, witnesses, and installed socket remain distinct through handoff and save/load.
- [ ] The final target class and consequence are previewed before final commitment.
