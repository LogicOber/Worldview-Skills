# Writing a skill

A skill is a `SKILL.md` an agent reads before doing a job. It is not documentation for humans first; it is instructions for a model that has no memory of the last time it did this. Write accordingly.

## The frontmatter

```yaml
---
name: kebab-case-id
title: Human Title
description: One paragraph. What the skill produces, when to use it, and the words a user would say that should trigger it. This is what routing reads.
category: film-video | game-design | game-mechanics-horror | game-production | 3d-assets | 2d-game | narrative | core-engine
triggers:
  - "phrases a user would actually type"
---
```

`description` is the most important field. It is read by whatever decides which skill to load. Put the trigger words in it.

## The body — what every entry skill has

1. **Why this exists** — one or two paragraphs naming the failure the skill prevents. Skills written without a failure in mind become feature lists.
2. **What the user gets** — a table of deliverables with formats.
3. **What the user has to do** — usually three or four items. If it is more, the skill is asking too much.
4. **How it runs** — which core-engine stages are called, in order, with gates marked.
5. **Rules this entry enforces** — the non-negotiables, each with the reason.
6. **Example** — a real one from a real project, with the actual numbers.
7. **Related entries.**

## The body — what every core-engine skill has

Core skills are called by entry skills. They are more technical and more specific:

- The exact prompt anatomy or file format they produce.
- Every hard rule, each traceable to a failure that was paid for.
- The checklist a reviewer runs on the output.
- Where the output goes (`films/<slug>/…`) and who reads it next.

## Rules for writing

- **Positive language inside instructions.** "Exactly two chairs," not "no extra chairs." Models read negations badly.
- **Numbers, not adjectives.** "0.8 s telegraph," "±5° shake," "6 actions per second." An adjective is a request for the model to guess.
- **Name the failure.** Every rule says what goes wrong without it. A rule without a failure is a preference.
- **One skill, one job.** If the "What the user gets" table has two unrelated halves, it is two skills.
- **Hidden parameters are inferred, not asked.** Users say "intense" or "elegant"; the skill maps the word to a level and states the level. It does not present a menu unless two options are genuinely close and the user's words do not decide.
- **Show, do not describe, style.** If a choice is visual, the skill shows reference images and asks for a letter.
- **English throughout.** READMEs may be localised; skills are not.

## Adding to the repository

```text
skills/<category>/<name>/
  SKILL.md    required
  showcase/   at least one image or clip of the output; users browse this before installing
  examples/   optional; a worked example with the real prompt and result
  templates/  optional; files the skill fills in
```

Add a row to the category table in the root `README.md`. If the skill is a new entry point, add it to "Which skills you actually need to remember." If it is internal, add it to the internal table and to `film-pipeline/SKILL.md`'s stage list.

## Testing a skill

Run it on something you did not write it for. If the agent asks a question the skill should have answered, the skill is missing a rule. If the output fails in a way the review checklist did not catch, add the check. Keep the before/after generation in `examples/`.
