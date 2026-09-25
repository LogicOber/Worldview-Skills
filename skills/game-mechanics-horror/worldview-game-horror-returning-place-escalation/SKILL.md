---
name: worldview-game-horror-returning-place-escalation
description: "Use when a familiar room, street, workplace, shelter, or social hub should change meaning across visits. Builds shared place/object IDs, stable landmarks, viewpoint and observer-knowledge records, authoritative and presentation deltas, changed questions and verbs, route/social consequences, recovery edges, persistence, and verified payoff instead of empty backtracking or 'same map, darker.'"
---

# Worldview Game — Horror Returning-Place Escalation

## Call this Skill
```text
/worldview-game-horror-returning-place-escalation
```

Recover the existing map, place IDs, object IDs, routes, occupants, observer knowledge, save authority, lighting, and audio before changing a return. A return earns time only when the player can recognize what stayed stable and act on what changed.

## Ownership boundary

This Skill owns comparison across visits:

```text
remember place → return with a question → recognize stable anchors
→ compare authoritative or observed change → choose a test/action
→ route, relationship, knowledge, or threat state changes
→ recover and carry the comparison to payoff
```

It does not own item-gate logic, perception truth, roaming-threat scheduling, or campaign viewpoint transfer. It records their state owners and reads their deltas.

## Lock sequence
1. **Shared identity:** place, subspace, landmark, object, route, and actor IDs survive returns.
2. **Stable grammar:** three to five functional anchors make the place recognizable across supported presentation states.
3. **Return question:** each visit enters and exits with a specific question and action.
4. **Delta ownership:** authoritative, presentation, observer-knowledge, social, and route changes are separate.
5. **Recovery and persistence:** wrong readings remain useful and return state survives save/load.
6. **Payoff proof:** the final return uses an earlier anchor and learned comparison rather than a new mechanic.

## 1. Establish shared IDs and stable grammar

Assign stable IDs to the place, important subspaces, recurring objects, connectors, and actors. A later viewpoint or chapter must refer to the same ID when it means the same thing. Approximate visual callbacks are not shared state.

Choose three to five anchors that serve navigation or action: a clock that marks the central axis, a textured boundary, a machine with a consistent hum, an exterior silhouette, a door with a distinct operation, or an object with custody history. Record identity, first meaning, affordance, route edges, accessible cues, and reset behavior.

Do not remove every anchor for mystery. If presentation hides one, keep another usable through sound, geometry, touch, text, or route relation.

## 2. Separate kinds of change

For every return distinguish:

- **authoritative delta:** what actually changed in world, actor, object, access, or threat state;
- **observer-knowledge delta:** what this viewpoint knows, witnessed, or was told;
- **presentation delta:** light, sound, model, label, voice, weather, or interface;
- **route delta:** edge opened, blocked, priced, exposed, or made one-way;
- **social delta:** permission, trust, role, obligation, or relationship;
- **interpretation delta:** what an earlier fact can now mean.

Presentation may suggest change but cannot silently write authoritative state. A new viewpoint can reinterpret an unchanged object without the object teleporting or changing ownership.

## 3. Write a changed question and verb

At each return complete:

```text
I recognize ___ through ___, but ___ is different.
I currently know ___ and dispute ___.
I can test it by ___ before ___ changes.
If I am wrong, ___ remains useful and I recover through ___.
The visit ends with the new question ___.
```

Vary the verb when possible: compare, ask, inspect, cross, wait, restore, hide, carry, authorize, or refuse. A return whose only action is collecting another note should merge with another visit.

## 4. Preserve safe-return history and corrupt routes causally

Record which edges were used safely, by whom, under what conditions, and how recently. If a trusted return edge changes, foreshadow it through residue, a missing sound, changed permission, visible obstruction, witness warning, or altered threat rule. Do not place an arbitrary blocker because the plot needs a detour.

A route can lose protection rather than disappear: group becomes solitude, power becomes darkness, public access becomes trespass, shelter becomes exposure, or a known shortcut becomes noisy. Record protection retained/lost and recovery.

## 5. Connect people, objects, and knowledge

When an occupant changes, show spatial and state evidence: moved custody object, altered work, missing tool, blocked desk, changed access, violated schedule, or witness history. Dialogue may explain but should not be the only proof.

When viewpoints change, track physical holder, knowledge holders, last verified state, and shared IDs. Use `/worldview-game-character-handoff-and-shared-evidence` when cross-character ownership is the main problem. Use `/worldview-game-horror-role-and-identity-pressure` when recognition or authorization is the main decision.

## 6. Escalate meaning, not decoration

Useful return sequence:

1. first visit teaches grammar and one ordinary use;
2. first return changes one inspectable fact;
3. later return changes who knows or controls that fact;
4. pressure return changes a trusted route or protection;
5. final return pays off the original anchor through action.

Not every project needs five visits. Merge visits that do not change a question. Alternate pressure with a return that grants knowledge, route control, or relationship clarity.

## 7. Implement and persist

Store return index separately from the states it summarizes. Load authoritative object, route, actor, and observer knowledge before applying presentation. Use event transactions so crossing a return threshold cannot commit half the room. Save before/after transitions with explicit migration behavior.

Grey-box anchors and route deltas before lighting. Test every place state at ordinary walking speed, in reverse approach, after reload, and from each supported viewpoint.

## 8. Verify

Run first-visit recognition; each return’s comparison action; wrong interpretation and recovery; skipped optional inspection; old safe route under new state; observer/viewpoint variants; save before/during/after transition; death and restart; accessibility variants; and final payoff.

Validate collision, navigation, audio, subtitles, object custody, actor schedule, and lighting against the same return state. The player should explain what stayed stable, what changed, how they know, and what action follows.

## Handoff

Return the shared-ID map, landmark grammar, return ledger, state-owner table, observer knowledge, safe-return history, route/social deltas, recovery edges, persistence traces, implementation evidence, unknowns, and final payoff proof.
