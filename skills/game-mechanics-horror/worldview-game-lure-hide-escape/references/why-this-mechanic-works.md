# Why lure, hide, and escape is one mechanic

A lure, a hiding place, and an exit can be implemented as three unrelated interactions. The player presses one button to make a sound, another to enter a bed, and a third to open a door. Every feature works in isolation, yet the encounter still feels false because the pursuer does not carry information from one moment into the next. It walks to the lure because a script ordered it there, ignores the player because a hidden flag was set, then resumes pursuit from the player's live coordinates. The visible actions form a chase; the underlying rules do not.

This mechanic becomes coherent when all three actions modify the pursuer's knowledge. The lure gives it a location that may matter. Seeing the player replaces that weak clue with a stronger one. Losing sight leaves a remembered position rather than a live feed. Hiding changes which observations are possible, but it cannot erase an observation the pursuer already made. The exit becomes available not because a timer chose a lucky number, but because the pursuer has committed time and distance to the wrong place.

## The player is manipulating a belief

In an ordinary movement challenge, the main comparison is physical: can the player cross the distance before an obstacle reaches them? A lure-and-hide encounter contains that comparison, but the decisive action happens earlier. The player first changes where the pursuer believes the relevant event occurred. That belief determines a route; the route creates time; the time makes an escape possible.

If the pursuer can always read the player's current transform, none of those intermediate actions has causal force. It may still play an investigate animation, but the simulation already knows the answer. As soon as the animation ends, it turns toward the hidden player. The player cannot reason about the rule because the rule is only presentation.

The implementation therefore needs two kinds of state. World truth records where the player actually is. Pursuer knowledge records what the pursuer most recently saw or heard and when that evidence was acquired. The second may be incomplete, stale, or wrong. That difference is not an AI imperfection to hide; it is the space in which the player makes a decision.

## Sound identifies an event, not a person

A lure should create one attributable sound event at one place and time. Hearing it tells the pursuer that something happened there. It does not prove the player remains there, and it does not justify updating the destination from the player after the event.

This distinction determines several behaviors. A visible player should override an old sound because direct sight is stronger evidence. A sound heard after sight is lost may offer a new search point, depending on the intended rule. Two overlapping sounds need a declared priority rather than whichever callback happens last. A held input should not generate a continuous row of identical events unless sustained noise is the actual mechanic.

The lure also needs a recoverable cost. Unlimited instant sound lets the player drag the pursuer without risk. A single consumable can make one mistaken throw permanently block progress. Cooldown, retrieval, capacity, or another world-specific constraint preserves consequence while leaving recovery possible.

## Hiding is not deletion

Many prototypes implement hiding by setting `visible = false` on the player. That produces a clean code path and a weak game rule. It ignores whether the pursuer watched the player enter, whether part of the body remains exposed, whether the world grants the pursuer another sense, and how the player leaves the hiding place.

A hiding interaction instead changes posture, camera, locomotion, and possible observations. It has a physical entry range and one or more physical exit points. The pursuer may inspect it when existing evidence supports that choice. The player may need to remain still, control breathing, wait for a sightline to close, or decide which exit preserves cover. These consequences make the place part of the map rather than a pause button.

The second exit matters because it turns concealment into repositioning. When the player enters and leaves at the same point, the only available strategy may be to wait until the pursuer resets. A far-side exit allows the player to exploit the pursuer's commitment and creates the near-miss described in the original source: the enemy searches one side while the player leaves from another.

## The map creates the time window

Design descriptions often assign a success probability to a route. Without observed playtest data or a stochastic system, that number has no source. The useful quantity is the margin between two paths.

The pursuer spends time reaching and inspecting the false point. The player spends time leaving cover and crossing to safety. Distance, speed, acceleration, collision, interaction duration, and visibility determine whether those paths overlap. Changing the room layout can reverse the result without changing a single AI state.

This is why the mechanic cannot be designed independently of the map. A bed, far-side inspection point, blocker, and exit are not dressing placed after the behavior works. They are variables in the behavior. Renderer, navigation, collision, and perception must agree about their positions or the player will see one escape window while the simulation evaluates another.

The intended margin is usually narrow enough to feel dangerous and wide enough to be learnable. The correct value is found by running the encounter, not by asking the user to select a percentage. Early and late attempts should fail for visible reasons, and a successful attempt should look like the direct result of information the player understood.

## Failure teaches whether the rule is legible

A prototype that tests only the successful path cannot show whether its mechanic is readable. The player might succeed despite the rule rather than because of it. Failure cases reveal whether the system preserves causality.

If the player hides while clearly observed, the pursuer can investigate that cover. If the player leaves before the pursuer passes the sight-breaking boundary, sight resumes and the chase restarts. If the player waits until the search route returns, the exit window closes. Each result follows from an observation and can be explained after it happens.

An instant unexplained capture teaches nothing. Neither does a random roll that kills one identical attempt and permits another. Surprise may belong to presentation; outcome still needs a rule the designer can inspect.

## Restart is part of the mechanic

Pursuit systems accumulate invisible state: sound events, remembered positions, search progress, attack windups, cooldowns, hidden posture, and outcome flags. A restart that only moves the player leaves the next attempt contaminated by the previous one. This is why reset belongs in the contract rather than in final polish.

Restart from every consequential state. A deferred attack must not land after reset. An old lure must not pull the pursuer away at the start of a new attempt. A cover transition must not finish on the new player body. The quickest way to discover ownership mistakes is often to reset while the system is halfway through something.

## What can change without changing the mechanic

The pursuer can be a monster, guard, drone, animal, or supernatural figure. The lure can be a thrown object, hacked speaker, magical echo, dropped coin, or scent source. Cover can be a bed, locker, maintenance duct, crowd, shadow, or false wall. The escape can end at a door, vehicle, elevator, ritual boundary, or line the pursuer refuses to cross.

Those changes matter to the world and should alter presentation and sometimes perception. They do not change the underlying relationship so long as the player still manipulates an observation, the pursuer acts on bounded knowledge, cover has a cost, and the map creates a testable exit window.

That is the reusable part of the method. It is narrow enough to be verified and broad enough to enter more than one genre.
