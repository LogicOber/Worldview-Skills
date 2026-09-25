---
name: film-dialogue-voiceover
description: >-
  Prepare character dialogue and narration before video generation. Recommend
  ElevenLabs MCP, resolve stable voice IDs for every speaker, generate and verify
  speech files, measure their timing, and attach them alongside visual references
  through the configured video provider's supported audio-input interface. Use
  whenever a film, cutscene, product video, or short includes spoken lines or
  needs consistent voices and reviewed lip sync.
metadata:
  title: Film Dialogue and Voiceover
  category: core-engine
  tags: dialogue; narration; voice casting; audio references; lip-sync; elevenlabs
---

# Film Dialogue and Voiceover

For prescribed dialogue or narration, prepare the speech before generating the
corresponding video. Fix who speaks, which voice they use, what they say, and
how long the recording actually lasts. Then supply the audio alongside the
character and scene references.

A prompt mentioning a line or filename does not attach audio. Wind, footsteps,
music, or an audio stream do not establish that the requested speech is present.
Keep speech, environmental sound, and music separate in the plan and review.

This collection recommends audio-first production for controlled voices; it
does not claim every Seedance interface is silent without external audio. Some
providers offer native speech. Check the selected interface and use that
alternative only when it fits the user's accepted voice requirements.

## 1. Connect speech and video services

Recommend the official [ElevenLabs MCP](https://elevenlabs.io/mcp), connected in
the user's MCP client. Follow the current [hosted setup guide](https://elevenlabs.io/docs/eleven-agents/operate/hosted-mcp)
and OAuth flow. Inspect the tools exposed to this session: they must be able to
select a voice and return speech audio, not just manage conversational agents.
Save returned audio locally before temporary download links expire.

ElevenLabs API is an alternative. Keep its key in the client's secret store or
an ignored environment file, normally as `ELEVENLABS_API_KEY`; never print or
commit it. Its [speech API](https://elevenlabs.io/docs/api-reference/text-to-speech/convert)
uses a real `voice_id` and compatible `model_id`. Resolve them from the account's
voice and model listings rather than inventing a `default` voice.

User-configured third-party MCPs, other TTS APIs, and supplied recordings are
also valid. Speech and video generation can use different services. Check each
connection's access, voice controls, formats, return type, limits, and the user's
authorization for paid calls and uploads. A key is not permission to spend or
publish private recordings.

If speech is requested but no recording or usable speech service is available,
explain the missing setup before a voice-dependent video batch. Offer ElevenLabs
MCP/API or a supplied recording; continue script and visual planning meanwhile.
A TTS error does not authorize a silent switch to another voice, text-only
speech, or a silent deliverable. A requested silent film needs no TTS setup.

## 2. Keep one voice assignment per speaker

Extract every speaker from the approved script, including the narrator,
off-screen characters, announcements, and recorded messages. Give each a stable
character ID and record:

| Field | What it fixes |
| --- | --- |
| Character ID and role | The person or narrator; on-screen, off-screen, or narration. |
| Provider, connection, voice ID | The actual accessible library voice, retained across scenes and retries. |
| Model, language/accent, settings | A repeatable starting point using controls the model supports. |
| Performance direction | Pace, restraint, breath, pronunciation, and changes warranted by this scene. |
| Preview and status | A sample the user accepted, or a selection within their delegated authority. |
| Rights and availability | Permission to use the voice and continued access during production. |

Use the user's voice choices when given. Otherwise compare available previews,
choose for the brief and clarity between speakers, and make a short sample
within budget. A display name such as “Adam” is not a universal API ID. Avoid
casting from gender or age words alone. Use only authorized clones; setting up
TTS does not authorize cloning a real person.

Keep `films/<slug>/voice-cast.json` or an equivalent existing manifest. This
example is a project record, not an API payload:

```json
{
  "version": 1,
  "speakers": [
    {
      "character_id": "mira",
      "role": "on-screen",
      "provider": "elevenlabs",
      "connection": "configured-mcp",
      "voice_id": null,
      "model_id": null,
      "language": "en",
      "direction": "Quiet and direct; leave a breath before the final word.",
      "settings": {},
      "preview_file": null,
      "status": "selection-pending"
    }
  ]
}
```

Resolve null fields from actual service results before generation; add each
other speaker separately. Reuse the ID for whispers, shouts, and later scenes,
changing supported delivery settings instead of recasting. Report an unavailable
voice and resolve its replacement before affected lines proceed.

## 3. Generate and measure the lines

Give each utterance a line ID and exact text. Generate one file per line or an
intentional same-speaker passage. Preserve approved words, pronunciation,
pauses, and delivery. Keep these speech files free of music and background
effects; retain a master when converting to a provider-compatible format.

Download and decode the output. Listen for omitted or added words, wrong names,
effects, silence, clipping, and changed voices. Measure duration with available
media tools: a word-count estimate is not a measurement. Record the script
revision and voice/settings so a changed line invalidates only affected audio
and shots. Reuse accepted recordings across alternate picture takes.

In `speech-lines.json` or an existing manifest, record speaker ID, exact text,
file, measured duration, target block/shot, start offset, on-screen mouth or
off-screen role, provider input slot, and review status. Fit the shot around
the recording plus entry, response, and breathing room. Split or revise long
passages within scope instead of cutting final words or silently speeding up
the performance.

Keep distinct bindings for multiple speakers. If the video interface accepts
only one audio track, build a timed dialogue track from the individual files and
retain a speaker-turn map, or split the exchange into shots. Preserve pauses;
overlapping speech needs explicit timing and a provider that can handle it.

## 4. Attach speech to the video request

Inspect the selected website, MCP schema, or API before the first voiced take.
Record whether audio can guide the performance/timing, supply voice style only,
or cannot be input at all. A timbre reference alone does not guarantee the given
words or waveform will appear in the output.

For Seedance 2.5, use its interface's supported audio-reference workflow; consult
the current [official input documentation](https://docs.volcengine.com/docs/ark/create-video-generation-task-api?lang=zh)
when using the official API. Third-party wrappers can expose different fields,
limits, upload methods, and output-audio controls for the same model. Model
access alone does not establish audio-input support.

1. Attach the actual speech file through a supported upload, asset ID, or
   provider-fetchable URL, alongside required image/video references. Check
   format, size, duration, and reference limits. Prefer authorized asset storage
   or scoped links; do not publish a private recording just to satisfy a wrapper.
2. Bind each audio input to its speaker, character reference, line, and shot.
   Use the interface's real reference labels. A guessed `{line} [Audio1]` prompt
   or `audio_references` field is not a portable replacement for an attachment.
3. Enable the supported speech/audio output mode. Name which mouth follows which
   recording, who stays silent, and which lines are narration. Narration should
   not animate a visible character's mouth.
4. Inspect submitted arguments or website attachments: audio must survive the
   wrapper, not just the images. Save the task ID and a secret-free input record.
5. Verify one representative voiced clip before spending on the remaining
   batch. Check words and speaker assignments as well as the picture.

If a video MCP cannot accept speech audio, report that before submitting. Use
another already-authorized compatible connection, or agree on an alternative.
Narration can be mixed over footage later using the prepared recording; visible
speech may need a supported lip-sync pass or a new shot. Do not present that as
audio-conditioned generation. The bundled image/parameter-only
`film-pipeline/scripts/batch.sh` is not an audio uploader; use a verified
audio-capable MCP/API route for these takes.

## 5. Review the speech, then mix

Check the downloaded video's audio stream and listen to every required spoken
line. Verify words, voice identity, timing, intact endings, no extra speaker,
and audible level. Review visible mouths during playback; metadata or a
transcript cannot establish lip sync. If listening or playback is unavailable,
report that gap rather than claiming the take passed.

Music, ambience, effects, and final leveling can follow picture lock. Preserve
accepted speech and timing. Avoid doubling speech by adding the original TTS
track when it is already present. When replacing speech, remove or mute the old
voice and preserve other sound with available stems or a deliberate remix.
Narration repair can often retain the picture; replacing audio alone does not
repair the timing of a visibly speaking face.

A missing line, switched voice, or failed attachment fails the voiced take even
if the task completed. Correct that cause and retry only within budget. Deliver
the video, cast and line manifests, retained speech files, and review notes.
Report measured results, never “perfect lip sync” or unsupported percentages.

## Worked handoff

In an original scene, Mira says “Keep the lower gate closed,” Ivo replies “Then
take the stairs,” and an off-screen narrator closes the scene. Select three
voices and retain their real library IDs.

Suppose the files measure 2.6, 2.1, and 3.4 seconds; these are example values,
not promised timings. Place Mira at 0.5–3.1 s, leave a 0.8 s pause, place Ivo at
3.9–6.0 s, and the narrator at 6.8–10.2 s over the departure. Choose a supported
clip length with room for the ending beat, or split shots.

Attach the character references and speech inputs, or the timed dialogue track
with its turn map. Each character mouths only their own line; neither mouths
the narration. Check this clip before using the cast for more scenes. This is
a handoff example, not a claim that TTS or video generation has been run.

## Related Skills

- [Film Shot Prompt](../film-shot-prompt/SKILL.md): uses recordings and measured
  timing before constructing a voiced request.
- [Generate and Review](../film-generate-review/SKILL.md): submits verified inputs,
  checks the speech, and assembles accepted takes.
- [Cinematic Film](../../film-video/cinematic-film/SKILL.md) and
  [Game Cutscene](../../film-video/game-cutscene-generator/SKILL.md): route spoken
  scenes here before spending the video-generation budget.
