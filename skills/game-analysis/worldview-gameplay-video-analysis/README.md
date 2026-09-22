# Gameplay Video Analysis

Turn local or authorized online gameplay footage into evidence-led design insight. This Skill is for studying what players actually do in a space: their route, hesitation, camera movement, choices, recovery, failures, reactions, changing understanding, and the emotional timing between major beats. It keeps the edited video's clock separate from estimated player experience time, so a highlight reel is not mistaken for a real-time playthrough. It is not a plot-summary or clip-copying workflow.

## Call it with a source brief

```text
/worldview-gameplay-video-analysis

Analyze this one local MP4 first; it is an edited highlight from a long game.
Keep source time separate from estimated play/story time, mark every major cut,
and produce experience-timeline.json with the player's observable reactions,
emotion curve, setup/payoff beats, and design forecasts. Then identify how the
player learns the route, where sightlines break, and which mistakes create
useful pressure. Make a contact sheet, annotate a 2.5D floorplan, and stop for
my approval before analyzing the rest of the batch.
```

You may provide one or more local MP4s, a YouTube/Bilibili/other URL, a URL batch, a channel or upload list, one to three screenshots, and an optional visual style reference. Screenshots are helpful but never a prerequisite: recommend them when absent and continue with the footage and metadata available.

When the evidence is ready and the brief asks why the experience works or fails, continue with [`../worldview-gameplay-experience-study/README.md`](../worldview-gameplay-experience-study/README.md). The acquisition Skill records what happened; the experience-study Skill explains what it felt like and what relationship can be transferred.

## What the package delivers

The scale follows the available footage and verification budget. A useful handoff includes:

- a source ledger stating what was provided, acquired, inspected, skipped, and why;
- media, subtitle, metadata, timecode, segment, and extraction notes;
- a pilot-first decision that proves one source can be acquired and interpreted before any batch;
- a dual-clock `experience-timeline.json` separating edited source time, estimated player/story time, removed intervals, and unknowns;
- a fine-grained player ledger: one row for each meaningful hesitation, prediction, resource trade, sound-led wait, failed route, correction, and recovery—not one paragraph per scare;
- when the source is a livestream/commentary capture, aligned player voice, silence/listening, named game-sound cues, visual state, and measured audio activity, with mixed-channel limits stated explicitly;
- an emotional/design curve that records observable signals, bounded scores, setup, expected player question, payoff or reversal, after-effect, confidence, and alternative explanations;
- an event table that records player action, camera evidence, world response, inferred intent, and confidence;
- a layered reasoning ledger that explains why a beat works, which systems make it work, what would break the explanation, and how to test a new implementation;
- a route or 2.5D floorplan annotation when geometry can be supported by evidence;
- mechanism tags, route-map needs, transferable design patterns, anti-patterns, and evidence clips;
- a cross-video gameplay cluster when the sample is 20, 30, or 50 videos, with coverage and confidence rather than a plot digest;
- a compact handoff for a chase-route skill when the user asks for pursuit design;
- explicit failures, missing views, uncertain inferences, copyright boundaries, and next capture requests.

## Guardrails

Use only local media, user-uploaded material, authorized media integrations, and references within the stated scope. Do not treat a public list as media evidence. Do not reproduce copyrighted footage, dialogue, subtitles, maps, UI, or distinctive level layouts in the deliverable. Describe observed behavior, cite short timecoded evidence, and transform findings into new design work. Keep user-owned material and style references separate from source material; a style reference informs presentation, not ownership of the game being analyzed.

Read [SKILL.md](SKILL.md) for the operating method. Read [video-analysis-contract.md](templates/video-analysis-contract.md) and the machine-readable [experience-timeline.json](templates/experience-timeline.json) before analysis, [why-video-analysis-fails.md](references/why-video-analysis-fails.md) when choosing evidence or interpreting gaps, and [the-reroute-study.md](examples/the-reroute-study.md) only as an original example of a completed handoff.
