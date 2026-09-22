# Why video analysis fails

Video makes behavior look more complete than it is. A polished playthrough hides edits, unseen rooms, retries, camera intent, and the difference between what a player knows and what an editor wants the audience to notice. Use this reference when a tempting conclusion outruns the evidence.

## Failure modes and repairs

| Failure | What it confuses | Repair |
| --- | --- | --- |
| Tag list as analysis | naming a mechanic without explaining its cause, dependency, or player effect | Require the layered chain: evidence → player model → coupled systems → emotional function → behavior → break condition → test. |
| One paragraph per scare | collapsing the player's battery choice, hesitation, sound-led wait, route error, and recovery into “a threat appears” | Split at each implementable decision; align frame, player voice/silence, named sound cue, measured activity, rejected alternative, consequence, and recovery. A 33-minute source can require dozens of rows. |
| Genre memory as evidence | filling unseen design details with what similar horror games usually do | Mark the missing state as unknown and state which capture would distinguish the alternatives. |
| Peak-only reading | treating a scare as the whole design instead of tracing the setup and recovery that made it land | Analyze at least one preceding preparation beat and one after-effect beat, then test the dependency. |
| Episode summary as season knowledge | combining plot recaps without tracking how the player's mental model changes | Complete per-episode ledgers first, then compare invariant, variation, escalation, recovery, and payoff. |
| Plot recap | story events with player decisions | Start every claim with an action, camera event, feedback, or route consequence; mention plot only when it changes play. |
| Edited runtime equals experience time | 33 minutes of highlights with 33 minutes of play | Maintain source time, estimated experience time, and editorial gaps as separate clocks; use ranges or `unknown` when the cut gives no basis. |
| One highlight equals the whole campaign | selected peaks with the player's full emotional arc | Mark the observed slice, missing progression, and campaign-position confidence; never infer downtime or unseen chapters from montage order. |
| Emotion equals commentary | a narrator's joke or a face reaction with the game's intended effect | Record the observable signal, then an explicitly labeled inference and alternative; add a testable design forecast instead of claiming private author intent. |
| Precise curve from sparse frames | exact feelings between sampled moments | Use ordinal 0–5 values with intervals, evidence, and confidence; preserve unobserved transitions and editorial gaps in JSON. |
| One run as universal behavior | one creator's skill, settings, route, or personality with a system rule | Mark the observation as single-sample; seek retries, alternate runs, or a cluster before generalizing. |
| Camera equals map | visible frame with complete geometry | Annotate only observed edges; use candidate edges for unseen space and name the next capture that would test them. |
| Commentary equals intent | a creator's explanation with the player's moment-to-moment hypothesis | Keep voice commentary separate from embodied action and use both only when they agree or explicitly disagree. |
| Silence equals no affordance | an unspoken reaction with no interest | Check frame duration, audio, chat, cuts, and player skill before inferring that a cue was absent or ignored. |
| Fail equals bad design | a death or missed interaction with a design verdict | Record warning, options, recoverability, prior knowledge, and retry learning; failure can be productive or merely opaque. |
| Edit equals pacing | jump cuts, speedups, face-cam cuts, or montage with game timing | Mark editorial boundaries and do not use edited duration as traversal, hesitation, or pressure measurement. |
| Subtitle equals exact dialogue | auto-caption errors, translation, or paraphrase with authoritative text | Record caption source/language/alignment; quote minimally and compare with audible or visible evidence. |
| Audio absent equals no sound | compression, stream mix, player voice, or unavailable channel with a game cue | Inspect the audio stream and environment; call acoustic behavior unknown when the source cannot support it. |
| RMS peak equals game sound | mixed commentary/game audio and a numeric activity spike with a confirmed footstep, scream, music cue, or emotion | Use RMS/spectral data only as candidate windows; require a player-named cue, clean stem, subtitle, or visual corroboration before labeling the sound. |
| Streamer voice equals game design | a creator's panic, joke, volume setting, or route knowledge with universal player behavior | Store commentary as player-experience evidence, retain silence/listening and settings, then test the proposed mechanic with first-time players rather than generalizing the creator. |
| Enemy telepathy | inferred AI state from a camera turn or dramatic cut | State the visible trigger and response; do not name patrol/search/awareness state without distinguishable evidence. |
| Screenshot as proof of sequence | a frame without order, cause, or route | Tie the frame to a timecoded segment and label before/after relations as inferred unless the transition is present. |
| View count as quality | popularity with usefulness or representativeness | Use view count only for a declared sampling rule; assess evidence coverage separately. |
| Top videos as a sample | high-performing uploads with ordinary play | Report creator/platform/genre/skill/edition bias and include a stratified or explicit alternative when needed. |
| Cluster by title | plot, franchise, or creator labels with shared play | Cluster on event rows and mechanism tags, then inspect whether the same motif survives across games. |
| Large N as certainty | many videos repeating a copied route or edit convention | Count independent evidence, not just uploads; preserve outliers and duplicated sources. |
| Auto-classifier as witness | Jev or another text evaluator as direct video perception | Feed extracted rows only, preserve schema and outputs, and manually audit a sample against frames. |
| Classifier fills missing time | a structured JSON answer with recovered chronology | Give Jev explicit source/experience clocks and missing-gap fields; reject any output that invents removed play or unobserved emotion. |
| Contact sheet as map | evenly sampled frames with spatial continuity | Add timecodes and directional annotations; build route claims from transitions and landmark recurrence. |
| Style reference as source | visual taste with gameplay evidence or permission | Keep it in a separate reference lane; use it only to shape a new proposal. |
| Similarity as permission | an accessible URL or familiar game with reuse rights | Authorization and copyright scope precede acquisition and transformation. |

## Confidence rule

Use the strongest confidence label the evidence can earn:

- **High**: directly visible/audible in a clean, localized segment or repeated across independent sources; the alternative explanation is weak.
- **Medium**: supported by a clear sequence or multiple clues, but one plausible alternative or missing view remains.
- **Low**: plausible interpretation from partial, edited, low-quality, or single-sample evidence; it is useful as a hypothesis, not a design fact.

Confidence describes the claim, not the analyst's confidence in writing. A detailed explanation can still be low confidence.

## Stop conditions

Pause acquisition and report the boundary when authorization, login, age gate, rights, or private data is unclear. Stop making a causal claim when the needed transition is cut, the audio is missing, the UI is unreadable, or the source is too compressed to distinguish alternatives. Ask for a new frame, clean run, subtitle, or route capture instead of filling the gap with a plausible story.

## What a good recommendation looks like

A recommendation names the observed relationship, its likely player effect, its applicability conditions, and a test for a new project:

```text
Observation: After the player hears a directional cue, they stop before a
blind turn, peek, and choose the lit return path (03:18–03:42, source V2).
Inference: The cue creates anticipation because the landmark remains legible
while visibility is withheld (medium confidence; no clean enemy-state view).
Transfer: Use a readable anchor plus bounded occlusion, not the same room or
sound. Test whether first-time players can name two safe exits after one cue.
```

The transfer is a new proposal. It must not repeat the source's exact route, wording, visual identity, or content.
