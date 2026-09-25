---
name: worldview-game-perception-distortion-and-trust
description: "Use when a horror game needs players to decide which sights, sounds, labels, memories, instructions, or guides deserve trust while declared anchors keep reasoning fair. Produces separate event, cue-interpretation, presentation, and evidence records; channel and permission histories; escalation, recovery, save/load, accessibility, and verification rules; and an implementation when a runtime exists. Do not use to simulate a real diagnosis, moralize mental illness, randomize controls without consent, hide all required information, or add effects that never influence play."
---

# Worldview Game — Perception Distortion and Trust

## Call this Skill

The public invocation is:

```text
/worldview-game-perception-distortion-and-trust
```

Treat the following text as the creative and project brief. Preserve the user's fictional cause, world rules, intended cues, reliable objects, and accessibility requirements. Do not reduce the request to one bar that makes every effect stronger.

## Read only the files this task needs

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same truth, cue, anchor, recovery, and proof fields.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether perceptual unreliability fits, resolving a fairness tradeoff, or setting an escalation budget. Skip it for a narrow task whose contract is already locked.
- Read [the-brass-north.md](examples/the-brass-north.md) only when a filled fictional example would clarify a field. Its archive, tiers, and values are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review. It is not implementation guidance.
- [README.md](README.md) is the human catalog page; it is not required after this Skill is loaded.

## Use it when the player must reason about trust

Perceptual unreliability becomes gameplay when the player can learn its boundaries and use that knowledge. A corridor sign may change while a physical compass remains truthful. A distant footstep may be false while nearby collision and direct contact remain authoritative. A remembered map may omit a new opening while stable landmarks still support orientation.

Use this Skill when:

1. The fiction provides a declared cause for altered perception.
2. At least one cue channel can become unreliable in a rule-bound way.
3. At least one accessible anchor remains dependable or can be restored.
4. The player makes a consequential choice based on comparing cue and anchor.
5. Exposure can escalate, recede, or be managed through an action with a cost.
6. Failure follows from a readable trust decision rather than arbitrary input theft.
7. A guide's credibility, when relevant, can be tested through destinations, access, witnessed facts, promises, and requested exceptions rather than a hidden trust score.

Do not use it for an ornamental vignette filter, a surprise control reversal, complete sensory denial, a real-world psychiatric diagnosis, or a narrative claim that illness makes a person evil or less human. If the desired output is only a filmed hallucination, route to a video or scene method instead.

## What the user gives

Accept any combination of:

- an existing project, level, and authorized paths;
- the fictional source of distortion and what the world says it can affect;
- current HUD, camera, audio, map, subtitle, input, save, and accessibility systems;
- one desired uncertainty, such as whether a sign, reflection, voice, or route can be trusted;
- one intended anchor, recovery action, consequence, and maximum intensity;
- content limits, photosensitivity requirements, motion-sensitivity requirements, and requested opt-outs.

Inspect only material placed in scope. Separate observed project behavior, supplied fiction, new implementation proposals, and untested assumptions. Ask one grouped question only when an ambiguity would change the ethical or mechanical contract—for example, whether the user wants fictional signal interference or representation of a real condition.

## What the user receives

Deliver as much as the project allows:

1. A source inventory covering world state, presentation, audio routing, camera, UI, save data, effects, and accessibility settings.
2. A truth contract listing every authoritative fact the mechanic may present differently without changing it.
3. A cue-channel table defining stable, distortable, suppressed, substituted, and recovery-only signals.
4. An exposure model with causes, thresholds, hysteresis, escalation budget, recovery, persistence, and assistance behavior.
5. A smallest complete encounter in the existing runtime when available.
6. Direct verification that required decisions remain possible through each supported sensory and accessibility path.
7. A handoff with controls, entry point, screenshot or short capture of each presentation tier, behavioral evidence, and limitations.

If the project cannot run, deliver the contract and state which presentation, timing, and accessibility claims remain unverified. Never call concept frames or prose an implemented mechanic.

## Lock what may lie before adding effects

Close these locks in order. Later work may tune only the stated mutable fields. When the build contradicts an earlier lock, reopen that row and discard the dependent presentation, save data, and evidence named in the final column.

| Lock | Question resolved and locked artifact | Lock condition | Still mutable afterward | Reopen trigger and dependent work to discard |
| --- | --- | --- | --- | --- |
| **World truth** | A table names every authoritative route, objective, threat, item, timer, completion fact, and owner that remains real beneath presentation. | Each required fact has one owner, and false presentation cannot mutate collision, damage, inventory, completion, or real system UI. | Visual styling and nonauthoritative wording. | Moving an objective, route, threat rule, or state owner reopens truth; discard all later cue, save, and fairness work. |
| **Distortion scope** | The fictional cause, accumulation, tiers, eligible channels, forbidden channels, maximum simultaneous changes, and hysteresis are fixed. | Every change has a cause, tier, channel class, onset cue, exit condition, and accessible expression; no tier removes every route to a required fact. | Thresholds and residence times inside the same tier grammar. | A new cause, affected channel, tier, or representation goal reopens scope; discard false-cue, recovery, comfort, and tier evidence. |
| **Reliable anchors** | Each consequential decision maps to a named anchor, its exact fact, availability, consultation cost, teaching moment, accessible forms, and detectable failure rule. | A player can learn and use the anchor without designer knowledge in every supported mode. | Cost and presentation within the same verification behavior. | Removing an anchor, expanding its scope, or letting distortion imitate its verification behavior reopens anchors; discard decision and failure traces. |
| **False-cue grammar** | A finite table links each true fact to one eligible presented alternative, context, anchor test, tempted action, consequence, and learning outcome. | Every alternative is legal under the scope, influences a real choice, preserves forbidden information, and has a recoverable or explicitly terminal consequence. | Selection weights and repeat cooldown among already legal alternatives. | A new substitution, procedural combination, or changed consequence reopens the grammar; discard deterministic seeds, save cases, and trust traces. |
| **Recovery and comfort** | Recovery actions, price, restored scope, input/camera limits, content boundary, assistance ceiling, and sensory alternatives are fixed. | Recovery changes a declared information state; supported settings preserve the decision without forced flashes, camera motion, input theft, or audio-only progression. | Effect intensity inside tested comfort and accessibility bounds. | A new recovery effect, input manipulation, camera treatment, or access mode reopens this lock; discard comfort and accessible-path evidence. |
| **Reproduction proof** | Persistence fields, deterministic sequence or seed, private/shared authority, restart cleanup, per-tier captures, and behavioral tests are fixed. | Reload preserves committed cues, restart clears every presentation residue, and each fairness claim has state evidence as well as a capture. | Evidence filenames and additional test coverage. | Save schema, network authority, random selection, or any earlier lock changing reopens proof; rerun affected paths and replace stale captures. |

Ask one grouped question only when the fictional cause or representation goal remains genuinely ambiguous. Derive thresholds after the truth, scope, anchors, and cue grammar are fixed; an exposure number cannot resolve a missing fairness rule.

## Recover the project's truth before altering presentation

This section closes **World truth** before any channel may become unreliable.

List the authoritative facts the underlying simulation already owns: player position, collision, doors, objectives, threat position and knowledge, inventory, damage, time, save state, and completion. Distortion should change how selected facts are perceived, not accidentally fork the facts themselves.

Record the boundary:

```markdown
## Authoritative project facts
- <state and where it is owned>

## User-declared fictional rules
- <what the influence can and cannot affect>

## Proposed presentation changes
- <new cue, substitution, suppression, or recovery behavior>

## Safety and accessibility constraints
- <required alternatives and opt-outs>
```

If a false door appears visually, decide whether it is a presentation overlay, a non-colliding prop, or an actual route mutation. Those are different mechanics. Never let rendering imply a traversable opening while collision silently rejects it unless the rejection is itself clearly signaled and recoverable.

## Separate the truth layer from cue channels

This section supplies **Distortion scope** while preserving the owners fixed by **World truth**.

Use an explicit record:

```text
truth state
  player, world, threat, objective, inventory, time, completion

presentation channels
  direct geometry
  labels and written text
  map and compass
  reflected or remote imagery
  local and distant sound
  dialogue or radio
  HUD and objective language
  camera and post-processing
  input response
```

Classify each channel:

- **stable:** always reports its contractually defined truth;
- **noisy:** adds ambiguity without asserting a false fact;
- **substituted:** may present one authored false alternative;
- **suppressed:** may temporarily omit a cue while another accessible route remains;
- **recovery-only:** becomes reliable during or after a declared grounding action;
- **forbidden:** never distorted because it carries safety, consent, accessibility, or required system information.

Do not distort every channel at once. If sight, sound, map, labels, collision feedback, subtitles, and controls all become unreliable, the player cannot reason; only the designer knows the rule.

## Keep event, cue interpretation, presentation, and evidence separate

A trust decision needs four records even when the game never shows those labels to the player:

```text
authoritative event     what occurred in world state
cue interpretation      what this observer currently infers from this cue
player presentation     what this camera, sound, label, dialogue, or UI channel shows
inspectable evidence    what can later support, limit, or contradict either interpretation
```

An observer can accurately see an event and interpret it incorrectly. A channel can fabricate a cue without changing the event. A guide can tell the truth from incomplete knowledge. These cases must not share one boolean such as `is_hallucination` or `is_trusted`.

For each consequential cue, store its author or generating system, channel, true event, presented alternative, observing actor, cue interpretation, stable anchor, competing explanation, and later verification. If the project intends ambiguity, write two complete causal interpretations. Each interpretation must explain the same retained facts and lead to a testable difference; a pile of unrelated dream images is not ambiguity.

### Permission-based trust

When a person, recording, radio operator, institution, or entity guides the player, record:

- locations they can legitimately enter;
- objects or records they can alter or transfer;
- people they can contact or command;
- facts they personally witnessed;
- destinations their earlier guidance produced;
- promises made, kept, broken, or still untested;
- the exception they request now and why it exceeds prior behavior;
- what following or refusing them costs;
- what independent anchor can later verify the result.

Trust is not a scalar mood. A guide may be reliable about routes but wrong about identity, or may keep every promise while using a known access right for a harmful purpose. Preserve the scope of each history entry.

### Neighbor handoffs

- This Skill owns cue-channel reliability, cue-specific interpretation, authored substitutions, guide history, and trust decisions. It does not own an observer's belief about an actor's role, identity, permission, or culpability.
- `/worldview-game-evidence-based-entity-identification` owns accepted claim/test provenance and confidence. Send inspected cues there without redefining their presentation rule.
- `/worldview-game-horror-role-and-identity-pressure` owns whether an actor actually has a role, permission, or expected schedule. This Skill records how that permission affects trust, not the permission itself.
- `/worldview-game-asymmetric-information-cooperation` owns live transmission and acknowledgement. This Skill may distort a declared private presentation only if the cooperation contract preserves a complete accessible path.

If a neighbor is unavailable, retain the handoff fields and mark the external authority unresolved. Do not invent a second role, evidence, or communication system inside this package.

## Make the cause and scope learnable

This section completes **Distortion scope**, including tier entry, exit, hysteresis, and budget.

Exposure must have a cause the player can connect to the change: proximity, time inside a zone, contact with an artifact, failure to maintain a ward, attention to a signal, or a story state. Random selection may vary presentation within a declared set, but it must not replace causality.

Use escalation tiers with hysteresis so small fluctuations do not flicker between states:

```text
clear -> unsettled -> unreliable -> critical
critical -> recovering -> unsettled -> clear
```

For each tier, define entry condition, minimum residence, eligible cue changes, maximum simultaneous distortions, exit condition, and a player-readable transition. Preserve a distortion budget. One strong contradiction is usually more legible than six unrelated effects.

Do not equate exposure with a person's moral worth, intelligence, or humanity. Name the fictional force precisely—signal saturation, spore load, dream pressure, memory bleed, or another project-specific term—rather than defaulting to “insanity.”

## Establish reliable anchors

This section closes **Reliable anchors** for every required decision.

An anchor is not necessarily an easy answer. It is a source whose reliability follows a stable rule. It may be a compass made from a protected material, a hand-drawn mark, a companion's agreed code, a physical shadow direction, an instrument that consumes power, or a safe room where cues resynchronize.

Each required decision needs at least one supported route to an anchor. Record:

- which fact the anchor can verify;
- when it is available;
- how the player learned its reliability;
- what it costs to consult or restore;
- which accessibility modes can perceive it;
- whether the distortion can imitate its appearance but not its verification behavior.

Do not make an anchor truthful only when the plot needs it. If it can fail, declare a second-order rule that lets the player detect the failure.

## Design authored false cues rather than arbitrary lies

This section implements **False-cue grammar**. It may select only facts and channels already permitted by the first three locks.

A useful false cue tempts an understandable action. It should have a relationship to the truth: a room label shifts one door, a radio voice repeats an earlier instruction in the wrong location, footsteps lead toward a shortcut that exposure has made unsafe, or a reflection shows a threat one junction later than direct sight.

For every substitution, write:

```text
true fact
presented alternative
eligible tier and context
anchor that can test it
decision it influences
consequence of trusting it
way the player can update their model
```

Avoid presenting fabricated system messages, accessibility settings, platform dialogs, purchase prompts, save confirmations, or content warnings. System trust must remain outside the fiction.

## Give recovery a price and a purpose

This section supplies the recovery half of **Recovery and comfort**.

Recovery may require leaving the source, using a limited filter, restoring a signal, performing a grounding interaction, reaching a protected landmark, or accepting time and vulnerability. It should reopen reliable inference, not merely reduce a cosmetic meter.

Define whether recovery removes exposure, reveals truth temporarily, clears only one channel, or prevents escalation. A cheap instant reset can make distortion irrelevant; no recovery can make one early mistake dominate an entire session.

Accessibility assistance may hold the system below a tier, keep a chosen anchor permanently visible, reduce motion and flicker, replace audio-only contradictions with visual or haptic equivalents, or disable deceptive text. These are valid ways to experience the mechanic, not failures to play correctly.

## Protect controls, camera, and bodily comfort

This section closes the safety, consent, and accessibility half of **Recovery and comfort**.

Do not steal movement input, invert axes, simulate controller disconnects, create unavoidable rapid flashes, or add strong camera roll merely because those effects are disorienting. If altered response is essential to the user's explicit design, it needs advance communication, a safe intensity range, an immediate opt-out, and an alternative consequence that preserves the decision.

Respect reduced-motion, photosensitivity, field-of-view, camera shake, subtitle, color, haptic, and audio dynamic-range settings. Effects must compose with pause menus and platform overlays without making real UI appear corrupted.

## Keep persistence and randomness reproducible

This section supplies the state and authority portion of **Reproduction proof**.

Save authoritative exposure, tier, cause, active authored substitutions, recovery state, and any seed needed to reproduce the current presentation. Reloading must not reroll a false cue into a different answer after the player committed based on it.

Also save the cue-interpretation version, guide-history entries already witnessed, promise state, permission references, active competing explanations, evidence snapshot IDs, and any consequence already applied. Reload must not make a guide retroactively know an event, repair a broken promise, change the author of a cue, or replay a one-shot betrayal/access action.

Randomness chooses among content already legal for the current context. It never invents a contradiction outside the channel contract. For tests, expose a deterministic seed or scripted sequence. Restart cancels deferred audio, post-processing, camera impulses, false interactables, subtitle events, and recovery callbacks.

In multiplayer, decide whether distortion is private, shared, or transmitted by an authoritative event. The server owns gameplay consequences and exposure causes; a client may own private presentation. Never let one client's false geometry mutate shared collision. Spectators, reconnecting players, and late joiners need an explicit policy.

## Build one complete trust decision

Before creating a library of effects, implement one loop:

1. The player observes the stable relationship between a cue and an anchor.
2. A declared cause raises exposure.
3. One cue channel becomes ambiguous or substitutes an authored alternative.
4. The anchor remains usable through the supported access path.
5. The player chooses to trust the cue, test it, recover, or accept a cost.
6. The consequence confirms or revises their understanding.
7. Recovery or exit returns the system to a declared state.
8. Restart reproduces the initial truth and clears all presentation residue.

Include one successful inference and one understandable failure. Failure may waste time, expose the player to a threat, spend a resource, or take them onto a longer route. It must not depend on unknowable randomness.

## Verify fairness and implementation

This section closes **Reproduction proof** with per-tier presentation captures and direct behavioral evidence.

Run and record:

1. Baseline the encounter with exposure disabled and record every authoritative fact.
2. Trigger each tier through its real cause and confirm hysteresis prevents threshold flicker.
3. Force each authored substitution and verify it never changes forbidden system information.
4. Confirm every required decision has an available anchor in every supported mode.
5. Complete the intended route by using the anchor rather than designer knowledge.
6. Trust the false cue and reach the declared consequence without softlock or unexplained death.
7. Use each recovery path and verify its exact scope, price, and persistence.
8. Save and reload during every tier and active substitution without rerolling committed information.
9. Restart during delayed sound, camera effect, false interaction, recovery, success, and failure; no residue may survive.
10. Exercise reduced motion, photosensitivity-safe settings, subtitles, no-audio play, remapped inputs, and the narrowest supported viewport.
11. If networked, compare authoritative gameplay on two clients with different private presentations.
12. Run deterministic sequences under different render schedules where simulation timing matters.
13. Save and reload after a guide gives a direction, uses access, keeps or breaks a promise, requests an exception, and receives the player's commitment; confirm the history and consequence remain exact.
14. For an intentionally ambiguous route, run both complete interpretations against the same event/evidence ledger and confirm the eventual test distinguishes them without deleting prior facts.

Screenshots or short captures prove the presentation appeared. Pair them with state assertions, logs, and reproducible input traces for truth, persistence, and consequences.

## Work within the current Harness

This Skill does not bundle an engine, rendering stack, audio middleware, image or video generator, browser, medical authority, or accessibility testing service. Use only configured project and Harness capabilities. Reuse existing licensed assets or labeled proxies. Never generate disturbing imagery or audio outside the user's stated content limits, and never replace gameplay with a video.

## Deliver and hand off

If the project has no established location, save:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

End with the playable entry point, controls, exposure cause, reliable anchor, one verified distortion, success and failure traces, recovery, settings tested, persisted fields, reused assets, proxies, and untested boundaries. Do not claim clinical realism, universal accessibility, production balance, or support for platforms that were not run.
