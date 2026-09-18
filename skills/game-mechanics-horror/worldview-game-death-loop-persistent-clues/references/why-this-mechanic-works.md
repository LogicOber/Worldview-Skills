# Why a death loop needs persistent clues

## Repetition needs a changing question

Repeating an encounter can build mastery, but a narrative horror loop promises something more: the player understands the situation differently because of what happened before. If every reset asks exactly the same question and changes only execution speed, the loop is a checkpoint with additional fiction.

A persistent clue changes the question. The first pass asks, “What happens when the lower door seals?” The second can ask, “Can I redirect the beacon before that event?” The geometry may return to the same state, but the player's available reasoning has changed.

The essential relationship is:

```text
failure or observation -> actionable fact -> persistence
                       -> earlier/different action -> changed consequence
```

Without the changed consequence, persistence is collection rather than progression.

## The state ledger prevents accidental contradictions

A game world contains more state than visible objects. AI remembers targets. Audio schedules delayed cues. Cameras retain impulses. Navigation holds paths. UI queues messages. Quests, achievements, analytics, random generators, inventories, and saves each own parts of the experience.

Resetting only transforms and doors produces ghosts from the previous pass: an old attack lands, a clue duplicates, a threat remembers a player it has not met, or a route remains blocked invisibly.

The reset/persist/transform/external/ephemeral ledger forces every touched responsibility to declare a lifecycle. It also reveals when one technical object contains fields with different meanings, such as a journal whose collected clue persists while its current page animation must reset.

## A loop reset is a transaction

During reset, the old pass must stop becoming true before the new pass appears. If AI, damage, autosave, input, or network messages continue while scenes restore, the resulting state belongs to neither pass.

A transactional sequence locks the outcome, cancels or drains old work, restores the world, applies permitted persistence, validates coherence, and only then returns control. The visual fade can conceal the transition, but it cannot provide atomicity.

This matters most for save safety. A half-restored autosave may be loadable but logically impossible. The project should preserve its last valid state until a complete new state can replace it through its existing save strategy.

## Knowledge should usually be demonstrated, not merely flagged

The person playing remembers facts even when the game does not. A hidden `knows_code = true` gate can feel arbitrary if they can enter the correct phrase but the interface refuses it because they did not collect the designated note this run.

When possible, let the action demonstrate knowledge: enter the phrase, arrive early, redirect the signal, mark the correct object, warn a character, or take the route before it closes. The world may still require an in-fiction prerequisite when the character must acquire a language, relationship, tool, or physical mark. That reason should be visible.

A journal supports memory and accessibility. It should preserve clues the character intentionally recorded, not replace all interpretation with a solved objective list.

## First failure can retain agency

An unavoidable reset is often used to reveal the premise. If nothing the player does before it matters, the opening is a disguised cutscene repeated through controls.

Even with a fixed outcome, the player can choose which place to inspect, which signal to answer, which person to warn, or which mark to leave. The choice determines the evidence available next. Failure establishes the loop while still respecting action.

## Replay must remove solved labor, not new decisions

Loops become exhausting when the player repeats dialogue, tutorials, traversal, and interactions they have already mastered just to reach one new branch. Shortcuts, accelerated routine actions, changed dialogue, and persistent route knowledge preserve pacing.

Automation should stop before the new decision. Skipping the entire sequence because it was seen once removes the opportunity to apply learned knowledge under changed pressure.

Accessibility settings that reduce repetition are legitimate. Canonical progression should not depend on accepting unnecessary physical, sensory, or time costs.

## Save honesty preserves the real trust boundary

The game may depict a world that resets. The application still owes the player truthful information about profiles, saves, settings, purchases, platform storage, and deletion. Faking corruption or pretending to erase a file moves horror outside the consented fiction and risks actual loss.

Clear labels distinguish resume current pass, restart loop, leave the loop, start a new profile, and delete a save. Those are different scopes, even if the story uses the language of forgetting.

## Counterexamples

Do not use this method when:

- death returns to an ordinary checkpoint with no actionable new fact;
- randomized loot and build progression, rather than knowledge, drive runs;
- repeated actions never become faster, different, or newly meaningful;
- the desired effect depends on deceiving the player about real files or platform state;
- the scene is non-interactive and only depicts recurrence;
- the project cannot safely isolate test data from real profiles.

## The smallest complete proof

Two passes are enough. The first establishes the snapshot, exposes one fact, and resets cleanly. The second applies the fact earlier, changes one authoritative consequence, and exits or advances. Test quit/resume and an attempted sequence break. A longer story should not be built until that state relationship is trustworthy.
