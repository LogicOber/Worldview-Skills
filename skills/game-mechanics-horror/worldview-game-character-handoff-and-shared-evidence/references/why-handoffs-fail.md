# Why character handoffs and shared evidence fail

## Several viewpoints create several presentations, not several truths

A common implementation gives every chapter its own copy of a room, prop, quest flag, and journal entry. The story appears correct in the intended order, but a missed interaction or reload exposes contradictions. One character repairs a valve; another later sees the untouched prefab because the chapter scene owns presentation and truth together.

Use stable IDs and one authoritative mutation. A scene may render a separate instance, but it reads and writes the same shared record.

## Possession and knowledge are independent

Holding a document does not mean understanding it. Knowing a code does not mean carrying the key. A player may transfer an object without explaining it, or communicate its purpose while keeping it. Inventory and journal state therefore cannot substitute for each other.

This separation creates playable consequences. One protagonist may hold a component but misclassify it; another later recognizes its purpose from residue. The final procedure may require both physical availability and knowledge, obtained through different routes.

## A callback needs physical residue

Dialogue that says “someone was here” is not the same as inspecting an earlier action. Useful residue may be a moved object, changed machine state, damaged surface, timestamped log, interrupted task, missing consumable, opened route, or NPC injury. It must have:

- one earlier cause;
- one persistent mutation;
- one later eligible observer;
- one knowledge effect;
- one later decision.

If the earlier action did not occur, the later scene must not fabricate its residue.

## Shared journals can leak omniscience

A journal that automatically displays every protagonist's observations makes knowledge ownership meaningless. If a shared archive is intentional, treat synchronization as a world action. Record author, audience, time, access, and whether private interpretation transfers.

Accessibility does not require omniscience. A player-facing recap may show what the audience has seen while clearly distinguishing what the active protagonist knows.

## Switches are database transactions

A viewpoint switch touches world mutations, object ownership, knowledge, save state, streaming, input, and presentation. Committing only some fields creates the hardest bugs because the story continues with plausible but false state.

Suspend input, commit outgoing state, checkpoint, instantiate the incoming role, derive presentation, then re-enable input. Recover to the last complete transaction when a step fails.

## Optional order multiplies invalid assumptions

When chapters can be played in several orders, every dependency needs an eligibility rule. Do not write “if Chapter A complete, Character C knows Fact X” unless Chapter A contains a guaranteed transmission. Completion proves audience exposure, not character knowledge.

Enumerate supported orders and statically check mandatory prerequisites. If every permutation is not supported, state the allowed graph clearly.

## Failure must declare its scope

Death can rewind an encounter, a viewpoint chapter, or the cross-viewpoint timeline. Each choice is valid if explicit. An encounter retry should not erase prior character knowledge; a chapter rewind should clear mutations after its checkpoint; a non-canonical replay should never mutate the campaign.

Ambiguous failure scope produces duplicated items, ghosts of pending callbacks, and facts from futures that no longer occurred.

## Presentation can disagree without taking authority

Different protagonists may use different labels, hear different voices, or misinterpret the same object. Store those as mappings from truth and knowledge. Presentation may be unreliable under a declared distortion system, but it cannot change the authoritative actor or event merely by changing a model or label.

## One ending still supports local consequence

Evidence order, confidence, possession, injury, and relationship state may change the final procedure or aftermath while the campaign retains one ending. Declare mandatory convergence facts and resources. Optional knowledge can shorten a step, preserve evidence, change dialogue, or alter who performs an action.

Avoid manufacturing an ending per protagonist. The purpose of ownership is causal density, not branch count.

## Verification needs hostile orders

The intended cinematic order is insufficient. Test skipped optional evidence, unusual chapter orders, transfers at switch frames, deaths during handoff, saves before and after mutation, duplicated callbacks, and replay mode. Export a debug row containing authoritative state, physical holder, knowledge holders, and current presentation. A contradiction should be inspectable, not inferred from a broken cutscene.
