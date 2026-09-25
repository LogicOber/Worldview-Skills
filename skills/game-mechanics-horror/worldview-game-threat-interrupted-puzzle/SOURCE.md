# Source and originality record

## Commission

`worldview-game-threat-interrupted-puzzle` is an original Skill created for this repository in response to the user’s 2026-09-18 request for detailed, all-English Skills covering classic horror-game play patterns. It uses a valid self-contained `SKILL.md` for Claude and Codex and exposes a stable Slash invocation.

## Originality boundary

No external Skill, named commercial game, published puzzle, recognizable character, existing level, walkthrough, or distinctive third-party wording was used. The method was derived from the general design problem of maintaining a fair, inspectable puzzle state while danger competes for the player’s attention.

The fictional **Tidewheel Console** encounter, location, device, state policy, and threat behavior were authored for this repository. They are illustrative proposals rather than claims about a running project.

## Problem reconstructed for this Skill

A puzzle and an enemy can coexist without forming one mechanic. Common failures include:

- a full-screen puzzle silently pausing or hiding the world;
- an enemy spawning on an arbitrary timer with no relation to navigable space;
- a player locked in interaction after warning arrives;
- unknown or inconsistent loss of partial progress;
- committed steps resetting only to extend play time;
- presentation reconstructing a different state on return;
- a threat permanently occupying the only console;
- concurrent clients committing contradictory controls.

The package resolves these through explicit puzzle ownership, action transactions, persistence tiers, a narrow threat boundary, measured warning and escape timing, recovery, completion, restart, accessibility, and authority.

## New decisions introduced here

Original decisions include:

- the public name `/worldview-game-threat-interrupted-puzzle`;
- separation of authoritative puzzle state from its world/UI presentation;
- committed, working, ephemeral, and attempt persistence tiers;
- revert, pause, checkpoint, and commit policies per bounded action;
- a formal disengagement sequence restoring control and canceling callbacks;
- integration through threat-owned warnings and interruptions rather than duplicated AI;
- measured threat-arrival versus disengage-and-safety timing;
- context reconstruction after return;
- one idempotent solved transition and functional world consequence;
- an interruption matrix covering voluntary, threat, damage, network, and restart boundaries;
- accessibility and multiplayer authority rules;
- the default three-file handoff.

These are design and implementation proposals to be validated in each receiving project, not universal claims about puzzle difficulty or fear.

## Writing method

The package reconstructs the practical problem before listing rules, retains the reason each rule exists, distinguishes verified facts from proposals and judgments, keeps failure cases near the claims they constrain, and explains complete causal transitions. The wording and structure are original to this repository.

The task-ownership, cancel/resume, partial-effect, compatibility, and handoff extensions are repository-authored abstractions. They do not reproduce an external puzzle, route, prop, character, or encounter.

## Self-contained loading boundary

The instructions, reasoning, contract template, and example are contained within this directory. Engines, AI, browsers, media generators, backends, and services are optional current-Harness capabilities, not dependencies.
