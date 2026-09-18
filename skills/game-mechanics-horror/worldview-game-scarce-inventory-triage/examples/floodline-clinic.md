# The Floodline Clinic

## Source boundary

This is a newly authored fictional example for `worldview-game-scarce-inventory-triage`. It is not copied from a named game, third-party Skill, existing character, or published level.

## Invocation

```text
/worldview-game-scarce-inventory-triage

Build a short survival route through the flooded lower floor of an abandoned
clinic. The player has a five-space field bag and must choose among light,
treatment, a hand tool, and two defensive interruptions. Put a secure cache by
the service lift. I want two valid preparations and no way to lose the lift part.
```

## Fictional setup

The player begins beside a dry service lift whose control panel is missing a detachable contact block. A waist-high water route leads through an unlit records room and a treatment bay occupied by a slow threat that responds to splashing. The contact block lies beyond both spaces and is automatically recorded in protected objective storage when found.

This scenario is intentionally small. It exists to show how an inventory choice changes a route without claiming production balance.

## Layer lock record

These are fictional contract decisions, not observed runtime facts. The evidence paths name the records an implementation must produce.

| Lock | Concrete artifact or decision | Evidence / source | Locked when | Still mutable | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- | --- | --- |
| Route Pressure Lock | Graph: `service_lift_cache -> records_room -> treatment_bay -> contact_block -> service_lift`; the cache remains reachable until `contact_block_secured`; darkness and splash response are the two forecast pressures. | Brief plus route proposal; planned `gameplay/floodline-clinic/resource-audit.md#route-pressure`. | Every node, return edge, pickup site, and the `contact_block_secured` boundary is recorded. | Threat speed, ledge traversal time, and pickup positions inside their named rooms. | A door becomes one-way or either pressure moves to another stage. | Invalidate both loadout routes and full-inventory placement evidence. |
| Progression Protection Lock | `lift_contact_block_01` transfers directly to protected objective state, cannot consume bag space, and persists until `lift_restored`. | User requirement in the invocation; planned `gameplay/floodline-clinic/verification.md#protected-contact-block`. | Full-bag acquisition, death, unload, save/load, and return-to-lift all have one recovery result. | Prompt text, icon, and transfer presentation. | The contact block becomes droppable, consumable, or optional. | Invalidate overflow, persistence, restart, and completion traces. |
| Item Competition Lock | Lamp `2`, dressing `1`, pry tool `2`, noise capsule `1`, and barrier wedge `1` spaces answer information/recovery/access/two distinct interruption needs; the two named preparations use different routes. | Proposed item table below; planned `gameplay/floodline-clinic/resource-audit.md#item-competition`. | Each item has a distinct route consequence and neither preparation receives adaptive supplies. | Effect duration and use time within ranges that preserve those roles. | A single item answers both darkness and treatment-bay pressure without a compensating cost. | Invalidate five-space capacity and both viability traces. |
| Capacity and Overflow Lock | Five fixed spaces; exact-fit is legal; over-capacity opens use, cache, swap-at-shelf, or leave; ordinary discard requires named confirmation; protected discard is absent. | Invocation and full-inventory proposal; planned `gameplay/floodline-clinic/verification.md#overflow`. | Both named loadouts fit, all candidates do not fit, and the wedge encounter forces a reversible decision. | Stack maxima and total capacity only inside a tested range that keeps those three facts true. | Capacity model changes or the wedge no longer produces overflow. | Invalidate UI, accessibility, and loadout evidence. |
| Ownership and Recovery Lock | Single-player `InventoryAuthority` stages `world_pickup -> bag/cache/objective_state` under `inventory-transfer:<item-id>:<revision>`, validates revision `r+1`, then atomically selects it before reconciling live state. Before selection the source remains sole owner; after selection the destination is sole durable owner and retry/load completes live reconciliation. | Fictional single-player architecture proposal and transaction below; planned `gameplay/floodline-clinic/verification.md#ownership-round-trip`. | Faults before selection preserve only the source; faults after selection rebuild only the destination; interrupt, restart, unload, and load tests never expose two owners or zero owners. | Animation, sound, and debug-log format. | Save schema, durable selection, live reconciliation, streaming ownership, or network mode changes. | Invalidate transfer-fault, migration, recovery, and race evidence. |

> If the service-lift cache moves beyond the `contact_block_secured` no-return boundary, reopen the Route Pressure Lock and the Capacity and Overflow Lock; discard both completion traces and the full-inventory wedge evidence.

## Proposed capacity and resources

The field bag holds five spaces. The contact block does not consume those spaces because completion requires it and abandoning it would be a false choice.

| Item | Space | Role | Route consequence |
| --- | ---: | --- | --- |
| Hooded lamp | 2 | Information and avoidance | Reveals a dry ledge through the records room. |
| Dressing packet | 1 | Recovery | Stabilizes one injury state at a safe interaction point. |
| Short pry tool | 2 | Access | Opens a noisy but direct treatment-bay bypass. |
| Noise capsule | 1 | Defensive interruption | Draws the threat away from one crossing. |
| Barrier wedge | 1 | Defensive interruption | Delays one door transition. |

The lift cache preserves all stored supplies. A world pickup declined while full remains at its authored location. An explicit swap leaves the displaced object there. Discard is disabled for the protected contact block and requires a named confirmation for ordinary supplies.

## Two viable preparations

### Light-led route

The player carries the lamp, dressing packet, noise capsule, and barrier wedge. The lamp reveals the dry ledge, reducing splashing through the records room. Without the pry tool, the player crosses the treatment bay and spends one interruption to create distance.

The cost is reduced route access. The advantage is better information and recovery after an error.

### Tool-led route

The player carries the pry tool, dressing packet, and two noise capsules. The tool opens the direct bypass, but the player must read reflective markers and move slowly through the dark records room. A noise capsule can cover a mistaken splash.

The cost is poorer visibility. The advantage is a shorter second half and a repeatable escape route.

Neither loadout receives hidden adaptive supplies. Their differences remain visible in the path taken.

## Full-inventory decision

Just before the records room, the player finds a barrier wedge while carrying five spaces. The pickup preview explains its one-space cost and door-delay role. The player can use an eligible supply, return to the nearby lift cache, swap and leave an item on the shelf, or decline. Closing the prompt makes no change.

This moment tests the system more directly than an empty-bag pickup because new value must be compared with a prior plan.

## Ownership transaction

For an ordinary pickup, cache move, swap, or protected contact-block acquisition, `InventoryAuthority` first validates the current source owner and destination capacity at revision `r`. It reserves both sides without hiding the source, then writes and validates staged revision `r+1`, where the destination is the only projected owner. The stable operation ID is `inventory-transfer:<item-id>:<revision>`.

If staging or verification fails, the staged record and reservations are discarded; the selected durable revision and live state still name the source as the sole owner. Once `r+1` is atomically selected, the destination becomes the sole durable owner. `InventoryAuthority` then removes the live source representation and materializes the destination from `r+1` in one reconciliation step. Interruption in that interval freezes interaction with the item; retry or load finds the selected operation ID and finishes destination reconciliation without republishing or restoring the source.

For `lift_contact_block_01`, the destination is protected `objective_state`, not the five-space bag. For a swap, revision `r+1` contains both ownership changes together: the selected pickup moves to the bag and the displaced supply moves to its stable shelf location. No presentation callback may create either record independently.

## Success, failure, and recovery

Success occurs when the player returns the protected contact block to the lift panel. One legible failure occurs when the player uses both noise capsules before entering the treatment bay and then splashes within the threat's active range. The restart restores the initial bag, authored pickups, closed bypass, contact-block state, threat state, and cache contents.

If the player dislikes the current preparation without failing, the service-lift cache remains reachable until the contact block is collected. After collection, objective storage guarantees the part returns with the player even if ordinary supplies are exhausted.

## Expected saved output

```text
gameplay/floodline-clinic/
├── mechanic.md
├── tunables.yaml
├── resource-audit.md
└── verification.md
```

## Evidence required before handoff

| Claim | Evidence |
| --- | --- |
| Both preparations are viable | Reproducible completion trace for each, with no injected supplies |
| Capacity is legible | Capture of exact-fit and full-inventory preview states |
| The contact block cannot be lost | Discard, swap, scene-unload, restart, and save/load checks |
| World items remain recoverable | State comparison before and after leaving and reloading the lower floor |
| Persistence failure preserves one owner | Faults before durable acceptance retain only the source; interruption after acceptance reconstructs only the destination for the same operation ID |
| Failure teaches the relationship | Trace showing early expenditure followed by the signaled treatment-bay risk |
| Inventory is operable accessibly | Non-drag input, text scaling, focus order, and selected assist checks |

The handoff must distinguish proposed values from observed results. Until the route has been run, five spaces is a test value, not a balance conclusion.
