# Worldview Game — Chase Route Architecture

Turn a horror pursuit into a designed spatial encounter: a readable building, a pursuer with imperfect information, a route the player can learn, and a failure that teaches rather than merely kills.

## Call this Skill

```text
/worldview-game-chase-route-architecture

Design and implement a late-game indoor chase in the abandoned clinic. The player
must reach the sterilization lift while the creature searches by sight and sound.
Give me one discoverable winning route and one risky alternate route. A first
attempt may fail, but the failure must reveal why. Use the existing inventory,
microphone-noise, sanity, door, and checkpoint systems. Start with a measured
floor plan and a playable grey-box test before adding art.
```

Everything after the Slash command is the creative brief. A room sketch, screenshot, existing level, runtime project, or a plain-language idea is enough to start.

## When to use it

Use this Skill when a chase should be a level rather than an enemy that simply follows the player's transform. It fits indoor pursuit, escape sequences, recurring mini-bosses, and a final chase whose tension comes from route choice, timing, and learning.

Use a different method for a cinematic-only chase, a boss fight built around combat arenas, or a creature that is intentionally omniscient. If the requested scene has no map, this Skill authors a small, testable floor plan first instead of pretending that a corridor is a level.

## What the Agent delivers

- a contract for the building, collision, navigation, line-of-sight, hearing, and route ownership;
- a 2D or 2.5D route diagram with a legend, landmark IDs, player success/failure routes, pursuer routes, sight cones, sound propagation, item gates, checkpoints, and restart edges;
- a grey-box implementation in the current runtime, or an implementation-ready contract when no runtime is available;
- measured player/pursuer timing margins for the intended path and at least one understandable failure;
- a verification report covering path legality, collision/navmesh agreement, visibility, hearing, microphone or noise input when requested, sanity/perception effects, object dependencies, soft-locks, checkpoints, and restart;
- a running entry point and screenshot when the project can run. A diagram or generated image is evidence of a plan, not evidence that the route works.

## Inputs and permissions

The Agent may use an existing project, level, screenshots, video references, map sketches, 3D assets, or a short premise. It inspects only paths placed in scope. It does not download a game, copy another game's map, or replace working project assets without a reason recorded in the contract.

An image model, GPT Image, browser, Blender, Tripo, microphone API, or other MCP/API may help make a legible plan or asset. Such a tool is optional and must already be configured or explicitly authorized. The Agent first proves one small call, records the provider and output path, and falls back to a hand-authored SVG/diagram or proxy geometry when the tool is unavailable. A generated plan never overrides measured collision, navmesh, LOS, or audio behavior in the runtime.

## Read next

- [SKILL.md](SKILL.md) — complete execution method and layer locks
- [chase-route-contract.md](templates/chase-route-contract.md) — fillable map, route, timing, and verification contract
- [why-chase-routes-fail.md](references/why-chase-routes-fail.md) — failure patterns and design tests
- [the-red-service-corridor.md](examples/the-red-service-corridor.md) — original fictional filled example
- [SOURCE.md](SOURCE.md) — provenance and originality record

