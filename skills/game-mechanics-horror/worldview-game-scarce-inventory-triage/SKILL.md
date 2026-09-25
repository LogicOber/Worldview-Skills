---
name: worldview-game-scarce-inventory-triage
description: "Use when a survival or horror game needs a playable inventory in which limited carrying space creates informed choices among healing, navigation, tools, defense, and future value. Works with an existing project or a small authored test route. Produces an implemented inventory loop when a runtime is available, plus an item-role audit, capacity contract, tunables, persistence rules, and verification. Do not use for unlimited collections, cosmetic loadouts, or scarcity based on silent deletion and progression softlocks."
---

# Worldview Game — Scarce Inventory Triage

## Call this Skill

The public invocation is:

```text
/worldview-game-scarce-inventory-triage
```

Treat everything after the Slash command as the world, project, and desired decision brief. Do not require the user to translate that brief into stack sizes, slot counts, or balance ratios before inspecting the route that gives those numbers meaning.

## Companion file routing

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already has an equivalent contract.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding fit, resolving a scarcity tradeoff, or tuning pressure; skip it for a narrow implementation whose contract is already locked.
- Read [floodline-clinic.md](examples/floodline-clinic.md) only when a filled fictional example clarifies a field; its values are not portable defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review or to separate user-supplied facts from repository decisions, not for implementation guidance.
- [README.md](README.md) is the human catalog page and is not required after this Skill is loaded.

## Restore the problem before choosing a capacity

Scarce inventory is not the fact that a bag has six boxes. Its useful problem is that several credible future needs compete for space now. A treatment supply protects recovery, a light source protects information, a tool preserves access, and a defensive item protects against one costly mistake. The player cannot maximize all of them, so preparation becomes an authored decision.

Use this Skill when that decision should shape a route. Do not use it merely because a genre convention suggests small inventories. If every player always carries the same best item, if overflow disappears without consent, or if leaving one object behind can unknowingly make completion impossible, the system creates inconvenience or punishment rather than triage.

Do not route the following requests here:

- a limitless lore or collectible archive;
- a cosmetic equipment grid with no route consequence;
- a full economic simulation centered on buying and selling;
- a crafting system whose central question is recipe transformation;
- a key-item puzzle where mandatory objects should not compete with supplies.

Those systems may connect to an inventory, but they do not share this Skill's central contract.

## What the user gives

Accept any useful combination of:

- an authorized project path and current engine;
- item definitions, pickup prefabs, storage containers, save data, or UI layouts;
- a room sequence, route graph, encounter plan, or playable build;
- declared mandatory items and progression gates;
- intended resource families and narrative constraints;
- input, viewport, localization, and accessibility requirements;
- multiplayer topology when inventories are shared, tradable, or replicated.

Inspect only materials placed in scope. Record what the user or project declares, what is directly observed in a running build, and what is newly proposed. A source asset being present does not prove its behavior works.

If there is no project, author the smallest route that can prove the system: a preparation cache, two upcoming pressures that reward different loadouts, at least one attractive pickup encountered while full, a safe opportunity to reorganize, an objective boundary, and a restart.

## What the user receives

Complete as much of this result as the current project permits:

1. A reuse inventory naming the existing item data, UI, save schema, controls, storage, and route content inspected.
2. A mechanic contract covering capacity, item roles, stack and size rules, protected objects, overflow, storage, consumption, recovery, success, failure, restart, accessibility, persistence, and authority.
3. A route-based resource audit that distinguishes required progression objects, sufficient survival resources, optional advantages, replenishment, and recoverable leftovers.
4. Tunables separated from code, including capacity, size, stack maximum, use time, pickup reach, confirmation behavior, and cache access rules.
5. A working implementation in the project's existing runtime when one is available, or an explicitly labeled contract when it is not.
6. A playable entry point, controls, screenshot, and behavioral evidence for two different viable preparations, one full-inventory pickup, one failure, restart, save/load, and any network path claimed.

Never call a static mockup a functioning inventory. Never call one successful route balanced.

## Lock the inventory decision before implementation

These locks are ordered dependencies. A later lock may tune within the bounds named below, but it cannot redefine an earlier artifact. If inspection or implementation contradicts a lock, reopen the earliest affected lock, amend its record, and invalidate every dependent implementation, test, and evidence claim. Ask the user one grouped question only when the brief still supports incompatible route or progression meanings; derive ordinary numeric proposals from the project.

| Lock | Question resolved | Locked artifact | Lock condition | Still mutable | Reopen trigger and fallout |
| --- | --- | --- | --- | --- | --- |
| **Route Pressure Lock** | Which route stages create credible competing needs, and where can the player return, replenish, or lose access? | A route-resource graph naming pressure cues, resource locations, caches, irreversible boundaries, and success. | Every relevant stage and connection is supported by inspected project facts or is labeled as a proposal, and at least two distinct pressures can be traced from preparation to consequence. | Encounter intensity, travel time, and pickup placement inside an unchanged stage may be tuned. | Reopen when geometry, gate direction, objective order, or a pressure source changes; invalidate every later role, capacity, loadout, and route trace that used the old graph. |
| **Progression Protection Lock** | Which objects or charges are required for completion, and how can every supported state recover them? | A protected-object table tied to the route graph, including ownership, consumption, recovery, and no-return boundaries. | Each required object has a valid path from acquisition to use under full inventory, drop, death, unload, and load conditions. | Presentation, reminder wording, and recovery-container appearance may change. | Reopen when an item becomes mandatory, a charge becomes consumable, or a recovery path closes; invalidate overflow rules, persistence tests, and all completions that assumed the old protection. |
| **Item Competition Lock** | Which optional items answer different forecastable needs without one dominating every preparation? | An item-role matrix recording effects, replacement paths, scarcity, and intended competition. | Every included item changes a route decision, mandatory objects are excluded from false competition, and two plausible preparations can be stated without hidden adaptation. | Names, feedback, animation, and bounded effect values may be tuned without changing the role. | Reopen when an effect, replenishment source, item size class, or route usefulness changes the competition; invalidate capacity estimates and viable-loadout evidence. |
| **Capacity and Overflow Lock** | What capacity language does the player learn, and what exactly happens when a pickup does not fit? | The capacity model plus stack, preview, swap, leave, store, and confirmed-discard rules. | Every item in the matrix has a visible cost, every full state offers only supported recoverable operations, and both target preparations fit while not everything fits. | Capacity and stack numbers may move within a tested range that preserves both preparations and at least one full-inventory decision. | Reopen when the model changes, an overflow action is added, or tuning leaves fewer than two viable preparations; invalidate UI, transaction, accessibility, and balance traces. |
| **Ownership and Recovery Lock** | Which system owns an item during transfer, persistence failure, save/load, restart, streaming, and multiplayer races? | A stable item schema, authoritative operation ID, staged durable ownership revision, atomic durable-acceptance boundary, live rollback/reconciliation order, migration rule, and network owner when relevant. | Faults before durable acceptance leave the source as the only owner; faults after acceptance reconstruct the destination as the only owner; retries resolve the operation ID without duplicating or deleting the item, and protected/recoverable items survive round trips. | UI animation, non-authoritative prediction, logging detail, and storage presentation may change. | Reopen when serialization, durable selection, live reconciliation, container ownership, networking topology, or migration policy changes; invalidate persistence-fault, race, restart, and recovery evidence. |

Implementation begins only after these records are filled to the degree the project permits. A blocked earlier lock stops dependent implementation; it does not invite a guessed downstream rule.

## Recover the project and route before changing them

This section builds the **Route Pressure Lock** and supplies inspected facts for every later lock.

Begin with a short intake record:

```markdown
## Facts declared by the project or user
- Existing inventory model:
- Existing item data:
- Mandatory progression objects:
- Route and resource placements:

## Behavior observed in a running build
- Pickup behavior:
- Use, drop, and storage behavior:
- Save and reload behavior:

## Proposals introduced for this mechanic
- Proposed capacity rule:
- Proposed item-role conflict:
- Evidence needed to revise it:
```

Preserve the project's naming and architecture when they are coherent. Do not generate replacement icons, sounds, props, or interfaces merely because a generator is available. Use labeled proxies only for genuine missing dependencies and distinguish them from finished art.

Map the playable route before setting capacity. Count when the player first sees each risk, when an item becomes useful, where replacement is possible, how far back a cache is, and which doors or encounters prevent return. Capacity has meaning only in relation to those opportunities.

## Protect progression without erasing pressure

This section defines the **Progression Protection Lock** against the connections and no-return points in the locked route graph.

Create a resource audit across every route state. Distinguish:

- objects required to change progression state;
- supplies required only by one approach;
- supplies that reduce risk but are never mandatory;
- replenishment that appears after expenditure;
- resources that can be left behind and recovered;
- points after which backtracking is no longer possible.

Mandatory key items should use protected storage, a separate objective record, automatic return to a safe location, or another declared rule. They must not be permanently discarded. If a tool is both a progression key and a general survival resource, its final charge cannot be consumed before the gate unless an alternate route remains valid and communicated.

Test adversarial but plausible choices: arrive with the bag full, spend every optional resource early, leave the apparent tool behind, move an object between two caches, and save at each route boundary. Recovery may be costly, but completion must not depend on foreknowledge the game never supplied.

## Give every scarce item a competing role

This section consumes the locked route and protection records to produce the **Item Competition Lock**.

Classify the items used in the test route by what decision they enable:

```text
recovery      repairs a harmful state or prevents its escalation
information   reveals hazards, routes, codes, or state
access        opens a shortcut or activates optional machinery
defense       interrupts or survives a threat at a cost
avoidance     reduces the need to confront a threat
capacity      expands or rearranges what can be carried
future value  has low immediate value and plausible later utility
```

These are design roles, not required UI labels. An item may fill more than one role, but that flexibility has to consume appropriate space or scarcity; otherwise it can dominate every loadout.

For each item, record acquisition, size, stack rule, consumption rule, feedback, replacement path, and the decisions it is meant to compete with. If an item is always mandatory and has no meaningful alternative, protect it from the scarce-supply budget rather than pretending its slot is a choice.

Avoid false variety. Several differently named supplies with identical effects do not produce more decisions. Conversely, avoid making one object strictly superior in effect, size, availability, and use time. A strong general-purpose object needs a real constraint or it collapses the triage problem.

### Classify attractive resources with effects owned elsewhere

Some carried resources feel helpful immediately while a different system owns an objective later effect. Inventory still owns count, capacity, storage, transfer, and consumption; it must not become the authority for bodily condition, permission, detection, perception, or narrative consequence.

For each such item, record:

- `subjective_benefit`: why a player would rationally carry or use it now;
- `objective_effect_owner`: the package or runtime system that owns the later result;
- `forecast_cue`: evidence available before preparation;
- `delayed_cost_visibility`: when the separate effect becomes readable;
- `alternative_item_or_action`: another viable preparation;
- `exhaustion_result`: what happens at zero quantity;
- `threshold_handoff`: the exact event sent to the receiving owner;
- `recovery_after_misallocation`: a costly but viable correction after a mistaken loadout.

Route a true dual-axis relief/cost progression to `worldview-game-relief-resource-with-hidden-cost`. This Skill records that a unit was carried and accepted for use; it does not infer relief, symptoms, social judgment, or downstream exposure from remaining quantity.

## Choose a capacity model the player can predict

This section uses the **Item Competition Lock** and may not change an item's role merely to make a preferred capacity number work.

Use one coherent model unless the project already teaches a hybrid:

- **fixed slots**, when each unit occupies one clearly represented place;
- **item shapes**, when spatial arrangement itself is intended gameplay;
- **weight or bulk**, when continuous accumulation matters and comparisons remain readable;
- **body locations plus pack space**, when ready access and stored access have different consequences.

Do not mix slots, weight, and arbitrary category limits unless each layer supports a distinct visible decision. Hidden exceptions make the system difficult to reason about.

Capacity must be visible before the player confirms a pickup. The preview shows what will fit, whether stacking changes the result, and what action is required if it does not fit. A full inventory opens a decision surface; it does not silently destroy the new item or an old one.

When an object has variable size, use data rather than conditional UI code. When the same object can be equipped, stored, or held ready, define whether moving between those locations changes total capacity, access time, or both.

## Make overflow explicit and recoverable

This section completes the **Capacity and Overflow Lock** under the already locked progression protections.

When the inventory is full, offer only actions the world and project support:

```text
use an eligible carried item
combine compatible stacks without exceeding their maximum
move an item to an accessible cache
swap, leaving the displaced item at a stable recoverable location
decline and leave the pickup where it is
discard only after an explicit confirmation that names the loss
```

Do not bind an irreversible discard to the same input and timing as a reversible close action. Do not allow a held or repeated input to confirm twice. If the world cannot preserve a dropped object indefinitely, say exactly when it will move to a recovery cache or expire, and never apply that rule to protected progression objects.

The game should remember the location and state of recoverable pickups through save and reload. If streaming or scene unloading cannot preserve arbitrary dropped objects, implement a documented recovery container rather than allowing silent loss.

## Create decisions through forecasts and consequences

This section uses the **Route Pressure**, **Item Competition**, and **Capacity and Overflow** locks to author consequences without hidden adaptation.

Give the player evidence about upcoming needs without revealing every result. Environmental signs, prior enemy behavior, map structure, item descriptions, and sounds can establish that darkness, injury, a blocked route, or a dangerous passage is plausible. The decision remains uncertain because the player does not know its exact frequency or payoff.

After the decision, make the consequence legible. A player who brought a light source sees a safer route; one who brought a tool opens a bypass; one who kept treatment can absorb an error. Do not secretly adjust the encounter to make every loadout identical, and do not turn every omitted item into automatic failure.

The target is at least two credible strategies. Record why each succeeds, what it gives up, and where it can recover from a mistake. If testing shows that one loadout dominates, change item roles, route evidence, placement, or capacity before adding more scarcity.

Forecasts must cover tempting cross-owned effects. Unknown delayed cost is not balance. Before irreversible preparation, expose the item class, likely benefit, at least one uncertainty cue, and an alternative. After a mistaken forecast, provide a declared recovery such as returning to a cache, converting the item, taking a slower route, or spending another visible resource. Recovery may hurt; it cannot require author-only knowledge or an older save.

## Separate carried state, world state, and presentation

This section implements the **Ownership and Recovery Lock**; presentation never becomes the authoritative item record.

Keep an authoritative inventory model independent from menu animation. A typical record needs stable item definition identifiers, instance identifiers when state differs, quantity, durability or charge if relevant, container owner, position within the container, and revision or transaction identifier.

World pickups hold their own stable identity and availability state. Moving an item follows one transaction:

```text
1. validate source owner, destination capacity, and current durable revision
2. assign an operation ID; reserve the source instance and destination capacity without changing ownership
3. stage revision r+1 with the source unavailable and the destination as the sole projected owner
4. write, flush, and validate staged revision r+1
5. atomically accept/select r+1 as the durable ownership revision
6. commit or reconcile live state to r+1 exactly once: remove source representation and materialize destination ownership
7. emit confirmed presentation, then release reservations
```

The rollback side is exact. Before step 5, any validation, write, flush, or verification failure discards the staged revision, releases both reservations, and leaves the live and selected durable source as the only owner. Do not remove the source or expose a destination copy.

After step 5, the accepted durable revision makes the destination the only owner even if the process stops before step 6. Retry, load, or restart reads the operation ID and reconciles live state to that absolute ownership record; it does not publish again, restore the source, or create a second destination copy. If live reconciliation cannot complete immediately, freeze interaction with that item and reconstruct from the accepted revision before returning control. UI transitions may animate the result but must not own it.

Do not duplicate the object by spawning a world pickup before durable acceptance and then forgetting to remove the source. Do not delete the source before a validated destination revision exists. If the storage API reports an ambiguous publication result, inspect the selected revision and operation ID before choosing rollback or reconciliation; never guess that both sides failed.

## Work within the current Harness and tool boundary

This section applies the locked artifacts only through capabilities verified in the current project and Harness.

This Skill provides a method, not a game engine, asset library, browser, image model, or deployment service. Inspect the tools the current Harness and project actually expose.

- Prefer local project code, tests, engine tooling, and licensed existing assets.
- Browser automation can verify a web build but does not prove behavior in another runtime.
- Image, audio, video, and 3D generation are optional dependencies, not implicit steps. State the gap before any paid or external call.
- Use an API or MCP service only when configured and authorized in the environment.
- Do not replace the requested inventory implementation with a design image or promotional video.
- Do not scan unrelated locations for assets or credentials.

When implementation is impossible, leave a precise blocked-state report and the contract needed to resume. Do not simulate evidence that was not produced.

## Preserve success, failure, and restart

This section derives its playable cases from all five locks and reopens the earliest contradicted lock when a route cannot produce them.

A complete slice contains:

- a preparation point with more useful candidates than the player can carry;
- readable item functions and capacity before commitment;
- at least two upcoming pressures that reward different preparation;
- a full-inventory pickup that requires an explicit decision;
- a cache or stable recovery route;
- two materially different viable completions;
- one comprehensible failure connected to resource use or omission;
- a restart that restores the authored initial resource state exactly.

Failure should teach the resource relationship. Spending the only defensive interruption too early may make a later crossing harder; leaving a light source may force a slower audible route. Neither should secretly corrupt progress. Restart must clear open transactions, drag state, pending confirmations, item reservations, temporary modifiers, outcome flags, and runtime-only caches before restoring the baseline.

## Preserve accessibility without dissolving the choice

This section uses the **Capacity and Overflow Lock** for operation semantics and the **Item Competition Lock** for the choice an assist must preserve or explicitly change.

Inventory operation must not depend on tiny icons, color alone, rapid cursor travel, drag precision, hearing, or holding several inputs. Provide text labels, focus order, scalable layout, remappable actions, non-drag alternatives, and confirmation timing that does not punish motor variance.

Offer policy-level assists appropriate to the project: expanded capacity, automatic organization, slower or paused time while managing inventory, stronger upcoming-risk cues, or protected recovery. Describe their effect plainly. Do not shame their use, attach a frightening warning, or erase unrelated progress and rewards.

If inventory management occurs in real time, ensure screen readers and switch or keyboard navigation can complete the same operations under the actual threat model. If that is not feasible, offer a pause or safe-management assist rather than claiming accessibility from static menu labels alone.

## Keep saves and shared inventories correct

This section applies the **Ownership and Recovery Lock** to persistence, migration, and shared-item authority.

Persist inventory and world ownership together at a consistent selected revision. A save needs container contents, instance state, world pickup availability, cache contents, protected-object records, and any staged operation metadata required to distinguish pre-acceptance rollback from post-acceptance reconciliation. Never serialize a half-completed drag or animation as two copies or zero copies. A staged revision is not loadable gameplay state until it becomes the selected durable revision.

Load invalid or older data defensively. Unknown item identifiers remain visible as recoverable placeholders or produce a migration report; they are not silently deleted. Capacity reductions after an update move excess items to a declared recovery container. Save writes use the project's crash-safe pattern and keep a recoverable previous version when available.

For multiplayer, the authoritative host or server validates ownership, capacity, distance, item availability, and transaction revision. Clients request moves and display confirmed results. Duplicate, stale, or reordered commands cannot duplicate or destroy an item. Shared caches require conflict feedback, and disconnect during a move resolves to exactly one owner.

## Verify decisions, boundaries, and data integrity

This section tests each locked artifact and records any contradiction as a reopen event rather than silently changing implementation.

Test at least the following:

1. Fill capacity exactly, exceed it by one unit, and verify the preview and available actions.
2. Stack compatible items to the limit and reject or redirect the remainder without loss.
3. Attempt to discard, move, or consume a protected progression object.
4. Complete the route with two genuinely different loadouts and record their tradeoffs.
5. Spend optional resources early and confirm a costly but valid recovery remains.
6. Leave and reload the scene; recoverable world pickups and cache contents remain consistent.
7. Interrupt before durable acceptance and confirm rollback leaves the source as sole owner; interrupt after acceptance but before live reconciliation and confirm retry/load reconstructs the destination as sole owner.
8. Verify the failure path explains which resource relationship mattered.
9. Exercise keyboard or controller focus, non-drag operation, narrow layout, text scaling, and any assist promised.
10. In multiplayer, race two pickup requests, repeat a command, disconnect during transfer, and confirm one authoritative owner.

Pair screenshots with tests, logs, save-state comparisons, or reproducible playthroughs. A screenshot proves the menu rendered; it does not prove that item ownership, scarcity, or recovery works.

## Deliver and hand off

This section delivers the five lock records with their dependent evidence and any unresolved reopen triggers.

Save the contract and evidence in the project's established documentation location. If none exists, use:

```text
gameplay/<inventory-loop-slug>/mechanic.md
gameplay/<inventory-loop-slug>/tunables.yaml
gameplay/<inventory-loop-slug>/resource-audit.md
gameplay/<inventory-loop-slug>/verification.md
```

End with a handoff that answers:

- Where does the user launch the test route?
- How are items inspected, moved, used, stored, and recovered?
- Which two loadouts were proven viable, and what does each trade away?
- What prevents loss, duplication, and progression softlock?
- Which accessibility and persistence paths were actually tested?
- Which assets were reused, and what remains proposed, proxied, or unverified?

Do not describe the system as balanced, production-ready, accessible, or network-safe beyond the environments and evidence actually tested.
