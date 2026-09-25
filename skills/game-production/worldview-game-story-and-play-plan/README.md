# Worldview Game — Story and Play Plan

Turn a rough idea into a complete game story before spending time on implementation. Get readable scenes, characters with reasons to act, clues and surprises, exploration routes, estimated play time, and an ending the player has learned how to reach.

## Use it when

- You know the setting or feeling but have not decided what happens.
- You want the story and player experience settled before 3D work.
- An outline contains interesting lore but little meaningful play.
- A puzzle is obvious, exploration feels empty, or a chapter's duration has no basis.

## Example input

```text
/worldview-game-story-and-play-plan

Write a first-person mystery set in a mountain hotel during its final night.
The staff disagree about which guests are still inside. Give it one ending,
roughly an hour of play, and warm relationships underneath the unease.
Finish the story, key dialogue, exploration, surprises, and timing estimates.
Show what happens if I guess the mystery early or miss a clue. Story first;
I will decide about implementation after reading it.
```

You can also give the repository URL and say, “Help me write the game before building it.” The Agent can select this Skill; you do not need to memorize its name.

## What you receive

- The complete story from opening to aftermath, with important scenes written out.
- A play plan with usable objects, actions, prerequisites, feedback, changed state, and the route to the next scene.
- A JSON timeline with estimated first-play time, efficient routes, optional detours, recovery, and retry costs.
- A review of early guesses, missed clues, alternate routes, characters, and ending dependencies.

“Five minutes of exploration” must be supported by places to compare, actions to try, and useful discoveries. Fast players can progress sooner; the method never pads a scene to meet a stopwatch target. All preproduction timings remain estimates until tested in a build.

This entry works across game genres and requires no external API or MCP. A request to finish the story authorizes continued writing. Building the game follows the creator's stated scope; installation by itself does not start production.

Read [the method](SKILL.md), [the planning template](templates/story-plan.md), or [the complete original example](examples/the-borrowed-kite.md).
