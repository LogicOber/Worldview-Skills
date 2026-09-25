# Experience timeline format

Use seconds and explicit scene IDs. The same IDs appear in the story and play plan. The schema is a practical recording format, not a runtime engine dependency.

```json
{
  "version": 1,
  "status": "estimated-not-playtested",
  "unit": "seconds",
  "time_model": "Non-overlapping activity estimates; story time advances at named scene events.",
  "beats": [
    {
      "id": "S01",
      "title": "The empty repair bench",
      "location": "Workshop",
      "entry_question": "Who finished the repair?",
      "player_action": "Compare the loose knot, flight ledger, and mended spar; test the knot on a practice cord.",
      "activities": {
        "orientation": [20, 30, 45],
        "investigation": [40, 65, 95],
        "interaction": [25, 40, 60],
        "dialogue": [20, 30, 40],
        "pressure": [0, 0, 0],
        "recovery": [5, 15, 20]
      },
      "duration": [110, 180, 260],
      "basis": "Three nearby objects, one cord test, about 60 spoken words, no walking/dialogue overlap.",
      "knowledge_before": ["The kite tore yesterday."],
      "knowledge_after": ["Someone repaired it using an unfamiliar knot."],
      "expected_feeling": "Curiosity with growing affection",
      "emotion_reason": "Useful evidence comes from the care someone took with a small repair.",
      "test_later": "Does the player inspect the knot before assuming a thief took the tools?",
      "early_solver": "Accept the knot test immediately; the optional ledger can be skipped.",
      "hint": "After two irrelevant tests, the sibling points to the spar rather than naming the repairer.",
      "failure": "A loose practice knot falls apart without spending material.",
      "retry_extra": [10, 20, 35],
      "next": []
    }
  ],
  "routes": [
    {
      "id": "first-play",
      "beats": ["S01"],
      "duration": [110, 180, 260],
      "optional_extra": [0, 0, 0],
      "retry_extra": [0, 0, 0]
    }
  ]
}
```

Each triple is `[low, typical, high]`. For a given beat, component sums equal the duration triple. Its basis names what was counted and what was compressed or shared. A narrated moment occurring during a traverse belongs to a single combined activity or an explicit overlap adjustment.

List mutually exclusive branches as separate route scenarios. If route A takes 180 seconds and B takes 300, a route using A receives 180, not 480. A scene that returns later has a different beat ID and a changed purpose. Optional exploration and failed-attempt time are additive only in scenarios that include them.

An efficient route can use shorter per-beat estimates or a documented set of beat overrides. Every override must describe the legitimate shortcut: known route, skipped optional reading, direct inference, or mastered interaction. Do not cut a required witness or unexplained travel to make the number attractive.

Emotional values, when helpful for plotting, may use a named ordinal scale such as pressure 0–5. Also record a concrete expectation, its cause, and an observation that would challenge it. A number alone says little about the experience.

Check unique IDs, defined route references, reachable ending, complete prerequisite acquisition, ordered ranges, activity sums, route sums, and non-overlapping branches. These checks establish internal consistency only. First-time comprehension, fear, surprise, motor timing, and actual duration require people playing a later build.
