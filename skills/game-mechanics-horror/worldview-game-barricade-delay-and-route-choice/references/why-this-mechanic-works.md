# Why barricade, delay, and route choice form one mechanic

## The barrier changes the future, not just the present

A closed door can be scenery. A progress bar can be friction. A health value can be arithmetic. None of those alone gives the player a meaningful barricade decision.

The decision appears when the player can foresee two different spatial futures. Without the barrier, the threat arrives sooner through one approach. With it, the threat arrives later or by another approach, but the player gives up time, material, silence, visibility, or their easiest return path. The encounter asks which future is worth buying.

That is why the barrier, its delay, and the resulting route cannot be designed independently.

## Useful time is smaller than breach time

Suppose a threat takes twelve seconds to break a cart. The player does not receive twelve useful seconds. They may spend three seconds pushing the cart, two seconds reaching the cabinet, two seconds returning to the exit, and one second completing an animation. Their real margin is four seconds before acceleration, collision, camera information, or attack windup are considered.

This distinction prevents a common false success: a designer increases barrier health and concludes that the task is possible, while the route still consumes more time than the barrier creates.

The direct design quantity is therefore:

```text
useful interval
  = renewed-contact time
  - placement cost
  - task approach
  - task interaction
  - safe-route travel
  - reacquisition margin
```

The interval should support an intended success and a nearby understandable failure. If it is enormous, the barrier removes pressure. If it is negative, the apparent choice was never viable.

## Route cost prevents a dominant action

If every barrier is free, instant, and transparent to the player, blocking every door becomes the obvious answer. Repetition then tests patience rather than judgment.

A route cost makes context matter. Blocking the north stair may protect the treatment room while closing the fastest route to the lobby. Using the only chain may secure this door while leaving the loading bay exposed. Lowering a shutter may buy time while hiding the threat's position.

The cost does not need to punish the player. It needs to preserve a reason to consider leaving the route open.

## Breach phases turn uncertainty into readable pressure

Exact timers can make a horror encounter feel like a stopwatch exercise, but no feedback makes failure arbitrary. A phased breach provides qualitative time information:

1. contact confirms that the threat reached the barrier;
2. testing signals the chosen response;
3. committed impacts indicate that the delay is being consumed;
4. a final structural change warns that entry is close;
5. recovery before pursuit creates the last readable boundary.

Audio, animation, debris, controller feedback, captions, and restrained UI can carry these phases. Multiple channels matter because not every player can use sound, color, vibration, or rapid camera motion.

## Shared geometry preserves trust

The player reasons about the visible doorway. Navigation reasons about a graph. Collision reasons about shapes. Interaction code reasons about reach. When those descriptions disagree, the barrier's consequence becomes unknowable.

A visually blocked doorway that an enemy walks through destroys the rule immediately. A route that navigation considers closed while the player can still pass may be exploitable or may strand network peers. A socket that accepts placement through a wall makes the cost arbitrary.

One authoritative state does not require one technical component. It requires every component to derive its current answer from the same declared barrier state.

## Persistence can deepen or destroy the decision

A barricade that persists can turn the level into a record of earlier choices. A barricade that resets can support repeatable encounter practice. Either can work if the player understands the rule.

The damaging case is accidental inconsistency: the model remains but navigation reopens; the material is consumed but the barrier disappears; a saved breach timer fires immediately after load; an irreversible block hides a required objective. Persistence therefore belongs in the mechanic contract rather than being left to a later save-system pass.

## Counterexamples

This method is not needed when:

- the barrier is a permanent progression lock opened by a key;
- the player cannot choose whether or where to place it;
- the threat never interacts with the changed route;
- the only result is a filmed sequence;
- the desired system is broad construction with structural simulation and an economy;
- blocking the route has no cost and no effect on future movement.

Those may still be valid experiences. They simply close different design questions.

## The smallest complete proof

One junction is enough to prove the mechanic when it contains two approaches, one placeable obstruction, one task, one remaining route, one readable breach or detour, one success, one failure, and a complete restart. Building a library of doors and objects before this causal loop works multiplies uncertainty rather than creating a system.
