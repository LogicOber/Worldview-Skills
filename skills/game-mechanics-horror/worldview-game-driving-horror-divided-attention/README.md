# Driving Horror and Divided Attention

Use this Skill when the player must keep a moving vehicle safe while reading the road, checking a bounded cabin, operating equipment, and deciding whether stopping is safer than continuing.

```text
/worldview-game-driving-horror-divided-attention

Build a one-ending night maintenance drive through a closed utility tunnel.
Make steering and stopping readable, divide attention between road and cabin,
give every interruption a safe response, preserve comfort options, and verify
that the final depot arrival remains reachable after failure or reload.
```

The Skill produces a vehicle-state ledger, road-demand curve, cabin sight-zone graph, glance budget, control-interference table, stop-node rules, threat transitions, failure and recovery policy, persistence schema, accessibility equivalents, implementation plan, and runtime test matrix.

Do not use it for a vehicle that is only scenery, a cutscene ride, an ordinary racing model, or an on-foot chase after the player has left the vehicle.

## Files

- [`SKILL.md`](SKILL.md) — complete Agent method.
- [`templates/driving-horror-contract.md`](templates/driving-horror-contract.md) — fillable design, implementation, and test contract.
- [`references/why-driving-horror-fails.md`](references/why-driving-horror-fails.md) — failure patterns and decision boundaries.
- [`examples/calder-tunnel-washer.md`](examples/calder-tunnel-washer.md) — fully worked original fictional application.
- [`SOURCE.md`](SOURCE.md) — provenance and strict non-copy boundary.

## What a completed run should give you

You should receive concrete answers to at least these questions:

1. Which vehicle states are authoritative?
2. What does the road demand during every segment?
3. Which cabin zones can be inspected, and at what cost?
4. How long may the player look away before risk becomes unfair?
5. Which controls can fail, stick, lie, or recover?
6. Which stops are legal, unsafe, or mandatory?
7. What changes when the vehicle moves versus stops?
8. How do passenger, cargo, and rear-equipment states persist?
9. What is a recoverable driving mistake versus a restart?
10. How does the game distinguish collision feedback from supernatural interference?
11. Which comfort and accessibility settings preserve the decisions?
12. Which state must reach the one required ending?
