# Source and originality record

This file records the origin of `worldview-game-scarce-inventory-triage` and separates the user's request from the design decisions introduced in this repository.

## Origin

| Field | Record |
| --- | --- |
| Source type | Original synthesis for this repository |
| Request | User request dated 2026-09-18 to turn classic horror-game play patterns into detailed, all-English Agent Skills |
| External Skill used | None |
| Named game used as a source | None |
| Copied character, level, terminology, or prose | None |
| Example status | Newly authored fictional scenario |

The Skill was written from the underlying design problem: limited carrying space should create informed preparation and recovery choices without silently deleting property or trapping progression. No third-party Skill was renamed, rewritten, imported, or treated as repository-owned work.

## Repository writing method

The presentation reconstructs the practical problem, separates facts from proposals, keeps reasons and counterexamples beside each constraint, and requires verification before making conclusions.

## New design decisions

The following are proposals introduced by this Skill rather than facts supplied by an external source:

- the public invocation `/worldview-game-scarce-inventory-triage`;
- the distinction among carried state, world state, and presentation;
- the role taxonomy used to audit competing items;
- explicit overflow and recovery rules;
- protected treatment for progression objects;
- a route-based resource audit before capacity tuning;
- the default four-file handoff under `gameplay/<inventory-loop-slug>/`;
- transaction, save migration, accessibility, and multiplayer verification boundaries;
- the fictional Floodline Clinic example.

These choices should be revised when observed project behavior contradicts them. They must not be presented as universal balance values or historical genre rules.

## Independence from other repository Skills

This Skill is self-contained. It may coexist with pursuit, treatment, lock-and-key, or saving mechanics, but it does not require another Skill to be installed or loaded. If several mechanics are requested together, their contracts should share project facts while keeping their ownership, persistence, and verification responsibilities explicit.
