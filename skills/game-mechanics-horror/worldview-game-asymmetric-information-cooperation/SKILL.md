---
name: worldview-game-asymmetric-information-cooperation
description: "Use when a horror game needs a cooperative encounter where different players possess necessary but incomplete information, tools, positions, or authority and must communicate to produce one shared action under pressure. Produces role and information contracts, a communication vocabulary, recovery and assistance rules, an implementation when a runtime is available, and direct multi-role and network verification. Do not use for symmetric co-op, hidden-traitor deception, inaccessible voice-only puzzles, or a companion who performs the player's reasoning."
---

# Worldview Game — Asymmetric Information Cooperation

## Call this Skill

The public invocation is:

```text
/worldview-game-asymmetric-information-cooperation
```

Treat the following text as the creative and project brief. Preserve the user's player count, roles, locations, tools, communication fiction, threat, and platform. Do not assume voice chat, online networking, or a second human exists unless the project provides them.

## Read only the files this task needs

- Read and fill [mechanic-contract.md](templates/mechanic-contract.md) before implementation unless the project already records the same roles, information flow, protocol, authority, and proof.
- Read [why-this-mechanic-works.md](references/why-this-mechanic-works.md) when deciding whether asymmetry fits, resolving a role-agency tradeoff, or tuning the communication window. Skip it for a narrow task whose contract is already locked.
- Read [the-bellhouse-interval.md](examples/the-bellhouse-interval.md) only when a filled fictional example would clarify a field. Its roles, vocabulary, and sequence are not defaults.
- Read [SOURCE.md](SOURCE.md) for provenance review. It is not implementation guidance.
- [README.md](README.md) is the human catalog page; it is not required after this Skill is loaded.

## Use it when cooperation closes an information-action gap

An asymmetric encounter is complete when no role can solve the intended problem alone, yet every role can contribute a necessary observation or action. The missing connection is made through communication the players can learn, express, verify, and correct under pressure.

Use this Skill when:

1. The shared world contains one authoritative problem and consequence.
2. Different roles receive different useful information, affordances, or positions.
3. Each role owns at least one decision rather than serving as a passive spectator.
4. Players can communicate through one or more supported channels.
5. The receiving player can acknowledge or test what they understood.
6. Horror pressure limits attention or time without making exchange impossible.
7. Mistakes lead to readable consequences, recovery, or an explicit terminal failure.

Do not use it merely because players occupy different characters. Symmetric combat, social deduction, secret betrayal, unrestricted party chat, and AI companions that reveal the answer close different questions.

## What the user gives

Accept any combination of:

- an existing local or networked project and paths in scope;
- supported player count, devices, sessions, and join flow;
- locations, roles, tools, senses, permissions, or knowledge already assigned;
- the shared threat or objective;
- current voice, text, ping, symbol, haptic, subtitle, and accessibility capabilities;
- reconnect, latency, host migration, save, checkpoint, and solo-fallback requirements;
- one desired exchange, such as “the observer describes the safe symbol while the operator turns the valve.”

Separate what was observed in the project, what the user declared, what is newly proposed, and what cannot be tested in the current environment. Ask a grouped question when player count, communication mode, or solo requirement would create incompatible designs. Do not ask the user to choose packet rates or arbitrary timer values that direct measurement can determine.

## What the user receives

Deliver as much as the project supports:

1. An inventory of existing session, replication, input, UI, audio, camera, interaction, threat, and persistence systems.
2. A role contract listing what each player can perceive, infer, communicate, confirm, and change.
3. An information graph showing the source, owner, encoding, channel, receiver, acknowledgement, action, and shared consequence of every required fact.
4. A compact communication vocabulary with accessible equivalents and localization notes.
5. Tunables for windows, channel limits, acknowledgement, threat pacing, recovery, and assistance.
6. One complete encounter in the project's actual runtime when possible.
7. Direct evidence from every role, including network degradation and reconnect when claimed.
8. A handoff that lets a new group join, understand roles, play, fail, retry, and verify the result.

If only one client or no session backend can run, deliver the contract and clearly separate locally verified behavior from untested networking. Two simulated viewports are not evidence of internet behavior.

## Lock the exchange before building the puzzle

Close these locks in order. A later layer may tune only the fields listed as mutable. If the running project contradicts a lock, reopen the earliest affected row and invalidate the dependent code, timing, network tests, and captures named in the last column.

| Lock | Question resolved and locked artifact | Lock condition | Still mutable afterward | Reopen trigger and dependent work to discard |
| --- | --- | --- | --- | --- |
| **Shared outcome** | One authoritative objective, success, failure, retry state, player count, and pressure boundary are recorded. | All supported players can enter, understand the common stake, and observe the same final version without relying on a private client's claim. | Fictional dressing and nonessential feedback. | A different player count, objective, terminal condition, or solo requirement reopens the outcome; discard every later lock. |
| **Role agency** | Each role's unique perception, unique action, local pressure, missing information, and observable consequence are fixed. | Removing any role makes the intended solution impossible, while every role still makes a decision rather than transcribing or waiting. | Cosmetic role presentation and control layout. | Moving an affordance, transferring an action, or adding a solver companion reopens roles; discard the information graph, vocabulary, timing, and role tests. |
| **Information boundary** | A graph names each authoritative fact, cue owner, private representation, allowed inference, recipient, action, and shared consequence. | Every required edge exists in the supported runtime; no private state decides shared success and no role receives the complete answer directly. | Cue presentation inside the same fact ownership. | A new clue source, leaked fact, or changed state owner reopens the graph; discard vocabulary, protocol, privacy, and success traces. |
| **Shared vocabulary** | A finite set maps meanings to spoken, text/ping, visual, and haptic/audio forms, with teaching and localization rules. | Every required meaning has a complete supported non-voice path unless voice is an explicit platform requirement, and players learn the set before irreversible pressure. | Wording and icon polish that preserve one-to-one meanings. | Adding a required concept, viewpoint-relative term, or unsupported sensory distinction reopens vocabulary; discard teaching, timing, and accessibility evidence. |
| **Commit protocol** | Phase/version, message, acknowledgement, staged preview, authoritative commit, idempotence, cancellation, and outcome broadcast are fixed. | A stale, duplicate, reordered, or spoofed operation cannot change shared state; both roles can diagnose what was accepted. | Grace periods and feedback duration inside the same acceptance boundary. | Moving the irreversible boundary or changing acknowledgement/version semantics reopens protocol; discard network, failure, and reconnect tests. |
| **Pressure and recovery** | A budget fixes perception, encoding, transmission, acknowledgement, action, safety margin, wrong-action consequence, and retry. | An unfamiliar group can complete a supported path before pressure closes it, while one plausible error produces readable recovery or declared terminal failure. | Threat and retry timing inside the tested tolerance. | New local pressure, channel impairment, language path, or consequence reopens the budget; discard novice and accessibility timing claims. |
| **Session authority** | Host/server ownership, private presentation, absence policy, reconnect, late join, host migration boundary, persistence, and privacy are fixed. | Every supported session transition reconstructs one current phase and operation history; unsupported infrastructure remains explicitly unclaimed. | Transport tuning inside the tested support envelope. | Backend, ownership, disconnect policy, or privacy behavior changing reopens authority; discard degradation and reconnect evidence. |
| **Cross-role proof** | A matrix covers every role, client, communication path, failure edge, duplicate/reorder case, degradation condition, disconnect phase, restart, and authority log. | Each claim has matching evidence from all affected clients and the authoritative state under the environment actually run. | Evidence locations and extra test cases. | Any earlier lock changing reopens proof; rerun the affected matrix and replace stale captures. |

Ask one grouped question only when player count, required communication mode, or absence policy remains incompatible across interpretations. Derive packet and timer values after role, information, vocabulary, and commit locks are stable.

## Recover the shared truth before splitting it

This section closes **Shared outcome** and supplies the authoritative facts for **Information boundary**.

Begin with the authoritative world: objective state, objects, threat, timers, role assignment, connected players, and completion. Then decide which representation of that truth reaches each role.

Record:

```markdown
## Observed project truth
- Session and authority: <path and behavior>
- Existing roles and inputs: <path and behavior>
- Shared objective and threat: <path and behavior>

## User-declared asymmetry
- <who should know or do what>

## Proposed additions
- <new cue, channel, role action, recovery, or proxy>

## Untested boundary
- <network, device, accessibility, or scale not available>
```

The server or host may own shared state, but authority does not decide presentation. A private clue can be derived and shown only to one client while its source and later consequences remain authoritative.

## Write the role contract before the puzzle

This section closes **Role agency** before clue content or puzzle order is authored.

For each role, define:

- unique perception or information;
- unique action or authority;
- information they do not receive directly;
- vocabulary they can send;
- acknowledgement they can return;
- local danger and attention demand;
- consequence they can observe after a shared action;
- behavior when the other role disconnects, becomes unavailable, or requests assistance.

No role should exist only to read text aloud. If one player sees the answer while another enters it, the observer also needs decisions about interpretation, timing, validation, navigation, threat, or which part to reveal. The operator needs more than transcription: order, commitment, position, resource, or risk should make their agency matter.

## Build an information-action graph

This section implements **Information boundary** inside the fixed role contract.

Represent every required exchange:

```text
authoritative fact
  -> role-specific cue
  -> player interpretation
  -> communication token or phrase
  -> receiver acknowledgement
  -> role-specific action
  -> authoritative consequence
  -> feedback to all affected roles
```

If any edge depends on designer knowledge, repair it. The observer must be able to distinguish the cue. The channel must express it. The receiver must map the message to an action. Both players must see enough consequence to know whether their shared model was correct.

Do not allow private client state to decide shared success. The authoritative simulation validates the action and broadcasts the consequence.

## Create a finite, learnable vocabulary

This section closes **Shared vocabulary** for the facts already allowed through the information graph.

Free conversation can coexist with the mechanic, but the required content should have a compact vocabulary. Use stable spatial names, shapes, numbers, rhythms, directions, or world-specific concepts that both roles can learn before pressure peaks.

Avoid distinctions that rely only on color, pitch, small text, culturally unstable gesture, or untranslated wordplay. Provide equivalent pings, symbol boards, captions, text, or haptic sequences as the project supports. A no-voice group must still have a complete path if voice is not an explicit platform requirement.

Introduce vocabulary in a low-pressure exchange, then recombine it under threat. Do not introduce a new symbol and demand its perfect communication in the same irreversible moment.

## Make acknowledgement part of the loop

This section implements **Commit protocol**, including the irreversible acceptance boundary.

Messages fail because they are unheard, ambiguous, stale, or understood differently. Give the receiver a way to acknowledge: repeat a token, highlight the selected control, point to a shared representation, stage a reversible preview, or send a confirmation ping.

Acknowledgement costs attention or time but prevents silent divergence. For irreversible actions, use a commit rule:

```text
select -> preview locally -> acknowledge -> authoritative commit -> shared feedback
```

Do not require confirmations for every trivial action. Reserve them for transitions whose mistake would be expensive or hard to diagnose.

## Apply horror pressure to attention, not communication viability

This section supplies the timing half of **Pressure and recovery**.

Pressure can come from a closing window, local threat, divided attention, a channel that must be powered, limited message length, positional noise, or a need to move while observing. It should force prioritization without making the required exchange inaudible or impossible.

Measure a communication budget:

```text
usable decision window
  = threat or objective window
  - time to perceive clue
  - time to encode and transmit
  - latency and channel delay
  - time to acknowledge
  - time to perform action
  - safety margin
```

Test unfamiliar pairs, supported languages, and non-voice routes. Developer fluency with the puzzle is not valid timing evidence.

## Design mistakes that teach the shared model

This section supplies the failure and retry half of **Pressure and recovery**.

A wrong action should identify the failed relationship. The device may reject a reversible preview, advance threat pressure, consume one resource, change the clue, or trigger a recoverable local danger. If one mistake immediately kills a distant player without feedback, both roles learn that communication is risky but not why it failed.

For terminal failure, show the committed input, expected rule, observed consequence, and retry path without revealing unrelated future answers. Preserve the group's ability to change one part of its process on the next attempt.

Do not secretly assign blame. Shared logs and outcome language describe the state transition, not which person “failed the team.”

## Support absence, disconnection, and solo requirements explicitly

This section selects the absence portion of **Session authority**. Do not drift among policies during implementation.

Choose one policy rather than drifting among them:

- **group-required:** the encounter cannot begin without every role and says so before commitment;
- **pause-and-reconnect:** shared threat and timers pause or enter a protected state while a role reconnects;
- **role reassignment:** another connected player deliberately accepts the missing role;
- **authored solo mode:** an interface lets one player switch viewpoints or queue instructions with timing redesigned for solo play;
- **AI partner:** an existing project system performs only declared perception or action, exposes its limits, and never silently solves the reasoning.

An AI partner is not a cheap substitute for a person. If the project does not already support one, do not invent broad companion intelligence merely to complete this encounter.

## Keep network authority narrow and testable

This section completes **Session authority** and enforces the acceptance rules fixed by **Commit protocol**.

The authoritative host or server owns session membership, role assignment, shared objects, threat, timers, committed actions, damage, completion, and persistence. Clients own input collection and may own private presentation. Prediction may make local controls responsive but cannot decide the shared result.

Protect against duplicate messages and inputs, stale clue versions, out-of-order commits, role spoofing, reconnecting with old state, and late join during an irreversible phase. Attach a version or phase identifier to required clues and actions. An acknowledgement for phase two cannot authorize phase three. The authority must validate the sender's assigned role before returning private information or accepting a role-specific action; a client-provided role label is never proof.

Define late join and host migration explicitly even when the answer is “unsupported.” A rejected late join needs a stable lobby or retry destination. Unsupported host migration needs a protected pause or abort boundary that cannot promote a client with partial authority. If reconnect is supported, restore shared state to every returning participant but replay private clues only to the role that owns them.

Define latency tolerance and test realistic delay, jitter, loss, duplication, and disconnect. “Multiplayer works” requires at least two independent clients observing the same authoritative outcome.

## Preserve accessibility and consent

Provide remapping, subtitles and speaker labels, visual equivalents for required sound, non-color encodings, readable scale, reduced motion, hold/toggle alternatives, and sufficient response windows. Let players review their role and vocabulary before starting.

If the experience records voice, transcribes speech, shares identifiers, or connects strangers, follow the project's privacy and moderation systems. This Skill does not authorize recording, external transmission, or new social features.

Do not make one accessibility setting reveal all answers. Preserve the reasoning relationship through another perceptible representation.

## Build one complete exchange

Implement one loop before a long sequence:

1. Join and assign roles deterministically.
2. Teach one shared vocabulary item under low pressure.
3. Present one authoritative fact differently to each role.
4. Require both a communication and a role-specific action.
5. Acknowledge before the irreversible commit.
6. Apply one shared success or readable failure.
7. Update both roles with consistent feedback.
8. Recover, advance, or restart without stale messages or timers.

## Verify from every role

This section closes **Cross-role proof** with evidence from every affected client and the authoritative simulation.

Run and record:

1. Join with each supported player count and verify unique, stable role assignment.
2. Play the teaching exchange from every role without prior solution knowledge where possible.
3. Complete the loop through voice and every promised non-voice path.
4. Force each plausible wrong message or action and verify a readable consequence and retry.
5. Duplicate, delay, reorder, or replay required messages and commits; shared state must change once.
6. Add supported latency, jitter, and loss; measure the usable decision window.
7. Disconnect each role during clue, acknowledgement, commit, threat, success, and failure; apply the declared absence policy.
8. Reconnect or late join and confirm role, clue version, world state, timer, and declared rejection or reconstruction policy agree; verify that private clues return only to their owners.
9. Attempt a private-clue request and role-specific commit with a spoofed client role; both must fail closed at the authority.
10. Exercise the declared host-loss policy, including the fallback when migration is unsupported.
11. Restart every phase and clear stale clues, queued inputs, threat callbacks, and private presentation.
12. Test captions, no-audio communication, non-color cues, text scale, reduced motion, input alternatives, and narrow viewports.
13. If solo mode is claimed, test its redesigned timing separately; do not infer it from co-op success.
14. Capture evidence from all clients and the authoritative state.

## Work within the current Harness

This Skill does not bundle networking, matchmaking, voice, transcription, moderation, an AI companion, platform accounts, servers, or deployment. Use capabilities already present and authorized. Do not open ports, create paid infrastructure, record people, or contact external services without explicit scope. A local simulation is useful development evidence but not proof of online behavior.

## Deliver and hand off

Use the project's documentation location or:

```text
gameplay/<encounter-slug>/mechanic.md
gameplay/<encounter-slug>/tunables.yaml
gameplay/<encounter-slug>/verification.md
```

End with join instructions, player count, role selection, communication paths, controls per role, teaching step, success and failure, reconnect policy, network conditions tested, accessibility paths, reused assets, proxies, and untested infrastructure. Do not call a two-client local test production networking.
