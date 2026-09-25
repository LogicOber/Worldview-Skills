# Contributing

## Submit a showcase

Share a finished work or an honest work-in-progress made with at least one Worldview Skill. Games, films, fiction, and visual projects are welcome. Every submission needs a short video demonstration; a story or asset project can use a screen recording or presentation of the work.

1. Fork this repository and create a branch from the latest `main`. If you already have write access, use a new branch in this repository. Never push a submission directly to `main`.
2. Create `showcase/<creator>-<project>/`, using a unique lowercase, hyphenated name. One project per PR.
3. Copy [the template](showcase/TEMPLATE.md) to `showcase.md` inside that folder. Replace every placeholder. The first visible content must be the working demo video or a clickable video preview, before the title; no frontmatter or introductory paragraph above it.
4. Add optional small supporting files inside that same folder. Prefer a total below 10 MB. Host videos, full builds, source archives, and large assets elsewhere; keep credentials, private research, dependency folders, and unrelated files out.
5. Add one row to [the showcase index](showcase/README.md#all-projects), in project-title order, linking to your `showcase.md`. Remove the empty-state sentence if this is the first entry. Leave homepage selections to maintainers.
6. Open a PR against `LogicOber/Worldview-Skills:main`, titled `showcase: Project title by @creator`. Fill in [the showcase PR template](.github/PULL_REQUEST_TEMPLATE/showcase.md). Check the rendered page, video, links, attribution, and permission before submitting.

Write the project page in English so the community can browse it consistently. The work itself can use any language. Provide subtitles or a short explanation when needed. Mention which Skills you actually used and give a concrete example of their contribution; do not invent results, users, awards, or performance claims.

You do not need to open-source your entire project. State the terms for included media and credit collaborators and third-party assets. Only submit files you have permission to share and display. Linked projects retain their own licenses; included showcase media uses the terms stated on its project page. Repository documentation follows the repository license.

## Ask your Agent to submit it

Copy this prompt and provide your project folder and demo video:

```text
Submit my project to the Worldview Skills community showcase.
Read https://github.com/LogicOber/Worldview-Skills/blob/main/CONTRIBUTING.md
and follow “Submit a showcase.” Use my finished work and the demo I provide.
Create one showcase folder with a video-first showcase.md, credit me and my
collaborators, describe the Skills we actually used, and update the index.
Include only files I authorize for publication. Ask for missing video links,
credits, or media permissions; never invent them or expose secrets.
Check the rendered page and links, then open a PR against main using the
showcase PR template. Use my fork if I lack repository write access.
Do not edit unrelated files, modify homepage selections, or merge the PR.
Return the PR URL. If authentication or repository access is unavailable,
tell me what is needed and leave the prepared submission locally.
```

An Agent can prepare the folder, validate links, create a branch, and use GitHub CLI to open the PR. If the video still needs hosting, obtain permission before uploading it; use GitHub's supported attachment flow or the creator's chosen host rather than guessing an upload API.

## Review and updates

Maintainers check that the demo is viewable, the submission describes real work, the required details and permissions are present, and the PR is limited to one project and its index row. Revisions should use the same PR. Later project updates use the same folder in a new PR.

Selected demos may appear on both homepages with credit. Selections can rotate; all accepted projects remain browsable in `showcase/`. Maintainers handle merging and featured placement.

## Skill improvements

For changes to the Skills themselves, use a separate PR and read [the writing conventions](docs/writing-a-skill.md). Explain the problem, the changed behavior, and how it was checked. Keep project-specific creative work in a showcase submission or its own repository.
