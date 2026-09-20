# Source and originality record

This file records the origin of `worldview-gameplay-video-analysis` so the repository does not confuse an original analysis method with copied game content, external Skill prose, or a downloaded media archive.

## Origin

| Field | Record |
| --- | --- |
| Source type | Original synthesis for this repository |
| Request | User request dated 2026-09-20 to create an English Skill for evidence-led gameplay video analysis, URL acquisition, route reconstruction, clustering, and chase handoff |
| External Skill used | None; the repository's Skill-writing conventions were followed without copying another Skill |
| External code or directory copied | None |
| Media included | None; the package contains no video, screenshot, subtitle, or third-party asset |
| Example status | Newly authored fictional scenario, not a walkthrough or representation of a real game |

## Method boundary

The method begins from a general design-analysis problem: gameplay footage contains decisions, camera behavior, spatial feedback, and recovery that a plot summary cannot preserve. It requires timecoded observations before design inference, separates observed/report/inferred/proposed claims, and treats video acquisition and copyright scope as explicit constraints.

The package does not reproduce any published game's route, level, dialogue, UI, enemy design, terminology, or footage. Its tags, evidence schema, contact-sheet guidance, abstract floorplan notation, 20/30/50-video clustering rule, URL probe gate, optional Jev boundary, and chase handoff are repository-authored proposals.

## User-owned and reference scope

Future analyses may process local media, uploaded screenshots, style references, or online sources only when the user is authorized to provide and use them. A style reference is not evidence about the analyzed game and does not transfer ownership of its appearance. The analyzing Agent must retain source attribution and avoid copying expressive content into a new design.

## Provider boundary

`yt-dlp`, `ffmpeg`, authorized browser automation, and the optional AI Gateway `typesafe-ai/jev` are named as capabilities an environment may provide; no dependency is bundled here. Jev is described only as an optional typed classifier over extracted text/event rows, not as a video model. Keys and cookies remain environment configuration and are never repository content.

## Current capability references

These links were checked to describe optional integrations accurately; they are not dependencies and no external prose or code was copied:

- [Vercel AI Gateway — Jev](https://vercel.com/ai-gateway/models/jev) describes Jev as TypeSafe AI's structured evaluation model and shows the `typesafe-ai/jev` model ID with parallel typed questions. The Skill therefore applies it only after media has become text or event rows.
- [Vercel agent-browser](https://github.com/vercel-labs/agent-browser) documents the optional browser automation CLI and its `agent-browser install` flow. A future run must inspect the installed version and access policy rather than assuming the tool exists.
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) documents URL and batch-file acquisition, subtitles, metadata, and supported-site behavior. The Skill's one-URL probe gate is a repository-authored safety and cost rule, not a copied workflow.
