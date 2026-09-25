---
name: worldview-game-story-and-play-plan
description: "Write a complete game story before implementation, then map it to player actions, exploration, clues, surprises, relationships, estimated play time, recovery, and an earned ending. Use for a rough game idea, story-first planning, or a campaign whose scenes feel thin, obvious, padded, or disconnected from play. Delivers readable scenes and a timed play plan; implementation follows only within the user's authorized scope."
---

# Worldview Game — Story and Play Plan

## Start from what the creator actually asked for

```text
/worldview-game-story-and-play-plan

I have a setting and a feeling. Develop the story, write the important scenes,
and show what the player discovers and does before we start making the game.
```

A sentence, character, situation, or unfinished draft is enough. Infer ordinary details and name the assumptions that affect the work. Ask about an unresolved choice only when it would send the story in a substantially different direction. The creator supplies intent and revisions; the Agent supplies the characters, causal events, scenes, and playable detail.

Installing this collection makes Skills available. Installation is not a request to run every Skill, produce assets, or start a game engine. Load this entry when a creator needs to discover what the game will be.

Record the current scope from the user's words:

| Request | Work to complete now | Where this entry hands back control |
| --- | --- | --- |
| Help me find an idea | One recommended concept with an opening, a player activity, a reason to continue, and a possible ending; up to two alternatives only if the brief supports genuinely different products. | Deliver the concrete proposal for the creator to choose or revise. |
| Write the story; finish it while I am away | Complete the story, key scenes, play plan, timing estimates, and consistency review. | Deliver a finished draft for review; continue writing without asking for approval after each chapter. |
| Make the game, but show me the story first | Complete the same story package. | Obtain the requested story confirmation before runtime, greybox, or asset work. |
| Build the whole game; choose the story yourself | Write a proportionate story and play plan, then return it to the production owner. | Existing build authorization permits continuation; this Skill does not invent another mandatory approval. |
| The story is already approved | Preserve its accepted facts and develop only the missing play decisions or requested revisions. | Avoid restarting ideation or requiring the creator to approve unchanged decisions. |

When scope is only a rough idea and the intended next step is unclear, deliver the story proposal first. Keep proposed, author-reviewed, creator-approved, and playtested statuses distinct. Silence, available credentials, and a polished draft do not constitute story approval.

## The failure this prevents

A synopsis can sound compelling while giving a player nothing interesting to do for ten minutes. A duration label can conceal walking, repeated searching, or a solution the player already knows. An implementation Agent can spend heavily on rooms before discovering that their story purpose is unclear.

This entry makes the story readable as scenes and inspectable as play. Each scene has a reason to begin, enough information to act, a consequence, and a reason to move on. Time estimates describe activities rather than prescribing how long the player must wait.

## Deliverables

Use the project's established writing location. In a public Skills repository, put the creator's private game draft in an ignored project folder, not in the Skill package.

| Artifact | Required contents |
| --- | --- |
| `story.md` | Beginning through aftermath in readable prose; staged player actions, consequential dialogue, discoveries, and ending. Write the scenes rather than promising to write them later. |
| `play-plan.md` | Spatial connections, scene objectives, evidence and reveal order, branches, recovery, items, characters, and the rules that make the ending possible. |
| `experience-timeline.json` | Per-beat activity budgets, alternatives, estimated durations, knowledge changes, emotional hypotheses, hint conditions, and retry cost. |
| `review.md` | Early-solver, missed-clue, skeptical, completionist, failure/retry, and continuity walkthroughs; revisions and runtime questions. |

For a tiny story, combine the Markdown artifacts instead of multiplying empty files. Keep a machine-readable timeline when play duration or pacing is part of the request. A structured record supports later implementation; it does not replace readable story prose.

Read [the planning template](templates/story-plan.md) when creating the package. Read [the timeline format](references/experience-timeline.md) when assigning durations. Use [scene review](references/scene-review.md) when a scene feels obvious, repetitive, arbitrary, or empty. [The Borrowed Kite](examples/the-borrowed-kite.md) is a complete small application in a different genre, not a plot or timing default.

## 1. Establish the playable premise

Write a short opening in the proposed game's voice before expanding its lore. Establish who the player is, what they expect to accomplish today, who wants something from them, the first useful action, and the change that makes leaving difficult or undesirable.

Prefer a protagonist whose existing work or relationships explain their abilities and access. State why they stay after the first alarming event and what plausible alternatives they try. If leaving would solve everything, either allow a bounded departure attempt with a believable obstacle or give staying a personal reason the player has experienced.

Record the intended length as an estimate, ending policy, perspective assumption, language, intensity, and current writing scope. Retain the creator's genre and preferences. A cozy story can use this method without enemies, a mystery without a ticking clock, and a linear ending without fake choices.

For a reality-inspired setting, research only the facts that constrain a scene or mechanism. Distinguish observed capability, future extrapolation, and invention. Cite factual claims in the private research record; write original events and characters. A technical paper establishes a capability or limitation, not the truth of a fictional catastrophe.

## 2. Write the ending and its causes

Define the last action the player performs, who or what it changes, the cost retained, and the ordinary action that feels different afterward. Name the physical and informational prerequisites. Work backward until each has a location, acquisition, earlier teaching moment, and recovery if missed.

Separate the author's answer from what the player knows. A scene may leave motive uncertain while the physical rule remains stable. Specify what actually happened before deciding how to mislead. An unreliable document needs a reason to be unreliable and an independent way to notice it.

Write an ending scene now, including actual dialogue or silent action. Replace a speech about the theme with a specific response from someone affected. Keep one ending when requested; vary route, cost, knowledge, and relationships without quietly adding contradictory final outcomes.

## 3. Give characters reasons to interrupt the plot

For each important person, write what they are doing when the player arrives, what they want immediately, what they know, what they have wrong, what they withhold and why, and what evidence could change their behavior. An NPC must be able to refuse a request for a reason other than making the game longer.

Link assistance to observed action: a worker opens a service route after the player protects their equipment; a witness signs after seeing a contradiction directly. An exposition conversation alone does not earn a reversal of allegiance. Establish how absent characters reach later scenes and how remote speech travels.

Let ordinary details build affection before asking the player to save someone. A familiar mug, repair habit, shared joke, or interrupted task should later change interpretation or action. Incidental warmth need not secretly be a puzzle; its purpose can be to make the person worth listening to.

## 4. Compose scenes around what the player can do

For every mandatory scene, specify:

1. **Arrival:** where the player comes from, a landmark, immediate sensory detail, and a visible job.
2. **Expectation:** what previous play leads them to predict; distinguish player knowledge from protagonist knowledge.
3. **Investigation:** the exact object, route, person, comparison, or experiment they can examine.
4. **Decision:** meaningful alternatives and the information available before choosing.
5. **Response:** a visible or audible consequence and any persistent change.
6. **Interpretation:** the plausible first explanation, the evidence that revises it, and what remains unknown.
7. **Continuation:** a new actionable question or obligation, not an unexplained quest marker.
8. **Alternative behavior:** early solution, missed cue, interruption, refusal, and recoverable error.
9. **Time basis:** activity counts, approximate route distance, dialogue/reading load, experiments, and optional work.

Write the actual scene after these decisions. Include key lines, object text, staging, and what the player does between them. A row saying “the player feels betrayed” is incomplete until the scene shows the broken promise and the choice it changes.

For each required interaction, identify the reachable place, usable object or person, visible cue, available action, prerequisite, feedback, state change, and next reachable node. Include what happens when the player tries too early, repeats the action, leaves, or fails. Several simple actions can share a scene record; split an action out when its rules or consequences differ. The implementation Agent should not have to invent a puzzle or a route to connect two paragraphs.

Keep transitions playable or explicitly mark them as a cutscene or time skip. “They repair the ferry and rescue the passengers” is an outline, not the rescue scene. Write where the player goes, which part they operate, how they learn what works, how others respond, and what becomes possible afterward. Preserve the requested setting and conflict while adding detail; a familiar horror location is not a substitute for the creator's premise.

A scene can layer immediate activity, local uncertainty, relationship, and larger meaning. Introduce them in an order the player can notice. Assign one primary attention demand; place crucial dialogue away from precise movement or active pursuit unless it repeats safely later. Keep essential information available after an interruption.

## 5. Design exploration that earns its time

Give each explorable area an entrance question, an orienting landmark, a small set of distinguishable possibilities, and a discoverable connection to the next goal. Exploration must let the player discriminate between possibilities. Searching identical drawers for a randomly hidden mandatory object creates work without understanding.

Classify discoveries by use:

- **Required:** needed to act or understand the ending; place on a dependable route with a recoverable alternative presentation.
- **Helpful:** changes confidence, a shortcut, a resource, or the cost of a later action.
- **Personal:** gives a character or place meaning; the campaign remains understandable if skipped.

Allow optional routes to rejoin at a named scene with their consequences preserved. A repeated room earns its return through changed access, a new task, a different person, or a reinterpretation the player can test. A shortcut can make knowledge itself valuable. Mark where searching should end once the player has enough evidence.

Estimate exploration from candidate count and differentiation, sight lines, detours, interaction time, and plausible tests. At 1.4 m/s a 42 m route takes 30 seconds of uninterrupted walking; inspection and decisions need separate budgets. These figures are example assumptions, not mandatory movement speeds. If the job fits in 40 seconds, label it accordingly or add a consequential decision rather than calling it five minutes.

## 6. Build surprises that survive an attentive player

Keep a reveal ledger: planted detail, expected interpretation, plausible competing explanation, discriminating evidence, earliest solvable moment, confirmation, changed action, and later payoff. A surprise may change a person's motive, the usefulness of an object, a route, or the cost of a correct solution. It need not be a concealed identity.

Offer enough information that an attentive player can anticipate some reveals. After an early correct inference, permit the experiment or acknowledge the suspicion. Shift interest to verification, practical execution, responsibility, or consequences. Preserve legitimate dependencies such as reaching an instrument; remove arbitrary locks that demand reading every page before allowing a known answer.

For a player who misses the inference, stage help from least to most explicit: orient toward the object, name the comparison, then offer the actionable explanation. Trigger help from relevant inactivity or repeated failed hypotheses, not total wall time. Pause hint timers in menus, optional reading, and deliberate exploration. Each hint must be grounded in a character's knowledge or an inspectable object.

Do not protect a twist by changing previously established facts or making competent characters withhold the only useful sentence. If the truth is obvious from the premise, let discovery happen early and build the game around what doing something about it costs.

## 7. Budget the experience rather than a film edit

Use seconds internally and minutes in the reader-facing guide. Separate:

- fictional time (years, a single night, a narrated skip);
- first-play time spent doing and understanding;
- efficient play after the player knows the route;
- optional exploration and extra recovery;
- observed runtime time, only when a build exists.

For each beat, estimate low, typical, and high time from non-overlapping navigation/orientation, investigation, interaction, dialogue/reading, pressure, and recovery. Record the assumptions. When dialogue overlaps walking, budget their union once; use the slower demand or mark the overlap group. An animation occurring during a held interaction is not another full duration.

Calculate totals along valid paths. Choose one branch's duration at a junction instead of summing both. Add an explicit scenario for a missed clue or one retry; do not silently include failures in every estimate. Treat low/high sums as planning bounds, not population percentiles. Assisted play may be faster or slower depending on reading, navigation, motor demands, and chosen support.

Create a schedule of attention, expected emotion, question, answer, and recovery. The emotions are hypotheses with a reason and a later observation that could contradict them. A long quiet section can work when the player is choosing, comparing, or relating to someone. A continuous stream of revelations can exhaust understanding. Judge useful change, not a fixed number of scares or rewards per minute.

If total time exceeds scope, combine exposition, shorten mastered traversal, remove redundant errands, or reduce the number of places. Preserve preparation for the ending and enough aftermath to see its consequence. If the path is shorter than hoped, report that finding instead of adding waiting, random collection, or mandatory repeated reading.

## 8. Write pressure, mistakes, and recovery together

Every pressured task needs an earlier opportunity to learn its ordinary version. Record the warning, what the player can perceive, the action window, the avoidable mistake, and the information gained on failure. Estimate the longest retry separately from the scene's first attempt.

For a chase, establish the safe route in calm play, the useful landmarks, one tempting but readable wrong route, and a recovery pocket. Design the buildings and threat access as a route graph before visual production. For a conversation, state what can be rephrased, what evidence is missing, and whether refusal closes a route or opens an alternative.

Place a checkpoint before the unresolved skill test, preserve previously obtained knowledge, and specify which physical changes replay or reset. Keep essential objects recoverable. A returning player should spend most retry time on the decision they failed, not walking back through solved rooms.

Let recovery contain a useful action: test a new idea, check another person, inspect a changed object, open a shortcut, or revise a plan. Preserve enough cost for the previous event to matter. When the user asks for horror, consult the horror rhythm method for its detailed pressure patterns, while keeping this artifact in writing scope.

## 9. Review the story from several routes

Perform desk walkthroughs; label them as author review, never player testing:

| Reader/player behavior | Questions that must have concrete answers |
| --- | --- |
| First-time, follows the obvious route | Is there an actionable reason to enter each area? Is every essential rule taught before its first consequential use? |
| Guesses the central answer early | Can they test it? What remains interesting once the answer is known? Which steps can shorten? |
| Skips optional material | Does the ending still follow? Have necessary rules accidentally been hidden in collectibles? |
| Misses a clue or gets lost | What redirects attention, from where, with what knowledge? What happens after another failed attempt? |
| Distrusts the helper | Can they corroborate the claim or try an alternative? Is eventual cooperation earned by an event? |
| Fails and retries | What survives, what resets, how long until the failed decision, and what new information helps? |
| Inspects everything | Does optional material reveal people or useful differences, or repeat the same explanation? |

Audit causality: item custody, character travel, permissions, facts, threat knowledge, timers, physical distances, and ending prerequisites. Locate every clue and payoff by scene ID. If a familiar technology is stretched for fiction, identify the invented rule and keep its consequences consistent.

Follow the required actions from the opening to the ending without filling gaps from imagination. Flag any transition that relies on an unspecified interaction, unreachable object, unexplained rule, or summary of several unwritten scenes. Expand the missing play or honestly reduce the promised scope. Metaphors and themes can enrich a scene; they cannot supply its objective, rules, or consequences.

List three weaknesses found and how the draft changed, or explain why fewer substantial issues remain. Avoid rubber-stamping the story with a long list of passed adjectives. Keep proposed runtime tests for unresolved timing, legibility, and surprise.

## 10. Deliver something the creator can read

Lead with the story and its most important scenes. Put production tables and estimates behind links. State the expected first-play range, the efficient route, and what still requires playtesting. Write a complete ending rather than stopping at “the player discovers the truth.”

Match the requested delivery format. When the creator asks to read the full story in chat, include it there rather than offering only a synopsis or file link. If only an outline is complete, call it an outline and identify the unwritten scenes; do not present it as a finished campaign.

For story-first scope, delivery is the finished writing package and a concise statement of the next production step. Implementation starts when the user has authorized it. When a production parent already has that authority, return the approved facts, proposed facts, beat IDs, route, timing assumptions, and open questions so it can proceed without repeating this work.

## Related Skills and boundaries

- `/mystery-detective`: clue fairness and plausible interpretations; adapt its suspect conventions only when the game actually has suspects.
- `/thriller-plot`: deadline, obstruction, reversals, and a changing goal; choose recovery appropriate to this game's length.
- `/hero-journey` and `/romance-arc`: character or relationship structure when relevant to the premise.
- `/worldview-game-horror-experience-rhythm`: horror-specific attention and recovery; consumes this plan and later tests it in play.
- `/worldview-game-horror-production`, `/worldview-game-single-ending-campaign`, and `/worldview-game-high-fidelity-vertical-slice`: implement the selected scope after the story stage.

These are optional handoffs. Installed alone, this Skill still writes and reviews the complete story and play plan. It needs no engine, image generator, paid API, or MCP to complete that job.
