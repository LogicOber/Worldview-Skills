# Gameplay video analysis contract

Fill this contract before extracting findings. It may be a working document or an equivalent project record. Keep declared facts, runtime observations, inferences, and new proposals in separate sections.

## 1. Scope lock

| Field | Value |
| --- | --- |
| analysis ID / date | |
| requester and intended use | |
| local files | |
| concrete URLs | |
| channel/list URL and extraction method | |
| uploaded screenshots (0–3) and ownership | |
| optional style reference and role | |
| desired question | |
| sample target: single / batch / 20 / 30 / 50 | |
| selection rule and seed | |
| authorized retention and sharing boundary | |
| downstream handoff requested | none / route / chase-route |

## 2. Capability and authorization check

```markdown
yt-dlp available/version:
ffmpeg available/version:
authorized browser automation:
caption retrieval available:
Jev gateway configured: yes/no/not tested
configured key location (do not record secret):
local storage budget:
known login, age, region, rate, or terms boundaries:
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

## 4. Extraction and segment ledger

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

## 5. Event table

| Time / segment | player action and reaction | camera evidence | world/UI/audio response | spatial/mechanic implication | claim class | confidence | alternatives |
| --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | observed / reported / inferred / proposed | high / medium / low | |

Use one row for a meaningful event, not every frame. Include backtracking, hesitation, failure, recovery, jokes or laughter, camera reorientation, and explicit route decisions when present.

## 6. Abstract route and 2.5D annotation

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

## 7. Mechanism tags and cross-video clusters

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
```

## 8. Patterns, anti-patterns, and transfer

| Type | observed relationship | likely player effect | conditions | evidence | new test |
| --- | --- | --- | --- | --- | --- |
| pattern / anti-pattern | | | | | |

Every transfer must be a new design proposal, not a copied room, line, enemy, map, or visual identity.

## 9. Optional Jev audit

```text
gateway: typesafe-ai/jev through configured AI Gateway
input schema and extracted fields:
question types: typed classification / score / boolean
prompt or evaluator version:
sample audited manually:
outputs and failures:
human overrides:
secret handling:
```

Jev may classify extracted text/events only. It is not evidence that the raw video was understood by the model.

## 10. Chase-route handoff (if requested)

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

## 11. Truthful completion record

```text
sources actually analyzed:
sources failed or excluded and reasons:
claims downgraded because of missing evidence:
copyright/privacy actions:
screenshots requested but absent:
known limitations:
recommended next capture:
```
