# Mundane routine corruption contract

## Normal loop

| Step | Player action | Expected feedback | State recorded | Normal completion |
| --- | --- | --- | --- | --- |
| Receive | | | | |
| Prepare | | | | |
| Deliver/perform | | | | |
| Confirm/close | | | | |

## Exception ladder

| Level | Normal confirmation | Violated field | Evidence before choice | Player choices | State consequence | Recovery | Next known rule |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | | | | | | | |
| 2 | | | | | | | |
| 3 | | | | | | | |

## Layer lock record

| Lock | Artifact | Locked when | Reopen trigger | Dependent work to invalidate |
| --- | --- | --- | --- | --- |
| Baseline loop | | | | |
| Exception ladder | | | | |
| Choice contract | | | | |
| Recovery and reset | | | | |
| Runtime proof | | | | |
| Handoff | | | | |

## Verification

- [ ] Three ordinary loops teach the baseline.
- [ ] The exception changes one readable field before adding another.
- [ ] Comply, inspect, refuse, delay, and leave have declared consequences.
- [ ] The routine never requires a hidden pixel or arbitrary timing.
- [ ] Failure, reload, and accessibility paths preserve the decision.
