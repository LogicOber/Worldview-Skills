---
name: film-location
description: Stage 3 of the AI film pipeline — generate and lock a location plate (set reference) shot from a 3/4 angle with palette, time of day, weather and furniture count written into the prompt; contrast intercut locations (warm office vs cold stadium vs golden flashback) so edits read as time/place changes without titles. Use when a scene needs a consistent environment.
---

# Location Plate (stage 3)

## Why

The plate tells the model what the place looks like, how big it is, and where things sit. It is a reference for **look, materials, scale and layout** — never a keyframe. Every shot prompt says so explicitly, because otherwise the model copies the plate's composition (its emptiness, its angle) into a scene that needs people in chairs or a full stadium.

## Two rules that do most of the work

1. **"3/4 angle" in every plate prompt.** Straight-on, walls compress into a flat backdrop and the model has no depth cues; at three-quarters two walls are visible and the model reads real distances between chairs, table, window. Every batch the course ran with this phrase came back with depth; none without.
2. **Palette and mood are decided here, in words, not in post.** Warm/cold, time of day, weather, and named colours ("cold floodlight white, muted turf green — never neon —, deep blue-black sky"). Genre picks the default (`film-direction` §2). Vague mood words produce nothing pickable.

And the third, from the failure list: **state furniture and object counts** ("exactly two chairs"). An unlocked count is how a third chair appears.

## Contrast between intercut locations

Write the palette table from `direction.md`:

| location | time | key light | 60:30:10 | mood |
|---|---|---|---|---|
| office | late afternoon | low sun through gridded windows, 4800K | terracotta / warm wood / rust chair | warm, held |
| stadium | night | high floodlights, contre-jour, 5000K | green pitch / dark stands / white ball | cold, hollow |
| old street pitch | golden hour | low sun, backlit dust, film grain | sun-bleached ochre / faded blue / white ball | warm, nostalgic |
| city street | late day | soft daylight, low sun flares | amber / grey-blue / kit colour | hopeful |

Two flashbacks with the same palette read as the same memory. The cold one is the trauma; the golden one is the origin. The contrast *is* the edit.

## Prompt skeleton

```text
<Mood> <style/era> <place>, shot from a 3/4 angle so two walls / two sides are visible and the space reads with depth (not a flat head-on view).

<Key architectural feature and what it does to the light>.

Foreground: <the furniture the actors will use — exact count, distances, orientation to camera>.
Behind: <secondary dressing, soft focus>. Floor / walls / ceiling materials.

Light: <source, direction, Kelvin, time of day, weather>. Shadows <soft/hard, warm/cool>.
Palette 60:30:10 — <dominant> / <secondary> / <accent>.
Lens feel: <24/35 mm>, <shallow/deep> DOF, fine film grain<, old-film look if era>.

No people, no text.
```

For the stadium: say **empty or full** deliberately. The plate is usually empty (cleaner), and the *shot prompt* then overrides ("stands COMPLETELY FULL; if the location reference shows empty stands, ignore that and populate"). Write that override into `asset-map.json` `desc` so it is never forgotten.

## Generate (default 4)

```bash
SK=<abs path of film-pipeline>/scripts
$SK/batch.sh --model gpt-image-2 --copies 4 --param size=2048x1152 --param quality=high \
  --out films/<slug>/assets/candidates/office films/<slug>/prompts/loc-office.txt
$SK/poll.sh films/<slug>/assets/candidates/office
```

`krea2` is acceptable for a quick text-only mood board when the user is undecided; the locked plate comes from a photoreal model.

## Pick test

Keep only candidates that show depth (two walls, believable distances), match palette and time of day, have the exact furniture count and nothing extra, no people, no text, no warped verticals, no half-formed objects. Reject flat frames even if pretty. Show survivors; user picks.

## Lock

`assets/locations/<name>.png` → public URL → `asset-map.json` with a `desc` that lists the **landmarks shot prompts will name** ("gridded windows, terracotta floor, rust egg chair, tan lounge chair, brass arc lamp, jade plants, vintage radio") and any override note ("plate shows empty stands — shots must populate").

## Spatial lock (mandatory output)

A plate fixes the *look* of a room. It does not fix where the door is. Video models rebuild the space on every cut, and the most common multi-shot failure is furniture that moves between shots — one bed on the right in shot 1, two beds in shot 2.

Every locked location therefore ships with a **spatial lock**: a short floor plan in words, with screen sides, that `film-shot-prompt` pastes verbatim at the top of every block set there.

```text
SPATIAL LOCK — <location name> (identical in every shot):
  <fixed thing>: <screen side / wall / position>
  <fixed thing>: <…>
  <… 4–8 lines: door, main surface, seating, window, light sources, one hero prop …>
Furniture placement, colours and the door position never change between shots.
```

Write it from the plate the user picked, name only what the shots will use, and store it in `asset-map.json` under `spatial_lock`. When the location appears again in a later block, the same text is used; it is never rewritten from memory.

## Coverage (multi-angle plates)

For any location that hosts more than two shots, generate two more plates **from the locked main plate as image reference** with a one-line camera delta: a **reverse** (from the opposite corner) and a **detail** (the surface the actors use). Shots then reference the plate closest to their own angle. Three plates plus the spatial lock is the combination that held the dorm room together across eight blocks; either one alone did not.

## Product films

The "location" is often a desk with a laptop or a hand with a phone. Same rules: 3/4 angle, palette from brand, count of devices locked, and the screen area left blank/dark in the plate so the real capture (`film-screen-capture`) is what appears on it.
