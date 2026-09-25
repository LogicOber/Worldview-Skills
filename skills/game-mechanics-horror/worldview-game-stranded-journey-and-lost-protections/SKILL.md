---
name: worldview-game-stranded-journey-and-lost-protections
description: "Use when a horror journey should progressively remove or corrupt mobility, communication, navigation, shelter, credibility, cargo integrity, and human assistance while preserving fair fallbacks and one ending. Produces and, when possible, implements a safety-resource ledger, segment contracts, safe-return history, help-offer costs, role-based access, credibility, recovery, save handling, and single-ending convergence. Do not use for a lone chase arena or ordinary inventory scarcity."
---

# Worldview Game — Stranded Journey and Lost Protections

## Call this Skill

```text
/worldview-game-stranded-journey-and-lost-protections
```

The user can describe a trip, errand, evacuation, stranded traveler, or return route in ordinary language. Recover the project before asking for a complete resource graph.

## Route companion files as needed

- Fill [`stranded-journey-contract.md`](templates/stranded-journey-contract.md) before implementation unless equivalent state and tests already exist.
- Read [`why-stranded-journeys-fail.md`](references/why-stranded-journeys-fail.md) when a route feels forced, help choices are fake, or several protections fail together.
- Read [`glasswater-courier.md`](examples/glasswater-courier.md) only for a complete original contract example. Do not reuse its fiction.
- Read [`SOURCE.md`](SOURCE.md) for provenance review.

This package is self-contained and does not require installed sibling Skills.

## What this Skill owns

Own these connected decisions:

- safety resources and their independent states;
- journey segments and entry/exit contracts;
- safe-route and safe-return history;
- promised refuge and its actual conditions;
- help offers, yielded control, known risk, hidden risk, cost, and refusal fallback;
- role-based access as it changes the journey;
- credibility and proof needed to obtain help;
- progressive fallback when a protection is lost;
- cargo/obligation versus personal safety;
- recoverable and irreversible dependency changes;
- active agreements across save/load and failure;
- convergence into one ending.

The core question is not “what item is scarce?” It is “what currently lets the player continue, who controls it, what must be surrendered to use it, and what remains if it fails?”

## Use and routing boundaries

Use this Skill for routes in which at least three protections or dependencies change across more than one segment. Do not use it for:

- one active chase route: use chase-route architecture;
- one returning room whose meaning changes: use returning-place escalation;
- pure inventory optimization: use scarce-inventory triage;
- vehicle glance/control load: use driving horror and divided attention;
- only live role communication: use asymmetric-information cooperation.

Compose with those Skills when needed, but keep the safety-resource and help-agreement state authoritative here.

## What the user gives

Accept any combination of:

- project path and playable entry;
- origin, required destination, obligation, cargo, dependent person, or deadline;
- current maps, travel, communications, shelter, NPC, inventory, save, and threat systems;
- one or several protections the user wants to lose;
- allowed help, refusal, and recovery behavior;
- single-ending requirement and permitted aftermath variation;
- accessibility, platform, and input constraints.

If no project exists, create a compact proof with three segments, four independent safety resources, one familiar return, one corrupted refuge, one costly help offer, one refusal fallback, one restoration, and one fixed arrival.

## What the user receives

1. Existing system and owner inventory.
2. Safety-resource ledger and journey graph.
3. One segment contract per route leg.
4. Safe-return and promised-refuge records.
5. Help-offer, credibility, fallback, cargo, and recovery rules.
6. Implementation and tunables when a runtime is available.
7. Save/failure/accessibility handling.
8. Single-ending convergence and neighbor handoffs.
9. Direct runtime verification or an explicit implementation blocker.

## Lock sequence

### 1. Obligation and Destination Lock

- **Resolve:** why the player travels, what must arrive, one ending destination, hard constraints, and what local variation is allowed.
- **Artifact:** obligation contract and convergence statement.
- **Condition:** the route can vary without creating undeclared endings or making the obligation irrelevant.
- **Reopen when:** destination, cargo, dependent person, deadline, or ending changes.

### 2. Safety Resource Lock

- **Resolve:** mobility, communication, navigation, shelter, credibility, cargo integrity, human assistance, and project-specific protections.
- **Artifact:** independent resource ledger with owners and fallback.
- **Condition:** losing one resource does not silently remove another; each loss has visible evidence and a bounded next action.
- **Reopen when:** a resource, owner, failure relation, or fallback changes.

### 3. Journey Segment Lock

- **Resolve:** segment entry state, current obligation, retained/lost protection, threat access, evidence, help, return cost, and exit.
- **Artifact:** segment transition graph.
- **Condition:** every transition changes an obligation, protection, or dependency; no leg exists only to extend walking time.
- **Reopen when:** map route, segment order, travel method, or transition cause changes.

### 4. Help and Credibility Lock

- **Resolve:** what help provides, control yielded, known/hidden cost, proof required, refusal fallback, response delay, and later obligation.
- **Artifact:** help-offer and credibility transition table.
- **Condition:** accepting and refusing are both playable; the player can understand at least known risk before commitment.
- **Reopen when:** helper role, access, cost, proof, compromise, or fallback changes.

### 5. Corrupted Return and Recovery Lock

- **Resolve:** safe-return history, visible change, preparation point, recoverable resources, irreversible losses, and route recovery.
- **Artifact:** return corruption and recovery matrix.
- **Condition:** the player can detect the contract change before the no-return point; restored resources retain declared trust and limitations.
- **Reopen when:** revisit, blocker, restoration, or no-return threshold changes.

### 6. Persistence and Single-Ending Lock

- **Resolve:** active agreement, surrendered control, cargo, credibility, return history, failure, checkpoints, and arrival-state handoff.
- **Artifact:** save/recovery matrix and convergence vector.
- **Condition:** all viable routes reach the one destination with explicit local consequence; save/load cannot erase costs or duplicate help.
- **Reopen when:** save authority, failure scope, or ending prerequisite changes.

## Recover the project and distinguish facts from proposals

Inspect maps, travel controllers, navigation, phone/radio, NPC schedules, dialogue, doors/keys, shelter, inventory, cargo, threats, checkpoints, and runtime. Record:

```markdown
## Verified project facts
- Journey and destination:
- Existing protections and owners:
- Existing help/access systems:
- Save and failure behavior:

## Gaps
- <unowned resource, transition, or recovery>

## Proposed additions
- <state, route, helper, or test>
- Reason: <decision it makes possible>
```

Do not label a location safe because a script calls it `SafeRoom`. Verify threat access, lock behavior, failure, and player-visible proof.

## Build the safety-resource ledger

Start with independent fields:

```text
mobility
communication
navigation
shelter
credibility
obligation_or_cargo_integrity
human_assistance
```

For each, define owner, available/degraded/lost/restored states, visible proof, actions enabled, failure cause, fallback, and trust after restoration.

A broken vehicle does not automatically remove communication. A dead phone does not automatically erase learned navigation. A rejected claim does not physically lock a door unless an actor with authority performs that action.

## Design segment transitions as obligations

Each segment answers:

- What must the player do now?
- Which protection is available on entry?
- What is promised at the next node?
- What exposure is accepted by entering?
- Which evidence is visible only here?
- What help can be accepted or refused?
- What changes before exit?
- Can the player return, and at what cost?

Remove segments that only transport the player without establishing or changing one of these states.

## Establish safety before corrupting it

Let the player personally use the route, shelter, contact, repair, or helper in a normal context. Store that successful use. Later corruption then violates an observed contract rather than a genre assumption.

Track safe-return history by route and condition. Three safe crossings in daylight do not prove the route is safe during flood phase; declare which properties transfer.

## Make help costly without making it fake

For each offer, declare:

```text
provider and authority
resource or access supplied
control yielded by player
known risk
hidden risk
time cost
credibility requirement
accept result
refuse fallback
later obligation
```

The helper may be sincere, compromised, mistaken, or self-interested. Do not reveal hidden risk through author knowledge, but provide a fair clue before a repeated decision. Do not make refusal an invisible game-over.

If the helper becomes a live partner, hand task, knowledge, and acknowledgement to asymmetric-information cooperation. This Skill retains the dependency agreement and resource effect.

## Corrupt the return fairly

A corrupted return needs:

1. a recorded safe baseline;
2. an observable change before commitment;
3. a preparation point;
4. one or more meaningful route responses;
5. a no-return boundary;
6. a recovery route or explicit consequence.

An obstruction spawning behind the player after the boundary may close retreat, but it cannot be the only evidence that the route changed.

## Balance obligation and self-preservation

Cargo, dependent NPC, evidence, or deadline can make detours costly. Model condition and time explicitly. Avoid false moral choices in which only one answer can complete the game. A player may protect themselves while accepting damage to cargo, spend cargo integrity to help another person, or preserve the obligation through slower exposure.

In a single-ending game, these choices alter procedure, relationships, resources, evidence, and aftermath. They do not require separate endings.

## Failure, reset, and recovery

On failure, restore:

- current segment entry state;
- active help agreement and control ownership;
- communication/navigation condition;
- shelter and blocker state;
- credibility and evidence;
- cargo/time state;
- threat phase;
- return history.

Clear pending response callbacks and duplicated vehicles/helpers. If a resource loss persists across failure, state it before commitment and test all repeated-failure counts.

## Accessibility

- Express resource loss through at least two channels.
- Provide readable route evidence that does not rely only on darkness or color.
- Make communication availability and acknowledgement explicit through captions/text state.
- Offer alternatives to strict time pressure where the mechanic permits.
- Preserve critical navigation for players who cannot use spatial audio.
- Avoid surprise control seizure; announce when an accepted helper controls movement.
- Support reduced-motion travel and remappable interactions.

## Implementation order

1. Lock obligation and destination.
2. Inventory current resource owners.
3. Implement the safety-resource ledger.
4. Implement segment transitions and safe-return history.
5. Implement one help offer with refusal fallback.
6. Implement one corrupted return with a preparation point.
7. Add cargo/obligation interaction.
8. Add recovery and save/load.
9. Add convergence vector and handoffs.
10. Test in continuous unedited play.

## Verify

Run at least:

1. compliant route following instructions;
2. suspicious early investigation;
3. acceptance and refusal for every help offer;
4. loss of each safety resource in isolation;
5. combined losses in supported order;
6. restored resource with remaining limitations;
7. familiar return before and after corruption;
8. retreat at the preparation point and commitment past no-return;
9. cargo prioritized and self-preservation prioritized;
10. lost player and missed landmark;
11. save/load with active help and surrendered control;
12. failure during transition and repeated failure;
13. no-audio, low-vision, reduced-motion, and time-pressure alternatives;
14. minimum viable route to the single ending;
15. unedited time for travel, waiting, interaction, exposure, and recovery.

## Handoff

Deliver changed files, filled contract, resource ledger, segment graph, help and credibility rules, safe-return record, recovery matrix, convergence vector, runtime evidence, and remaining blockers. State which neighboring system owns each handed-off responsibility.
