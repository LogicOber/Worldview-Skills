---
name: film-screen-capture
description: Stage 4b of the AI film pipeline — capture a real web page or app screen with a headless browser so it can appear on a laptop/phone/monitor inside a generated shot (product trailers, "he opens his laptop and sees the site" beats). Produces the screenshot, a device-composited still, and the reference lines for the shot prompt. Use whenever a shot must show a specific, real UI.
---

# Screen Capture (stage 4b)

## Why

A video model asked to show "the Neta homepage on his laptop" will invent a plausible homepage. For a product film that is a failure: the viewer must recognise the real product, and any investor or user who knows it will spot a fake instantly. The page is therefore a **prop with a non-negotiable texture** — the real screenshot — and it is captured or supplied, not described.

## Source of screenshots — user-supplied first

This skill is about making the film, not about browser automation. The default is that **the user hands over screenshots** (logged-in pages, private boards, dialogs) and we treat them as a screen asset library:

1. Copy every supplied image to `films/<slug>/assets/screens/<short-name>.png` (convert webp → png with `python3 -c 'from PIL import Image; Image.open(a).save(b)'` or `ffmpeg -i a.webp b.png`).
2. Write `assets/screens/INDEX.md`: one line per screen — name, what UI state it shows, the exact visible headline text, what story beat it can serve. The script author reads this index; a screen not in it does not exist for the film.
3. Add each to `asset-map.json` as `kind: "screen"`.
4. Text on the screens may be changed for the story; the *layout* is what must survive. Say so in the prompt ("same layout and visual language as the reference; headline reads: …").

Only when a needed public page is missing, capture it yourself:

Verified in this Space: `agent-browser` opens a public URL headless, waits for network idle, and saves a clean 1920×1080 PNG (test: `https://neta.art` → title "Neta Studio — AI World Builder & Game Generator").

## Capture

```bash
SK=<abs path of film-pipeline>/scripts
$SK/capture.sh https://neta.art films/<slug>/assets/screens/home.png --viewport 1920x1080
# options: --full (whole page) · --scroll 800 · --wait-text "Get started" · --dark · --session <name>
```

Writes `home.png` + `home.json` (url, title, size). For a phone, use `--viewport 390x844`. For a page that needs login, follow the `agent-browser` skill's auth flow first with the same `--session`, then capture.

Capture **every state the shot needs**: landing, after a click, after typing. Each state is its own file; a "he types and the world appears" beat needs two or three captures and becomes a first_frame/last_frame pair or a sequence of shots.

## Make it usable as a reference

Raw screenshots are flat UI on a white field — the video model treats them like a poster. Composite the capture onto the device once, with `gpt-image-2`, so the reference already contains perspective, bezel and reflections:

```bash
cohub generate "Photoreal 3/4 view of a modern laptop on a wooden desk, warm side light, the screen showing EXACTLY the web page from the reference image — same layout, same text, same colours, pixel-accurate, sharp and legible, slight screen glow on the keyboard. No other UI, no extra windows." \
  --model gpt-image-2 --image films/<slug>/assets/screens/home.png \
  --param size=2048x1152 --param quality=high --async --json
```

Batch 4, pick the one where the **text is legible and unchanged**. Reject any candidate where headings are paraphrased, logos redrawn, or layout reflowed. Lock both files:

```json
"screen-home":        {"kind":"screen","file":"assets/screens/home.png","url":"…","desc":"neta.art landing: hero 'Give your world its first heartbeat', prompt bar, green valley art"},
"screen-home-laptop": {"kind":"prop","file":"assets/screens/home-laptop.png","url":"…","desc":"same page on a laptop, 3/4 desk view"}
```

## The capture is sacred

The capture is passed as an **image reference** to the compositing step. It is never re-described in words and regenerated. Three failures happened when it was:

- The UI came back in the wrong language (a Chinese interface for an English film).
- The product's logo was redrawn or dropped.
- Layout and copy were paraphrased into a generic dashboard.

Before locking any composited screen, check three things against the original capture: **language**, **logo**, **headline text**. Any mismatch is a reject, not a note.

## Scene-matched mockup

A laptop mockup on a generic wooden desk in daylight, dropped into a midnight dorm scene, gives the video model two rooms and two times of day to reconcile. It will pick one at random.

Composite the capture into a mockup that uses **the scene's own location plate** as a second reference, at the scene's time of day, with the scene's practical lights:

```bash
cohub generate "The open laptop from the scene sits on the shared table of this exact dorm room at night, warm desk lamps, string lights; its screen shows EXACTLY the web page from the first reference — same layout, same text, same logo, legible. 3/4 view over the table. No people." \
  --model gpt-image-2 \
  --image films/<slug>/assets/screens/home.png \
  --image films/<slug>/assets/locations/dorm.png \
  --param size=2048x1152 --param quality=high --async --json
```

One scene-matched mockup per (screen state × location). Name them so the shot prompt can pick the right one: `screen-home-dorm-night.png`, `screen-share-classroom-day.png`.

## State order follows the story

A character who has just received a link sees the **landing page** first, not the workspace. A character who has been working for an hour sees the workspace, not the landing page. The sequence of UI states in the film is the sequence a real first-time user would see. Write the state list in story order in `assets/screens/INDEX.md` and have the script reference states by name; a shot that shows a later state before its predecessor is a continuity error.

## Reference lines for the shot prompt

```text
@screen-home-laptop — the laptop and its screen; the screen content is the real page and must match the reference EXACTLY: same headline text, same layout, same colours, legible. 100% matches the reference.
```

Constraints to add in the shot prompt:

- "the screen shows the reference page throughout; text stays legible and unchanged; no invented UI, no extra windows, no cursor jitter"
- hold the screen ≥2 s in a size where the headline is readable (MS or CU on the screen, 35–50 mm, slight angle to avoid moiré)
- if the shot includes an interaction ("he clicks Get started"), provide the *after* state as `last_frame` and describe the click as a beat

## Limits (say them to the user)

- The video model repaints the screen every frame; small UI text may still soften. Keep the readable element to one headline and the logo, and cut to a true screen-recording insert in the edit if pixel accuracy is mandatory.
- Pages behind login need credentials via the agent-browser auth vault; never paste secrets into prompts.
- Animated hero sections: `--wait-text` on a stable element, then capture.
