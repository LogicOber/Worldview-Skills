# Worldview Game — Horror Production

Turn a short horror-game idea into a complete, playable experience with a clear fear rhythm, memorable spaces, concrete player decisions, and a tested ending.

## Call this Skill

```text
/worldview-game-horror-production

Build an English-language single-ending first-person horror game about a night
operator who must reopen a flooded archive. Make the building memorable, give
the player a route they can learn, use investigation before the main pursuit,
and deliver a playable browser build with failure, recovery, and ending tests.
```

Use this entry when the user has a horror premise but does not want to design every mechanic, room, state, and production step by hand. The Agent expands the premise, chooses a small set of connected mechanics, and routes detailed work to the relevant Skills.

## What it delivers

- a one-page promise for the player's fear, knowledge, objective, and ending;
- a chapter route with landmarks, returns, gates, safe beats, pressure beats, and recovery;
- a threat contract that states what the threat can know and how the player can learn it;
- concrete interaction loops for investigation, movement, hiding, sound, resources, puzzles, or pursuit;
- an experience timeline showing what the player notices, expects, does, learns, and feels at each beat;
- an original visual, spatial, audio, accessibility, and asset plan;
- a grey-box route before expensive art and a verification pass for ordinary play, failure, reset, and ending;
- a running build or an honest implementation package when no runtime is available.

## Route to a narrower Skill when needed

Use this Skill as the lead. It may call the detailed contracts for chase routes, lure/hide/escape, observation-gated threats, sound detection, safe rooms, barricades, scarce inventory, wounds, evidence identification, interrupted puzzles, perception distortion, and death-loop clues. It must not call every mechanic by default: each selected mechanic needs a named player decision and a route consequence.

For a single polished chapter, use `/worldview-game-high-fidelity-vertical-slice`. For a complete story with substantial world research and one canonical ending, use `/worldview-game-single-ending-campaign`; this Skill can supply its horror-specific experience plan.

## Minimum input

A premise, a desired perspective, or even one image is enough. The Agent infers ordinary details, states assumptions, and asks only when a missing decision would change the product: ending policy, platform, content boundary, runtime, or external-service permission.

