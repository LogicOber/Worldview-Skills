---
name: worldview-gameplay-video-analysis
description: "Analyze user-provided or otherwise authorized gameplay media as timecoded player-and-space evidence, then produce mechanism tags, route and camera findings, confidence-rated design patterns, anti-patterns, and optional chase-route handoff. Use for local media, authorized media integrations, channel metadata, and user screenshots; do not use for plot-only summaries, unauthorized copying, or source-asset reproduction."
---

# Worldview Game — Gameplay Video Analysis

## Call this Skill

The public invocation is:

```text
/worldview-gameplay-video-analysis
```

Treat the text after the command as the analysis brief. Inspect the workspace and declared media first. Recover ordinary missing choices, state reversible assumptions, and ask one grouped question only when authorization, identity of the sample, or a product-defining output cannot be inferred.

## Read only the companion files the task needs

- Read and fill [video-analysis-contract.md](templates/video-analysis-contract.md) before analysis, unless the project already has an equivalent evidence contract.
- Read [why-video-analysis-fails.md](references/why-video-analysis-fails.md) when deciding whether a claim is supported, when footage is incomplete, or when comparing videos.
- Read [the-reroute-study.md](examples/the-reroute-study.md) only when a completed fictional example clarifies a field. Its game, route, timings, and tags are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance or publication review. It is not a media-ingestion checklist.
- [README.md](README.md) is the human-facing choice page and is not needed after this Skill is loaded.
- After a pilot has a usable evidence ledger, hand it to [`../worldview-gameplay-experience-study/SKILL.md`](../worldview-gameplay-experience-study/SKILL.md) when the brief asks why a moment feels effective, weak, memorable, funny, unfair, or emotionally specific. Do not replace evidence with an experience essay; the qualitative Skill is the interpretation layer after acquisition.

## The result this Skill owns

This Skill converts footage into a defensible model of player-space interaction and experienced time. It must preserve the distinction between:

1. **Observed** — visible or audible in a timecoded source, with the source and extraction method named.
2. **Reported** — supplied by the user, uploader, subtitle, metadata, or a documented tool output.
3. **Inferred** — a reasoned explanation that could account for observations.
4. **Proposed** — a new design recommendation, map annotation, tag, or route handoff.

Never present an inferred intent, hidden map, enemy state, or causal explanation as directly observed. Add a confidence level and the evidence supporting it.

The primary unit is a timecoded event, not a video synopsis. Record what the player notices, looks at, approaches, avoids, retries, abandons, misunderstands, and learns. Treat the camera as evidence: framing, turns, peeks, aim shifts, zoom, stops, and reorientation can reveal affordance, uncertainty, threat anticipation, or route memory. A face-cam reaction is optional context, not a substitute for gameplay evidence.

The required temporal unit is a **dual-clock beat**. Keep the source-video clock (what is visible in the edited file) separate from the experience clock (the player's estimated elapsed play, story progression, and time between meaningful beats). A highlight video may compress hours of play into minutes, remove failed attempts, reorder context, or cut away just before a payoff. Never treat the video's runtime as the game's experience time. Record ranges, gaps, edit boundaries, and uncertainty instead of inventing exact elapsed minutes.

The required emotional unit is a **setup → expectation → beat → after-effect** sequence. Record observable player signals first, then a bounded inference about tension, curiosity, surprise, relief, frustration, confidence, or other states. Add a design-forecast field describing what a new project should prepare the player to feel before the beat and how it should release or carry that feeling afterward. This is a testable design hypothesis, not a claim about an author's private intent. The same timeline format can feed a game, film, or novel plan, but this Skill must label which portions came from footage and which are new proposals.

## Use layered design reasoning, not a tag list

An event row is evidence, not an explanation. Every major beat must be expanded through this chain before it becomes a transferable finding:

```text
observable evidence
→ player knowledge, resources, hypothesis, and likely misread
→ spatial affordance and route grammar
→ camera, sound, object, enemy-state, and objective coupling
→ emotional and pacing function at this point in the episode
→ player behavior produced, protected, or made impossible
→ failure condition and boundary of the inference
→ new design rule, tunables, and verification test
```

Use the chain to answer concrete questions: Why is this reveal here rather than two minutes earlier? What did the player believe immediately before it? Which landmark, occlusion, sound, or resource made the belief plausible? What changes if the same enemy appears in a wider room, with a full battery, or without the preceding recovery beat? Does the scene create a route decision, or only a startle? If a conclusion cannot answer at least one “because” and one “what would break it,” keep it as an observation or low-confidence hypothesis.

Do not compress repeated evidence into generic labels such as “good pacing,” “immersive,” or “environmental storytelling.” Explain the dependency between beats. A strong finding names the setup that made a later reaction possible, the constraint that prevented a simpler solution, the player behavior it elicited, and the test that could falsify the explanation. A mechanism tag is a pointer into that explanation, never the explanation itself.

For a season or multi-episode run, compare episodes along five axes: **invariant** (what the work keeps teaching), **variation** (what changes the player's response), **escalation** (what constraint or consequence increases), **recovery** (how the work prevents fatigue), and **payoff** (which earlier expectation is answered, reversed, or deliberately deferred). Do not synthesize by counting tags. Trace how the player's mental model changes from episode to episode and which systems are introduced, combined, stressed, or retired.

## Intake and authorization

Create an intake record before downloading or transforming media:

```markdown
## Source scope
- Local files:
- URLs or URL batch:
- Channel/upload list:
- Uploaded screenshots (0–3):
- Optional style reference:
- Intended design question:
- Authorized use and retention boundary:
- Requested sample size and selection rule:
```

Accept local MP4, common video containers readable by available tools, or a URL the user authorizes. Inspect file names, size, duration, stream codecs, frame rate, audio streams, and available captions without assuming the extension is truthful. If one to three screenshots are absent, recommend a contact sheet or selected frame upload and continue; missing screenshots lower spatial certainty, not permission to begin.

For a channel, playlist, search result, or upload list, keep the ranking metadata separate from the media evidence. A list page is not itself a playable source. Use only media supplied by the user or returned by an authorized integration available in the environment; this Skill does not prescribe a collection tool or an access workflow. If the media is not available, record the missing input and ask for a local file or an authorized connector result.

## Validate one source before batch analysis

For each supplied media source, inspect exactly one representative item before processing a batch. Record the source identity, media format, duration, available audio/captions, and whether a short local sample decodes. A metadata record without readable media is not an analysis input.

Only after the single-source check succeeds may the workflow batch-analyze selected media. For channel or upload-list sampling, select by the declared rule—such as top 20/30/50 by views, stratified by era, or a fixed random seed—and record exclusions. Never imply that a batch succeeded because one item was readable. If a source is unavailable, report the concrete stage, source identity, missing input, and safe next option. Do not invent a transcript, frame, view count, route, or successful analysis.

## Analyze one representative source before any batch

The first analysis pass is always one representative video, even when the request names 20, 30, or 50 videos. For a list, choose the declared first sample (or the most representative item after recording the selection rule), acquire it, and produce a pilot report with the dual-clock timeline, emotional curve, and evidence gaps. Stop before batch analysis if the pilot cannot be acquired, if its edit structure prevents a useful timeline, or if the user has not authorized the next scale. This gate catches site, caption, codec, and interpretation failures before they multiply token and storage cost.

For an edited highlight, the pilot must state whether each interval is:

- **source time** — elapsed time in the uploaded or downloaded file;
- **experience time** — known or estimated time in the player's run/story, expressed as a point, range, or unknown;
- **editorial gap** — time removed, reordered, accelerated, or obscured by a cut;
- **design time** — the proposed pacing relationship a new work should test, never presented as recovered source fact.

If the footage supplies no basis for an experience-time estimate, use `unknown` and explain what capture would resolve it. Do not convert montage length, chapter labels, or a narrator's “hours later” into exact play minutes without evidence.

## Analyze a series one episode at a time

When the source is a multi-part upload or a six-episode season, create one evidence ledger and one timeline JSON per episode. Each episode must receive its own conclusion, emotional curve, route notes, and confidence limits before any cross-episode synthesis. The synthesis may compare recurring mechanisms and cumulative emotional pacing only after the per-episode reports exist; it must not average away an episode's cut gaps, failures, or outliers. Keep local episode time and cumulative series time as separate fields, and mark cumulative placement as `unknown` when the edit provides no reliable continuity. Do not proceed to a season recommendation while any episode is still only a tag list or plot summary; the season gate requires a layered ledger for every major beat and an explicit invariant/variation/escalation/recovery/payoff comparison.

Private analysis may use a short comparison label such as “first-person camcorder stealth-horror convention” to help a designer understand a mechanism. Do not copy the source game's title, wording, level layout, character identity, UI, or distinctive visual content into this repository or into a new design. Store the transferable relationship as a mechanism tag and explain the new proposal in its own terms.

Preferred acquisition outputs, when authorized and available, are:

- the smallest useful video stream and audio stream;
- subtitles/captions with language, source, and alignment status;
- metadata including title, uploader, publication date, duration, view count when exposed, and source URL;
- `ffmpeg`-derived duration, thumbnails, contact sheets, audio waveform or spectrogram when acoustic claims matter;
- keyframes sampled around transitions, stops, camera turns, failure/retry loops, and candidate landmarks.

Do not transcode or retain more media than the analysis needs. Keep derived files outside the final report unless the user asks for them and their use is authorized.

## Segment for evidence, not convenience

Build a segment index with stable IDs and source timecodes. A segment can cover a route decision, door/height transition, enemy state change, puzzle attempt, backtrack, fail/retry, joke, or camera reveal. Mark cuts, overlays, loading screens, missing frames, speed changes, montage edits, streamer edits, and subtitle drift. If an event cannot be localized because of a cut or unavailable source, mark it unresolved.

Use the smallest excerpt that supports the claim. For long videos, sample around gameplay state changes rather than taking evenly spaced screenshots only. A contact sheet should show source timecodes and segment IDs. It is a navigation aid, not proof that unseen geometry exists.

Before writing design conclusions, build the machine-readable timeline in [experience-timeline.json](templates/experience-timeline.json) or an equivalent JSON document. It must include source time, experience-time range or `unknown`, cut/gap status, the event's player-knowledge state, observable reaction, bounded emotional values, and a design forecast. The Markdown report may summarize it, but the JSON is the auditable record. For edited videos, include at least one row for every major cut, omitted retry, chapter transition, and emotional turning point.

## Observe the player as a situated decision-maker

For each useful event, record at minimum:

| Field | Question |
| --- | --- |
| time and segment | When, in which source, and around which transition? |
| player action | What did the player actually do, including stop, turn, peek, retry, detour, inventory action, or return? |
| camera | What did framing, yaw/pitch, aim, zoom, or view obstruction expose? |
| immediate response | What changed in UI, avatar, enemy, door, light, sound, path, or objective? |
| decision pressure | What information, risk, resource, timing, or ambiguity could explain the choice? |
| reaction | Hesitation, verbal response, laughter, surprise, frustration, confidence, or silence—only when present and attributable. |
| spatial implication | Landmark, route, height, door, sightline, acoustic boundary, shortcut, cover, or reorientation cue. |
| confidence | High, medium, or low, with the evidence and alternative explanation. |

Analyze reactions and decisions without reducing the player to a score. Look for the sequence of notice → hypothesis → action → feedback → correction. A failed action, return to a known room, camera sweep, or joke can be more useful than a successful sprint. Separate creator commentary from embodied player behavior, and separate editing or audience effects from game-system effects.

Do not stop at an abstract event such as “a threat appears” or “the player is chased.” Split the footage at the smallest decision that a new designer could implement and test. A useful row should be concrete enough to answer all of these questions:

- What was on screen at the moment of the decision (door state, body position, landmark, camera direction, UI, available hiding place)?
- What did the player say or do immediately before choosing (hesitate, lower volume, turn off the camera, count down, listen, check a battery, predict a return)?
- What exact sound cue was named or acted upon (footsteps, door impact, music change, voice above/below, silence)? If the file mixes commentary and game audio, mark the source as mixed; never identify a sound from RMS alone.
- What alternative did the player reject, and what changed after the choice?
- What should a new implementer build: the trigger, affordance, state change, timing window, route edge, recovery point, and failure feedback?

For a commentator or livestream capture, treat three layers as separate columns: **gameplay evidence** (camera, avatar, world/UI), **player experience evidence** (speech, hesitation, laughter, silence, volume adjustment, route memory), and **measurement evidence** (RMS, spectral change, subtitles, ASR). The player voice is evidence of a belief or report, not proof that the underlying AI state is true. Preserve phrases such as “I cannot see where it is,” “wait until the footsteps stop,” or “I forgot where I came from” as player-model anchors, then verify them against the frame sequence.

The minimum useful pilot is not one report paragraph per scare. It is a fine-grained ledger with one row per meaningful player decision, failed prediction, resource trade, sound-led wait, route correction, and recovery. If a 33-minute source yields only eight generic rows, the pilot is incomplete unless the footage is genuinely static.

### New-implementer test

Read each row as if it were handed to a junior level designer who has not seen the source. If that person would still ask “what do I put in the room, what does the player do first, what tells them to do it, what happens if they choose the other door, and how do they know they recovered?”, the row is not finished. Rewrite it with a short action chain such as:

```text
player sees an unpowered panel beside a closing door
→ checks the nearest cabinet before touching the panel
→ hears two impacts and waits until the footsteps move away
→ uses the panel, which opens only the upper route
→ returns through the marked doorway; leaving early causes a readable reset, not arbitrary damage
```

This is an implementation example, not a claim about every source. The report must replace the nouns with the source's actual door, item, sound, camera move, route choice, consequence, and recovery cue. Never submit “nearby threat,” “tension rises,” “immersive stealth,” or “the player is chased” without the preceding action chain and a testable state change.

For the emotional timeline, use a small ordinal scale rather than false precision. A recommended 0–5 scale is: `tension`, `arousal`, `curiosity`, and `relief`; use `valence` from -2 (strongly negative) to +2 (strongly positive). A number must have an observation, a confidence, and an alternative explanation. “The player laughs” is observed; “the laugh releases accumulated tension” is an inference; “place a short relief beat here before the next escalation” is a proposal. If face-cam, voice, chat, or commentary is unavailable, mark the corresponding signal as unavailable rather than guessing from movement alone.

Every major beat should also record `setup_before`, `expected_player_question`, `payoff_or_reversal`, and `after_effect`. This is how the analysis captures emotional anticipation across a long game when the upload contains only edited highlights. Do not claim that the video reveals the whole campaign arc: mark the observed slice, the likely missing span, and the confidence of any progression estimate.

## Infer the connected game system

After events are timecoded, reconstruct only the relationships supported by evidence. Ask how these elements couple:

- architecture: rooms, thresholds, loops, choke points, cover, vertical layers, traversal cost, and safe anchors;
- route: landmarks, gates, doors, one-way drops, shortcuts, return choices, and points of no return;
- visibility: sightlines, occlusion, reveal timing, camera affordance, and orientation after a turn;
- acoustics: source, propagation, masking, warning distance, and the player's response to sound;
- objects and story: readable props, objectives, environmental clues, dialogue, and whether they alter decisions;
- mechanics: verbs, resources, timing windows, puzzle feedback, checkpoints, and recovery;
- enemy state: presence, patrol, search, pursuit, loss of contact, reset, telegraph, and observed—not assumed—awareness.

Do not draw a complete map from a single camera path. Use “observed edge,” “strongly inferred edge,” and “candidate edge”; annotate unseen areas as unknown. For a 2.5D floorplan, show plan-view nodes and directed connections plus a vertical/height band, landmark, sightline, acoustic cue, room purpose, attention budget, confidence, and source segment. Avoid reproducing the source level's exact geometry: abstract it into topology and relationships suitable for a new design.

For each major beat, also record these domain fields before assigning a mechanism tag:

- **hypothesis transaction** — the question before the clue, the evidence spent to form a hypothesis, the later space/system that tests it, and the updated belief;
- **room purpose** — cover, information, route/shortcut, resource, threat staging, recovery, or `unverified`;
- **attention budget** — what the player must see, hear, remember, read, and operate at the same time, plus the priority the route is meant to teach;
- **information regime** — what is scarce or unreliable in this segment (visibility, sound, objective clarity, spatial memory, or surveillance), and how the next beat changes that regime.

If these fields cannot be filled from evidence, keep them as unknown/inferred and do not manufacture a deeper explanation.

## Outputs and design translation

Deliver the following, scaled to evidence:

1. **Evidence ledger** — source IDs, acquisition status, segments, captions, extraction settings, and gaps.
2. **Dual-clock experience timeline** — a machine-readable JSON record separating source runtime, estimated player/story time, cut gaps, progression markers, and the setup/expectation/beat/after-effect curve. Include an explicit estimate interval or `unknown` for every major beat.
3. **Event table** — timecoded player/camera/world events with confidence and alternative explanations.
4. **Layered reasoning ledger** — for each major beat, the evidence → player model → system coupling → emotional function → produced behavior → failure boundary → new rule → verification test chain. This is mandatory for the pilot and for every episode in a series.
5. **Mechanism tags** — concise tags such as `landmark_reorientation`, `door_as_commitment`, `occluded_threat_audio`, `vertical_reveal`, `bounded_wrong_turn`, `hesitation_before_visibility`, or `retry_learning`; define each tag in this study rather than treating it as a universal taxonomy.
6. **Route evidence** — contact sheet and/or abstract 2.5D floorplan annotation. Include route-map needs when the footage shows reorientation cost, ambiguity, or an important return.
7. **Patterns and anti-patterns** — transferable relationships with prerequisites and evidence; anti-patterns must say what failed, for whom, and under what conditions.
8. **Design handoff** — a new, non-infringing design proposal with open questions, tunables, and verification tests. If the brief concerns pursuit, include a chase-route handoff with start state, threat state, route choices, sightline breaks, recovery anchor, sound cues, and no-softlock checks for the downstream chase-route skill.
9. **Confidence and limits** — explain sampling bias, missing views, edit effects, audio quality, subtitle status, and what would change the conclusion.

When the brief asks for lived experience, add the qualitative handoff before the design proposal: a first-person reconstruction grounded in the event rows, a third-person critic explanation of what landed or failed, an expected-versus-actual turn, and a transfer card that preserves only a player-facing relationship. Route the handoff through `worldview-gameplay-experience-study`; do not write “the Agent remembers this game” or imply an unrecorded source was consulted.

Do not let the output collapse into story summary. A plot mention belongs only when it changes player knowledge, route, affordance, threat, or decision. For 20, 30, or 50 videos, cluster gameplay motifs across creators and games using event and mechanism features—not titles or plot beats. Report per-cluster support, source coverage, outliers, and selection bias. A large N does not raise confidence in a claim that is only visible in one edited clip.

## Optional Jev classification

Jev is optional and applies only after text, subtitle, metadata, or event rows have been extracted. Through the configured AI Gateway `typesafe-ai/jev`, it may run typed classification, scoring, boolean checks, or parallel questions—for example, whether a segment contains a recoverable wrong turn, an explicit route cue, or a visible enemy-state transition. The current official description treats Jev as a System One evaluation tool over text state; do not assume it watches video, understands raw frames, or replaces human inspection.

Use only a configured key supplied by the environment; never commit it, print it, or paste it into a report. Feed Jev the already extracted timeline/event rows, including the source-time and experience-time fields; ask it to emit the declared JSON shape for typed labels, scores, or boolean checks. Preserve input rows, schema, prompt/version, model/provider response, failures, and human review. Jev may help regularize an emotional curve or flag missing fields, but it cannot recover time removed by editing or prove a player's private feeling. If the gateway is unavailable or its output conflicts with the evidence, continue manually and mark the classifier result as unverified.

## Screenshots, contact sheets, and handoff

When screenshots are provided, record their ownership/reference role and map each to a source segment if possible. When they are absent, suggest one to three frames that would most reduce uncertainty, but do not block. Build contact sheets with readable timecodes, source IDs, and a consistent sampling rationale. An optional style reference may influence the visual language of a proposed annotation or handoff; do not use it as evidence about the analyzed game.

For a chase-route handoff, use abstract topology rather than copied layout or text. Include:

```text
start state → player objective → threat trigger/state → route choices
→ sightline/occlusion beats → acoustic cues → recovery anchor
→ fail/retry behavior → persistence and no-softlock checks
```

The downstream skill must be able to tell which fields are observed, inferred, and proposed. A compelling diagram is not a verified route.

## Copyright, privacy, and truthful reporting

Keep quotations, subtitles, screenshots, and extracted frames to the minimum needed for criticism, research, or the user's authorized work. Do not provide a reconstructed walkthrough that substitutes for the source, reproduce a source game's map or UI, or claim a game mechanic that is only guessed. Blur or omit private faces, handles, chat, or personal data when the scope does not require them. If rights or authorization are unclear, stop and ask for a narrower source or permission.

## Handoff checklist

Before declaring completion, verify:

- every analyzed source has an intake status and a reproducible ID;
- a single representative source was completed before any batch, with a clear go/no-go decision;
- every important claim points to a timecoded event or is labeled inference/proposal;
- every major finding has a layered reasoning chain with a because-clause, a break condition, and a falsifiable test;
- source time and experience time are separate for every major beat, with cut gaps and unknowns visible;
- the JSON timeline contains the emotional/design curve, intervals, evidence, confidence, and alternatives;
- batch claims state the selection rule, sample count, exclusions, and cluster coverage;
- screenshots were recommended but did not block when absent;
- media-intake failures name the concrete reason and do not contain invented evidence;
- contact sheet/floorplan confidence and unknown geometry are visible;
- mechanism tags, patterns, anti-patterns, and route-map needs are actionable;
- Jev, if used, classified extracted text/events only and left an auditable result;
- downstream chase handoff, if requested, preserves source boundaries and no-softlock questions;
- no secrets, unauthorized media, or copied source content entered the repository or final deliverable.
