# Gameplay video analysis contract

Fill this contract before extracting findings. It may be a working document or an equivalent project record. Keep declared facts, runtime observations, inferences, and new proposals in separate sections.

## 1. Scope lock

| Field | Value |
| --- | --- |
| analysis ID / date | |
| requester and intended use | |
| series / season / episode ID | |
| local files | |
| concrete URLs | |
| channel/list URL and extraction method | |
| uploaded screenshots (0–3) and ownership | |
| optional style reference and role | |
| desired question | |
| sample target: single / batch / 20 / 30 / 50 | |
| per-episode reports required before synthesis | yes / no |
| selection rule and seed | |
| authorized retention and sharing boundary | |
| downstream handoff requested | none / route / chase-route |

If the source is a creator upload page, keep a separate machine-readable ranking record in [`channel-sampling.json`](channel-sampling.json). The public case archive should receive only de-identified study IDs after the operational ranking and ownership review are complete.

## 1a. Channel or upload-list sampling

| Field | Value |
| --- | --- |
| selection basis | top views descending / latest / random seed / stratified |
| ranking snapshot (UTC) | |
| sort verified from page/API response | yes / no |
| requested count | |
| resolved count | |
| pagination/pages read | |
| one-video probe ID and result | |
| next safe input after an unavailable source | user-provided media / authorized media connector / stop |
| bulk gate | blocked / open |
| exclusion reasons | |

For the requested “top 30 by views” mode, capture the ranking snapshot and observed view count for every candidate. Do not call the list top-30 until the sort is verified, the probe succeeds, and excluded or unavailable uploads are recorded.

## 2. Capability and authorization check

```markdown
media connector available:
local decoder available/version:
caption source available:
Jev gateway configured: yes/no/not tested
configured key location (do not record secret):
local storage budget:
known access or rights limits:
```

If a URL is remote, record the single-video probe before any batch attempt:

| URL ID | concrete video URL | probe command intent | format/caption/metadata result | duration/size | status and reason |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

## 3. Source ledger

| Source ID | kind | origin | acquired? | duration | video/audio/captions | edit/quality notes | permitted use |
| --- | --- | --- | --- | --- | --- | --- | --- |
| V01 | | | | | | | |

Record failed, skipped, and excluded items too. Never imply that a list or batch is complete without this ledger.

## 4. Pilot and dual-clock time model

The first source is the pilot. Do not process the rest of a batch until this section has a usable result and a go/no-go decision.

```markdown
pilot source ID:
analysis mode: edited highlight / unedited run / live stream / mixed
source runtime:
known experience time:
estimated experience-time range:
estimate basis: chapter markers / retries / save-load / creator statement /
  repeated landmarks / external run record / other
campaign position: observed / reported / inferred / unknown
pilot decision: continue batch / request cleaner source / stop
```

Keep these clocks separate in every beat:

| Clock | Meaning | Allowed value |
| --- | --- | --- |
| source time | elapsed time in the file | exact seconds or timecode |
| experience time | estimated elapsed play/story time | point, range, or `unknown` |
| editorial gap | removed, reordered, accelerated, or obscured material | interval/range plus reason |
| design time | new pacing proposal for the user's work | proposal, never source fact |

Write the machine-readable companion to [experience-timeline.json](experience-timeline.json). Do not fill an unknown gap with the length of the visible cut.

## 5. Extraction and segment ledger

| Segment ID | source and timecode | event window | extraction | cut/overlay/audio notes | evidence quality |
| --- | --- | --- | --- | --- | --- |
| S01 | | | frame/audio/subtitle/metadata | | |

Contact sheet path or manifest:

```text
sampling rule:
frame dimensions and timecode format:
keyframe triggers:
unknown/missing intervals:
```

## 6. Event table

| Time / segment | visible player action/reaction | player voice / hesitation / silence | camera/frame evidence | named sound cue | measured audio activity | world/UI response | rejected alternative and consequence | spatial/mechanic implication | claim class | confidence | alternatives |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | | | observed / reported / inferred / proposed | high / medium / low | |

Use one row for a meaningful event, not every frame. Include backtracking, hesitation, failure, recovery, jokes or laughter, camera reorientation, and explicit route decisions when present.

For every major beat, also record the emotional/design sequence. A streamer's spoken reaction belongs here as player-experience evidence, not as a substitute for game evidence:

| Beat | Setup before | Expected player question | Observable signal | Tension / arousal / curiosity / relief | Valence | Payoff or reversal | After-effect | Claim class / confidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | 0–5 each | -2 to +2 | | | observed / inferred / proposed |

Use `unavailable` when voice, face-cam, chat, or commentary is absent. Do not infer an exact feeling from a movement alone.

## 7. Layered reasoning ledger

Do not promote a tag or an attractive interpretation into a design rule until this ledger is filled for the major beats.

| Beat | Evidence | Player knowledge/resources/hypothesis/likely misread | Spatial affordance and route grammar | Coupled camera/sound/object/enemy/objective systems | Hypothesis transaction and room purpose | Attention budget and information regime | Emotional/pacing function | Player behavior produced | What would break this explanation? | New rule, tunables, and falsifiable test |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | | | | |

Use at least one explicit `because` and one `what would break it` for every high-confidence finding. If a field is unknown, preserve the unknown and lower confidence rather than filling it with genre knowledge.

For a season, add a second ledger after all episode ledgers:

| Episode | Invariant taught | Variation | Escalation | Recovery/fatigue control | Payoff or deferred expectation | Mental-model change |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

## 8. Abstract route and 2.5D annotation

```text
Node IDs / landmarks:
Observed directed edges:
Strongly inferred edges:
Candidate/unknown edges:
Height bands and transitions:
Doors, gates, drops, shortcuts, and recovery anchors:
Sightlines and occlusion beats:
Acoustic source, masking, and warning distance:
Source segment for each claim:
Confidence and missing view:
```

The annotation must abstract topology and relationships. It must not reproduce a copyrighted map, UI, labels, or distinctive layout beyond what is necessary to discuss the user's authorized source.

## 9. Mechanism tags and cross-video clusters

| Tag | Operational definition in this study | supporting segments | videos | confidence | design implication |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

For 20/30/50-video work:

```text
cluster features:
independent source count:
coverage and excluded sources:
selection bias:
outliers retained:
plot-only material removed:
episode reports completed before synthesis:
local episode clock versus cumulative series clock:
```

## 10. Patterns, anti-patterns, and transfer

| Type | observed relationship | likely player effect | conditions | evidence | new test |
| --- | --- | --- | --- | --- | --- |
| pattern / anti-pattern | | | | | |

Every transfer must be a new design proposal, not a copied room, line, enemy, map, or visual identity.

## 11. Optional Jev audit

```text
gateway: typesafe-ai/jev through configured AI Gateway
input schema and extracted fields:
question types: typed classification / score / boolean
prompt or evaluator version:
sample audited manually:
outputs and failures:
human overrides:
secret handling:
timeline JSON output path:
curve fields checked against evidence:
```

Jev may classify extracted text/events only. It is not evidence that the raw video was understood by the model.

## 12. Chase-route handoff (if requested)

```text
design name (new, not source title):
start state and player objective:
threat trigger and observed/inferred basis:
threat state transitions:
route choices and intended tradeoffs:
sightline breaks / reveals:
acoustic cues and masking:
landmarks and reorientation:
recovery anchor:
failure, retry, save, and persistence:
no-softlock checks:
open questions and capture needed:
```

## 13. Truthful completion record

```text
sources actually analyzed:
sources failed or excluded and reasons:
claims downgraded because of missing evidence:
source-time versus experience-time gaps:
emotional/design beats represented in JSON:
copyright/privacy actions:
screenshots requested but absent:
known limitations:
recommended next capture:
```
