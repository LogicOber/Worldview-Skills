# <Treatment loop name>

## Intended decision

What should the player decide after harm? What makes prompt action, delayed action, and travel to fuller treatment meaningfully different?

## Fiction and medical boundary

- Fictional premise:
- Terms that are explicitly invented or abstract:
- Realism requested? yes / no
- Approved sources and qualified reviewer, if applicable:
- Claims that must not be made:

## Representation boundary

State how the design avoids moral blame, dehumanization, disability-as-failure, and illness-as-automatic-monstrosity.

## Source boundary

### Declared by the user or project

- Existing health/status systems:
- Fictional hazard rules:
- Existing treatment and inventory:
- Route and safe locations:

### Observed in a running build

- Damage and condition behavior:
- Time/pause/save behavior:
- Feedback and accessibility:

### Proposed fictional rules

- Condition dimensions:
- Progression:
- Treatment stages:
- Why each is needed:

### Reviewed claims

| Claim | Source/reviewer | Scope | Review date |
| --- | --- | --- | --- |
|  |  |  |  |

## Layer lock record

Fill these rows in order. A later implementation detail cannot silently change an earlier fictional, causal, or representation boundary.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Fiction and Representation Lock |  |  |  |  |  |  |
| Condition Model Lock |  |  |  |  |  |  |
| Clock Policy Lock |  |  |  |  |  |  |
| Treatment Route Lock |  |  |  |  |  |  |
| Persistence and Authority Lock |  |  |  |  |  |  |

## Hazard and avoidance — Condition Model Lock

| Hazard | Readable warning | Resolution | Wound created | Avoidance/protection |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Condition dimensions — Condition Model Lock

| Dimension | Possible states | Updated by | Player-visible evidence | Saved representation |
| --- | --- | --- | --- | --- |
| Wound instance |  |  |  |  |
| Physical severity |  |  |  |  |
| Contamination |  |  |  |  |
| Infection stage |  |  |  |  |
| Treatment |  |  |  |  |
| Systemic strain |  |  |  |  |
| Recovery |  |  |  |  |

## Transition model — Condition Model / Clock Policy Locks

| From | To | Cause and clock | Evidence | Valid intervention | Exception/interruption |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

## Time ownership — Clock Policy Lock

- Authoritative clock:
- Fixed or variable step:
- Pause behavior:
- Inventory/menu behavior:
- Dialogue/cutscene behavior:
- Focus loss/suspend behavior:
- Save/load behavior:
- Random-state persistence if applicable:

## Treatment stages — Treatment Route Lock

| Stage | Preconditions | Duration | Resource and charge commit | State changed | Interrupt rule | Completion feedback |
| --- | --- | ---: | --- | --- | --- | --- |
| Inspect |  |  |  |  |  |  |
| Stabilize |  |  |  |  |  |  |
| Decontaminate |  |  |  |  |  |  |
| Protect |  |  |  |  |  |  |
| Setting-specific treatment |  |  |  |  |  |  |
| Reassess |  |  |  |  |  |  |
| Recover |  |  |  |  |  |  |

## Treatment resource ledger — Treatment Route / Persistence and Authority Locks

| Resource | Initial count | Replenishment | Stage charge | Prompt-route count after | Escalated-route count after | Authoritative owner |
| --- | ---: | --- | ---: | ---: | ---: | --- |
|  |  |  |  |  |  |  |

## Invalid and interrupted treatment outcomes — Treatment Route Lock

| Attempt or interruption | Validation/state point | Condition result | Resource reservation/count result | Timer/progress result | Player-facing explanation |
| --- | --- | --- | --- | --- | --- |
| Invalid precondition | Before reservation | No treatment effect | No reservation or decrement | Stage does not start |  |
| Interrupted before atomic commit | Timer active, commit not reached | Preserve declared pre-stage treatment state; independent condition time may remain | Release reservation; no decrement | Reset or persist only the explicitly modeled partial state |  |
| Interrupted after atomic commit | State and decrement committed | Preserve committed treatment effect | Preserve exactly one decrement | Resume feedback/reassessment; do not rerun commit |  |
| Repeated operation ID | Previously committed or rejected operation | Return recorded result | No additional decrement | No second stage |  |

## Route pressure — Treatment Route / Clock Policy Locks

| Point | Active condition | Time to reach | Treatment available | Threat interruption | Alternate route |
| --- | --- | ---: | --- | --- | --- |
|  |  |  |  |  |  |

## Tunables

| Name | Value | Unit | Fictional purpose | Tested range | Reviewed realism? |
| --- | ---: | --- | --- | --- | --- |
|  |  |  |  |  |  |

## Success, escalation, and failure

- Successful recovery state:
- Recoverable escalation:
- Resources required after escalation:
- Invalid-treatment result:
- Pre-commit interruption result:
- Post-commit interruption result:
- Failure boundary:
- Evidence shown before failure:
- Why the outcome preserves personhood:

## Accessibility and content safety — Fiction and Representation / Treatment Route Locks

- Plain-language condition view:
- Non-color and sound-independent cues:
- Reduced gore/distortion/audio mode:
- Mechanical effect adjustment:
- Timing/pause assist:
- Simplified treatment option:
- Content warning and change timing:
- Input remapping and hold alternatives:

## Persistence and restart — Persistence and Authority Lock

- Stable wound identity:
- State and transition clock saved:
- Partial treatment saved:
- Consumed resources saved atomically:
- Migration behavior:
- Offline catch-up policy:
- Transient effects cleared on restart:

## Multiplayer authority

Complete only for implemented network play.

- Authoritative owner:
- Treatment request and validation:
- Aid/consent or permission rule:
- Resource transaction:
- Duplicate/stale request behavior:
- Interruption/disconnect behavior:
- Late-join reconstruction:

## Verification

- [ ] Hazard avoidance produces no wound.
- [ ] One hazard resolution creates one wound instance.
- [ ] Prompt and delayed treatment routes follow declared transitions.
- [ ] Invalid treatment starts no stage and changes no state or resource count.
- [ ] Pre-commit interruption releases reservations, preserves the declared state, and consumes nothing.
- [ ] Post-commit interruption and repeated operation IDs preserve one effect and one resource decrement.
- [ ] Prompt and escalated routes match their exact resource ledgers, including every post-escalation charge.
- [ ] Pause, menu, save/load, suspend, and restart obey one clock policy.
- [ ] Reduced-intensity presentation preserves complete information.
- [ ] Mechanical assists and alternative inputs were exercised.
- [ ] Saves preserve state, time, treatment, and resources exactly.
- [ ] Text and outcomes passed representation review.
- [ ] Any realism claim has documented qualified review.
- [ ] Network races were tested if claimed.
- [ ] Evidence and untested limitations are recorded.
- [ ] No late state, timing, treatment, save, or presentation change bypassed a reopen trigger; all dependent checks and reviews were invalidated and rerun.
