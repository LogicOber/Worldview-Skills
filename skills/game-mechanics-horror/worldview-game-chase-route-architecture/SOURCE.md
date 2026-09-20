# Source and originality record

This record explains why `worldview-game-chase-route-architecture` exists and what it claims. It is an original Skill for this repository, not a renamed or copied external Skill.

## Origin

| Field | Record |
| --- | --- |
| Request | User request in the Worldview Skills project conversation, 2026-09-20 |
| Requested problem | Horror chases need architectural route design, readable success/failure paths, measured timing, and interaction with sound, microphone, sanity, items, and other mechanics |
| Public name | `worldview-game-chase-route-architecture` |
| Original external code | None |
| External Skill or directory copied | None |
| External game map copied | None |
| Example | `examples/the-red-service-corridor.md`, authored for this repository |

The Skill was written from the user's design requirements and the repository's existing layer-lock and evidence-oriented writing conventions. Those conventions are used as internal style guidance; no source text, code, map, asset, or game encounter is reproduced here.

## What this Skill adds

Existing pursuit mechanics can specify what the pursuer believes, but they do not by themselves make a building legible or guarantee that a chase has a learnable route. This Skill adds:

- a separation between the architectural plan, runtime collision/navmesh, perception simulation, and presentation diagram;
- route-graph design with success, failure, exploration, and recovery edges;
- landmark and affordance budgets so the player can form a mental map under pressure;
- timing-margin calculations for both player and pursuer, including interactions and animation locks;
- deliberate first-attempt failure, checkpoints, and soft-lock tests;
- a required analysis pass for player reactions, terrain, objects, and linked mechanics before implementation;
- optional image/API/MCP use that remains subordinate to runtime evidence.

## Non-claims

The method does not promise that an image model will produce a buildable floor plan, that a generated 3D asset is rig-safe, or that one route is universally fun. It requires a playable test, measured evidence, and a visible limitations report. It is not legal, architectural, accessibility, or safety certification.

