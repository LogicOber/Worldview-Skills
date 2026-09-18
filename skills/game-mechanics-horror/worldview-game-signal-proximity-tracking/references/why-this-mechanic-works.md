# Why proximity tracking creates playable uncertainty

An unseen threat creates uncertainty, but uncertainty alone does not produce a decision. If the player has no evidence, choosing a corridor is a guess. If the interface shows the threat’s exact position and movement through every wall, the uncertainty disappears. A proximity signal works in the useful space between those extremes.

The detector converts world truth into a lower-resolution observation. It may tell the player that danger is increasing, that one side is stronger, or that the reading has become unreliable. It does not need to reveal the answer. Its value lies in making several actions reasonable while giving the player evidence for choosing among them.

## Bounded information supports prediction

The player learns a relationship over time: slow regular pulses mean the source is distant, a dense pulse means it may enter the current space soon, and an irregular texture near powered equipment means the distance estimate is contaminated. Once that relationship is stable, a new reading supports a prediction.

If the output changes arbitrarily, the player cannot distinguish a mistake from designer intervention. Fear may increase briefly, but agency decreases. A declared source of distortion preserves uncertainty without breaking causality.

This is why the mechanic must separate world truth from exposed information. The simulation can know an exact transform while the receiver reports only a band. Debugging may display both; the player-facing tool should expose only what its contract promises.

## The map determines what distance means

Two positions can be close through a wall and far by traversable route. Two floors can be nearly coincident in three dimensions but disconnected. A straight-line meter in such a map may report critical danger for a threat that needs a long journey to arrive, training the player to ignore it.

No one distance model is always correct. An induction field may pass through walls. A sound-like signal may follow portals and openings. A networked sensor may report authored zones. What matters is that the model matches the world explanation and the decision it supports.

Doors are especially revealing. If opening a door should change reachability or attenuation, the signal needs to update from that same state. Otherwise the detector and the visible world describe different spaces.

## Quantization makes a continuous signal readable

Raw distance changes constantly. Mapping every change to pitch, volume, needle angle, and vibration can create noise rather than information. Bands compress continuous truth into decisions: continue, become cautious, seek a branch, or act now.

Thresholds need hysteresis because a player standing at one boundary will otherwise switch rapidly between categories. Smoothing removes meaningless jitter, but too much smoothing withholds an urgent warning. The right response is not an abstract elegant curve; it is the one that remains stable during small movement and fast enough during the quickest supported approach.

Saturation also preserves uncertainty. Once the signal reaches its maximum state, the player knows danger is close without learning the exact remaining distance. This can intensify attention, provided contact cannot arrive before the player receives and can act on the critical state.

## Calibration creates trust

A signal is useful only when the player has some basis for interpreting it. Early calibration can connect a reading with a visible or otherwise confirmed source. The player learns the tool through consequence rather than being asked to memorize unexplained numbers.

Interference introduced before calibration is indistinguishable from a broken tool. Introduced afterward with a recognizable signature, it becomes a new question: is this strong reading a nearby threat, environmental noise, or both? The player can seek a second sample, move away from the interference, or choose a safer route.

This distinction also explains why random false negatives are usually weak design. They violate the detector’s core promise at the moment it matters most. A named condition that blocks the signal can be playable; arbitrary silence cannot be reasoned about.

## Attention and tool cost can deepen the choice

An always-visible HUD provides information without changing what the player does to obtain it. A handheld tool can occupy vision, a hand, time, or sound space. That cost creates a second uncertainty: when is it worth checking?

The cost should not be interface friction for its own sake. Opening several menus to see a band does not create a world decision. Raising a receiver that obscures part of the route, emits a sound, or prevents using another tool can. An embedded environmental sensor can create a different pattern in which the player moves between known reading points.

## Equivalent cues preserve the information contract

Pulse cadence is commonly expressed in sound, but the essential information is the change in band, not the audio file. A segmented display, shape, caption, haptic rhythm, or controlled animation can communicate the same accepted state.

Equivalent does not mean visually identical. The goal is that supported players can recover the decision-relevant category and distinguish interference. Keeping presentation separate from state makes that possible without building different mechanics for each mode.

## Success and failure test whether the signal mattered

A detector animation can look convincing while never influencing play. The successful test is a decision that depends on its information: waiting for a dense signal to recede, avoiding the stronger branch, or searching inside the correct zone.

A useful failure also obeys the model. The player advances during a critical band, ignores a recognizable interference warning, or enters a dead end without checking. Unsignaled contact tests the threat, not the tracking mechanic.

Restart tests lifecycle ownership. Sample timers, smoothing history, haptics, captions, and source references can survive a superficial reset. Clearing them ensures the next reading comes from the new attempt rather than an invisible past.

## What may change without changing the mechanic

The signal can be electronic, acoustic, magnetic, chemical, supernatural, bodily, or environmental. The output can be clicks, a needle, a glow, a pulse, a distortion, or a creature’s behavior. The tracked source can move or remain fixed, and multiple sources can blend or compete.

The reusable structure remains: authoritative truth is transformed under declared spatial and uncertainty rules, the player receives bounded cues, those cues support a real choice, and both success and failure can be traced through the information contract.
