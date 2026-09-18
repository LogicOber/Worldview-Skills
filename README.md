<p align="center">
  <img src=".github/assets/worldview-skills-cover.png" alt="Worldview Skills" width="100%">
</p>

# Worldview Skills

Build playable games, high-fidelity game scenes, films, reusable visual assets, and complete stories with Claude Code, Codex, or another Agent that supports `SKILL.md`.

<p align="center">
  <a href="./README.md"><kbd><strong>English</strong></kbd></a>
  <a href="./README.zh-CN.md"><kbd>简体中文</kbd></a>
</p>

Start with one sentence, an existing project, or a set of world references. Call the matching Slash entry and the Agent receives the production steps, files to create, checks to run, and result to hand back.

The repository currently includes **59 installable Skills** for:

- building a new playable game slice or rebuilding an existing game's presentation;
- implementing horror mechanics such as pursuit, hiding, sound detection, scarce saves, investigation, and death loops;
- designing boss fights, ability kits, levels, puzzles, branching choices, and playable 2D formats;
- creating consistent characters, bosses, environments, props, sprites, and visual effects;
- producing short films, cutscenes, action sequences, product videos, and social clips;
- writing mysteries, thrillers, romances, and hero journeys.

## Contents

- [Install and update](#install-and-update)
- [High-fidelity game production](#high-fidelity-game-production)
- [Horror game mechanics](#horror-game-mechanics)
- [Game design and 2D game creation](#game-design-and-2d-game-creation)
- [3D asset creation](#3d-asset-creation)
- [Film and video production](#film-and-video-production)
- [Story writing](#story-writing)
- [Repository layout](#repository-layout)
- [License and sources](#license-and-sources)

## Install and update

Install all 59 Skills for every supported Agent:

```bash
npx skills add LogicOber/Worldview-Skills --all
```

Install only one Skill:

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-high-fidelity-vertical-slice
```

Update every installed Skill, or name one Skill to update only that entry:

```bash
npx skills update
npx skills update worldview-game-high-fidelity-vertical-slice
```

These commands follow the official [Vercel Skills CLI](https://github.com/vercel-labs/skills#readme). Re-run the full `add ... --all` command when you also want Skills published after your original installation.

After installation, call a Skill by its Slash name and write the request underneath it:

```text
/worldview-game-high-fidelity-vertical-slice

Build a five-minute third-person chapter about a courier carrying a glass seed
through a tide station while the water rises. Use the current repository.
```

## High-fidelity game production

| Slash entry | Use it for | Result |
| --- | --- | --- |
| [`/worldview-game-high-fidelity-vertical-slice`](skills/game-production/worldview-game-high-fidelity-vertical-slice/README.md) | Turn a story, place, or game idea into one polished 2D or 3D playable chapter. | Playable core, three to five real gameplay states, original asset plan, integrated presentation, runtime captures, performance evidence, and handoff. |
| [`/worldview-game-runtime-visual-fidelity-rebuild`](skills/game-production/worldview-game-runtime-visual-fidelity-rebuild/README.md) | Replace the generic or inconsistent presentation of a game that already works. | Protected gameplay baseline, rebuilt camera/assets/materials/lighting/VFX/UI/audio, same-state comparisons, regression journeys, and measured performance. |

For the strongest result in Codex, use **GPT-6 Astra + Max** for one deep end-to-end task. Use **Astra + Ultra** when asset production, runtime implementation, and verification can run as separate subagent tracks. In the API, `max` is a `reasoning.effort` value; Ultra is Codex orchestration rather than an API effort value. See the official [GPT-6 Astra model page](https://developers.openai.com/api/docs/models/gpt-6-astra) and [Codex model guide](https://learn.chatgpt.com/docs/models).

Image generation, Blender MCP, another DCC, browser or engine automation, and profilers are used when they are configured and authorized. Each Skill also defines a fallback when one of those capabilities is unavailable.

[Compare the two game-production Skills →](skills/game-production/README.md)

## Horror game mechanics

Seventeen standalone Skills implement complete, testable horror-game situations.

| Family | Included mechanics |
| --- | --- |
| **Pursuit and hiding** | Lure–hide–escape, observation-gated stalkers, sound distraction, roaming stalkers, safe rooms, and barricades. |
| **Survival decisions** | Scarce inventory, key-item backtracking, limited-save risk, and fictional wound treatment. |
| **Investigation and objectives** | Power restoration, proximity tracking, entity identification, and threat-interrupted puzzles. |
| **Perception and cooperation** | Perception distortion, persistent death-loop clues, and asymmetric-information cooperation. |

```text
/worldview-game-lure-hide-escape

Use the hotel floor in this project. Let the player throw an object, break line
of sight, hide beneath the bed, and escape through the second door while the
creature searches the false sound source.
```

[Choose from all 17 horror mechanics →](skills/game-mechanics-horror/README.md)

## Game design and 2D game creation

### Gameplay, encounters, and levels

| Slash entry | What it creates |
| --- | --- |
| [`/boss-battle`](skills/game-design/boss-battle/SKILL.md) | A complete boss encounter with arena, phases, telegraphs, counters, and finish. |
| [`/hero-skill-system`](skills/game-design/hero-skill-system/SKILL.md) | A readable passive and Q/W/E/R-style ability kit with costs and counterplay. |
| [`/horror-chase`](skills/game-design/horror-chase/SKILL.md) | A designed chase with routes, hiding places, rules, and near-miss timing. |
| [`/puzzle-mechanic`](skills/game-design/puzzle-mechanic/SKILL.md) | A teachable puzzle rule, escalation sequence, and intended “aha.” |
| [`/platformer-level`](skills/game-design/platformer-level/SKILL.md) | A level that teaches, tests, and combines the player's movement verbs. |
| [`/roguelike-generator`](skills/game-design/roguelike-generator/SKILL.md) | Room grammar, risk/reward structure, upgrades, and a closing boss for a run. |
| [`/narrative-choice`](skills/game-design/narrative-choice/SKILL.md) | Branching decisions with state, delayed consequences, and honest reconvergence. |

### Playable 2D formats and sprites

| Slash entry | What it creates |
| --- | --- |
| [`/card-game`](skills/2d-game/card-game/SKILL.md) | A card-battle loop and a first balanced card set. |
| [`/rhythm-game`](skills/2d-game/rhythm-game/SKILL.md) | A playable rhythm slice with music analysis, note chart, timing, and feedback. |
| [`/side-scroller`](skills/2d-game/side-scroller/SKILL.md) | A side-view playable level with art layers and movement challenges. |
| [`/visual-novel`](skills/2d-game/visual-novel/SKILL.md) | A playable dialogue scene with characters, expressions, backgrounds, and branches. |
| [`/pixel-art-sprite`](skills/2d-game/pixel-art-sprite/SKILL.md) | A locked pixel grid, palette, character animations, and matching tiles. |

## 3D asset creation

These Skills create consistent design sheets, multi-angle references, production specifications, and—when a compatible 3D tool is available—editable models or scene assets.

| Slash entry | What it creates |
| --- | --- |
| [`/character-model`](skills/3d-assets/character-model/SKILL.md) | Character turnaround, expressions, wardrobe variants, and an optional textured model. |
| [`/boss-model`](skills/3d-assets/boss-model/SKILL.md) | Large-enemy scale sheet, action board, damage states, weak-point design, and optional model. |
| [`/environment-scene`](skills/3d-assets/environment-scene/SKILL.md) | A location plate, multi-angle coverage, fixed landmark layout, and optional 3D scene. |
| [`/weapon-prop`](skills/3d-assets/weapon-prop/SKILL.md) | A consistent weapon, relic, tool, costume, or text-bearing prop. |
| [`/vfx-effect`](skills/3d-assets/vfx-effect/SKILL.md) | A reusable effect with shape, palette, timing, causality, and a reviewable loop. |

## Film and video production

| Slash entry | What it creates |
| --- | --- |
| [`/cinematic-film`](skills/film-video/cinematic-film/SKILL.md) | A multi-segment narrative short film from one premise. |
| [`/game-cutscene-generator`](skills/film-video/game-cutscene/SKILL.md) | An in-game entrance, conversation, transition, or victory cutscene. |
| [`/anime-action-scene`](skills/film-video/anime-action-scene/SKILL.md) | A short action sequence with readable movement and deliberate camera rhythm. |
| [`/product-demo`](skills/film-video/product-demo/SKILL.md) | A product film built around real UI and a memorable use case. |
| [`/social-media-video`](skills/film-video/social-media-video/SKILL.md) | A 15–60 second vertical cut with an immediate hook and mobile captions. |

<details>
<summary><strong>Individual film-production stage Skills</strong></summary>

| Slash entry | Stage |
| --- | --- |
| [`/film-pipeline`](skills/core-engine/film-pipeline/SKILL.md) | Complete short-film workflow from direction through final assembly. |
| [`/film-direction`](skills/core-engine/film-direction/SKILL.md) | Direction, intent, pacing, palette, and review criteria. |
| [`/film-story`](skills/core-engine/film-story/SKILL.md) | Want, conflict, stakes, loss, dilemma, and payoff. |
| [`/film-script`](skills/core-engine/film-script/SKILL.md) | Shot-sized script blocks and the asset build list. |
| [`/film-style-library`](skills/core-engine/film-style-library/SKILL.md) | Visual-style selection and consistency rules. |
| [`/film-character-sheet`](skills/core-engine/film-character-sheet/SKILL.md) | Character identity, wardrobe, and reference views. |
| [`/film-location`](skills/core-engine/film-location/SKILL.md) | Stable location layout, material, palette, and time of day. |
| [`/film-prop-sheet`](skills/core-engine/film-prop-sheet/SKILL.md) | Recurring props, costumes, clues, and text-bearing objects. |
| [`/film-screen-capture`](skills/core-engine/film-screen-capture/SKILL.md) | Real product UI captured for use inside a shot. |
| [`/film-shot-prompt`](skills/core-engine/film-shot-prompt/SKILL.md) | Timed generation instructions for one approved script block. |
| [`/film-action-combat`](skills/core-engine/film-action-combat/SKILL.md) | Causal hits, pursuits, effects, physics, and camera reactions. |
| [`/film-dialogue-voiceover`](skills/core-engine/film-dialogue-voiceover/SKILL.md) | Voice timing and audio-driven lip sync. |
| [`/film-generate-review`](skills/core-engine/film-generate-review/SKILL.md) | Take generation, review, selection, assembly, and continuity. |
| [`/film-end-credits`](skills/core-engine/film-end-credits/SKILL.md) | Final title, director, and brand cards. |

</details>

## Story writing

| Slash entry | What it creates |
| --- | --- |
| [`/hero-journey`](skills/narrative/hero-journey/SKILL.md) | A departure, ordeal, return, and meaningful transformation. |
| [`/thriller-plot`](skills/narrative/thriller-plot/SKILL.md) | A ticking clock, visible antagonist plan, reversals, and collision of plans. |
| [`/romance-arc`](skills/narrative/romance-arc/SKILL.md) | A relationship built from incompatible wants, intimacy, rupture, and chosen reunion. |
| [`/mystery-detective`](skills/narrative/mystery-detective/SKILL.md) | A fair clue trail, suspect logic, misdirection, and solvable reveal. |

## Repository layout

The folder labels below describe the Skills they contain:

```text
skills/
├── game-production/          Skills for building or visually rebuilding playable games
├── game-mechanics-horror/    Skills for implementing horror gameplay mechanics
├── game-design/              Skills for designing encounters, abilities, levels, and choices
├── 2d-game/                  Skills for creating playable 2D formats and pixel art
├── 3d-assets/                Skills for creating characters, environments, props, and VFX
├── film-video/               Skills for producing complete films and video formats
├── core-engine/              Skills for executing individual film-production stages
└── narrative/                Skills for writing complete story structures
```

Future game-perspective Skills—first-person, third-person, 2.5D, isometric, and side-view—have their own reserved branch in the [game Skill architecture](docs/game-skill-architecture.md), separate from gameplay mechanics and production Skills.

## License and sources

Licensed under [Apache License 2.0](LICENSE). Each newly researched game package includes a `SOURCE.md` file recording its authorship, research inputs, and non-copy boundary.

When a project uses an existing game, film, book, or visual world, keep its attribution visible and obtain the rights required for publication or commercial use.

## Sponsor

[Neta](https://neta.art): Give your world its first heartbeat. Describe it. Neta brings your world to life, and lets you step inside.

[![Neta.art homepage — Give your world its first heartbeat](.github/assets/neta-art-homepage.png)](https://neta.art)
