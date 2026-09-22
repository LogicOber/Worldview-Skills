# Gameplay Analysis

This category turns authorized gameplay media into design evidence that can be used by another Skill or a project team. It is deliberately separate from game production: it observes first, labels inference, and hands off new design decisions rather than copying the analyzed game's content.

## Install and call

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-gameplay-video-analysis
```

```bash
npx skills add LogicOber/Worldview-Skills \
  --skill worldview-gameplay-experience-study
```

```text
/worldview-gameplay-video-analysis

Study these three horror-game videos and the two screenshots I uploaded. Record
what makes the player discover the escape route, how the building controls the
chase, which failures teach the rule, and which mechanics connect to sound,
items, and threat state. Cluster the evidence, then hand off an original route
contract for my project.
```

## Choose the result

| Slash entry | Use it when | Result |
| --- | --- | --- |
| [`worldview-gameplay-video-analysis`](worldview-gameplay-video-analysis/README.md) | You have local video, a permitted URL, a channel/upload list, screenshots, or a style reference and need design insight rather than a plot summary. | Pilot-first acquisition, dual-clock experience timeline JSON, emotional/design curve, timecoded event table, player/camera/space analysis, route or 2.5D annotations, mechanism clusters, anti-patterns, confidence limits, and an optional chase-route handoff. |
| [`worldview-gameplay-experience-study`](worldview-gameplay-experience-study/README.md) | You already have evidence and need to understand why a moment felt effective, weak, memorable, funny, beautiful, unfair, or empty. | First-person player reconstruction, third-person critic commentary, expectation-versus-actual turns, quality judgments, de-identified case routing, original visual-reference manifest, and a transferable relationship card. |

The Skill validates one supplied media item before attempting a batch. It uses whatever local decoder or authorized media integration is already available in the project. Jev is optional and only evaluates extracted text or event rows; it is not treated as a raw-video viewer. Screenshots improve spatial confidence but do not block a first pass.

The package records what was observed, what was inferred, and what is newly proposed. It does not reproduce a source game's map, UI, dialogue, walkthrough, or assets.
