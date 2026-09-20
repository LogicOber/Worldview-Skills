---
name: worldview-gameplay-video-analysis
description: "Analyze authorized local or online gameplay video as timecoded player-and-space evidence, then produce mechanism tags, route and camera findings, confidence-rated design patterns, anti-patterns, and optional chase-route handoff. Use for MP4s, YouTube/Bilibili/other URLs, URL batches, channel sampling, and user screenshots; do not use for plot-only summaries, unauthorized downloading, or copying copyrighted game content."
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

## The result this Skill owns

This Skill converts footage into a defensible model of player-space interaction. It must preserve the distinction between:

1. **Observed** — visible or audible in a timecoded source, with the source and extraction method named.
2. **Reported** — supplied by the user, uploader, subtitle, metadata, or a documented tool output.
3. **Inferred** — a reasoned explanation that could account for observations.
4. **Proposed** — a new design recommendation, map annotation, tag, or route handoff.

Never present an inferred intent, hidden map, enemy state, or causal explanation as directly observed. Add a confidence level and the evidence supporting it.

The primary unit is a timecoded event, not a video synopsis. Record what the player notices, looks at, approaches, avoids, retries, abandons, misunderstands, and learns. Treat the camera as evidence: framing, turns, peeks, aim shifts, zoom, stops, and reorientation can reveal affordance, uncertainty, threat anticipation, or route memory. A face-cam reaction is optional context, not a substitute for gameplay evidence.

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

For a channel, playlist, search result, or upload list, first use an authorized browser automation route when one is available (Agent Browser is optional) to extract concrete video URLs and enough title/date/duration/view metadata to make the selection reproducible. A list page is not itself a playable video source. Respect login, robots, paywall, age, regional, rate, and terms boundaries; do not bypass them.

## Probe one URL before batch acquisition

For every remote source, use `yt-dlp` or an authorized equivalent to probe exactly one concrete video first. It may be installed or updated only when the environment permits it. Capture the command intent and outcome without committing credentials or cookies. A successful probe should establish that the URL resolves, the requested format or fallback is available, captions/metadata can be obtained if requested, and the download is within the declared scope.

Only after the single-video probe succeeds may the workflow batch-download selected URLs. For channel or upload-list sampling, select by the declared rule—such as top 20/30/50 by views, stratified by era, or a fixed random seed—and record exclusions. Never imply that a batch succeeded because one URL worked. If a probe or download fails, report the concrete stage, error class, URL identity, retry attempted, and safe next option. Do not invent a transcript, frame, view count, route, or successful acquisition.

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

## Infer the connected game system

After events are timecoded, reconstruct only the relationships supported by evidence. Ask how these elements couple:

- architecture: rooms, thresholds, loops, choke points, cover, vertical layers, traversal cost, and safe anchors;
- route: landmarks, gates, doors, one-way drops, shortcuts, return choices, and points of no return;
- visibility: sightlines, occlusion, reveal timing, camera affordance, and orientation after a turn;
- acoustics: source, propagation, masking, warning distance, and the player's response to sound;
- objects and story: readable props, objectives, environmental clues, dialogue, and whether they alter decisions;
- mechanics: verbs, resources, timing windows, puzzle feedback, checkpoints, and recovery;
- enemy state: presence, patrol, search, pursuit, loss of contact, reset, telegraph, and observed—not assumed—awareness.

Do not draw a complete map from a single camera path. Use “observed edge,” “strongly inferred edge,” and “candidate edge”; annotate unseen areas as unknown. For a 2.5D floorplan, show plan-view nodes and directed connections plus a vertical/height band, landmark, sightline, acoustic cue, confidence, and source segment. Avoid reproducing the source level's exact geometry: abstract it into topology and relationships suitable for a new design.

## Outputs and design translation

Deliver the following, scaled to evidence:

1. **Evidence ledger** — source IDs, acquisition status, segments, captions, extraction settings, and gaps.
2. **Event table** — timecoded player/camera/world events with confidence and alternative explanations.
3. **Mechanism tags** — concise tags such as `landmark_reorientation`, `door_as_commitment`, `occluded_threat_audio`, `vertical_reveal`, `bounded_wrong_turn`, `hesitation_before_visibility`, or `retry_learning`; define each tag in this study rather than treating it as a universal taxonomy.
4. **Route evidence** — contact sheet and/or abstract 2.5D floorplan annotation. Include route-map needs when the footage shows reorientation cost, ambiguity, or an important return.
5. **Patterns and anti-patterns** — transferable relationships with prerequisites and evidence; anti-patterns must say what failed, for whom, and under what conditions.
6. **Design handoff** — a new, non-infringing design proposal with open questions, tunables, and verification tests. If the brief concerns pursuit, include a chase-route handoff with start state, threat state, route choices, sightline breaks, recovery anchor, sound cues, and no-softlock checks for the downstream chase-route skill.
7. **Confidence and limits** — explain sampling bias, missing views, edit effects, audio quality, subtitle status, and what would change the conclusion.

Do not let the output collapse into story summary. A plot mention belongs only when it changes player knowledge, route, affordance, threat, or decision. For 20, 30, or 50 videos, cluster gameplay motifs across creators and games using event and mechanism features—not titles or plot beats. Report per-cluster support, source coverage, outliers, and selection bias. A large N does not raise confidence in a claim that is only visible in one edited clip.

## Optional Jev classification

Jev is optional and applies only after text, subtitle, metadata, or event rows have been extracted. Through the configured AI Gateway `typesafe-ai/jev`, it may run typed classification, scoring, boolean checks, or parallel questions—for example, whether a segment contains a recoverable wrong turn, an explicit route cue, or a visible enemy-state transition. The current official description treats Jev as a System One evaluation tool over text state; do not assume it watches video, understands raw frames, or replaces human inspection.

Use only a configured key supplied by the environment; never commit it, print it, or paste it into a report. Preserve input rows, schema, prompt/version, model/provider response, failures, and human review. If the gateway is unavailable or its output conflicts with the evidence, continue manually and mark the classifier result as unverified.

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

Keep quotations, subtitles, screenshots, and extracted frames to the minimum needed for criticism, research, or the user's authorized work. Do not provide a reconstructed walkthrough that substitutes for the source, rip copyrighted maps or UI, or claim a game mechanic that is only guessed. Blur or omit private faces, handles, chat, or personal data when the scope does not require them. If rights or authorization are unclear, stop acquisition and ask for a narrower source or permission; do not “test” access by bypassing controls.

## Handoff checklist

Before declaring completion, verify:

- every analyzed source has an acquisition status and a reproducible ID;
- every important claim points to a timecoded event or is labeled inference/proposal;
- batch claims state the selection rule, sample count, exclusions, and cluster coverage;
- screenshots were recommended but did not block when absent;
- URL failures name the concrete reason and do not contain invented evidence;
- contact sheet/floorplan confidence and unknown geometry are visible;
- mechanism tags, patterns, anti-patterns, and route-map needs are actionable;
- Jev, if used, classified extracted text/events only and left an auditable result;
- downstream chase handoff, if requested, preserves source boundaries and no-softlock questions;
- no secrets, unauthorized media, or copied source content entered the repository or final deliverable.
