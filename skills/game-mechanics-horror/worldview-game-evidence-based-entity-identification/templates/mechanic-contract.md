# <Case name>

## Purpose

What uncertainty should the player resolve? Which observations, risks, and interpretations should make the final identity feel earned?

## Source boundary

### Declared by the user or project

- World taxonomy:
- Existing map and playable entry:
- Existing case/entity authority:
- Existing instruments and journal:
- Existing pressure behavior:

### Observed in a running build

- Observation:
- Evidence location:

### Proposed for this case

- Candidate, evidence rule, test, or asset:
- Why it is needed:
- What could change it:

## Layer lock record

Complete the locks in order. When later evidence contradicts a lock, reopen the earliest affected artifact and invalidate its dependent work before continuing.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Candidate Matrix Lock |  |  |  |  |  |  |
| Test Protocol Lock |  |  |  |  |  |  |
| Evidence Ledger Lock |  |  |  |  |  |  |
| Identification Outcome Lock |  |  |  |  |  |  |

## Candidate matrix — Candidate Matrix Lock

| Candidate ID | Evidence A | Evidence B | Evidence C | Additional behavior | Distinguishing path |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

- Identity selection rule:
- Debug seed/reproduction method:
- Required accepted-evidence threshold:
- Matrix-validation output location:

Confirm no two candidates remain indistinguishable under reachable tests.

## State ownership — Candidate Matrix and Evidence Ledger Locks

| Record | Owner | Created | Mutated by | Cleared/versioned |
| --- | --- | --- | --- | --- |
| Case identity |  |  |  |  |
| Evidence capability |  |  |  |  |
| Entity state/opportunity |  |  |  |  |
| Evidence ledger |  |  |  |  |
| Player hypothesis |  |  |  |  |
| Outcome |  |  |  |  |

## Case relationship and provenance model — Evidence Ledger Lock

| Evidence ID | Claim source and basis | Source interest/bias | Direct observer and position | Time/place | Claim or observed behavior | Physical residue / institutional trace | Confidence | Contradicts | Prediction | Unlocks or forbids |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |  |  |  |  |

| Object or access ID | Physical owner / controller | Knowledge holders | Transfer or access history | Case relevance | Save/load authority |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

- Mixed helpful behavior retained:
- Mixed harmful behavior retained:
- What sympathetic context changes:
- Harm or uncertainty it does not erase:
- Final operational relationship: contain / avoid / cooperate conditionally / expose / release / other:
- Why the conclusion changes an action rather than only a label:

## Player verbs

| Verb | Input | Preconditions | State change | Risk/feedback |
| --- | --- | --- | --- | --- |
| Equip/place instrument |  |  |  |  |
| Prepare environment |  |  |  |  |
| Observe |  |  |  |  |
| Retreat/recover |  |  |  |  |
| Record/filter hypothesis |  |  |  |  |
| Submit identity |  |  |  |  |
| Perform post-identification action |  |  |  |  |

## Evidence protocol: <Evidence A> — Test Protocol Lock

- Question asked of the world:
- Preparation:
- Eligibility: range, zone, orientation, entity state, obstruction:
- Observation window:
- Positive result and cues:
- Valid negative and required opportunity:
- Inconclusive causes and cues:
- Contamination causes and cues:
- Retry/recovery:
- Tool lifecycle and ownership:

Duplicate this section for every evidence family.

## Evidence event and ledger — Evidence Ledger Lock

```text
case ID:
evidence type:
result class:
test instance ID:
simulation time:
supporting conditions:
player/team owner:
claim source and declared basis:
observer and observation position:
physical owner reference:
knowledge-holder references:
behavior/residue/institutional trace:
confidence class:
contradiction links:
prediction:
unlocked or forbidden action:
```

- Idempotency rule:
- Observed layer:
- Interpreted layer:
- Hypothesized layer:
- Automatic assistance, if any:

## Map and opportunity contract — Test Protocol Lock

| Test/landmark | Stable location | Required state | Available retreat | Recovery/new opportunity |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Pressure contract — Test Protocol and Identification Outcome Locks

- Pressure source and owner:
- Warning cues:
- Effect on each active test:
- Evidence preserved on retreat:
- Failure condition:
- Recovery:
- Why required tests remain possible:

## Identification and consequence — Identification Outcome Lock

- Submission location or action:
- Earliest legal submission:
- Authority checks:
- Correct result:
- Wrong result:
- Insufficient result:
- Brute-force prevention:
- Concrete post-identification action:

## Tunables

| Name | Value | Unit | Why this value | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success and failure

| Reasoning/action path | Available evidence | Outcome | What the player can learn |
| --- | --- | --- | --- |
| Correct identification |  |  |  |
| Wrong/insufficient identification |  |  |  |
| Pressure failure |  |  |  |

## Restart and replay

- Retry same case behavior:
- Generate new case behavior:
- Case version increment:
- Identity/seed reset:
- Entity and instrument reset:
- Active windows/callbacks cleared:
- Ledger and hypotheses cleared:
- Pressure and outcome reset:
- Claim, witness, behavior, and contradiction reset/persistence:
- Physical-owner references rebuilt from authoritative inventory/world state:
- Knowledge ownership restored per actor rather than globally:
- One-shot objective effects restored without replay:
- Removed actor/object IDs retain last verified state:

## Accessibility and input

- Supported input families and remapping:
- Audio-independent evidence:
- Color-independent evidence:
- Motion-independent evidence:
- Scalable notebook and narrow viewport:
- Timing adjustments and solvability recheck:

## Network authority

Complete only when actually networked.

- Authoritative identity and test owner:
- Shared versus personal ledger:
- Client requests and validation:
- Replicated findings/provenance:
- Hidden data not replicated:
- Duplicate observation rule:
- Late-join/disconnect behavior:
- Submission race and restart behavior:

## Verification

- [ ] Candidate matrix is uniquely solvable under reachable tests.
- [ ] Every candidate’s required positives were forced or seeded and observed.
- [ ] Every valid negative used a complete known-good opportunity.
- [ ] Early or invalid sampling remains inconclusive.
- [ ] Every contamination source is identifiable and recoverable.
- [ ] Interrupted tests receive the correct result class.
- [ ] Duplicate events do not duplicate ledger evidence.
- [ ] One complete correct reasoning trace reaches a world consequence.
- [ ] Wrong and insufficient commitments follow declared outcomes.
- [ ] A pressure-caused failure is legible.
- [ ] Same-case restart and new-case generation clear/version all state.
- [ ] Supported input, viewport, accessibility, and network paths were tested.
- [ ] At least one claim is separated from direct observation and retains its source and basis.
- [ ] One sincere-but-wrong claim can be contradicted without rewriting its history.
- [ ] Helpful and harmful behavior remain separate; context does not erase retained harm.
- [ ] Physical ownership and knowledge ownership are stored by their authoritative systems and referenced correctly.
- [ ] A human or institutional trace changes a hypothesis or action without being treated as creature-trait flavor.
- [ ] Save/load after claim, observation, transfer, contradiction, and unlock preserves exact provenance and effects.
- [ ] Screenshot, matrix check, ledger trace, and playthrough are recorded separately.
- [ ] Untested conditions and limitations are listed.
- [ ] No late candidate, protocol, ledger, or outcome change bypassed the reopen rule; invalidated dependent evidence was rerun.
