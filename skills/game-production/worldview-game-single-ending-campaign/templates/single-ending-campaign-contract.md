# Single-ending campaign contract

Use this record to turn a short premise into one complete, research-aware campaign with one canonical ending. Replace every bracketed instruction that applies. Use `unknown`, `not authorized`, or `unverified` when evidence is missing; never make a proposal look observed by deleting its label.

Store this contract beside the implementation. Link the source ledger, build revision, test evidence, and deployed release from here so another Agent can reproduce every material claim.

## Document control

| Field | Value |
| --- | --- |
| Campaign title / stable slug | `[title]` / `[slug]` |
| Contract status | `proposed / partially locked / locked / reopened / delivered` |
| Contract owner | `[person or Agent responsible for shared decisions]` |
| Authorized project path | `[absolute or repository-relative path]` |
| Baseline / evidence revision | `[commit, build ID, or “no version history observed”]` |
| Runtime and version | `[engine/framework/browser and version]` |
| Platform, controls, and language | `[targets]` |
| Perspective | `[first-person / third-person / fixed / other]` |
| First-run duration | `[minutes or hours]` |
| Intended content volume | `[zones, acts, NPCs, items, encounters]` |
| Created / last reviewed | `[UTC dates]` |
| Public-release jurisdiction and audience | `[known target markets and age rating target, or unknown]` |
| Companion artifacts | `[source ledger, route graph, asset ledger, save schema, verification, deployment record]` |

## Evidence vocabulary

Use exactly one of these labels for every researched or invented claim:

- **Fact:** directly supported by a named, dated source or observed in the project.
- **Attributed claim:** a named source says it, but the campaign does not assert it as proven.
- **Interpretation:** a disclosed reading of facts or claims, not a fact itself.
- **Community joke:** an observed meme, joke, nickname, or recurring phrasing with origin and date recorded; never evidence for a factual accusation.
- **Invention:** content authored for the campaign and not asserted about the real world.

Add `disputed`, `outdated`, `unverified`, or `fictionalized` where needed. A source count is not corroboration when every page repeats the same originating claim.

## Capability and permission ledger

Record what is present before deciding scope. Presence does not imply permission.

| Capability | Available and observed? | Access route | Authorized use | Cost / quota | Proof | Fallback |
| --- | --- | --- | --- | --- | --- | --- |
| Repository read/write and version history | `[yes/no/partial]` | `[path/tool]` | `[scope]` | `[limit]` | `[status output]` | `[patch-only plan]` |
| Runnable 3D project |  |  |  |  | `[command and result]` | `[smallest bootable project allowed]` |
| Browser or engine automation |  |  |  |  | `[driver/test]` | `[repeatable manual route]` |
| Internet research |  |  |  |  | `[browsing method]` | `[mark research incomplete]` |
| Screenshot and video capture |  |  |  |  | `[capture test]` | `[text-only evidence plan]` |
| Image generation |  |  |  |  | `[configured service]` | `[original procedural or authored art]` |
| Blender, DCC, or asset MCP |  |  |  |  | `[version/interface]` | `[runtime geometry or asset briefs]` |
| Audio production |  |  |  |  | `[tool/library]` | `[original temporary tones and captions]` |
| Performance profiler |  |  |  |  | `[counters/trace]` | `[narrow observed claims]` |
| Deployment provider |  |  |  |  | `[account/project access]` | `[local build plus exact publish steps]` |

### External operations

Do not upload project material, spend money, accept licenses, publish, or expose a private build unless authorized.

| Service / API / MCP | Data leaving the project | Authorized operation | Maximum cost / calls | Rights record | Secret location | Operator |
| --- | --- | --- | --- | --- | --- | --- |
| `[service]` | `[data or none]` | `[read/generate/upload/deploy]` | `[boundary]` | `[path]` | `[environment or secret store; never this file]` | `[owner]` |

## Lock register

A lock is closed only by its named artifact and close condition. Editing a locked field requires recording the reopen trigger and invalidating the listed dependent work.

| Order | Lock | Required artifact | Status | Close condition | Still mutable | Reopen trigger | Work invalidated when reopened |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Research truth | `research-ledger.md` | `[status]` | `[condition]` | `[fields]` | `[trigger]` | `[dependent work]` |
| 2 | Original transformation and publication risk | `fiction-distance-and-risk.md` |  |  |  |  |  |
| 3 | Canonical ending | `ending-contract.md` |  |  |  |  |  |
| 4 | Acts and routes | `campaign-route.md` |  |  |  |  |  |
| 5 | Gameplay portfolio | `gameplay-contract.md` |  |  |  |  |  |
| 6 | World map | `world-map.md` |  |  |  |  |  |
| 7 | NPC and item ecology | `content-ledger.md` |  |  |  |  |  |
| 8 | State, failure, and save | `state-and-save-contract.md` |  |  |  |  |  |
| 9 | Visual, audio, and asset representation | `presentation-and-assets.md` |  |  |  |  |  |
| 10 | Implementation | Executable campaign and `implementation-ledger.md` |  |  |  |  |  |
| 11 | Verification and release | `verification.md` and `release-record.md` |  |  |  |  |  |

---

## Lock 1 — Research truth

### Research question map

| Topic | Decision this research will inform | Time boundary | Preferred primary source | Secondary source allowed | Stop condition |
| --- | --- | --- | --- | --- | --- |
| `[person, institution, event, technology, visual culture, public debate, or community language]` | `[story/mechanic/world decision]` | `[as of UTC date]` | `[official record, direct statement, first-party data]` | `[reputable reporting or scholarship]` | `[enough reliable evidence to decide without collecting trivia]` |

### Source ledger

| ID | Classification | Precise proposition or creative use | Source / author / URL | Published / accessed | Direct, independent, and current? | Confidence / dispute | Allowed transformation | Campaign dependency |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `R-001` | `fact / attributed claim / interpretation / community joke / invention` | `[one atomic claim; never a whole article]` | `[citation or “original campaign invention”]` | `[dates]` | `[assessment]` | `[high/medium/low plus dispute]` | `[theme, system, atmosphere, quotation, none]` | `[IDs of characters, beats, mechanics, props]` |

### Claim separation audit

| Proposed campaign detail | Supporting ledger IDs | What the source actually establishes | What remains interpretation | Fiction added | On-screen framing |
| --- | --- | --- | --- | --- | --- |
| `[detail]` | `[R-IDs]` | `[narrow support]` | `[unstated inference]` | `[invented transformation]` | `[fact, attributed dialogue, satire, rumor, or removed]` |

### Research exclusions

- Unverified accusations that would be repeated as fact: `[list or none]`
- Private, leaked, doxxed, or unlawfully obtained material excluded: `[list or none]`
- Quotes not verified in a primary record: `[list or none]`
- Community jokes excluded because their target or context would become harassment: `[list or none]`
- Material that cannot be checked before the research date: `[list or none]`

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `research-ledger.md`; `[which current context is reliable enough to inform fiction]` |
| Close condition | `[every consequential real-world proposition has a dated row, classification, and narrow use; disputed or missing claims are attributed, fictionalized, or removed]` |
| Still mutable | `[incidental sources and wording that do not change the claim set]` |
| Reopen trigger | `[new evidence, changed current event, challenged source, new real-world claim, or changed research date]` |
| Invalidated work | `[affected character, institution, dialogue, marketing, story beat, risk review, and release evidence]` |

---

## Lock 2 — Original transformation and publication risk

This is a production-risk record, not legal advice. A disclaimer, a one-letter name change, or a lightly altered face is not clearance. When a living person or current institution inspires the brief, prefer a genuinely new composite. Escalate jurisdiction-specific questions to qualified review before public or commercial release.

### Transformation matrix

| Fiction element | Inspiration ledger IDs | Theme retained | Materially new identity, role, setting, history, motive, conduct, and outcome | Appearance / voice distance | One-to-one recognition risk | Action |
| --- | --- | --- | --- | --- | --- | --- |
| `[character, group, event, visual, joke]` | `[R-IDs]` | `[abstract tension only]` | `[specific changes across several dimensions]` | `[distinct traits; no clone or imitation]` | `[low/medium/high plus reason]` | `keep / redesign / remove / qualified review` |

### Publication-risk screen

| Risk | Present? | Evidence and affected content | Required mitigation | Owner | Clearance state |
| --- | --- | --- | --- | --- | --- |
| False factual implication about an identifiable person or group | `[yes/no/unknown]` |  | `[fictionalize, attribute accurately, remove, review]` |  |  |
| Close visual, vocal, biometric, or behavioral imitation |  |  |  |  |  |
| Real name, logo, trade dress, product UI, slogan, or protected asset |  |  |  |  |  |
| Private fact, targeted harassment, or vulnerable private person |  |  |  |  |  |
| Misleading edited quote, fabricated quote, or invented criminal/unethical act |  |  |  |  |  |
| License, data, model-output, music, font, or asset restriction |  |  |  |  |  |
| Region, platform, age-rating, or advertising constraint |  |  |  |  |  |

### Reasonable-player test

| Question | Finding | Evidence | Action before release |
| --- | --- | --- | --- |
| Would an ordinary player identify one real person or organization despite changed names or styling? | `[yes/no/uncertain]` | `[why]` | `[keep/redesign/remove/review]` |
| Would the player take an invented scene, motive, quotation, or act as a claim about that subject? |  |  |  |
| Is every factual implication current, narrowly supported, attributed, and presented with its disputed status? |  |  |  |
| Does a title, thumbnail, trailer, store page, or advertisement restore an identification removed from the game? |  |  |  |
| Does release rely on recognizability, confusing endorsement, close biometric imitation, or unresolved jurisdiction? |  |  |  |

### Fiction notice

Draft: `[plain-language notice that identifies the work as fiction or satire without claiming legal immunity]`

Placement: `[store page, start screen, credits, website, marketing as appropriate]`

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `fiction-distance-and-risk.md`; `[whether the publishable fiction is original, materially distinct, and honestly framed]` |
| Close condition | `[every real inspiration maps through the matrix; no unresolved high-risk row is shipped; origin and rights are recorded]` |
| Still mutable | `[non-identifying prose, costume accents, prop dressing, and other reviewed low-risk details]` |
| Reopen trigger | `[closer likeness, new real name/brand/quote, new allegation, marketing comparison, changed jurisdiction, or new external asset]` |
| Invalidated work | `[affected models, voices, dialogue, story, store copy, captures, asset ledger, credits, and release approval]` |

---

## Lock 3 — Canonical ending

### Ending invariant

> When the campaign ends, `[single irreversible action]` causes `[single world-state result]`; the player understands `[meaning earned through play]`. No route, relationship score, inventory state, or hidden counter creates a different ending.

| Field | Locked value |
| --- | --- |
| Final location and playable setup | `[value]` |
| Final decision or mastery check | `[value]` |
| Irreversible commit | `[exact state transition]` |
| One ending image / action | `[value]` |
| World-state consequence | `[value]` |
| Emotional and thematic payoff | `[value]` |
| Required knowledge earned earlier | `[IDs]` |
| Required mechanics mastered earlier | `[IDs]` |
| Final playable input and point of control removal | `[value]` |
| Credits / post-ending boundary | `[value]` |

### Final ontology and correction chain

- `final_ontology`: `[one authoritative answer about the original event, governing rule, and consequence]`

| `unresolved_question` | `original_event` | `earlier_interpretation` | `corrective_evidence` | `revised_interpretation` | `changed_action` | Owner / proof |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |

`convergence_dependencies`:

| Dependency | Producing system / Skill | Required state | Missing-state recovery | Save / reload proof |
| --- | --- | --- | --- | --- |
| | | | | |

### Finale teaching and reconvergence

| Finale verb or rule | `prior_tutorial_beat` | Pressured earlier use | Failure / recovery learned | Final use | Verification |
| --- | --- | --- | --- | --- | --- |
| | | | | | |

- `reconvergence_point`:

| Earlier choice | `local_variation` before rejoin | State retained after rejoin | Final invariant preserved | Aftermath echo |
| --- | --- | --- | --- | --- |
| | | | | |

### Mandatory aftermath

- `aftermath_state`:
- Place / institution that remains changed:
- Relationship that remains changed:
- Threat or rule that remains changed:
- Resource, evidence, injury, or permission variation retained:
- Post-ending save/load behavior:
- New-game reset behavior:
- Evidence that the ending cannot recommit or revert:

### Variation without alternate endings

| Earlier choice or state | What changes during the journey | What may echo in the finale | Ending invariant that cannot change |
| --- | --- | --- | --- |
| `[choice]` | `[route, resource, ally behavior, challenge, dialogue context]` | `[presentation or acknowledgement only]` | `[same final action, outcome, and meaning]` |

Failure, pause, quit, retry, and inaccessible content are not endings. Do not label a fail screen or route-abandon state as an alternate ending.

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `ending-contract.md`; `[what the only completed campaign outcome is and why the whole journey earns it]` |
| Close condition | `[ending can be stated as one state transition; every route converges before it; no hidden variable changes its outcome]` |
| Still mutable | `[line edits, shot timing, and cosmetic echoes that preserve the invariant]` |
| Reopen trigger | `[new ending, optional final outcome, changed final action, changed thematic conclusion, or state-dependent outcome]` |
| Invalidated work | `[act causality, routes, NPC consequences, items, finale implementation, saves, tests, captures, and release copy]` |

---

## Lock 4 — Acts and routes

### Act ladder

| Act | Player belief at entry | Goal | Playable discoveries | Escalation | Irreversible change | Exit state that feeds the ending |
| --- | --- | --- | --- | --- | --- | --- |
| `A1` | `[belief]` | `[goal]` | `[discovered through action]` | `[pressure]` | `[world/state change]` | `[state]` |
| `A2` |  |  |  |  |  |  |
| `A3` |  |  |  |  |  |  |
| `Finale` |  |  |  |  | `[canonical commit]` | `[ending]` |

### Route graph

| Node ID | Zone | Entry requirements | Player objective and decision | Mechanics used | State change | Branch / rejoin | Failure and retry |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[N-01]` | `[zone]` | `[state]` | `[playable objective, not plot summary]` | `[system IDs]` | `[before -> after]` | `[next IDs; rejoin truth]` | `[checkpoint and restored state]` |

### Objective value test

Every substantial objective must change at least two of these: map access, actionable knowledge, relationship behavior, resource position, or threat behavior.

| Objective ID | Map | Knowledge | Relationship | Resource | Threat | If fewer than two, combine or remove |
| --- | --- | --- | --- | --- | --- | --- |
| `[ID]` | `[change/none]` |  |  |  |  | `[decision]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `campaign-route.md`; `[how a player reaches the one ending through escalating, causally connected acts]` |
| Close condition | `[every act is playable, each branch has a consequence, all branches rejoin explicitly, and every objective passes the value test]` |
| Still mutable | `[incidental pickups, dialogue wording, and route dressing inside locked timings and states]` |
| Reopen trigger | `[added/removed act, zone, branch, required objective, reveal, or changed convergence point]` |
| Invalidated work | `[dependent map, encounter, NPC, item, state, save, pacing, implementation, and full-route evidence]` |

---

## Lock 5 — Gameplay portfolio

### System contracts

| ID | Player verb and target | Information available before commitment | Cost / risk | Authoritative state change | Feedback | Mastery growth | Story function |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[G-01]` | `[verb + object]` | `[readable cues]` | `[cost]` | `[before -> after]` | `[visual/audio/haptic/UI]` | `[new combinations, not only larger numbers]` | `[what the player understands by doing]` |

### Interlock matrix

| System | Creates opportunity for | Creates pressure for | Consumes / produces | Shared state | Degenerate strategy prevented by |
| --- | --- | --- | --- | --- | --- |
| `[G-ID]` | `[G-IDs]` | `[G-IDs]` | `[resource]` | `[owner]` | `[counter-rule]` |

### Encounter escalation

| Encounter ID | Known systems | New wrinkle | Meaningful choice | Failure readability | Later reuse with changed context |
| --- | --- | --- | --- | --- | --- |
| `[E-01]` | `[G-IDs]` | `[one new demand]` | `[tradeoff]` | `[cue and cause]` | `[ID]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `gameplay-contract.md`; `[which small set of systems creates varied, story-bearing play instead of disconnected minigames]` |
| Close condition | `[each system has transaction rules, feedback, escalation, at least one interlock, and repeated campaign use]` |
| Still mutable | `[tuning values inside tested bands and presentation that preserves state truth]` |
| Reopen trigger | `[new core verb, removed system, changed resource economy, changed failure rule, or encounter requiring an unplanned mechanic]` |
| Invalidated work | `[encounters, tutorials, UI, NPC/item dependencies, balance, saves, tests, and route timing]` |

---

## Lock 6 — World map

### Zone topology

| Zone ID / name | Purpose in story and play | Entry / exit | Landmark and navigation grammar | Systems exercised | NPCs / items | Persistent state variants | Streaming / performance boundary |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[Z-01]` / `[name]` | `[unique job]` | `[connected IDs and gates]` | `[recognizable cues]` | `[G-IDs]` | `[IDs]` | `[before/after variants]` | `[load/cull plan]` |

### Traversal and density budget

| Measure | Target | Evidence method |
| --- | --- | --- |
| Zones | `[4–6 unless the project supports a different complete scope]` | `[route graph]` |
| Longest travel without decision, discovery, danger, or state change | `[seconds]` | `[timed route]` |
| Required shortcuts | `[count and unlock cause]` | `[journey tests]` |
| Unique landmarks visible from each junction | `[count]` | `[captures]` |
| Interactable density | `[useful interactions per zone; no decorative prompts]` | `[audit]` |
| Backtracking changes | `[what materially changes on return]` | `[state comparison]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `world-map.md`; `[how the world communicates route, pacing, scale, and consequence]` |
| Close condition | `[all route nodes fit a traversable topology; each zone has one unique job; gates, landmarks, shortcuts, and state variants are named]` |
| Still mutable | `[non-colliding dressing and local path curvature inside tested travel bands]` |
| Reopen trigger | `[topology, zone count, gate, traversal ability, landmark, streaming boundary, or return-state change]` |
| Invalidated work | `[navigation, encounter staging, NPC schedules, item placement, lighting, streaming, performance, saves, and captures]` |

---

## Lock 7 — NPC and item ecology

### NPC roster

| NPC ID / name | Distinct agenda | Routine / locations | Gameplay function | What they know and conceal | State transitions | Dependencies | No-lore-vending test |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[C-01]` / `[name]` | `[desire independent of player]` | `[schedule]` | `[changes decisions]` | `[bounded knowledge]` | `[state -> state and cause]` | `[zone, item, route, system IDs]` | `[knowledge is earned through action or cost]` |

### Relationship behavior

| Relationship state | Observable behavior change | Trigger | Gameplay consequence | Save field | Finale echo without alternate ending |
| --- | --- | --- | --- | --- | --- |
| `[state]` | `[movement/dialogue/access/help/refusal]` | `[player/world action]` | `[consequence]` | `[field]` | `[acknowledgement only]` |

### Item ledger

| Item ID / name | Category | Acquisition | Mechanical use | Narrative evidence | Interlocks | Persistence / consumption | Cannot be removed because |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[I-01]` / `[name]` | `tool / resource / key / evidence / world object` | `[route/state]` | `[specific action]` | `[what handling it communicates]` | `[G/C/Z IDs]` | `[rule]` | `[dependency]` |

Remove an item if it is only collectible count, lore prose, or scenery disguised as a prompt and does not serve the requested experience.

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `content-ledger.md`; `[how people and objects create decisions, causality, and world texture]` |
| Close condition | `[every named NPC has an agenda, routine, function, and transitions; every item has a dependency-backed purpose; quantities fit production capacity]` |
| Still mutable | `[incidental lines, animation variants, and nonfunctional dressing]` |
| Reopen trigger | `[new/removed NPC or required item, changed schedule, relationship gate, dependency, ownership, or item economy]` |
| Invalidated work | `[affected routes, dialogue, encounters, inventory/UI, save migration, art/audio, tests, and finale echoes]` |

---

## Lock 8 — State, failure, and save

### Authority table

| State / event | Sole authoritative owner | Readers | Persistence | Commit point | Reset / migration owner |
| --- | --- | --- | --- | --- | --- |
| `[campaign.act]` | `[system]` | `[systems]` | `[session/save]` | `[transition]` | `[owner]` |
| `[route branch]` |  |  |  |  |  |
| `[NPC state]` |  |  |  |  |  |
| `[inventory/resource]` |  |  |  |  |  |
| `[threat/encounter]` |  |  |  |  |  |
| `[ending committed]` |  |  |  |  |  |

### Save schema

| Field | Type / valid values | Written when | Read by | Default | Migration rule | Corruption fallback |
| --- | --- | --- | --- | --- | --- | --- |
| `[field]` | `[schema]` | `[commit]` | `[system]` | `[value]` | `[rule]` | `[safe behavior]` |

### Checkpoint and retry matrix

| Failure / interruption | Durable state retained | Ephemeral state cleared | Retry location | Resources restored or not | Softlock prevention | Test ID |
| --- | --- | --- | --- | --- | --- | --- |
| `[capture, depletion, fall, quit, reload]` | `[state]` | `[timers, actors, audio, effects, inputs]` | `[checkpoint]` | `[rule visible before risk]` | `[rule]` | `[V-ID]` |

### Branch rejoin truth

| Rejoin node | Incoming routes | Required normalized state | Route-specific state retained | Impossible combinations rejected | Direct test |
| --- | --- | --- | --- | --- | --- |
| `[node]` | `[IDs]` | `[common fields]` | `[meaningful history]` | `[guards]` | `[procedure]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `state-and-save-contract.md`; `[who owns causality and how the complete route survives failure, quit, load, and convergence]` |
| Close condition | `[every cross-zone dependency has one owner; save schema, checkpoints, migrations, cleanup, and branch normalization pass planned tests]` |
| Still mutable | `[non-persistent presentation state and compatible fields with explicit defaults]` |
| Reopen trigger | `[changed authority, persistent field, checkpoint, retry cost, route rejoin, save version, or ending commit]` |
| Invalidated work | `[affected systems, save fixtures, routes, NPC/item states, failure tuning, full-run tests, and prior saves]` |

---

## Lock 9 — Visual, audio, and asset representation

### Campaign grammar

| Axis | Locked rule | Gameplay purpose | Forbidden shortcut |
| --- | --- | --- | --- |
| Shape and scale | `[rule]` | `[navigation/readability]` | `[generic primitive collage or inconsistent scale]` |
| Surface and wear | `[rule]` | `[history/use]` | `[random noise without causal wear]` |
| Light and color | `[rule]` | `[route/state hierarchy]` | `[decorative color that conflicts with mechanics]` |
| Motion and effects | `[rule]` | `[state/change]` | `[unowned looping effects or excess particles]` |
| Camera and lens | `[rule]` | `[playability/identity]` | `[reference-only impossible view]` |
| Interface and typography | `[rule]` | `[state/accessibility]` | `[generated illegible text]` |
| Character silhouettes | `[rule]` | `[identity/function]` | `[close imitation of a real person]` |
| Sound and silence | `[rule]` | `[information/tension]` | `[uncleared library or sound-only critical cue]` |

### Asset ledger

| Asset ID / family | Purpose and representation | Origin / creator | Rights / license | Editable source | Runtime form and budget | Required states / angles | Fallback | Acceptance evidence |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `[A-001]` | `[hero/modular/procedural/UI/audio]` | `[original, supplied, generated, licensed]` | `[record]` | `[path]` | `[mesh/material/texture/audio/animation limits]` | `[coverage]` | `[route]` | `[in-runtime checks]` |

### Target-state coverage

| State ID | Reachable setup | Camera / aspect | Composition and must-read elements | Active systems | Performance risk | Capture path |
| --- | --- | --- | --- | --- | --- | --- |
| `[arrival/action/pressure/reveal/finale/aftermath]` | `[steps]` | `[values]` | `[foreground/midground/background/UI]` | `[IDs]` | `[risk]` | `[path]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `presentation-and-assets.md`; `[how the campaign looks, sounds, communicates state, and owns every shipped asset]` |
| Close condition | `[grammar covers all campaign states; each required feature maps to a rights-cleared asset, runtime budget, fallback, and in-game acceptance test]` |
| Still mutable | `[variants inside the same function, rights, silhouette, and measured budget]` |
| Reopen trigger | `[identity/likeness change, new external asset, camera shift, asset-source change, visual grammar change, or budget breach]` |
| Invalidated work | `[source/export/import, rights audit, affected scenes, lighting, audio mix, captures, performance, and release package]` |

---

## Lock 10 — Implementation

### Delivery sequence

| Pass | Required result | Entry dependency | Exit evidence | Rework avoided by waiting for |
| --- | --- | --- | --- | --- |
| Boot and controls | `[real project runs; player moves, looks, pauses, and restarts]` | `[capability ledger]` | `[command/capture]` | `[runtime recovery]` |
| Full proxy route | `[all acts, branches, rejoin, failure, and ending are traversable in proxies]` | `[locks 3–8]` | `[complete journey traces]` | `[route/state locks]` |
| System interlocks | `[mechanics share authoritative state and escalate]` | `[lock 5]` | `[encounter tests]` | `[gameplay lock]` |
| World population | `[zones, NPCs, items, schedules, and return states operate]` | `[locks 6–8]` | `[state audit]` | `[content/state locks]` |
| Presentation replacement | `[proxies become final-compatible assets without changing route truth]` | `[lock 9]` | `[coverage captures]` | `[camera and asset contracts]` |
| Integration and performance | `[systems, art, UI, audio, saves, accessibility, and loading hold together]` | `[all earlier passes]` | `[profiles and regression runs]` | `[integrated build]` |

### Implementation ledger

| Feature / ID | Source files | Owner | Dependency | Status | Test | Evidence revision | Known limit |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `[feature]` | `[paths]` | `[owner]` | `[IDs]` | `planned / proxy / implemented / verified` | `[V-ID]` | `[build]` | `[limit]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | Executable campaign plus `implementation-ledger.md`; `[whether the locked campaign exists end to end in the authorized project]` |
| Close condition | `[fresh build completes every route class, the canonical ending, a failure/retry, save/load, and all required systems without debug intervention]` |
| Still mutable | `[defect fixes and tuning that preserve every upstream contract]` |
| Reopen trigger | `[implementation forces an upstream scope, route, system, state, content, camera, or asset-contract change]` |
| Invalidated work | `[earliest affected lock and every downstream test, capture, performance result, and release artifact]` |

---

## Lock 11 — Verification and release

### Verification matrix

| Test ID | Claim | Fresh-build procedure | Expected result | Evidence artifact | Build / environment | Result |
| --- | --- | --- | --- | --- | --- | --- |
| `V-001` | Clean boot and control | `[exact command and actions]` | `[observable result]` | `[log/capture]` | `[ID]` | `pass / fail / blocked / unverified` |
| `V-002` | Full canonical route | `[start to credits with no debug setup]` | `[one ending]` | `[journey trace/video]` |  |  |
| `V-003` | Branch A and rejoin | `[procedure]` | `[route consequence and normalized state]` |  |  |  |
| `V-004` | Branch B and rejoin |  |  |  |  |  |
| `V-005` | Failure and two retries |  | `[no stale timers, actors, audio, effects, or duplicated events]` |  |  |  |
| `V-006` | Save, quit, reload, and migration |  | `[same lawful state; safe fallback for invalid data]` |  |  |  |
| `V-007` | NPC and item dependencies |  | `[all transitions and gates observable]` |  |  |  |
| `V-008` | Research and publication audit | `[trace shipped claims/assets back to ledgers]` | `[no unresolved high-risk or unclassified material]` |  |  |  |
| `V-009` | Visual and audio state coverage | `[capture named states through the real route]` | `[grammar and state truth hold]` |  |  |  |
| `V-010` | Accessibility and input | `[keyboard/mouse, controller, captions, reduced motion, remap if supported]` | `[critical cues remain perceivable]` |  |  |  |
| `V-011` | Performance and loading | `[representative and worst-state traces]` | `[declared budgets pass]` |  |  |  |
| `V-012` | Production deployment | `[open public/authorized URL in clean session]` | `[correct build loads and reaches control]` |  |  |  |

### Release record

| Field | Record |
| --- | --- |
| Release revision / immutable build ID | `[value]` |
| Build command and environment | `[value]` |
| Deployment target / project | `[value]` |
| Play URL | `[URL or “not deployed”]` |
| URL checked in clean session at | `[UTC date/time]` |
| Source, rights, and attribution audit | `[artifact and result]` |
| Research snapshot date | `[date]` |
| Known limitations | `[precise list]` |
| Unverified claims | `[precise list; do not imply completion]` |
| Reproduction steps | `[from clean checkout to launch]` |
| Rollback route | `[deployment/build rollback]` |

### Lock control

| Control | Record |
| --- | --- |
| Artifact and question resolved | `verification.md` and `release-record.md`; `[whether this exact build honestly supports the promised campaign and delivery claims]` |
| Close condition | `[all required tests pass on the release revision; play URL or local artifact is checked; open defects and unverified claims are explicit]` |
| Still mutable | `[nothing in the immutable release; future changes require a new build and evidence set]` |
| Reopen trigger | `[code/content/asset change, dependency update, deployment change, broken URL, new material evidence, or invalidated upstream lock]` |
| Invalidated work | `[affected results, captures, profiles, rights/research audit, release notes, URL verification, and completion claim]` |
