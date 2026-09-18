# <Encounter name> — Perception and trust contract

## Status and source boundary

- Project/runtime:
- Working path:
- Existing authoritative systems observed:
- User-provided fiction:
- New proposals:
- Content and representation limits:
- Untested assumptions:

## Layer lock record

Complete this record before effects work begins. Reopen the earliest contradicted lock and invalidate its dependents instead of hiding a rule change inside presentation tuning.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| World truth | | | | | | All later cue, save, and fairness work |
| Distortion scope | | | | | | Cue grammar, recovery, comfort, and tier evidence |
| Reliable anchors | | | | | | Decision, success, and failure traces |
| False-cue grammar | | | | | | Seeds, save cases, and trust traces |
| Recovery and comfort | | | | | | Comfort and accessible-path evidence |
| Reproduction proof | | | | | | Delivery claims and captures |

## Intended trust decision

Owner: **World truth**, **Reliable anchors**, and **False-cue grammar**.

> Because `<fictional cause>` affects `<cue channel>`, the player must compare `<distortable cue>` with `<reliable anchor>` before choosing `<consequential action>`. Recovery through `<action>` restores `<specific scope>` at the cost of `<time/resource/exposure>`.

## Authoritative truth layer

Owner: **World truth**.

| Fact | Owner | Can underlying fact change? | Can presentation differ? | Persistence |
| --- | --- | --- | --- | --- |
| Player position | | | | |
| Collision/routes | | | | |
| Objective | | | | |
| Threat state | | | | |
| Inventory/resources | | | | |
| Time/exposure | | | | |
| Completion/save | | | | |

## Presentation channels

Owner: **Distortion scope**.

Use `stable`, `noisy`, `substituted`, `suppressed`, `recovery-only`, or `forbidden`.

| Channel | Class | Eligible tiers | Accessible alternatives | Reason |
| --- | --- | --- | --- | --- |
| Direct geometry | | | | |
| Written labels | | | | |
| Map/compass | | | | |
| Reflection/remote image | | | | |
| Local sound | | | | |
| Distant sound | | | | |
| Dialogue/radio | | | | |
| HUD/objective | | | | |
| Camera/effects | | | | |
| Input response | | | | |
| Platform/system UI | forbidden | all | n/a | preserve real system trust |

## Exposure model

Owner: **Distortion scope**. Tune thresholds only after eligible channels and tier budgets are fixed.

| Tier | Entry | Exit | Minimum residence | Eligible changes | Simultaneous budget | Transition cue |
| --- | --- | --- | ---: | --- | ---: | --- |
| Clear | | | | | | |
| Unsettled | | | | | | |
| Unreliable | | | | | | |
| Critical | | | | | | |
| Recovering | | | | | | |

- Exposure causes:
- Accumulation rule:
- Hysteresis:
- Difficulty interaction:
- Assistance ceiling:
- Save/reload behavior:

## Reliable anchors

Owner: **Reliable anchors**.

| Anchor | Verifies | Availability | Consultation cost | Learned how? | Accessible expressions | Failure rule, if any |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

Every required decision must map to at least one usable anchor.

## Authored substitutions

Owner: **False-cue grammar**.

| True fact | Presented alternative | Context/tier | Anchor test | Tempted action | Consequence | Learning outcome |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Recovery

Owner: **Recovery and comfort**.

| Recovery action | Preconditions | Cost | Scope restored | Duration | Interruptions | Cue |
| --- | --- | --- | --- | ---: | --- | --- |
| | | | | | | |

## Safety and accessibility

Owner: **Recovery and comfort**.

- Reduced motion behavior:
- Photosensitivity-safe behavior:
- No-audio route:
- Subtitle/caption treatment:
- Color-independent route:
- Haptic alternatives:
- Deceptive-text toggle or replacement:
- Camera/FOV limits:
- Input remapping and no-repetition option:
- Pause and immediate opt-out:
- Content warning boundary:

## Persistence and authority

Owner: **Reproduction proof**.

Save:

```text
exposure value and tier
fictional cause state
active authored substitution identifiers
deterministic seed or sequence position
recovery state and remaining duration
committed decisions and consequences
```

- Single-player authority:
- Private versus shared multiplayer presentation:
- Server-owned consequences:
- Late join/reconnect:
- Spectator policy:
- Deferred effects cancelled on restart:

## Success, failure, and restart

- Stable teaching sequence:
- Intended successful inference:
- Understandable false-cue failure:
- Recovery sequence:
- Non-terminal recovery after failure:
- Full reset state:

## Tunables

```yaml
exposure:
  gain_per_second: 0
  recovery_per_second: 0
  unsettled_enter: 0
  unsettled_exit: 0
  unreliable_enter: 0
  unreliable_exit: 0
  critical_enter: 0
  critical_exit: 0
presentation:
  max_simultaneous_distortions: 0
  minimum_effect_seconds: 0
  repeat_cooldown_seconds: 0
recovery:
  action_seconds: 0
  protected_seconds: 0
```

Values are placeholders. Use project units and measured context.

## Presentation evidence by tier

Capture every implemented tier in the running scene. Record the settings because reduced-motion, photosensitivity-safe, no-audio, and deception-assistance modes may deliberately use different presentation.

| Tier | Screenshot or short-capture path | Viewport/settings | Truth state held constant | Distortion visible | Notes |
| --- | --- | --- | --- | --- | --- |
| Clear | | | | | |
| Unsettled | | | | | |
| Unreliable | | | | | |
| Critical | | | | | |
| Recovering | | | | | |

## Verification

Before delivery, confirm that no late cue, setting, save, or authority change bypassed a reopen trigger in the layer lock record.

| Claim | Direct procedure | Expected | Observed | Evidence | Status |
| --- | --- | --- | --- | --- | --- |
| Truth remains authoritative | | | | | |
| Each tier follows its cause | | | | | |
| Required anchor stays available | | | | | |
| False cue has a learnable boundary | | | | | |
| Recovery restores declared scope | | | | | |
| Save/load reproduces committed cue | | | | | |
| Restart clears presentation residue | | | | | |
| Accessibility alternatives preserve decision | | | | | |
| System UI remains truthful | | | | | |

## Handoff

- Playable entry point:
- Controls:
- Exposure cause:
- Reliable anchor:
- Distortion demonstrated:
- Verified success/failure:
- Recovery:
- Settings tested:
- Per-tier capture paths:
- Reused assets/proxies:
- Untested environments:
- Representation limitations:
