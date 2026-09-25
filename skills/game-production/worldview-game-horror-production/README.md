# Worldview Game — Horror Production

Turn a short horror-game idea into a complete, original, single-ending production plan and playable build. The Agent fills in the missing chapters, map logic, NPC roles, items, evidence, pressure, recovery, visuals, audio, state ownership, tests, and ending instead of asking the user to design every detail by hand.

If you are still developing the idea, say “story first.” The Agent uses [Story and Play Plan](../worldview-game-story-and-play-plan/README.md), or its own equivalent writing pass, to finish the story, exploration, surprises, and timing estimates for your review before implementation. A request to finish the writing does not start 3D production.

## Call this Skill
```text
/worldview-game-horror-production

Build an English-language first-person horror game about a night courier who
reaches an isolated reservoir settlement after the bridge closes. I want one
canonical ending, a memorable connected place, rich investigation before the
main pursuit, meaningful companions and items, and a playable browser build.
Fill in the story, chapters, mechanics, assets, failure, recovery, and tests.
```

A premise, mood, protagonist, place, one image, or a few desired moments is enough. The Agent states reversible assumptions and asks only when a missing answer changes the product, safety boundary, platform, ending policy, or external-service authority.

For a production of this scope, GPT-6 Astra with Max reasoning or Ultra orchestration is recommended. Other compatible Agents can use the method, but should reduce scope rather than claim unverified breadth.

## What the Agent delivers

- a concise creative promise and one canonical ending designed backward;
- original research and reference boundaries, including visual targets when provided;
- chapter clocks showing player task, expectation, emotion hypothesis, decision, state change, cost, recovery, and aftermath;
- maps with landmarks, return states, routes, protections gained/lost, and grey-box proof;
- NPC, role, item, evidence, viewpoint, threat-knowledge, and save-state ledgers;
- a small set of connected mechanics, each routed to one authoritative owner;
- an original asset plan with make/reuse/generate/acquire decisions and validation;
- implementation order, performance and accessibility budgets, failure/restart/save tests, and ending convergence;
- a runnable build or an honest implementation package when the runtime cannot be completed.

## Reference input

One to three screenshots or a short video can help define visual density, camera, material, light, and motion. If none is supplied, the Agent proposes an original visual target and labels it as an assumption. References guide qualities; they do not authorize copying protected characters, maps, assets, dialogue, logos, or distinctive scene composition.

## Use a narrower entry when appropriate

Use `/worldview-game-high-fidelity-vertical-slice` to prove one polished short chapter. Use `/worldview-game-single-ending-campaign` alone when research, fictional transformation, and a large story campaign are the main challenge. When Horror Production routes to Single Ending, Horror Production remains the parent and owns horror-mechanic selection, integration, verification, and delivery; Single Ending returns the research, fiction, one-ending spine, final ontology, reconvergence, and aftermath.

Read [SKILL.md](SKILL.md), fill [the production contract](templates/horror-production-contract.md), review [why horror productions fail](references/why-horror-games-fail.md), and see [the original worked example](examples/the-last-service-floor.md).
