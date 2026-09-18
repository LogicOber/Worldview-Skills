# Source and transformation record

This file records where `worldview-game-lure-hide-escape` came from and how the published Skill differs from its source. It exists so later maintainers can revise the method without confusing the rewrite with original evidence.

## Primary source

| Field | Record |
| --- | --- |
| Source type | User-supplied archive |
| Archive | `mechanics-pack-2026-09-11.tar.gz` |
| Original path | `skills/game-design/lure-hide-escape/SKILL.md` |
| Original name | `lure-hide-escape` |
| Original size | 33 lines |
| Archive file time | 2026-09-11 13:42 |
| Related example | `examples/mechanics-lab`, mode `chase`, title **Last Footstep** |
| Related verification | `examples/mechanics-lab/VERIFICATION.md` |

The archive was provided directly in the repository setup conversation. That establishes it as the rewrite input. It does not by itself grant permission to redistribute unrelated source films or third-party media referenced elsewhere in the archive. This rewritten Skill includes no such media.

## What the original established

The original file made four useful commitments:

1. The pursuit is map-dependent rather than a generic horror description.
2. Sight, sound, last-known position, search, and return are different states of knowledge.
3. Hiding is not an unconditional invisibility switch.
4. The near-miss comes from route timing and proximity rather than a random success roll.

It also supplied concrete acceptance boundaries: a reusable lure, no tracking through hidden transforms, reachable cover, a visible wrong-side search, a real failure path, and a restart that clears knowledge and timers.

Those commitments remain the center of the rewrite.

## Why the structure changed

The original compressed the method into four short sections:

```text
Interaction
State and knowledge
Map contract
Acceptance
```

That shape is useful to someone who already understands stealth AI, but it leaves a new user and a general Agent to infer several important transitions. It does not show the public Slash invocation, state what the user supplies, enumerate the delivered artifacts, explain how the Harness affects implementation, preserve the reason behind each rule, or make the working example visible from the Skill directory.

The rewrite expands those missing decisions without changing the mechanic into a larger genre framework.

| Original responsibility | Rewritten location |
| --- | --- |
| Trigger sentence | `README.md` and `SKILL.md` invocation blocks |
| Interaction | `SKILL.md` sections on lure and hiding |
| State and knowledge | `SKILL.md` explicit observation record and state family |
| Map contract | `SKILL.md` geometry and timing sections; contract template |
| Acceptance | `SKILL.md` verification sequence and `verification.md` output |
| Implied output | Explicit delivery tree and handoff |
| No provenance record | This `SOURCE.md` |
| Shared example elsewhere | `examples/last-footstep.md` |

## Additional method source

The rewrite style follows the user-supplied `Writing 2.zip` method: restore the problem before naming the rule, separate source observation from proposal, retain why a rule appeared, keep counterexamples inside the rule, and let each file close one complete question.

`Writing 2.zip` is an internal writing reference. Its text is not copied into the public repository.

## Related but not merged

The current clean repository contains `skills/game-design/horror-chase/SKILL.md`. It designs a broader horror chase and may route to playable or cinematic work. It is not the source of this rewrite, and the two Skills are not silently merged here. A later catalog pass can decide whether the broader entry should call, absorb, or remain separate from this mechanic.

## New decisions introduced by the rewrite

The following are editorial or implementation rules added during rewriting rather than observations copied from the archive:

- the stable public name `/worldview-game-lure-hide-escape`;
- the default three-file handoff under `gameplay/<encounter-slug>/` when a project has no established location;
- the explicit user-input and user-output contract;
- the source inventory note before implementation;
- the requirement to distinguish screenshot evidence from behavioral evidence;
- the requirement that every public Skill be usable without loading an uninstalled sibling Skill;
- the packaging of method reasoning, template, and example inside the Skill directory.

These choices may be revised after the pilot is reviewed. They must not be described as rules proven by the original Mechanics Lab.
