# Original example — The Silent Shift

This fictional example demonstrates a rhythm contract. It is not a default plot, timing preset, or claim of an implemented game.

## Invocation

```text
/worldview-game-horror-experience-rhythm

Plan a 30–40 minute single-ending first-person horror chapter about an overnight
operator maintaining a cliffside fog-warning station. The player should learn
the work before the station begins reporting ships that do not exist. End with
one physical warning action and show what survives after dawn.
```

## Evidence and target

- No runtime exists; all durations are **estimated**.
- Target: 33–41 novice minutes, 24–30 experienced minutes.
- Canonical ending: the player manually turns the inland warning vane away from the harbor, preventing the station from calling a rescue crew into the cliff channel.
- Failure is restartable capture or a missed warning window, not another ending.

## Promise

The player calibrates three mechanical vanes and learns that each accepted bearing prints once in the log. A fourth print appears without a calibration. The player tests whether the line is receiving a false signal, but each test briefly turns their back on the harbor window. The likely mistake allows the signal to reserve the rescue channel. Recovery at the workshop lets the player compare paper impressions and reopen a service stair. The final action uses the first calibration verb on the inland vane. Dawn reveals the call ledger, the damaged stair, and one rescue lamp still approaching safely from the road.

## State ownership

| State | Owner | Readers | Forbidden inference |
| --- | --- | --- | --- |
| Vane angle and calibration result | `VaneController` | log printer, signal console, ending gate | light animation |
| Printed lines and impression depth | `ShiftLedger` | inspection UI, evidence state | subtitle text alone |
| False caller knowledge | `CallerState` | audio emitter, channel reservation | player transform |
| Player-inspected facts | `EvidenceLedger` | dialogue thought, ending confidence | global chapter progress |
| Service-stair access | `RouteState` | navigation, checkpoint | workshop lighting |

## Experience budget

| Activity | Novice | Experienced | Purpose |
| --- | ---: | ---: | --- |
| Orientation and first calibration | 4–5 min | 3 min | controls, harbor/window/workshop landmarks |
| Two ordinary calibration cycles | 5–6 min | 3–4 min | prove angle → print relationship |
| First discrepancy and inspection | 4–5 min | 3 min | distinguish ink content from paper impression |
| Cable-room test and blind interval | 5–7 min | 4–5 min | create fair unseen change and residue |
| Channel reservation pressure | 4–5 min | 3–4 min | route choice and failed interpretation |
| Workshop recovery | 3–4 min | 2–3 min | compare sheets, open stair, form plan |
| Final vane route/action | 5–6 min | 4–5 min | apply learned verb under pressure |
| Dawn aftermath | 3–4 min | 2–3 min | inspect persistent consequence |

## Beat ledger

| Beat | Job and question | Decision and state change | Attention / emotion hypothesis | Cost and next question |
| --- | --- | --- | --- | --- |
| B1 Orientation | Match west vane to a known lighthouse pulse. “How does this station confirm a bearing?” | Turn crank, align notch, press accept; `VaneController` commits and `ShiftLedger` prints. | Navigation primary; cautious competence predicted. | No cost. “Can I repeat this at another station?” |
| B2 Mastery | Calibrate north and harbor vanes. | Repeat the same verb; three valid prints establish normal state. | Object comparison primary. | Five minutes invested; player now owns the baseline. |
| B3 Discrepancy | A fourth harbor bearing prints. “Did I accidentally submit twice?” | Inspect print count and crank position. The extra line has ink but no pressure impression. | Inspection primary; suspicion predicted. | The player may ignore it, preserving time but losing early certainty. |
| B4 Test | Disconnect the harbor cable in the lower room. “Is the wire carrying the false signal?” | Hold the breaker for six seconds; camera faces the panel while the window is unseen. | Interaction primary, off-screen audio secondary. | During the blind interval a wet cable mark appears at the window; residue remains. |
| B5 Confirmation | The disconnected console prints another line. | Compare breaker seal, paper impression, and wet mark; `EvidenceLedger` records only inspected facts. | Hypothesis testing primary; alarm predicted. | False caller reserves the rescue channel. “What does it want the crew to approach?” |
| B6 Likely mistake | Player answers the voice from the main console. | Spoken acknowledgement advances `CallerState` to commitment and locks the shortest harbor stair. | Social judgment primary. | Route loss, not death. A metal strike identifies the still-open workshop stair. |
| B7 Recovery | Reach workshop and compare archived paper. | Discover that mechanical vane submissions leave pressure marks; open service stair using the calibration key. | Evidence comparison primary; regained control predicted. | Keeps locked route and consumed time. “Can a physical vane override the call?” |
| B8 Pressure/payoff | Reach inland vane while the caller repeats the operator’s own prior acknowledgements. | Align vane to road beacon and accept; same learned verb writes a higher-authority physical bearing. | Route timing primary, voice recognition secondary. | Failure restarts at workshop with evidence preserved. Success redirects rescue. |
| B9 Aftermath | Dawn. Inspect ledger, route damage, and approaching road lamp. | Player can file the physical log and leave through the inland stair. | Interpretation primary; relief mixed with unresolved concern. | Station remains damaged; the false lines remain visible but cannot command the channel. |

## Blind interval, failure, and recovery

The cable breaker pins the camera toward the panel for an estimated six seconds. The harbor window is outside view, but the door, seal, and floor remain visible. No lethal threat may enter during this first use. The unseen change leaves a wet drag mark. The expected novice error is answering the voice. The game responds by printing the acknowledgement, lighting the reserved-channel indicator, and closing one stair through an authored relay—not by teleporting a threat. A striped conduit keeps the workshop route readable. Recovery preserves inspected evidence and places the player near the service-stair release.

## Ending and aftermath

The final interaction reuses the calibration controls taught in B1. No new code, weapon, or ritual appears. At dawn, the player can verify that the rescue call names the inland road beacon, the harbor stair remains jammed, the broken cable still bears the wet mark, and the rescue lamp approaches from the safe side. The false lines remain in the log, so the ordinary shift cannot simply reset.

## Required runtime proof

- first calibration understandable without an explanation paragraph;
- normal and false print paths use different authoritative events;
- breaker interaction leaves enough warning and residue;
- workshop recovery remains legal after the main stair closes;
- failure reloads the correct ledger, route, and caller state;
- muted audio, subtitles, non-color indicators, reduced motion, and assisted timing preserve decisions;
- measured novice/experienced durations replace estimates;
- aftermath survives the ending checkpoint.

All timings, emotions, performance, and comprehension remain unverified until a runnable build is tested.
