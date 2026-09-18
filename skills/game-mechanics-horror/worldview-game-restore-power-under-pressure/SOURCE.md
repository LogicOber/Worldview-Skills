# Source and originality record

This file distinguishes the source commitments used by `worldview-game-restore-power-under-pressure` from the new synthesis written for this repository.

## Commission

This Skill is an original synthesis created for this repository in response to the user’s 2026-09-18 request to turn classic horror-game play patterns into original, detailed, all-English Agent Skills. The user-supplied archive below is a permitted primary input for the restoration mechanic; the expanded method, organization, and fictional example are newly authored here. The requested package must be directly loadable by Claude and Codex, use the repository’s Slash-oriented public interface, and remain self-contained without any Skill-generation dependency.

## Primary input permitted for this Skill

| Field | Record |
| --- | --- |
| Source type | User-supplied archive |
| Archive | `mechanics-pack-2026-09-11.tar.gz` |
| Original path | `skills/game-design/restore-power-objective/SKILL.md` |
| Original name | `restore-power-objective` |
| Related prototype named by the source | Mechanics Lab mode `power` |
| Use in this rewrite | Primary mechanic input, not a complete publication package |

The archive was supplied directly by the user. No third-party Skill was used, renamed, paraphrased, or bundled. No named commercial game, external character, or external level is used as a design source.

## Commitments preserved from the supplied input

The compact source established the following mechanic commitments, which remain intact:

1. Restoration is an inventory-and-state dependency rather than a lighting effect.
2. Required pieces have unique identities and can be collected only once from reachable locations.
3. The repair point reports the real collected state.
4. Repair requires uninterrupted time; interruption does not consume the collected pieces.
5. Completion consumes or installs the pieces atomically, latches restoration, and opens a real route.
6. The pre-restoration route cannot be completed through a decorative interaction.
7. Multiplayer inventory belongs to the declared authority rather than a departing client.
8. Restart restores components, power presentation, and objective state.
9. The same physical boundaries govern movement, reach, and sight where those systems apply.

The source also proposed a useful route progression: an early component can teach collection, a later route can add occlusion, and a final route can cross active pressure. The rewrite retains that as a design pattern, not a mandatory content sequence.

## New synthesis introduced here

Most of the published method is newly authored for this repository. New decisions include:

- the public name `/worldview-game-restore-power-under-pressure`;
- a distinction among verified facts, proposals, and judgments;
- project recovery and asset-reuse intake before implementation;
- a readable dependency graph shown before collection becomes bookkeeping;
- an explicit model for stable component IDs and idempotent collection;
- pressure fairness, worst-case reachability, and recoverability requirements;
- repair preconditions, the source-derived reset default, explicitly documented checkpoint/pause alternatives for projects that require them, and one authoritative commit;
- separation of authoritative power from lighting, sound, and animation subscribers;
- accessibility guidance for interaction, progress, flicker, and non-audio cues;
- network request validation, late-join, disconnect, and duplicate-race checks;
- the default three-file handoff and the full verification sequence;
- the original fictional example **Ashwater Substation**.

These additions are design and editorial decisions, not claims proven by the supplied prototype. A future maintainer should preserve that distinction when reporting evidence.

## Writing method

The presentation follows the user-provided Writing 2 principles: reconstruct the practical problem before stating rules, retain the reason each rule exists, distinguish source material from new proposals, keep counterexamples near the rule they qualify, and close the causal chain before summarizing it.

The wording in this package is original. The Writing 2 archive is used as a method reference and is not reproduced. No Skill-generation Skill or skill-creator was used.

## Self-contained loading boundary

This Skill does not load or depend on `game-mechanic-prototype`, another repository Skill, or any external Skill. Its references, template, and example are local to this directory. Optional engines, APIs, and media tools are environment capabilities rather than bundled dependencies.
