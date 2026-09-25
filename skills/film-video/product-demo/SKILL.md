---
name: product-demo
description: >-
  Entry point for a product or app video that is shot like a film — a person
  with a problem, the product entering as the thing that changes what is
  possible, real UI captured from the product (never invented), and a story beat
  the viewer remembers. Use when the user says "demo video", "product trailer",
  "launch video", "show my app", or uploads screenshots of a product.
metadata:
  title: Product Demo Film
  category: film-video
  triggers: >-
    demo video for my app; product trailer; launch video; show what my product
    does; make a video from these screenshots
---

# Product Demo Film

Make a product video people watch to the end.

## The one rule

The product is never the hero. A person is. The product enters *after* the person's problem is felt, as the thing that opens a door they were afraid to walk through. If the product removes the obstacle instantly, there is no film — there is a feature list with music.

Everything else in this skill exists to serve that rule.

## What the user gets

| Deliverable | Format |
|---|---|
| Story spine | who, what they want, what stops them, what the product makes possible, what changes |
| Ordered "aha" list | the 3–5 product moments a first-time viewer must perceive without narration |
| Screen assets | real screenshots from the product, indexed by which beat they serve |
| Cast and location sheets | locked, in the chosen style |
| Video | 60–120 s, or 2–4 min for a narrative demo |
| Optional | voiceover, music, vertical cut |

## What the user has to do

1. Say what the product does and who it is for. Upload screenshots if possible (the skill will capture public pages itself if not).
2. Pick a style by letter. (Product films default to A — live action — with the product's brand palette; the user can pick otherwise.)
3. Approve the aha list and the outline.
4. Pick takes by number.

## How it runs

```text
film-style-library    → style + brand palette
film-direction   → intent as an ordered aha list; palette per location
film-story→ a person with an obstacle; the product as the door   ← gate
film-script  → blocks ≤30 s; each product beat justified: "which aha, and
      can a first-time viewer perceive it without narration?" ← gate
film-screen-capture   → every UI state the script needs, as real captures
film-character-sheet / film-location / film-prop-sheet
film-shot-prompt      → screens referenced by exact file; exact on-screen text quoted
film-dialogue-voiceover (if lines)
film-generate-review
```

## Rules this entry enforces

- **Real UI only.** Every screen that appears is a capture of the actual product. The prompt quotes the exact visible text and requires the layout to match the reference. The video model repaints screens every frame, so small text will soften; the edit may cut to a true screen recording where pixel accuracy matters.
- **Aha without narration.** A product beat that needs a caption to be understood is redesigned (bigger screen, slower move, a hand pointing) or cut.
- **The obstacle is on screen before the product.** Minimum one block of the person failing without it.
- **Product ≠ resolution.** The product enables the person's choice; it does not make it. The ending is a changed person, then a logo for ≤4 s.
- **Brand palette is a constraint, not a wash.** 60:30:10 with the brand colour as the 10 % accent — practical light on screens, not a tint over everything.

## Related entries

- `cinematic-film` — when the demo becomes a full narrative
- `social-media-video` — vertical cut of the same material
- `game-cutscene-generator` — when the product is a game
