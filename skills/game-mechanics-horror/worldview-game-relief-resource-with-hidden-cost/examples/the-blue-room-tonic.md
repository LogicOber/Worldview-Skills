# The Blue Room Tonic

**The Blue Room Tonic** is an original fictional example written for this package. It is not an existing work or implementation. “Tonic” is the building's name for an acoustic calibration service, not a medicine or health claim.

## Invocation

```text
/worldview-game-relief-resource-with-hidden-cost

Build a one-ending horror chapter in a municipal listening archive. Resonant rooms
make labels and speech overlap. A blue calibration booth immediately restores
clear hearing, but each session delays door permissions and leaves an audible
signature that maintenance sentries can follow. Provide a slower manual coping
route and verify cautious, compulsive, never-use, and mixed histories.
```

## Required ending

The player must close the archive's broadcast shutter from the central index. Every history reaches that action. Calibration use changes access procedure, sentry exposure, retained recordings, and the quietness of the aftermath—not the ending count.

## Independent owners

| State | Owner | This mechanic's relationship |
| --- | --- | --- |
| calibration tokens | inventory authority | reserves and commits one accepted token |
| overlap pressure | acoustic-pressure owner | receives immediate negative delta |
| door permission delay | access authority | receives separate positive delay delta |
| sentry signature | sentry detection owner | receives emitted signature event |
| shutter ending | campaign owner | reads complete use history; commits ending |

No system derives door delay or sentry alert from token count. An unused token and a used token in a reloaded inventory cannot produce the same history.

## Two-axis ledger

| Use | Pressure before | Immediate relief | Separate cost | Knowledge stage | Visible result |
| --- | ---: | ---: | --- | --- | --- |
| 1 | 70–100 | −45 overlap for 90 s | +12 s next-door verification; signature remains in booth | uncertain | speech separates; door reader pulses twice before opening |
| 2 | any | −30 overlap for 70 s | +25 s verification; signature extends into corridor | coupling suspected | reader shows a blue waveform matching booth tone |
| 3 | any | −18 overlap for 55 s | access enters risky review; sentry can follow the corridor signature | coupling confirmed | booth warns that another profile layer will be retained |
| 4+ | any | −10 overlap for 40 s | irreversible archive-profile mark; alternate manual door release required | informed commitment | explicit text, shape, and tone warning before confirmation |

These values are proposals for this fictional example and require tuning in a real build.

## Disclosure schedule

Before the first session, the booth promises clearer listening and says access readers may “take longer to reconcile.” The first door delay is ambiguous because the archive is failing. After the second session, the door reader displays the same waveform as the booth and a maintenance note explains that calibration profiles propagate to access checks. Before the third use, the booth shows current delay and sentry-signature range. Before the fourth, it names the persistent profile mark and the manual-release fallback.

The cost surprises at most once. No irreversible threshold can be crossed before explicit confirmation.

## Alternative coping path

The player can carry a mechanical phase card from each room to a sheltered desk. Aligning its two notches takes twelve seconds and reduces overlap by 20 for the current room without changing door permission or sentry signature. The player must stand still and cannot read archive labels while aligning. It is slower and positionally risky but supports the never-use route.

If all tokens are gone, desks remain available. If the player loses booth permission, the manual cards still work. No-use is a real route rather than delayed compulsory calibration.

## Use under pressure

A booth session takes three seconds. The token is reserved on entry and commits when the booth closes and calibration begins. Leaving before closure releases the token and applies neither axis. After closure, an interruption reconstructs the committed result: relief and the access/detection handoffs apply once under the same event ID. Sentries cannot enter the booth during the session but can investigate the emitted signature after the door opens.

## Thresholds

| State | Condition | Player evidence | Consequence | Recovery / fallback |
| --- | --- | --- | --- | --- |
| safe | 0–1 accepted uses | ordinary reader delay | modest time cost | wait or use another route |
| risky | 2–3 uses | waveform match and range display | sentry follows signature; access review | manual cards and maintenance bypass |
| irreversible | 4 accepted uses | explicit profile-mark confirmation | automatic readers reject the profile | manual release reaches central index |

## Four verified design histories

### Never use

The player aligns three phase cards, accepts stationary exposure, preserves automatic door access, and reaches the index without a signature. The shutter closes. Aftermath: clean access record, fewer decoded recordings because the slow route consumed time.

### Cautious

The player uses one session during severe overlap, then switches to phase cards after observing the first reader delay. The shutter closes. Aftermath: one ambiguous signature and most recordings retained.

### Compulsive

The player uses four sessions after receiving every warning. Hearing remains manageable, automatic access is lost, and a sentry follows the last signature. The player uses the taught manual release. The shutter closes. Aftermath: persistent profile mark, damaged archive relationship, clear evidence of the calibration system.

### Mixed

The player uses twice, aligns one card while relief decays, and declines a third session. Door delay and overlap decay independently. The shutter closes through automatic access after a timed verification wait. Aftermath: partial profile trace and balanced recording recovery.

## Save and failure contract

Persist event IDs, accepted-use count, current relief value and expiry, access delay, signature range, knowledge stage, cues shown, alternatives learned, tokens, and ending handoff. Save/load before and after each use reproduces both axes. Death after the second use restores the checkpoint's declared two-use history and does not replay the first-use surprise. Duplicate callbacks cannot spend another token or extend either delta.

## Accessibility

- Overlap can be represented by labeled text separation rather than audio distortion.
- Waveform cues also use a distinct shape and caption.
- Signature direction has a non-spatial alert.
- Booth motion and flashing can be disabled.
- Reduced-intensity mode replaces profile imagery with neutral access labels.
- Extended timing lengthens phase-card alignment safety windows without removing the stationary tradeoff.

## Acceptance sample

| Test | Expected result |
| --- | --- |
| cancel before booth closure | no token, relief, delay, or signature change |
| interrupt after closure | one event restored; both deltas applied once |
| use at critical pressure | declared relief occurs immediately |
| fourth use | explicit warning and manual fallback before commit |
| exhaust all tokens | phase-card route remains viable |
| save/load after second use | coupling stays disclosed; no repeated surprise |
| reduced-intensity and no-audio | thresholds and signature remain readable |
| all four histories | same shutter-closing ending with local aftermath variation |
