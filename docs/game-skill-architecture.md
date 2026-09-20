# Game Skill architecture

Game Skills are organized by the decision they help a creator make. The directory tree is navigation for maintainers; the Slash name remains the stable public interface after installation.

## The primary branches

```text
skills/
├── game-mechanics-horror/   released pursuit, scarcity, investigation, vulnerability
├── game-analysis/            released gameplay-media observation and design extraction
├── game-production/         released campaign, playable-slice, and fidelity-rebuild methods
│   ├── worldview-game-single-ending-campaign/
│   ├── worldview-game-high-fidelity-vertical-slice/
│   └── worldview-game-runtime-visual-fidelity-rebuild/
├── game-mechanics-action/   future combat, timing, defense, and encounters
├── game-mechanics-puzzle/   future deduction, transformation, and spatial rules
├── game-perspectives/       future first-person, third-person, 2.5D, isometric, side-view
├── game-systems/            future inventory, progression, save state, multiplayer state
└── game-formats/            future larger forms such as platformers or card games
```

`game-mechanics-horror/`, `game-analysis/`, and `game-production/` are released branches containing real Skills. The other branches above describe reserved homes, not released features, and do not belong in Git until they contain an installable leaf. Category directories stay one level below `skills/` so the default Skills CLI discovery path can find every leaf without requiring a special deep-scan flag.

## Why perspective is separate from mechanic

First-person, third-person, isometric, side-view, and 2.5D are not genres. They change what the player can see, how movement is mapped, where aiming originates, how occlusion works, and what camera failures can make an otherwise correct mechanic unplayable. A pursuit can use any of those perspectives, but its knowledge and timing rules remain a pursuit.

A perspective Skill therefore defines the spatial interface and its verification. A mechanic Skill defines the playable causal loop. A project may invoke both without either pretending to contain the other.

For example:

```text
/worldview-game-third-person-exploration-camera
/worldview-game-lure-hide-escape
```

The first would establish camera, occlusion, aiming, and movement conventions. The second would establish what the pursuer can know and when escape becomes possible. If both affect the same project, the existing project contract decides how their outputs are combined.

## Where a Skill belongs

Give each Skill one primary home based on the question it closes:

- “What does the player repeatedly do, and why can it succeed or fail?” belongs under a `game-mechanics-<family>/` category.
- “How does the player see, aim, move through, or understand space?” belongs under `game-perspectives/`.
- “Which reusable state persists across encounters?” belongs under `game-systems/`.
- “What complete kind of playable product is being assembled?” belongs under `game-formats/`.
- “How is a playable result built, tested, or handed off?” belongs under `game-production/`.
- “What can be learned from observed gameplay footage, screenshots, or a reference corpus?” belongs under `game-analysis/`.

Do not duplicate the same Skill under several branches. Explain important secondary relationships in its README and description instead.

## Released game-production boundaries

The released production branch contains three outcome-level jobs:

| Standalone Skill | Decision boundary |
| --- | --- |
| [`worldview-game-single-ending-campaign`](../skills/game-production/worldview-game-single-ending-campaign/README.md) | Starts from a short premise or researched subject and owns a complete route to one canonical ending. It may define original fictionalization, maps, NPCs, items, connected gameplay systems, campaign state, presentation, and release proof. It reduces scope rather than presenting unfinished content as a vast finished world. |
| [`worldview-game-high-fidelity-vertical-slice`](../skills/game-production/worldview-game-high-fidelity-vertical-slice/README.md) | Starts from a story, place, or game idea and may define one bounded slice's loop, route, camera, signature event, ending, presentation, and proof. It stops at a short complete slice rather than claiming delivery of an unbounded commercial game. |
| [`worldview-game-runtime-visual-fidelity-rebuild`](../skills/game-production/worldview-game-runtime-visual-fidelity-rebuild/README.md) | Starts from a game that already works. It records a protected behavior baseline, diagnoses visible runtime defects, and rebuilds presentation without silently changing controls, collision, timing, scoring, save behavior, or other locked rules. |

The three Skills can recommend each other, but none is an automatic stage of another. A campaign must prove a full narrative route; a slice deliberately stops after a short bounded chapter; a rebuild protects rules that the other two may be allowed to create. Each therefore ships as a complete, independently installable leaf with its own method, provenance, reasoning, contract, and fictional example under the [game-production category](../skills/game-production/README.md).

## Public naming

Every public Skill uses a result-oriented name. Cross-category packages use a short domain prefix when that makes the result clearer:

```text
worldview-game-<recognizable-result>
worldview-gameplay-<recognizable-analysis-result>
worldview-3d-<recognizable-asset-result>
```

The name should tell a user what becomes possible after invocation. Folder categories do not need to be repeated in the name. Avoid vague names such as `game-helper`, technology-bound names such as `unity-horror-tool`, or numbered names whose meaning depends on reading a separate roadmap.

## Standard leaf structure

```text
worldview-game-<recognizable-result>/
├── README.md
├── SKILL.md
├── SOURCE.md
├── references/
├── templates/
└── examples/
```

`SKILL.md` is the executable method read by an Agent. `README.md` helps a person decide whether to invoke it. `SOURCE.md` distinguishes supplied evidence, original design decisions, and later revisions. References preserve the reasoning behind rules; templates define durable outputs; examples show a complete fictional application without becoming hidden defaults.

The released `game-production/` packages use this same leaf structure. Installing any leaf alone is sufficient to recover its inputs, decisions, tool boundaries, outputs, verification, and handoff; no sibling Skill is a hidden runtime dependency.

Mechanic Skills expose their decision order directly. `SKILL.md` names each mechanic-specific lock, the artifact it fixes, the condition that closes it, the values still open to tuning, and the project change that reopens it. The template provides the same names as fillable rows. The example fills those rows with concrete states, routes, thresholds, and evidence, including one change that would invalidate later work. This prevents a late tuning edit from silently changing the encounter, state ownership, or save boundary it was supposed to measure.

Companion files load progressively. The template is read before implementation; the reasoning reference is read when choosing the mechanic or resolving a tradeoff; the example is read only when a filled field needs illustration; `SOURCE.md` is read for provenance review. The human README does not need to be loaded again after the executable Skill is active.

Each Skill must remain useful when installed alone. It may recommend another Skill, but it cannot require an uninstalled sibling merely to understand its own inputs, method, outputs, or verification.

## Current migration boundary

New game-mechanic work follows this architecture. Older `skills/2d-game`, `skills/game-design`, and related directories have not yet been silently moved because changing their public structure requires a separate compatibility review. The catalog must describe that boundary honestly until the migration is approved and tested.
