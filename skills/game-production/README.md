# Game Production

Three standalone Agent Skills turn a short creative brief or an existing project into work that can be played and inspected in the real runtime. One researches and builds a substantial story campaign with one canonical ending. One starts a bounded game slice. One rebuilds the presentation of a game that already works but still looks like default primitives, flat vectors, stock UI, or unrelated assets placed together.

Each entry turns an outcome such as “a complete campaign” or “AAA-style presentation” into a bounded target with working gameplay, project-specific visual decisions, real runtime states, measured behavior, and a handoff that says exactly what is finished. Choose by the result you need; no package requires another one to be installed.

## Install and call one Skill

For a researched story-driven campaign with one ending:

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-single-ending-campaign
```

```text
/worldview-game-single-ending-campaign

Build an English-language 3D horror campaign about an archivist entering a city
where public knowledge is controlled by a private certification bureau. Give it
one canonical ending, several connected forms of play, and a complete route from
first control to credits. Research the debate, create original composite fiction,
and return a deployed URL if this environment is authorized to deploy.
```

For a new playable chapter:

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-high-fidelity-vertical-slice
```

```text
/worldview-game-high-fidelity-vertical-slice

Build a third-person game about a courier crossing a city that floods upward.
She must carry one glass seed through an abandoned tide station while the water
climbs toward the ceiling. Make one short playable chapter from this repository.
```

For an existing playable game whose runtime presentation needs to be rebuilt:

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-game-runtime-visual-fidelity-rebuild
```

```text
/worldview-game-runtime-visual-fidelity-rebuild

Keep the controls, collision, enemy timing, scoring, and save data in this game.
The current mine is made from flat boxes and generic neon panels. Rebuild what
the player actually sees so it feels like a deep geothermal facility, then prove
the same route still plays correctly at the project's frame target.
```

The user supplies the story or the visible problem. The Agent recovers the project, chooses the production route, records assumptions, implements what the available tools support, and returns the changed project with evidence.

## Choose by the state of the project

| Skill | Use it when | Smallest useful input | Primary result |
| --- | --- | --- | --- |
| [`worldview-game-single-ending-campaign`](worldview-game-single-ending-campaign/README.md) | A short premise should become a substantial researched game with one canonical ending, a populated world, connected gameplay, and a complete playable route. | A protagonist, conflict, theme, real-world topic, or story idea. Project, platform, duration, and publication constraints are optional. | Dated research and fiction ledgers, one ending designed backward, complete route, maps, NPCs, items, shared state, several forms of play, runtime evidence, and a tested build or authorized deployment. |
| [`worldview-game-high-fidelity-vertical-slice`](worldview-game-high-fidelity-vertical-slice/README.md) | A story, place, or game idea should become a bounded 2D or 3D playable slice with a high presentation bar. | A premise. An existing project, target platform, references, and time limit are optional. | A playable core, three to five runtime-matched visual states, an original asset plan, integrated presentation, performance evidence, and a truthful handoff. |
| [`worldview-game-runtime-visual-fidelity-rebuild`](worldview-game-runtime-visual-fidelity-rebuild/README.md) | The game already runs, but its actual play view looks generic, flat, inconsistent, or materially unfinished. | The project path and a sentence describing what looks wrong or what the world should feel like. | A protected-behavior baseline, causal visual diagnosis, rebuilt runtime presentation, same-state comparisons, regression journeys, and measured delivery. |

These jobs remain separate because they lock different facts. A campaign owns research, original fictionalization, the full route, world state, and one ending. A slice proves a short bounded experience. A fidelity rebuild must preserve an existing game's rules unless the user expands the scope. Combining them automatically would let a short prototype claim campaign completeness or let an art pass silently redesign behavior it was supposed to preserve.

## Recommended model setting

For the best result in Codex, use **GPT-6 Astra** when it is available.

| Setting | Use it for |
| --- | --- |
| **Astra + Max** | One Agent owns a difficult end-to-end build or rebuild and needs the deepest single-task reasoning across code, art direction, assets, debugging, and verification. |
| **Astra + Ultra** | The project is large enough to split into non-overlapping asset, runtime, and verification tracks. One lead still owns shared contracts and integration. |

OpenAI's API accepts `max` as a `reasoning.effort` value for GPT-6 Astra. **Ultra is not an API reasoning value or a different Astra model**; in Codex it is an orchestration mode that delegates separable work to subagents. Availability depends on the account and client. See the official [GPT-6 Astra model page](https://developers.openai.com/api/docs/models/gpt-6-astra) and [Codex model and reasoning guide](https://learn.chatgpt.com/docs/models).

The Skills remain loadable by other compatible Agents. When the active model or toolset is weaker, the Agent should reduce scope, add checkpoints, and disclose unverified stages instead of pretending the same result was achieved.

## Tools and external services

Before implementation, the Agent records which project, runtime, capture, generation, DCC, automation, profiling, and download capabilities are available, authorized, and appropriate for the requested result.

| Capability | Required? | How the Skills treat it |
| --- | --- | --- |
| Project files and a runnable engine/browser | Required for implementation claims | Without them, the Agent may deliver an implementation-ready contract but cannot call the result playable. |
| Screenshots or engine capture | Required for visual acceptance | Captures must come from named gameplay states at recorded settings. A supplied reference alone is not runtime evidence. |
| Image generation API or built-in image tool | Optional | It may create original target frames, material inputs, or asset views after authorization. The provider, model, cost boundary, and output status are recorded. |
| Blender MCP | Optional | It is useful for editable signature meshes. The MCP server and Blender installation must already be configured or explicitly added by the user. The editable source and runtime export remain separate. |
| Blender CLI or another DCC scripting path | Optional | It may replace Blender MCP when it is more reliable and authorized. The Skill does not assume a specific DCC. |
| Browser/engine automation | Strongly recommended | It repeats journeys, loads named review states, captures frames, and checks state. Manual reproduction remains valid when automation is unavailable. |
| Profiler and renderer counters | Strongly recommended | They support frame-time, draw-call, memory, loading, and streaming claims. The Agent reports only measurements the runtime exposes. |
| Subagents / Ultra | Optional | They accelerate independent work. They do not replace one owner for the experience contract or justify concurrent edits to the same file. |
| Asset marketplace or download access | Optional and permission-gated | The Agent does not fetch third-party assets by default. Approved assets require origin, license, modification, and redistribution records. |

Credentials stay outside source control. Paid calls, uploads of proprietary references, external downloads, and deployment require real authorization; finding an environment key does not supply that authorization.

## What all three methods check

The three packages have different lock orders, but all distinguish three kinds of evidence:

| Evidence | What it can prove | What it cannot prove alone |
| --- | --- | --- |
| Behavior test or controlled journey | Input, state, collision, timing, success, failure, reset, and persistence. | Material quality, composition, animation artifacts, or stable frame pacing. |
| Runtime capture from a named state | Camera, silhouette, composition, surface, lighting, effects, UI, and visible artifacts at one moment. | Reachability, correct collision, reset, or sustained performance. |
| Performance trace with environment record | Frame timing, loading, work queues, renderer counts, and the effect of a controlled change. | Artistic coherence, control feel, or performance on untested hardware. |

Both methods use three to five named gameplay states instead of one beauty shot. This prevents a project from being optimized for a single camera while ordinary play, transitions, failure states, or dense effects remain unfinished.

## Repository structure

```text
skills/game-production/
├── README.md
├── worldview-game-single-ending-campaign/
│   ├── README.md
│   ├── SKILL.md
│   ├── SOURCE.md
│   ├── references/why-single-ending-campaigns-fail.md
│   ├── templates/single-ending-campaign-contract.md
│   └── examples/the-lantern-index.md
├── worldview-game-high-fidelity-vertical-slice/
│   ├── README.md
│   ├── SKILL.md
│   ├── SOURCE.md
│   ├── references/high-fidelity-production-rules.md
│   ├── templates/vertical-slice-contract.md
│   └── examples/the-glass-tide-station.md
└── worldview-game-runtime-visual-fidelity-rebuild/
    ├── README.md
    ├── SKILL.md
    ├── SOURCE.md
    ├── references/why-runtime-fidelity-fails.md
    ├── templates/fidelity-rebuild-contract.md
    └── examples/the-cinderwake-signal-house.md
```

Each `SKILL.md` is the executable method loaded by Claude, Codex, or another compatible Agent. The README helps a person choose and call it. The template records locked decisions and evidence. The reference explains tradeoffs. The example demonstrates completed fields without becoming a hidden default. `SOURCE.md` records authorship and the boundary between supplied research and repository-authored decisions.

## Originality records

Each package has a `SOURCE.md` that records the material reviewed, the authorship boundary, and the decisions written for this repository. External code, prompts, assets, project names, provider integrations, and directory structures are not included in these packages.

## What the packages deliberately do not contain

- a copy of another Skill;
- a hidden dependency on another Worldview package;
- an image generation or asset-download API client;
- Blender code or a bundled Blender MCP server;
- a game engine, renderer, model, or deployment account;
- sample third-party meshes, textures, music, code, or screenshots;
- a promise that one still image or one FPS counter proves a finished game.

Install the single Slash entry that matches the current project. The package will inspect capabilities before it spends time or quota, preserve the facts already owned by the project, and tell the user what was actually built and verified.
