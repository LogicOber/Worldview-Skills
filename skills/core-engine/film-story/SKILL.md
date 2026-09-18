---
name: film-story
description: Stage 0b of the AI film pipeline — the dramatic engine. Turns a premise (often a bare "I want a film about X" from a user who has not thought about conflict) into a story with a want, an obstacle, stakes, a conflict ladder, a loss, a dilemma at the climax, a hook, setups/payoffs and an emotion map per block; handles nested stories (a creator inside the film who makes a world that must itself be dramatic); rejects flat parallel-event outlines. Use before any script, and whenever an outline "reads fine but feels like nothing".
---

# Film Story (stage 0b) — the dramatic engine

## Why this stage exists, and why the skill must do the work

Most people asking for a film bring a *situation* ("a creator builds a world, fans play it") — not a *story*. They will not say "add a loss" or "give her a dilemma" because they don't carry that vocabulary; they only know afterwards that the result felt like nothing. The skill's job is to supply the dramatic engineering **unasked**, show it in tables, and let the user attack it.

The failure this stage prevents has a shape: **the parallel-event outline**. A goes here, then B, then C, then the product. Every event succeeds. Nobody loses anything. The viewer is not asked a question they need answered. It reads as a demo with people in it. A film is not a list of events; it is one question the viewer cannot stop asking until the last image answers it (or refuses to).

## The emotional algorithm (what the brain keeps)

Memory is written by emotion, and the emotions that write deepest are not the pleasant ones:

| Emotion | Mechanism | Screen form |
|---|---|---|
| **Loss / grief** | something loved is taken *after* we were made to love it | the character we spent time with walks away / dies / is forgotten |
| **Longing** | a want that stays unfulfilled long enough to ache | a door not opened; a name not said; a box taped shut |
| **Dread** | we know something the character doesn't, or a countdown | the tape reel; the gate; the phone face-down |
| **Hope** | a small light *after* the loss, never instead of it | a stranger's question; a hand held out |
| **Recognition** | a payoff of a setup we half-forgot | the pendant seen again on someone else |
| **Shame / guilt** | the character judges themselves | "I let him down" |
| **Relief with a cost** | the win arrives, but something was paid | the save is made and the striker is destroyed |
| **Absurd / tender comedy** | laughter with sadness inside it | nodding too much; a mug in the dark |

Pure joy and pure success are forgettable; comedy survives only when something sad sits under it. A film for a product is not exempt — a viewer who felt nothing will not remember the logo either.

## The spine (five lines; every one mandatory)

| | Question | Reject if |
|---|---|---|
| **Want** | what the hero wants, concretely, *in this film* | it can't be shown as an object or an action |
| **Obstacle** | what stops them — outside (a gate, a person) *and* inside (fear, guilt) | only an outside obstacle: that's an errand, not a drama |
| **Stakes** | what is visibly lost on failure | the viewer couldn't point at the thing |
| **Dilemma at the turn** | the climax is a *choice between two things that both cost* | the climax is "it works" |
| **Change** | the hero does something at the end they could not do at the start | stated as a feeling instead of a behaviour |

## The conflict ladder

A film needs several conflicts of increasing size, each **set up early and paid off later**, not one vague "tension". Write them as a table; the script inherits the IDs.

```markdown
| id | size | type | what it is | set up in | paid off in | emotion it produces |
|---|---|---|---|---|---|---|
| C1 | small | inner | she is packing the world away | B1 | B4 (tape peeled off) | longing |
| C2 | small | outer | the fans can't get past the gate | B3 | B4 | frustration → curiosity |
| C3 | medium | loss | the NPC they came to love walks into the unfinished and is gone | B3 | B4 (the question) | grief |
| C4 | big | dilemma | finishing = deciding whether the brother is found; either answer costs | B1 (hinted) | B4 | dread → hope |
| C5 | hook | unanswered | what is behind the gate? | B2 | never (the viewer is invited in) | need to enter |
```

Sizes: at least two small, one medium **loss**, one big **dilemma**, one **hook** that stays open. Types: inner, outer, loss, dilemma, unanswered.

## Loss is not optional

Somewhere in the film, someone the viewer was made to care about must be lost, leave, fail, or be given up — *after* screen time was spent making them lovable. A loss with no prior affection is an event; affection then loss is grief. Budget the affection: a character who will be lost needs ≥2 warm beats first (a gift, a joke, a rescue, a look).

## The dilemma at the climax

The turn is not "the hero tries harder"; it is a choice where both options hurt. Write both horns explicitly:

> If Ana finishes the story and Ines *finds* her brother, it is a lie (hers wasn't found). If Ines *doesn't*, Ana has to write that down. So she never finishes — and never lets anyone in.

The resolution is the hero choosing a third thing that costs something (she lets strangers help her decide). The product, if there is one, makes the third thing *possible* — it never makes the choice for her.

## Setups and payoffs

Every object, line or image seen more than once is a promise. List them so nothing is set up without paying off and nothing pays off unannounced:

```markdown
| setup | where | payoff | where | what the viewer feels |
|---|---|---|---|---|
| brass compass pendant on Ana | B1 | Tom recognises it on the street | B4 | recognition |
| packing tape torn, hanging | B1 | tape peeled off the box | B4 | release |
| "Unfinished." carved on the gate | B2 | "Does she find her brother?" | B4 | the film's question said aloud |
```

## The hook (for product films: why the viewer wants *in*)

The hook is the unanswered question that survives the ending. For a product that hosts worlds, the hook and the product's promise should be the same sentence: *there is a door in this world nobody has opened; you could.* Never let the hook be "look how easy it is".

## Nested stories (a creator inside the film)

When the hero *makes* a world, the film has two spines and both must work:

- **Outer**: the creator's want / obstacle / loss / dilemma / change.
- **Inner**: the world's own hero, want, obstacle, and — crucially — an NPC the *players* (and the audience) come to love, a win they earn, and a loss they suffer. A world with no loss in it is a theme park.
- **They must rhyme**: the inner obstacle is the outer obstacle in costume (the gate the knight can't pass is the page the creator can't write). The inner loss is what lets the outer question be asked. Write the rhyme table:

```markdown
| outer | inner |
|---|---|
| Ana's brother, gone | Ines' brother Corin, walked into the skull |
| the page she never drew | the gate marked "Unfinished." |
| she won't let anyone in | the gate won't let anyone in |
| strangers ask her the question | the players ask Ines to wait |
```

The players in the inner world are the audience's proxy: what they feel is what the viewer feels. Give them the win *and* the loss.

## Emotion map per block

The final table the user sees. One row per block: primary emotion, the mechanism producing it, the conflict IDs active, and the tension line (what is unresolved at the end of the block that makes the next one necessary). A block with no tension line is a montage; a film affords at most one.

## Anti-patterns (reject the outline if any is true)

- Events in a row with no question the viewer is asking.
- Everyone succeeds; nothing is paid for.
- The product is the hero, or the product resolves the emotional problem.
- The climax is a demonstration, not a choice.
- The inner world (if any) is pretty but has no loss in it.
- The ending is a logo instead of a changed person; the logo may follow the change, ≤4 s.
- The emotion is told by VO instead of shown by a face and an object.

## Output — `films/<slug>/story.md`

Sections, all tables: spine (outer) · spine (inner, if nested) · rhyme table · conflict ladder · setups/payoffs · emotion map per block · hook · "why they'd remember it" (one sentence a viewer would say to a friend). Show all of it to the user before the script; the script copies the IDs into each block.

Read this file at the start of every story pass. Do not work from memory.
