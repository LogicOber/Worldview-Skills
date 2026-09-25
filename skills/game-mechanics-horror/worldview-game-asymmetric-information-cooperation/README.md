# Worldview Game — Asymmetric Information Cooperation

Build a horror encounter in which active participants survive by combining different observations, tools, locations, and responsibilities. Communication carries provenance and acknowledgement; every participant has a current task, last verified state, and deterministic fallback when a handoff or path fails.

> **The result separates what a participant holds from what they know, gives every role necessary agency, and makes missed messages, stale locations, disconnections, and recovery diagnosable.**

## Call this Skill

```text
/worldview-game-asymmetric-information-cooperation

Build a two-player encounter in my bell tower. The player below can rotate the
counterweights but cannot see which ropes are marked by the night creature. The
player above can see the marks through a viewing lens but cannot touch the gears.
They must communicate three safe moves before the creature reaches either room.
```

## When to use it

Use this Skill for two or more simultaneously active players or declared AI partners whose roles differ by perception, location, tool, language, time window, task, or authority. It supports online, local, mixed-device, or explicitly designed AI-partner play when the project already provides that environment.

Do not use it for ordinary co-op where everyone has the same information, a hidden-traitor game, a voice-chat-only puzzle with no accessible alternative, or a single-player companion that solves the puzzle automatically. When one human sequentially controls different protagonists and earlier actions become later evidence, use the character-handoff Skill instead.

## What you provide

- the supported player count, devices, session type, and join flow;
- each role's location, perception, tool, and allowed action;
- the shared objective, pressure source, and intended failure;
- available voice, text, ping, symbol, caption, and input channels;
- reconnect, late-join, solo, privacy, and moderation requirements that already exist.

## What you receive

```text
gameplay/<encounter-slug>/
├── mechanic.md       roles, information ownership, vocabulary and state loop
├── tunables.yaml     timing, channel, threat, retry and assistance values
└── verification.md   role, network, accessibility, failure and reset evidence
```

When the runtime is available, the Skill implements one complete cooperative loop, records entry and joining instructions, and tests it from every role.

## How the Skill proceeds

The Agent fixes eight decisions in order: the shared outcome, role agency, information boundary, shared vocabulary, commit protocol, pressure and recovery, session authority, and cross-role proof. Puzzle content begins after the first five agree. A later role, clue, channel, or acceptance change reopens the affected decision and invalidates the old timing and network evidence.

## The cooperation loop

```mermaid
flowchart LR
    A[World creates shared problem] --> B[Role A receives clue]
    A --> C[Role B receives affordance]
    B --> D[Players encode and communicate]
    C --> D
    D --> E[Role with agency commits action]
    E --> F[Shared consequence updates both views]
    F --> A
```

## Source and method

This is an original Worldview Skills method. Its roles, contracts, example, and verification structure are not copied from an external Skill or named game.

[Read the source record](SOURCE.md) · [Read why the mechanic works](references/why-this-mechanic-works.md) · [Fill the mechanic contract](templates/mechanic-contract.md) · [See the original example](examples/the-bellhouse-interval.md)
