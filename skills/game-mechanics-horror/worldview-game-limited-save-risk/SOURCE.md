# Source and originality record

This file records the origin of `worldview-game-limited-save-risk` and its non-negotiable safety boundary.

## Origin

| Field | Record |
| --- | --- |
| Source type | Original synthesis for this repository |
| Request | User request dated 2026-09-18 to turn classic horror-game play patterns into detailed, all-English Agent Skills |
| External Skill used | None |
| Named game used as a source | None |
| Copied character, level, terminology, or prose | None |
| Example status | Newly authored fictional scenario |

The Skill addresses the general design problem of making manual save timing a resource decision while separating that choice from the safety of the user's data. No third-party saving mechanic, fictional object, interface, level, or Skill has been renamed or adapted.

## Repository writing method

The structure follows the user's supplied Writing 2 principles without copying their prose. It restores the problem before prescribing a system, keeps facts and test observations separate from proposals, places reasons beside safeguards, retains counterexamples, and requires evidence before making persistence claims.

## New design decisions

This Skill introduces:

- the public invocation `/worldview-game-limited-save-risk`;
- a strict separation among manual record, recovery checkpoint, suspend record, and profile settings;
- a commit-before-charge transaction order;
- the absolute rule against deleting, silently overwriting, or intentionally corrupting user saves;
- required accessibility and safety overrides without shame or progress penalties;
- conservative backup, migration, cloud-conflict, and multiplayer boundaries;
- the default four-file handoff under `gameplay/<save-loop-slug>/`;
- the fictional Closed Observatory example.

The exact storage primitives remain project- and platform-specific. The ordering and safety outcomes are requirements; any example values are proposals until directly tested.

## Independence from sibling mechanics

This Skill is self-contained. Scarce inventory may carry the fictional recording resource, and route design may place stations, but those Skills are not required for loading this one. Save safety remains owned here even when other gameplay systems are combined with it.
