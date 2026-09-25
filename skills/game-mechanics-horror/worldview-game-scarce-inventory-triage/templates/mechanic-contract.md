# <Inventory loop name>

## Intended decision

What competing future needs should the player weigh? What evidence allows a plan without revealing every outcome?

## Source boundary

### Declared by the user or project

- Existing inventory and item data:
- Existing route:
- Mandatory objects:
- Save and multiplayer architecture:

### Observed in a running build

- Pickup and overflow behavior:
- Storage and recovery behavior:
- Save and reload behavior:

### Proposed for this mechanic

- Capacity model:
- Competing item roles:
- Why the proposal is needed:
- Evidence that would cause revision:

## Layer lock record

Fill these rows in order. A later row cannot silently revise an earlier artifact.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Route Pressure Lock |  |  |  |  |  |  |
| Progression Protection Lock |  |  |  |  |  |  |
| Item Competition Lock |  |  |  |  |  |  |
| Capacity and Overflow Lock |  |  |  |  |  |  |
| Ownership and Recovery Lock |  |  |  |  |  |  |

## Route resource audit — Route Pressure Lock

| Route stage | Risk signaled before entry | Useful roles | Resources available | Return path | Irreversible boundary |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |

## Item roles — Item Competition Lock

| Item | Role | Size / stack | Use rule | Replacement | Competes with | Protected? |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |  |

## Cross-owned benefit and cost classification

| Item | `subjective_benefit` | `objective_effect_owner` | `forecast_cue` | `delayed_cost_visibility` | `alternative_item_or_action` | `exhaustion_result` | `threshold_handoff` | `recovery_after_misallocation` |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | | | | | | | | |

- Inventory-owned fields:
- Fields inventory must never derive:
- Relief-resource handoff, if dual-axis progression exists:
- Receiving-owner acknowledgement:

## Capacity model — Capacity and Overflow Lock

- Model: fixed slots / shapes / weight-bulk / body-plus-pack / existing project model
- Total capacity:
- Ready-item rule:
- Stack rule:
- Variable-size rule:
- How the player sees the cost before confirming:

## Player operations — Capacity and Overflow / Ownership and Recovery Locks

| Operation | Preconditions | State transaction | Confirmation | Feedback | Failure behavior |
| --- | --- | --- | --- | --- | --- |
| Inspect |  |  |  |  |  |
| Pick up |  |  |  |  |  |
| Use |  |  |  |  |  |
| Combine |  |  |  |  |  |
| Store |  |  |  |  |  |
| Swap |  |  |  |  |  |
| Leave |  |  |  |  |  |
| Discard |  |  |  |  |  |

## Full-inventory behavior — Capacity and Overflow Lock

- Preview shown:
- Available reversible actions:
- Discard confirmation:
- World pickup persistence:
- Recovery-container policy:

## Ownership transfer transaction — Ownership and Recovery Lock

1. Source owner and selected durable revision validated:
2. Operation ID, source reservation, and destination-capacity reservation:
3. Staged revision with exactly one projected destination owner:
4. Staged write, flush, and validation:
5. Atomic durable acceptance/selection boundary:
6. Live source removal and destination materialization/reconciliation:
7. Confirmed presentation and reservation release:

| Interruption or failure point | Selected durable owner | Live owner before recovery | Required recovery | Forbidden result |
| --- | --- | --- | --- | --- |
| Before durable acceptance | Source | Source | Discard stage and release reservations | Destination copy or missing source |
| Acceptance result ambiguous | Inspect selected revision by operation ID | Frozen pending inspection | Choose rollback or reconciliation from durable evidence | Guessing, duplicate retry, or exposing both |
| After durable acceptance, before live reconciliation | Destination | May still display source while item interaction is frozen | Reconcile live state to destination exactly once, then unfreeze interaction | Durable rollback to source, two owners, or zero owners |

- Stable item instance ID:
- Stable transfer operation ID:
- Revision selected on success:
- Interaction freeze/recovery if live reconciliation fails:

## Protected progression — Progression Protection Lock

| Required state or object | Why required | Protection rule | Recovery path | Tested adversarial choice |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Viable preparations — Route Pressure / Item Competition Locks

### Loadout A

- Contents:
- Forecast used:
- Advantage:
- Cost:
- Recovery from error:

### Loadout B

- Contents:
- Forecast used:
- Advantage:
- Cost:
- Recovery from error:

## Tunables

| Name | Value | Unit | Reason | Tested range |
| --- | ---: | --- | --- | --- |
|  |  |  |  |  |

## Success and failure

- Completion state:
- Failure state:
- What the player can learn:
- Why ordinary inventory choices cannot corrupt progression:

## Restart

List the authoritative baseline and every open transaction, reservation, confirmation, modifier, UI state, pickup state, and outcome that reset clears.

## Accessibility

- Non-drag operation:
- Focus order and labels:
- Text and layout scaling:
- Color-independent states:
- Pause / time-pressure policy:
- Capacity or forecast assists:
- Input remapping:

## Persistence and migration — Ownership and Recovery Lock

- Stable item identity:
- Saved containers and world state:
- Staged durable-acceptance boundary:
- Pre-acceptance live rollback order:
- Post-acceptance live commit/reconciliation order:
- Crash-safe write behavior:
- Older/unknown item migration:
- Capacity-reduction recovery:

## Multiplayer authority

Complete only if the inventory is actually networked.

- Authoritative owner:
- Client requests:
- Revision or transaction identifier:
- Conflicting pickup behavior:
- Duplicate/stale request behavior:
- Disconnect recovery:

## Verification

- [ ] Exact capacity and one-over-capacity behavior verified.
- [ ] Stack remainder preserved.
- [ ] Two materially different loadouts completed the route.
- [ ] Protected objects cannot be lost or consumed into a softlock.
- [ ] Recoverable pickups survive unloading and reload.
- [ ] Pre-acceptance transfer failure rolls back reservations and preserves the source as the only owner.
- [ ] Post-acceptance interruption reconciles the destination as the only owner without republishing or duplicating.
- [ ] Restart restores the authored baseline.
- [ ] Accessibility paths promised above were exercised.
- [ ] Multiplayer races were tested if networked.
- [ ] Screenshot and behavioral evidence are saved separately.
- [ ] Untested environments and limitations are stated.
- [ ] No implementation or tuning change bypassed a reopen trigger; every reopened lock invalidated and reran its dependent checks.
