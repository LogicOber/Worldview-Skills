<p align="center">
  <img src=".github/assets/worldview-skills-cover.png" alt="Worldview Skills" width="100%">
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Apache--2.0-2f80ed?style=for-the-badge" alt="Apache 2.0 license"></a>
  <a href="https://github.com/LogicOber/Worldview-Skills"><img src="https://img.shields.io/badge/Skills-74-111827?style=for-the-badge" alt="74 Skills"></a>
  <a href="https://skills.sh"><img src="https://img.shields.io/badge/works%20with-Claude%20Code%20%7C%20Codex-111827?style=for-the-badge" alt="Works with Claude Code and Codex"></a>
</p>

<p align="center"><a href="./README.md"><strong>English</strong></a> · <a href="./README.zh-CN.md">简体中文</a></p>

# Worldview Skills

Build playable games, high-fidelity game scenes, films, reusable visual assets, and complete stories with Claude Code, Codex, or another Agent that supports `SKILL.md`.

Give an Agent this repository URL and a sentence describing what you want. It installs the relevant Skills, chooses the production path, reads the contract, asks only questions that change the result, builds and verifies the work, and reports exactly what is ready. You do not need to learn a node graph, assemble a workflow by hand, or remember which internal Skill to trigger next. Slash entries remain available when you want precise control over one stage.

The repository currently includes **74 installable Skills** for:

- expanding a short premise into a complete horror experience or a researched single-ending game campaign, building a new playable slice, or rebuilding an existing game's presentation;
- composing horror experiences and implementing mechanics such as pursuit, hiding, sound detection, scarce saves, investigation, routine corruption, procedural incidents, and death loops;
- studying games from screenshots and videos, reconstructing lived player experience, turning observed chase architecture into route contracts, and selecting a safe 3D asset-production route;
- designing boss fights, ability kits, levels, puzzles, branching choices, and playable 2D formats;
- creating consistent characters, bosses, environments, props, sprites, and visual effects;
- producing short films, cutscenes, action sequences, product videos, and social clips;
- writing mysteries, thrillers, romances, and hero journeys.

## Contents

- [Install and update](#install-and-update)
- [High-fidelity game production](#high-fidelity-game-production)
- [Horror game mechanics](#horror-game-mechanics)
- [Game analysis](#game-analysis)
- [Game design and 2D game creation](#game-design-and-2d-game-creation)
- [3D asset creation](#3d-asset-creation)
- [Film and video production](#film-and-video-production)
- [Story writing](#story-writing)
- [Repository layout](#repository-layout)
- [License and sources](#license-and-sources)

## Install and update

Install all 74 Skills for every supported Agent:

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
| [`/worldview-game-horror-production`](skills/game-production/worldview-game-horror-production/README.md) | Turn a short horror premise into a complete experience with connected mechanics, memorable spaces, a learnable threat, fear rhythm, recovery, and a tested ending. | Horror production contract, experience timeline, map/route plan, selected mechanic contracts, grey-box order, sensory plan, verification journeys, and a playable or implementation-ready handoff. |
| [`/worldview-game-single-ending-campaign`](skills/game-production/worldview-game-single-ending-campaign/README.md) | Expand a short premise into an original, researched, story-driven game with one canonical ending and a substantial playable world. | Dated research ledger, original fictionalization, complete route, connected gameplay systems, maps, NPCs, items, state/save logic, runtime evidence, and a verified build or deployment URL. |
| [`/worldview-game-high-fidelity-vertical-slice`](skills/game-production/worldview-game-high-fidelity-vertical-slice/README.md) | Turn a story, place, or game idea into one polished 2D or 3D playable chapter. | Playable core, three to five real gameplay states, original asset plan, integrated presentation, runtime captures, performance evidence, and handoff. |
| [`/worldview-game-runtime-visual-fidelity-rebuild`](skills/game-production/worldview-game-runtime-visual-fidelity-rebuild/README.md) | Replace the generic or inconsistent presentation of a game that already works. | Protected gameplay baseline, rebuilt camera/assets/materials/lighting/VFX/UI/audio, same-state comparisons, regression journeys, and measured performance. |

For the strongest result in Codex, use **GPT-6 Astra + Max** for one deep end-to-end task. Use **Astra + Ultra** when asset production, runtime implementation, and verification can run as separate subagent tracks. In the API, `max` is a `reasoning.effort` value; Ultra is Codex orchestration rather than an API effort value. See the official [GPT-6 Astra model page](https://developers.openai.com/api/docs/models/gpt-6-astra) and [Codex model guide](https://learn.chatgpt.com/docs/models).

Image generation, Blender MCP, another DCC, browser or engine automation, and profilers are used when they are configured and authorized. Each Skill also defines a fallback when one of those capabilities is unavailable.

[Choose a game-production Skill →](skills/game-production/README.md)

## Horror game mechanics

Twenty-seven standalone Skills implement complete, testable horror-game situations and composition layers, including route architecture for designed pursuits, sequential character handoffs, stranded journeys, divided-attention driving, and relief resources with learnable downstream costs. Use [`/worldview-game-horror-production`](skills/game-production/worldview-game-horror-production/README.md) when the Agent should compose those situations into one complete game.

| Family | Included mechanics |
| --- | --- |
| **Pursuit and hiding** | Lure–hide–escape, observation-gated stalkers, sound distraction, roaming stalkers, safe rooms, and barricades. |
| **Survival decisions** | Scarce inventory, key-item backtracking, limited-save risk, fictional wound treatment, and relief resources with delayed costs. |
| **Investigation and objectives** | Power restoration, proximity tracking, entity identification, and threat-interrupted puzzles. |
| **Perception and cooperation** | Perception distortion, persistent death-loop clues, asymmetric-information cooperation, and evidence carried across playable-character handoffs. |
| **Journey and composition** | Stranded routes that lose protections, divided-attention driving, experience rhythm, returning places, corrupted routines, procedural duty, and role/identity pressure. |

For a chase whose tension must come from a learnable building and route rather than an omniscient enemy sprinting behind the player:

```text
/worldview-game-chase-route-architecture

Design the hospital pursuit as an architectural route. Produce a 2.5D plan with
the main escape line, one risky alternate, failed loops, sight breaks, sound
events, item gates, checkpoints, and the exact timing margin for the final door.
Then implement and verify the route in the current project.
```

```text
/worldview-game-lure-hide-escape

Use the hotel floor in this project. Let the player throw an object, break line
of sight, hide beneath the bed, and escape through the second door while the
creature searches the false sound source.
```

[Choose from all horror mechanics →](skills/game-mechanics-horror/README.md)

## Game analysis

Use the analysis Skill before implementation when you want the Agent to learn from a set of gameplay videos, screenshots, a creator's channel, or a reference style. It treats the footage as design evidence: player decisions, hesitation, route discovery, camera language, architecture, objects, threat state, sound, and the connection between them. It does not merely summarize the plot or imitate another game's assets.

| Slash entry | What it creates |
| --- | --- |
| [`/worldview-gameplay-video-analysis`](skills/game-analysis/worldview-gameplay-video-analysis/README.md) | A timestamped observation ledger, screenshot/style board, route and mechanism diagrams, tagged design patterns and failure modes, and cross-video clusters that can feed a new horror game's contracts. |
| [`/worldview-gameplay-experience-study`](skills/game-analysis/worldview-gameplay-experience-study/README.md) | A first-person reconstruction, third-person design critique, quality judgment, routed qualitative cases, and original transfer cards built from evidence. |

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
| [`/worldview-3d-asset-production-route`](skills/3d-assets/worldview-3d-asset-production-route/README.md) | A decision and verification route for hand-authored, procedural, or image-to-3D assets, including static-mesh use, topology and rigging checks, Tripo-style generation limits, rights, and runtime integration. |

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
├── game-analysis/             Skills for extracting design evidence from games and gameplay media
├── game-design/              Skills for designing encounters, abilities, levels, and choices
├── 2d-game/                  Skills for creating playable 2D formats and pixel art
├── 3d-assets/                Skills for creating characters, environments, props, and VFX
├── film-video/               Skills for producing complete films and video formats
├── core-engine/              Skills for executing individual film-production stages
└── narrative/                Skills for writing complete story structures

docs/                          Maintainer notes for category boundaries and Skill-writing conventions
```

The `docs/` folder is for maintainers. It explains how the repository is organized and how new Skills are written; an Agent normally needs only the matching `SKILL.md` and its companion files. Future game-perspective Skills—first-person, third-person, 2.5D, isometric, and side-view—have their own reserved branch in the [game Skill architecture](docs/game-skill-architecture.md), separate from gameplay mechanics and production Skills.

## License and sources

Licensed under [Apache License 2.0](LICENSE). Each newly researched game package includes a `SOURCE.md` file recording its authorship, research inputs, and non-copy boundary.

When a project uses an existing game, film, book, or visual world, keep its attribution visible and obtain the rights required for publication or commercial use.

## Sponsor

[Neta](https://neta.art): Give your world its first heartbeat. Describe it. Neta brings your world to life, and lets you step inside.

[![Neta.art homepage — Give your world its first heartbeat](.github/assets/neta-art-homepage.png)](https://neta.art)
