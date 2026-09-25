---
name: anime-action-scene
description: >-
  Generate high-intensity anime action sequences with key frame impact and
  dynamic camera work
metadata:
  title: Anime Action Scene Generator
  category: film-video
  tags: anime; action; combat; aerial-pursuit; impact-frames; key-frame
  parameters: '[object Object]'
---

# Anime Action Scene Generator

Generate high-intensity animated action with readable physical causes, deliberate impact frames, and dynamic camera work.

## What you get

- ✅ 10-30 second action sequence
- ✅ Dynamic camera work (Whip Pan, Spin, tracking shots)
- ✅ Key frame impacts (speed lines, impact frames, camera shake)
- ✅ Physical consistency (grounded combat, momentum preservation)
- ✅ Causality-locked VFX (effects follow actions)

## How it works

### Simple Conversation

```
User: Generate a 10-second sword fight

Skill: [Analyzes your request]
      ✅ Detected: Melee combat, fast-paced
      ✅ Auto-selected parameters:
         - Action density: High (6-8 actions/second)
         - Camera: Dynamic Whip Pan
         - Key frames: Strong impact style

      Tell me about the fighters:
      Who's fighting? (e.g., "ninja vs samurai", "hero vs boss")

User: Female warrior with dual swords vs armored knight

Skill: ✅ Got it. Generating...

      [10 seconds later]
      ✅ Done! [Download video]
```

**That's it.** No complex questions. The skill automatically:
- Detects combat type from your description
- Chooses appropriate intensity level
- Applies matching camera style
- Generates with optimal parameters

### When You Want More Control

```
User: Generate a chase scene, but make it REALLY intense

Skill: [Detects "REALLY intense"]
      ✅ Upgraded to: Insane action density (8-12 actions/s)
      ✅ Extreme camera (1200-1800°/s Whip Pan)

      What's being chased?

User: Hero escaping from monster horde

Skill: ✅ Generating an extreme-density aerial pursuit...
```

**The skill understands intensity from your words**:
- "intense", "crazy", "epic" → High density
- "REALLY", "extremely", "insane" → Insane density
- "smooth", "elegant" → Standard density

### Advanced: Describe the motion language

```
User: Generate a vertical pursuit with cable swings and an orbiting camera

Skill: ✅ Matched: anchored aerial maneuvering
      ✅ Parameters: Insane density + camera

      Your scene?

User: Sci-fi soldier with grappling hook vs aliens

Skill: ✅ Applying that motion language to your sci-fi setting...
```

## Technical Details

### Auto-Detection Logic

The skill analyzes your description and automatically sets:

**Action Density** (hidden parameter):
- `standard` (4-5/s): Dialogue, dramatic moments, "elegant", "smooth"
- `high` (6-8/s): Combat, chase, "fast", "intense", "epic"
- `insane` (8-12/s): "crazy", "insane", "relentless", "extreme"

**Camera Intensity** (hidden parameter):
- `stable`: Emotional scenes, dialogue
- `dynamic`: Most action scenes (default)
- `insane`: "crazy camera", "full orbit", "extreme"

**Key Frame Style** (hidden parameter):
- `smooth`: Continuous motion
- `strong`: short impact hold, flash, speed lines, and camera reaction
- `extreme`: localized distortion, longer hold, and one-frame color inversion

**Causality Mode** (hidden parameter):
- Always `strict`: Effects only after actions

### Manual Override

If you know what you want:

```
User: Generate combat with:
      - Action density: insane
      - Camera: stable
      - Key frames: extreme

Skill: ✅ Custom config applied
```

## Examples

### Example 1: Dual Sword vs Knight
**User input**: "Female warrior with dual swords vs armored knight"

**Auto-detected**:
- Action density: High (melee combat detected)
- Camera: Dynamic
- Duration: 10s (default)

Expected deliverable: a reviewable dual-sword-versus-knight sequence.

### Example 2: Monster Chase
**User input**: "Hero escaping from monster horde, REALLY intense"

**Auto-detected**:
- Action density: Insane ("REALLY" detected)
- Camera: Insane
- Duration: 15s (chase needs more time)

Expected deliverable: a reviewable high-intensity monster-chase sequence.

### Example 3: Elegant Duel
**User input**: "Two masters, elegant sword duel, focus on technique"

**Auto-detected**:
- Action density: Standard ("elegant" detected)
- Camera: Stable ("focus" suggests observational)
- Key frames: Smooth (no impact effects)

Expected deliverable: a reviewable restrained duel sequence.

## Related Skills

- [Boss Battle](../../game-design/boss-battle/) - Design complete boss encounters
- [Hero Skill System](../../game-design/hero-skill-system/) - Create Q/W/E/R abilities
- [Game Cutscene](../game-cutscene-generator/) - Cinematic cutscenes

## Tips

### Get the intensity you want

Use these words:
- **Standard**: "smooth", "elegant", "graceful", "technical"
- **High**: "fast", "intense", "epic", "exciting"
- **Insane**: "crazy", "extreme", "relentless", "insane", "REALLY"

### Camera control

- Default: Dynamic (handles most cases)
- Say "stable camera" or "fixed angle" for less movement
- Say "crazy camera" or "extreme camera" for more

### Duration

- Short (10s): Single combat exchange
- Medium (20s): Chase or multi-phase fight
- Long (30s): Complete battle sequence

Skill auto-suggests duration based on your scene.

## Installation

```bash
npx skills add LogicOber/Worldview-Skills --skill anime-action-scene
```
