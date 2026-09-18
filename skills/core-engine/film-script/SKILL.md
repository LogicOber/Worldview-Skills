---
name: film-script
description: Stage 1 of the AI film pipeline — write a shot-by-shot screenplay where every block is ≤15 s (one video generation), every shot is justified, dialogue is exact, and the script doubles as the asset build list (characters + wardrobe variants + aged variants, locations with palette, props incl. text props, screens). Use when the user describes a premise and wants a script, wants an existing script restructured for AI video, or wants a product film storyboarded.
---

# Film Script (stage 1)

## Why the script is the build list

Every `INT./EXT.` line is a location plate to generate. Every character name is a sheet. Every wardrobe change is a variant sheet. Every prop that appears twice, or carries text, is a prop sheet. Every screen that shows a product is a screenshot to capture. Skip the script and you improvise assets scene by scene — and the model improvises with you.

The script is also the **hardest gate**: the director should already know, before any pixel exists, what happens from second 0 to second 15 of every block, why each shot exists, and what happens if it is removed. Everything downstream is mechanical compared to this.

## Inputs (read `direction.md` first; ask only for what is missing)

- Premise, hero, ending beat, genre (default drama), runtime (default ~2:00), block length (default **30 s** on Seedance 2.5; 15 s when a block needs a match cut or an isolated line), aspect (16:9).
- For product films: the ordered list of "aha" moments and the URL(s) of the product.

Block count = runtime ÷ block length. Announce it ("5 blocks of 30 s") before drafting.

## Outline before script

The user approves an **outline** first: logline, **the story tables from `story.md` (spine, conflict ladder, setups/payoffs, emotion map)**, four-act map with one line **and one tension line** per block, the cast list, the locations, and the screens used. Only after that is approved do the timed shots get written. Reasoning: a shot list is expensive to re-do; an outline is cheap.

Before writing the outline, **read `film-story/SKILL.md`, `film-direction/SKILL.md` §5 and this file** — do not work from memory. Every block in the script carries the conflict IDs it advances and the emotion it must produce; a block with neither is cut or merged.

## Four-act map (8-block film)

| Act | Blocks | Job |
|---|---|---|
| Setup | 1 | where he is now; the question that opens the wound |
| Rising action | 2–5 | the problem in flashback intercut; the guilt named; the origin |
| Climax | 6–7 | the memory at full force; the direct question he cannot answer |
| Resolution | 8 | the small human beat |

The reference film (Santiago) maps exactly: 1 office question → 2 flashback set-up (no kick) → 3 "Guilt… And I…" → 4 flashback the miss → 5 "Who?" / "I was seven" → 6 golden flashback, VO → 7 "I let him down / forgive yourself? / I don't know" → 8 street, ball, kid.

## Output — `films/<slug>/script.md`

```markdown
# <TITLE>
Genre: Drama · Runtime ~2:00 · 8 blocks × 15 s · 16:9
Intent: <one line from direction.md>

## Characters (each line = one sheet)
- SANTIAGO (25) — office wardrobe: <…>; stubble, tired. [sheet: santiago]
- SANTIAGO — match variant: clean-shaven, neat hair, maroon #23 kit. [sheet: santiago-kit ← santiago + kit]
- SANTIAGO (7) — aged variant, striped tee with hand-painted "SANTIAGO 30" on the back. [sheet: santiago-kid ← santiago]
- DR. VEGA (40s) — taupe suit, glasses, notebook. [sheet: vega]
- GOALKEEPER — yellow kit, gloves. [sheet: keeper]
- FAN KID (10) — kit with SANTIAGO 23 on the back. [sheet: kid]
- OLD FAN (65–75) — one-off, close-up featured → text-described with identity-isolation clause. [no sheet]
- Crowd, teammates, referee — background → text only. [no sheet]

## Locations (each line = one plate; palette from direction.md)
- INT. OFFICE — DAY — warm, 4800K, terracotta/wood/rust. [plate: office]
- EXT. STADIUM — NIGHT — cold floodlight white / muted green / blue-black. [plate: stadium]
- EXT. OLD STREET PITCH — GOLDEN HOUR — 80s Spanish town, film grain. [plate: old-street]
- EXT. CITY STREET — LATE DAY — warm amber / grey-blue. [plate: street]

## Props (each line = one sheet)
- match ball (blocks 2, 4) [ball]; kit ghost-mannequin (feeds santiago-kit) [kit]
- notebook — TEXT: "GUILT — missed penalty" / "Self-blame, unresolved" / "Roots: childhood / football" [notebook]
- old ball (block 6) [old-ball]; homemade wire trophy (block 6) [trophy]

## Screens (each line = one capture)
- (product films) laptop shows https://… landing page at 1920×1080 [screen: home]

## Blocks

### BLOCK 1 — 0:00–0:15 — SETUP — INT. OFFICE — DAY
Entry state: (first block)
Shots:
  1A 0–6 s   WS 24 mm high, slight Dutch, both seated. Anchors seating.
             Reveals: who/where. Cut it and every later CU floats.
  1B 6–10 s  CU 24 mm Dutch on VEGA, pinned lower-left, no looking room.
             VEGA: "Tell me what you feel when you remember that moment."
             Reveals: the question; the tension of being asked.
  1C 10–15 s CU 24 mm Dutch on SANTIAGO, pinned lower-right. Foot taps fast. Eyes glassy, dry.
             Ends: eyes close, stay closed. Reveals: he can't answer yet.
Exit state: santiago — lounge chair upper-right, camp shirt, eyes closed, guarded. vega — egg chair, notebook open.
Match-cut hook → block 2 opens on closed eyes (stadium).
Assets: santiago, vega, office.

### BLOCK 2 — 0:15–0:30 — RISING — EXT. STADIUM — NIGHT (FLASHBACK)
…
```

Every block carries: slugline, entry state, shots with time ranges + size/lens + one-line **Reveals / cut-test**, exact dialogue, exit state, match-cut hook if any, asset list.

## Rules for each block

1. **≤30 s per block; ≤3 shots per 15 s of runtime for dialogue, more only for action montage.** Prefer one 30 s block over two 15 s blocks unless a seam is needed. If a beat needs more, split into sub-blocks at the script stage, not at generation time.
2. **Dialogue: exact words, ≤12 words per line, one speaker per shot.** Mark tone (low, trembling, breaks on "second"), and where the sentence stops ("And I…").
3. **Write the visible, not the felt.** "Masseter tightens; one delayed swallow; eyes well but don't fall" — not "he is sad".
4. **Pauses are beats with durations.** After every flashback, the next office block opens on a 1–2 s processing beat before anyone speaks.
5. **Entry state = previous exit state.** Copy it literally; the continuity ledger is built from these lines.
6. **Anchor rule.** A block with >1 shot in a known room opens with a ≤1.5 s wide that places everybody.
7. **Every shot passes the justification test** (`film-direction` §4). Write the one-liner; if you can't, delete the shot.
8. **Continuity-critical items are named per block**: which sheet, which wardrobe, which prop is in hand. If a viewer would notice its absence or change, it must be in the asset list.
9. **Text props**: quote the text in the script and note the hold time and angle.
10. **VO lines** over action blocks: mark `(V.O.)` and plan a separate face take for the read.
11. **Match-cut hooks**: when block N ends on a pose that block N+1 opens on, write it on both blocks.
12. **Density check.** Count the beats (one beat = one visible plot advance). A 30 s block wants 3–6. Seven or more reads as a fast-forwarded synopsis — split the block. Two or fewer reads as dead air — merge or add a reaction beat. Print the count per block in the outline.
13. **Every object has an origin.** A prop that matters is introduced by someone bringing it from somewhere, with a line or an action that says where. If the script cannot answer "where did that come from?" for a prop, add the beat that answers it before the prop appears.
14. **Reactions are beats.** When one character does something the others must notice, write the noticing: who looks up first, who stops what they were doing, how long the silence is. Dialogue that begins before the room has registered the event is the single most common "it feels fake" note.
15. **Two-line stories rhyme.** When the film has an inner world (a game, a story-within-a-story), the script carries `film-story`'s rhyme table: each inner beat that mirrors an outer beat is marked, and the crossings (where one line's action causes the other's) are placed on purpose.

## Product-film mode

Same structure; replace "Reveals emotion" with "Delivers aha #k". Each block shows one product idea; the screen content is a real capture (`film-screen-capture`); the hand/cursor/scroll action is written like an actor beat; the viewer must perceive the function without narration. If a shot would need a caption to be understood, redesign the shot.

## Working with the user

1. Draft the whole script in one pass. Show the act map and asset counts (sheets / plates / props / screens) in a short table first, then the full text.
2. Ask for one round of notes — their idea wins.
3. Save `script.md` and derive the build list. Update `asset-map.json` with placeholder entries (`"file": null`) so later stages know what is still missing.
4. Hand off: "Assets next — sheets for <list>, plates for <list>, props for <list>, screens for <list>. They can run in parallel."

No image or video generation in this stage.
