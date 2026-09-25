# Driving horror and divided attention contract

## Project boundary

- Project / playable entry:
- Vehicle and control model:
- Origin / destination:
- Required single ending:
- Existing camera / input / physics / save owners:
- Existing comfort and accessibility settings:
- Out of scope:

## Neighbor handoffs

| Concern | Owning system or Skill | State read | State returned | Forbidden duplicate |
| --- | --- | --- | --- | --- |
| Exterior pursuit | | | | vehicle motion truth |
| Sound detection | | | | cabin action state |
| Perception reliability | | | | instrument truth |
| Larger stranded journey | | | | route segment state |
| Campaign ending | | | | arrival commit |

## Vehicle-state ledger

| Field | Type / values | Authoritative writer | Visible proof | Save policy | Recovery |
| --- | --- | --- | --- | --- | --- |
| speed band | | | | | |
| steering authority | | | | | |
| braking state | | | | | |
| traction | | | | | |
| power | | | | | |
| damage | | | | | |
| stopped reason | | | | | |
| route progress | | | | | |

## Road-demand curve

| Segment | Entry proof | Visibility | Turn load | Obstacle load | Speed pressure | Safe glance | Stop nodes | Exit state |
| --- | --- | ---: | ---: | ---: | ---: | ---: | --- | --- |
| | | | | | | | | |

## Cabin sight-zone graph

| Zone | Entry input | Transition | Road coverage | Information / action | Max dwell | Retained controls | Exit | Accessible equivalent |
| --- | --- | --- | --- | --- | ---: | --- | --- | --- |
| forward road | | | | | | | | |
| instruments | | | | | | | | |
| mirror / side | | | | | | | | |
| passenger / cargo | | | | | | | | |
| rear equipment | | | | | | | | |

## Glance-budget rules

- Budget owner:
- Warning stages:
- Reset condition:
- Forced-forward accessibility option:
- Minimum recoverable margin:
- Behavior when optional glance is ignored:
- Behavior when mandatory information is missed:

## Control-interference table

| ID | Trigger | Affected control | Advance symptom | Common-sense response | Working response | Duration / release | Failure ceiling |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | |

## Moving/stopped threat permissions

| Threat phase | Moving | Slowing | Legal stop | Unsafe stop | Disabled | Transition evidence |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Occupant, cargo, and equipment ledger

| ID | State | Player evidence | Interaction | Moving consequence | Stopped consequence | Save / restore |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Stop nodes

| Node | Approach cue | Legal state | Benefit | Cost / exposure | Restart support | Missed-node fallback |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## Failure and recovery

| Failure | Cause proof | Immediate result | Recovery unit | Persistent cost | Ending still reachable? |
| --- | --- | --- | --- | --- | --- |
| minor collision | | | | | |
| major collision | | | | | |
| stall | | | | | |
| missed action | | | | | |
| invalid stop | | | | | |
| vehicle abandonment | | | | | |

## Save contract

- Schema version:
- Atomic fields:
- Safe checkpoint boundaries:
- Forbidden save transitions:
- Reload reconstruction order:
- Resource anti-duplication rule:
- Migration / unsupported-save policy:

## Accessibility and comfort

| Need | Default cue or input | Equivalent | Decision preserved | Runtime test |
| --- | --- | --- | --- | --- |
| reduced motion | | | | |
| no directional audio | | | | |
| non-color warnings | | | | |
| reduced simultaneous input | | | | |
| extended reaction | | | | |
| toggle interactions | | | | |

## Single-ending arrival

- Mandatory arrival fact:
- Minimum viable vehicle state:
- Allowed state variation:
- Catastrophic vehicle fallback:
- Canonical commit point:
- Ending handler reads:
- Ending handler must not write:

## Verification evidence

| Test | Setup | Expected state and visible result | Observed result | Pass / fail | Evidence |
| --- | --- | --- | --- | --- | --- |
| ignore all optional cabin checks | | | | | |
| inspect at earliest / latest window | | | | | |
| stop / pass each node | | | | | |
| common-sense response to every interference | | | | | |
| collision around camera transition | | | | | |
| stall / repair / abandon fallback | | | | | |
| save / load every segment and stop mode | | | | | |
| reduced-motion completion | | | | | |
| minimum-state arrival | | | | | |
