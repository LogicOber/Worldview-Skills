# Single-Ending 3D Story Campaign

Turn a short story idea into a complete, English-language 3D campaign with one canonical ending, connected locations, purposeful characters and objects, varied gameplay, a verified route from start to credits, and a playable build.

## Call it with the idea you already have

```text
/worldview-game-single-ending-campaign

Build a 3D horror story about an archivist entering a city where access to public
knowledge is controlled by a private certification bureau. Give it one canonical
ending. Research the real debates that inspired the premise, then transform them
into an original fictional world. Make the campaign playable in the browser and
return a deployed URL if this environment is already authorized to deploy.
```

That is enough to begin. You do not need to list every quest, NPC, prop, room, system, joke, visual reference, or plot beat. The Agent researches missing context when browsing is available, separates sourced facts from interpretation and invention, designs the campaign backward from its one ending, builds it in the current project, tests the complete route, and reports what actually shipped.

Use this Skill when you want one substantial story game rather than a concept document, a collection of disconnected scenes, a short vertical slice, or a branching game with several endings. It is especially useful when the premise depends on a current industry debate, cultural conversation, historical event, or public controversy that needs careful research before it can become fiction.

When `/worldview-game-horror-production` routes to this Skill, Horror Production remains the parent for mechanic selection, integration, verification, and delivery. This Skill returns the research, original fictionalization, one-ending campaign spine, final ontology, reconvergence, and aftermath. When invoked alone, it owns the complete campaign production chain.

## What you will receive

The exact scale follows the repository, runtime, available assets, authorized services, and execution budget. The Agent must finish the largest coherent campaign it can verify rather than promise an unplayable “massive world.” When the prompt does not provide production limits, it targets a dense first release of roughly 20–40 minutes with:

- one opening, one continuous main campaign, one final sequence, and one canonical ending;
- four to six connected areas with landmarks, return routes, locked transitions, shortcuts, and visible state changes;
- eight to twelve named characters whose goals, locations, knowledge, and reactions affect play;
- a compact set of useful items whose ownership or use changes access, risk, information, or relationships;
- three to five connected forms of play, such as investigation, traversal, stealth, resource decisions, dialogue under pressure, spatial puzzles, or pursuit;
- optional discoveries and route choices that change what the player understands or how a challenge is solved without creating extra endings;
- a save, checkpoint, retry, or restart path appropriate to the runtime;
- original fiction, visual direction, interface, sound plan, and runtime assets that the project is allowed to ship;
- a clean-start playthrough to the ending, failure and recovery checks, branch-rejoin checks, and a list of any remaining limits;
- a deployment URL when a working deployment route and credentials are already available, or a local runnable build plus the exact deployment blocker when they are not.

Those numbers are planning defaults, not a reason to pad the game. A smaller world with interacting people, places, objects, and threats is preferable to a large map filled with errands. If the existing project is capable of more, the Agent may expand only after the complete route is working and the new content can still be tested.

## How the single ending works

“One ending” does not mean that every player must take the same corridor or hear the same dialogue. The campaign may contain optional evidence, alternate approaches, temporary alliances, resource tradeoffs, missed scenes, and different failure states. These choices alter the journey, the player’s knowledge, and the difficulty or meaning of later situations. They do not silently become separate final world states.

The Agent declares the final irreversible event, the world state after that event, and the last piece of meaning the player should understand. It then builds backward so every chapter changes at least two important parts of play—such as access, threat, knowledge, relationships, resources, or the physical map—and moves the player toward that same conclusion. A cosmetic line in the last scene may acknowledge something the player did, but it must not disguise another ending as a variation.

## Researching real topics without copying real people

You may name a public debate, company, public figure, news event, online joke, or historical episode as research context. The Agent must keep five categories separate:

| Category | Treatment |
| --- | --- |
| Verified public fact | Record the source, publication date, event date when available, and the precise fact supported. |
| Attributed statement or allegation | Identify who made it, preserve attribution, and do not restate it as an established fact. |
| Interpretation | Label it as analysis rather than evidence. |
| Community joke or meme | Record where and when it was observed; never use popularity as proof. |
| New fiction | Mark it as invented and keep it out of the factual research ledger. |

The finished game must use genuinely original fictional characters, organizations, events, visual identities, dialogue, and causal history unless the user explicitly requests documentary treatment and the project has an appropriate review path. A changed letter in a name, a nearly identical face, or a general fiction disclaimer does not guarantee that a portrayal is safe, original, or non-defamatory. The Agent must not clone a living person’s face or voice, fabricate quotations, turn disputed claims into facts, or give instructions for evading publicity, privacy, defamation, trademark, or similar rights.

For satire inspired by living people, the default is to preserve the subject of the critique while replacing the identity: combine broad institutional patterns and several sources into a materially distinct character with a different appearance, voice, biography, role, relationships, setting, chronology, and conduct. The release includes a fiction notice, but the notice is disclosure rather than legal clearance. A public or commercial release involving recognizable people, disputed allegations, or close likenesses requires jurisdiction-specific review outside this Skill.

## What to include if it matters to you

A short premise is sufficient. Add any constraints that should not be inferred:

- target platform, engine, repository, camera, controls, or accessibility requirements;
- desired duration or a hard delivery, token, download, API-cost, memory, or performance limit;
- non-negotiable locations, actions, moods, themes, or content boundaries;
- topics, people, periods, or documents that may be researched;
- material the game must not imitate, repeat, or depict;
- project-owned references and assets, with their usage rights;
- whether current web research, external generation services, a DCC such as Blender, an MCP server, or deployment is authorized.

Do not paste secrets into the prompt or commit them to the repository. If a missing answer would change the identity of the game, the Agent asks one compact group of questions. Otherwise it records a reversible assumption and continues.

## Model recommendation

For this Skill, **GPT-6 Astra with Max** is the strongest default when the model and effort controls are available. A single campaign couples research, story causality, world state, level flow, gameplay systems, art direction, implementation, debugging, and end-to-end testing; Max gives the lead Agent enough reasoning depth to keep those decisions consistent.

Use **GPT-6 Astra with Ultra** when the environment supports Agent orchestration and the work can be divided into genuinely independent tracks—for example, research auditing, environment production, gameplay implementation, and final-route verification—while one lead remains responsible for the campaign locks and integration.

For OpenAI API use, select `gpt-6-astra` with `reasoning.effort: "max"` when supported. **Ultra is not an API reasoning value and is not a different Astra model.** It describes an Agent orchestration mode that may use subagents. The Skill still runs with the active model when model switching is unavailable; it reduces scope before weakening the requirement for a complete and tested route.

## Browsing, APIs, MCP servers, assets, and deployment

The Agent first inventories what the current Harness and project actually provide. It may use local tools and already authorized project services within their declared limits. It must not assume that browsing, Blender, Blender MCP, image or audio generation, a model API, a paid asset source, cloud storage, analytics, or a deployment account is available merely because the prompt mentions it.

Before using an external service, the Agent records:

- what capability is needed and why local work is insufficient;
- whether the capability is configured and authorized;
- what project data will leave the workspace;
- the spending, quota, licensing, and redistribution boundary;
- the expected artifact and a local fallback;
- how credentials remain outside committed files.

Live research may read public sources when browsing is available. Paid calls, account creation, purchases, uploads of private material, or accepting a third party’s terms require explicit authority. Third-party models, textures, audio, code, and 3D assets are not silently downloaded or presented as original work. Blender or another DCC may be used only through an available authorized route, and its editable source must be kept separate from the validated runtime export.

Deployment is part of delivery only when the project already has an authorized route. The Agent may not invent a successful URL, expose a secret, change billing, or make an unrelated service public. Without deployment access, it leaves the game runnable locally, verifies the production build, and names the one missing deployment action precisely.

## Evidence to expect

A complete campaign claim requires more than files in a repository. The handoff identifies the exact build and includes evidence for:

| Claim | Evidence |
| --- | --- |
| Complete story route | A clean start reaches the canonical ending through real controls, with chapter transitions and final state recorded. |
| Meaningful play | Each required mechanic is exercised in context, responds to valid and invalid actions, and changes campaign state. |
| World continuity | NPC, item, door, shortcut, threat, and discovered-information states remain consistent across transitions, save or checkpoint recovery, and revisits. |
| Honest choice | Optional paths have observable journey consequences, rejoin deliberately, and do not create accidental extra endings. |
| Failure recovery | Representative failure, interruption, reload, retry, and restart paths do not leave stale state or create soft locks. |
| Presentation | Runtime captures cover arrival, ordinary play, pressure, a signature event, and the ending using the real gameplay camera. |
| Runtime health | The tested platform, settings, loading behavior, representative stress state, and available frame or memory observations are disclosed. |
| Research and rights | Sources, disputed status, fiction transformations, asset origin, licenses, external services, and unresolved publication risks are recorded. |
| Delivery | Build and run commands work from a clean checkout; the URL is tested when deployment was authorized. |

## When to choose another Skill

Use `/worldview-game-high-fidelity-vertical-slice` when you want to prove three to ten minutes of one game idea before committing to a campaign. Use `/worldview-game-runtime-visual-fidelity-rebuild` when the game already works and the authorized task is specifically to replace generic presentation without changing its rules.

Do not use this Skill for a trailer, screenplay, lore bible, static diorama, isolated character or asset, engine benchmark, live-service world without a final route, or a branching narrative whose main requirement is several endings.

## Package files

- [SKILL.md](SKILL.md) is the executable production method.
- [single-ending-campaign-contract.md](templates/single-ending-campaign-contract.md) holds the research, ending, gameplay, world, state, presentation, and delivery locks.
- [why-single-ending-campaigns-fail.md](references/why-single-ending-campaigns-fail.md) explains the production failures the method is designed to prevent.
- [the-lantern-index.md](examples/the-lantern-index.md) shows one original fictional application; its names and values are not defaults.
- [SOURCE.md](SOURCE.md) records the commission and originality boundary.
