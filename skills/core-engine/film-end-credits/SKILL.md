---
name: film-end-credits
description: >-
  Stage 7 of the film pipeline — the title card, director card, and brand card that
  close a film using the cinema convention of a black background, white text, no
  italics, no avatars, and no decoration, in English unless the film uses another
  language. Produces locked card images plus timing and dissolve specifications for
  the edit. Called by cinematic-film, game-cutscene-generator, and product-demo at assembly
  time.
---

# Film End Credits (stage 7)

## Why this stage exists

A film that ends on its last shot feels unfinished; a film that ends on a social-media-style card with an avatar, colour gradients and italic type feels cheap. The convention that reads as *cinema* is narrow and easy to get wrong when generated ad hoc: black, white, still, spare. This stage produces it once, correctly.

## What it produces

Three cards, 16:9, black background, white text, sans-serif, no italics, no avatars, no logos except the brand's own on the brand card:

| Order | Card | Content | Hold |
|---|---|---|---|
| 1 | Title | the film's title, centred, tracked caps | 3–4 s |
| 2 | Director | `DIRECTED BY` on one line, the name on the next, both centred | 3–4 s |
| 3 | Brand | the product logo (from a real asset) above the slogan, both centred | 3–4 s |

Between cards: 0.3–0.5 s dip to black. Before card 1: the last shot dips to black over 0.5–1.0 s. After card 3: hold black 1 s.

## Rules

- **Black and white only.** No gradient, no texture, no vignette, no colour. The film's palette ends with the film.
- **No italics, no script fonts, no drop shadows.** One weight, tracked capitals for the title, mixed case allowed for the name.
- **No avatar, no photo, no social handle.** A director's card is a name.
- **Brand assets are real.** The logo is the supplied file, composited, never redrawn from a description. Slogan text quoted exactly.
- **Language is the film's language.** Cards for an English film are in English. State it in the generation prompt: "all text in English."
- **Stills, not motion.** The cards are images; the edit adds the dissolves. Generating them as video introduces drift in the type.
- **Generated from a fixed prompt.** Vary only the words. The layout prompt is reused across films so every film in a series closes the same way.

## Prompts

Title card:

```text
Cinema end-title card, 16:9, pure black background, the words "THE WICK" centred in white, tracked capitals, clean geometric sans-serif, single weight, no italics, no decoration, no texture, no gradient, no logo, no other text. All text in English.
```

Director card:

```text
Cinema credit card, 16:9, pure black background, two centred lines in white: "DIRECTED BY" in small tracked capitals, then "LYSON OBER" below in larger tracked capitals, clean geometric sans-serif, single weight, no italics, no decoration, no photo, no avatar, no other text. All text in English.
```

Brand card (logo supplied as an image reference):

```text
Cinema closing brand card, 16:9, pure black background, the exact logo from the reference image centred in the upper third at moderate size, unchanged, and beneath it one line in white: "Give your world its first heartbeat." clean geometric sans-serif, no italics, no decoration, no other text. All text in English.
```

Generate each with `gpt-image-2`, quality high, 2048×1152. Reject any card with colour, italics, an avatar, a redrawn logo, non-English text or extra words.

## Assembly

```bash
# 3.5 s per card, 0.4 s dips, black tail
ffmpeg -y -loop 1 -t 3.5 -i title.png -loop 1 -t 3.5 -i director.png -loop 1 -t 3.5 -i brand.png \
  -filter_complex "[0]fade=t=in:st=0:d=0.4,fade=t=out:st=3.1:d=0.4[a];[1]fade=t=in:st=0:d=0.4,fade=t=out:st=3.1:d=0.4[b];[2]fade=t=in:st=0:d=0.4,fade=t=out:st=3.1:d=0.4[c];[a][b][c]concat=n=3:v=1:a=0,tpad=stop_mode=clone:stop_duration=1[v]" \
  -map "[v]" -r 24 -pix_fmt yuv420p credits.mp4
```

The film's final shot gets `fade=t=out:d=0.8` before concatenation with `credits.mp4`. Music from the audio pass may continue under the cards and resolve on the brand card; no new cue begins here.

## Output

`films/<slug>/credits/{title,director,brand}.png`, `films/<slug>/credits/credits.mp4`, and a line in `continuity.md` recording the title and director as shown.
