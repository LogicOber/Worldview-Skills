---
name: game-cutscene-generator
description: >-
  Generate cinematic in-game cutscenes with character consistency and real-time
  engine aesthetics. Use for boss introductions, character conversations,
  story transitions, or victory scenes that need camera direction and an
  editable script and shot list.
metadata:
  title: Game Cutscene Generator
  category: film-video
  tags: cutscene; game; cinematic; unreal-engine; unity; character-animation
  triggers: >-
    generate game cutscene; create cinematic; make in-game video; cutscene for
    my game; boss intro cutscene; dialogue scene
  examples: >-
    Generate a 30-second boss intro cutscene; Create a dialogue scene between
    two characters; Make a victory celebration cutscene
---

# Game Cutscene Generator

Generate cinematic in-game cutscenes with character consistency, camera control, and real-time engine aesthetics.

## What you get

- ✅ 15-60 second cutscene video (1080p/720p/480p)
- ✅ Character consistency using reference sheets
- ✅ Real-time engine aesthetic (UE5/Unity/Stylized)
- ✅ Cinematic camera work and shot composition
- ✅ Audio recommendations (music cues, SFX timing)
- ✅ Editable script and shot list

## When to use

- Boss introduction cutscenes
- Character dialogue scenes
- Story moment cutscenes
- Victory/defeat sequences
- Tutorial cinematics
- Level transition scenes

## How it works

### 1. Choose Engine Aesthetic

```
Skill: What's your game engine visual style?

      A. Unreal Engine 5 Photorealistic
      [Shows reference: UE5 Nanite + Lumen example]

      B. Unity HDRP Stylized
      [Shows reference: stylized real-time animation]

      C. Low-Poly Retro
      [Shows reference: PS1 aesthetic]

      D. Hand-Drawn 2D
      [Shows reference: Hollow Knight style]

You: A

Skill: ✅ UE5 Photorealistic selected
```

### 2. Upload or Generate Characters

```
Skill: Upload character reference sheets, or I'll generate them.

You: [uploads hero.png, boss.png]

Skill: ✅ Detected:
      - Hero (blue armor, sword, male, 25 years old)
      - Boss (dark knight, 3m tall, heavy armor)

      Characters look correct?

You: Yes

Skill: ✅ Characters locked
```

### 3. Scene Setup

```
Skill: Where does this cutscene take place?

      A. Throne Room    B. Arena
      C. Cathedral      D. Outdoor Cliff

      [Shows 4 reference images]

You: C

Skill: Lighting mood?
      A. Dark and ominous
      B. Dramatic golden hour
      C. Overcast gray

You: A

Skill: ✅ Location set: Gothic cathedral, dark lighting
```

### 4. Cutscene Type & Script

```
Skill: What type of cutscene?

      A. Boss Introduction (15-30s)
         Epic reveal, threatening presence

      B. Dialogue Scene (30-60s)
         Two characters talking, shot-reverse-shot

      C. Action Sequence (20-40s)
         Combat, chase, high energy

You: A

Skill: I'll write the script. Here's the draft:

───────────────────────────────────────
BOSS INTRO CUTSCENE — 30 seconds

Shot 1 (0-5s): HERO ENTERS
Wide shot, hero pushes open cathedral doors.
Dim light, stained glass casts colored shadows.
Camera: Low angle tracking, follows hero forward.

Shot 2 (5-10s): BOSS REVEAL
Whip pan to altar. Boss rises from throne.
Dark energy swirls, armor clanks loudly.
Camera: Push-in on boss glowing eyes.

Shot 3 (10-15s): HERO REACTION
Close-up hero face, determination + fear.
Grips sword tighter, battle stance.
Camera: Shallow DOF, medium close-up.

Shot 4 (15-20s): BOSS ADVANCES
Boss draws massive sword, steps forward.
Ground shakes with each footstep.
Camera: Tracking shot at ground level.

Shot 5 (20-25s): STANDOFF
Wide two-shot, 10 meters apart.
Wind blows papers, dramatic pause.
Camera: Slow 90° orbit around both.

Shot 6 (25-30s): TITLE + ROAR
"THE DARK KNIGHT" title card.
Boss roars, screen fades to white.
Camera: Hold, then white flash transition.
───────────────────────────────────────

Approve? (Y/N/Edit)
```

### 5. Generation

```
Skill: Generating cutscene...

      Model: Seedance 2.5
      Resolution: 1080p
      Duration: 30 seconds
      References: 2 characters + 1 location

      ████████████░░░░░░░░ 60% (Shot 3/5)

      ETA: 8 minutes
```

### 6. Review & Export

```
Skill: ✅ Cutscene complete!

      [Embedded video player]

      Options:
      A. Download MP4
      B. Regenerate with different angle
      C. Adjust lighting
      D. Export script + shot list
      E. Generate another cutscene

You: A

Skill: ✅ Downloaded: boss-intro-cutscene.mp4
```

## Technical Details

### Models
- Video: Seedance 2.5 (final) / MiniMax H3 (draft)
- Character sheets: GPT-Image-2 / Flux
- Music: Suno Chirp Fenix

### Limits
- Characters: Up to 5 per cutscene
- Locations: Up to 3 per cutscene
- Duration: 15-60 seconds
- Resolution: 480p / 720p / 1080p

### Export Formats
- Video: MP4 (H.264, 24fps)
- Audio: WAV (separate track optional)
- Script: Markdown (.md)
- Shot list: JSON

### Engine Integration
- **Unreal Engine**: Movie Render Queue import
- **Unity**: Video Player asset
- **Godot**: VideoStreamPlayer
- **Direct**: Plays in any video player

## Related Skills

- [Boss Battle](../../game-design/boss-battle/) - Design boss mechanics
- [Character Model](../../3d-assets/character-model/) - Generate 3D models
- [Environment Scene](../../3d-assets/environment-scene/) - Build locations
- [Cinematic Film](../cinematic-film/) - Longer narrative films

## Tips

### Camera Work
- **Boss intros**: Wide → Push-in on face
- **Dialogue**: Shot-reverse-shot, match eye-lines
- **Action**: Dynamic moves, match energy
- **Emotion**: Close-ups for reactions

### Pacing
- **15s**: Single moment (reveal only)
- **30s**: Complete beat (intro + reaction + setup)
- **60s**: Full sequence (arrival + dialogue + action tease)

### Common Mistakes
- ❌ Too many cuts (max 6 shots per 30s)
- ❌ Camera too fast
- ❌ Character size changes between shots
- ❌ Inconsistent lighting

## Installation

```bash
npx skills add LogicOber/Worldview-Skills --skill game-cutscene-generator
```
