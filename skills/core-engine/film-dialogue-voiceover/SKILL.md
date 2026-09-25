---
name: film-dialogue-voiceover
description: >-
  Generate perfect lip-sync dialogue videos with automatic voice generation and
  audio-driven lip-sync
metadata:
  title: Film Dialogue & Voiceover Generator
  category: core-engine
  tags: dialogue; voiceover; lip-sync; tts; elevenlabs
  dependencies: 'elevenlabs-tts (optional, recommended); seedance-2.5'
---

# Film Dialogue & Voiceover Generator

Generate perfect lip-sync dialogue videos with automatic voice generation and audio-driven lip-sync.

## What this skill does

### Automatic Backend Processing

When you write dialogue in your script, this skill automatically:

1. **Detects dialogue** in your script
2. **Checks TTS availability** (ElevenLabs or MCP)
3. **Generates voice audio** (if TTS configured)
4. **Calculates timing** automatically
5. **Builds optimized prompts** with special syntax
6. **Generates video** with perfect lip-sync

**You don't need to do anything** — just write dialogue, and the skill handles the rest.

## Setup Requirements

### ⚠️ For Perfect Lip-Sync

To achieve **perfect lip-sync** (like professional platforms), you need a TTS service configured.

#### Option 1: ElevenLabs (Recommended)

```bash
# Set environment variable
export ELEVENLABS_API_KEY="your_key_here"

# Or in .env file
ELEVENLABS_API_KEY=your_key_here
```

**Why ElevenLabs?**
- ✅ Crystal clear audio (optimized for video)
- ✅ 29 languages supported
- ✅ Emotional control (excited, calm, sad)
- ✅ Voice cloning (upload samples for custom characters)

[Get ElevenLabs API Key →](https://elevenlabs.io)

#### Option 2: MCP TTS Tool

If you have an MCP TTS tool configured:

```bash
# The skill will auto-detect and use it
worldview configure mcp --tool tts
```

#### Option 3: No TTS (Fallback Mode)

**⚠️ Warning**: Without TTS, lip-sync quality will be significantly lower.

The skill will:
- Generate video with dialogue in prompt only
- Model will attempt to "guess" lip movements
- Results: 50-70% accuracy (vs 95%+ with TTS)

**When the skill detects no TTS**:
```
⚠️  TTS NOT CONFIGURED

For perfect lip-sync, configure a TTS service:
  • ElevenLabs (recommended): export ELEVENLABS_API_KEY=xxx
  • Or any MCP TTS tool

Continue with fallback mode? (y/n)
>
```

## How It Works

### User Experience (With TTS Configured)

```
User: Generate a cutscene where hero says "I've been waiting for you."

Skill: [Detects dialogue]
      [Checks: ✅ ElevenLabs configured]

      Generating voice...
      ✅ Audio generated (2.3s)

      Building video prompt...
      ✅ Prompt optimized with lip-sync syntax

      Generating video (Seedance 2.5)...
      ████████████████████ 100%

      ✅ Done! Perfect lip-sync achieved.
      [Download video]
```

**Behind the scenes** (automatic):
1. Extracted dialogue: "I've been waiting for you."
2. Called ElevenLabs TTS → audio.mp3 (2.3s)
3. Calculated duration: 2.3s + 0.5s padding = 2.8s
4. Built prompt:
   ```
   @Image1 hero, medium close-up, face occupies 1/3 of frame.
   Hero looks at camera: {I've been waiting for you.} [Audio1]
   ```
5. Called Seedance 2.5 with audio_references
6. Result: Perfect lip-sync

### User Experience (Without TTS)

```
User: Generate a cutscene where hero says "I've been waiting for you."

Skill: [Detects dialogue]
      [Checks: ❌ No TTS configured]

      ⚠️  TTS NOT CONFIGURED

      Without TTS, lip-sync will be approximate (50-70% accuracy).

      To enable perfect lip-sync:
        1. Get ElevenLabs API key: https://elevenlabs.io
        2. Set: export ELEVENLABS_API_KEY=your_key
        3. Restart this skill

      Or: Configure an MCP TTS tool

      Continue without TTS? [y/n]

User: y

Skill: Generating with fallback mode...
      ⚠️  Note: Mouth movements will be approximate

      ████████████████████ 100%

      ⚠️  Lip-sync quality: Approximate
      Consider configuring TTS for better results.

      [Download video]
```

## Technical Details

### TTS Integration

#### ElevenLabs API Call

```python
def generate_voice(text, voice_id="default", language="en"):
    """
    Generate voice audio via ElevenLabs

    Args:
        text: Dialogue text
        voice_id: Voice ID (default or custom)
        language: Language code (en, zh, ja, ko, etc.)

    Returns:
        audio_url: URL of generated audio
        duration: Audio duration in seconds
    """

    # Check if API key configured
    api_key = os.getenv("ELEVENLABS_API_KEY")
    if not api_key:
        return None  # Fallback mode

    # Call ElevenLabs API
    url = f"https://api.elevenlabs.io/v1/text-to-speech/{voice_id}"

    headers = {
        "xi-api-key": api_key,
        "Content-Type": "application/json"
    }

    data = {
        "text": text,
        "model_id": "eleven_multilingual_v2",
        "voice_settings": {
            "stability": 0.5,
            "similarity_boost": 0.75
        }
    }

    response = requests.post(url, json=data, headers=headers)

    if response.status_code != 200:
        warn("ElevenLabs API error, falling back to no-TTS mode")
        return None

    # Save and upload audio
    audio_path = save_audio(response.content)
    audio_url = upload_to_cdn(audio_path)
    duration = get_audio_duration(audio_path)

    return audio_url, duration
```

#### MCP TTS Tool Detection

```python
def detect_tts_capability():
    """
    Detect available TTS services

    Returns:
        {
            'available': bool,
            'service': 'elevenlabs' | 'mcp' | None,
            'capabilities': {...}
        }
    """

    # Check ElevenLabs
    if os.getenv("ELEVENLABS_API_KEY"):
        return {
            'available': True,
            'service': 'elevenlabs',
            'capabilities': {
                'languages': 29,
                'emotions': True,
                'voice_cloning': True
            }
        }

    # Check MCP tools
    mcp_tools = detect_mcp_tools()
    for tool in mcp_tools:
        if tool.type == 'tts':
            return {
                'available': True,
                'service': 'mcp',
                'tool_name': tool.name,
                'capabilities': tool.capabilities
            }

    # No TTS available
    return {
        'available': False,
        'service': None
    }
```

### Seedance 2.5 Prompt Construction

#### With TTS (Perfect Lip-Sync Mode)

```python
def build_lipsync_prompt(
    dialogue,
    audio_url,
    character_ref,
    scene_description
):
    """
    Build Seedance 2.5 prompt with lip-sync syntax
    """

    prompt = f"""
SPATIAL LOCK - {scene_description} layout identical in all shots.

@Image1 defines character appearance.
Medium close-up shot, character's face occupies 1/3 of frame.

Character looks at camera and speaks: {{{dialogue}}} [Audio1]

(Ambient background music, soft, volume 20%)

Character maintains natural eye contact and hand gestures.
"""

    return {
        'prompt': prompt,
        'image_references': [
            {'id': 'Image1', 'url': character_ref}
        ],
        'audio_references': [
            {'id': 'Audio1', 'url': audio_url, 'role': 'dialogue_voice'}
        ]
    }
```

#### Without TTS (Fallback Mode)

```python
def build_fallback_prompt(
    dialogue,
    character_ref,
    scene_description
):
    """
    Build prompt without audio reference (approximate lip-sync)
    """

    prompt = f"""
@Image1 defines character appearance.
Medium close-up shot, character's face occupies 1/3 of frame.

Character looks at camera and speaks the following dialogue
with clear enunciation and natural mouth movements: "{dialogue}"

The character should:
- Open mouth clearly for vowels
- Close lips for consonants like 'p', 'b', 'm'
- Show visible tongue for 't', 'd', 'l'
- Natural pauses and breathing between phrases

(Ambient background music)
"""

    return {
        'prompt': prompt,
        'image_references': [
            {'id': 'Image1', 'url': character_ref}
        ],
        'audio_references': []  # No audio
    }
```

### Automatic Duration Calculation

```python
def calculate_dialogue_duration(text, language='en'):
    """
    Calculate natural dialogue duration

    Args:
        text: Dialogue text
        language: Language code

    Returns:
        duration: Duration in seconds (includes padding)
    """

    if language == 'en':
        # English: ~160 words per minute
        words = len(text.split())
        base_duration = (words / 160) * 60

    elif language == 'zh':
        # Chinese: ~200 characters per minute
        chars = len(text)
        base_duration = (chars / 200) * 60

    elif language == 'ja' or language == 'ko':
        # Japanese/Korean: ~180 characters per minute
        chars = len(text)
        base_duration = (chars / 180) * 60

    else:
        # Default: estimate by character count
        chars = len(text)
        base_duration = (chars / 15) * 1.0  # ~15 chars per second

    # Add padding (0.3s before, 0.5s after)
    total_duration = base_duration + 0.8

    return round(total_duration, 1)
```

## User Warnings and Recommendations

### When TTS is Not Configured

The skill will show:

```
╔══════════════════════════════════════════════════════════╗
║  ⚠️  TTS NOT CONFIGURED - Lip-Sync Will Be Approximate  ║
╚══════════════════════════════════════════════════════════╝

Your dialogue: "I've been waiting for you."

Without TTS audio, the video model will attempt to "guess"
lip movements from text alone.

Expected quality:
  ❌ Without TTS: 50-70% lip-sync accuracy
  ✅ With TTS:    95%+ lip-sync accuracy

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

To enable perfect lip-sync:

Option 1: ElevenLabs (Recommended)
  1. Sign up: https://elevenlabs.io
  2. Get API key from dashboard
  3. Set environment variable:

     export ELEVENLABS_API_KEY="your_key_here"

  4. Restart this skill

Option 2: MCP TTS Tool
  Configure any MCP tool that provides TTS:

     worldview configure mcp --tool tts

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Continue without TTS? [y/n]
> _
```

### When TTS is Configured

The skill will show:

```
✅ TTS Configured: ElevenLabs

Generating voice for: "I've been waiting for you."
  Language: English (auto-detected)
  Voice: Default character voice
  Duration: 2.3s (calculated)

Generating audio... ████████████████ 100%
✅ Audio generated (2.3s)

Building video with perfect lip-sync...
```

## Voice Customization

### Default Voices

If ElevenLabs is configured, the skill uses context-aware default voices:

```python
def select_voice_for_character(character_description):
    """
    Auto-select appropriate voice based on character
    """

    # Parse character description
    if 'male' in character_description.lower():
        if 'young' in character_description.lower():
            return "adam"  # Young male voice
        else:
            return "sam"   # Mature male voice

    elif 'female' in character_description.lower():
        if 'young' in character_description.lower():
            return "rachel"  # Young female voice
        else:
            return "domi"    # Mature female voice

    else:
        return "bella"  # Neutral default
```

### Custom Voice IDs

Advanced users can specify custom voice IDs:

```
User: Generate dialogue with voice ID "custom_hero_voice"

Skill: ✅ Using custom voice: custom_hero_voice
```

## Multi-Character Dialogue

### Automatic Voice Assignment

```python
def generate_multi_character_dialogue(scene):
    """
    Handle dialogue between multiple characters
    """

    dialogues = parse_dialogues(scene)
    # [
    #   {'character': 'Hero', 'text': 'Hello', 'voice': 'adam'},
    #   {'character': 'Mentor', 'text': 'Welcome', 'voice': 'sam'}
    # ]

    segments = []

    for i, dialogue in enumerate(dialogues):
        # Generate audio for this character
        audio_url, duration = generate_voice(
            text=dialogue['text'],
            voice_id=dialogue['voice']
        )

        # Generate video segment (shot-reverse-shot)
        segment = generate_segment(
            dialogue=dialogue['text'],
            audio_url=audio_url,
            character=dialogue['character'],
            shot_angle=determine_shot_angle(i)
        )

        segments.append(segment)

    # Concatenate all segments
    final_video = concatenate_segments(segments)

    return final_video
```

## Examples

### Example 1: Simple Dialogue (With TTS)

```
User: Hero says "The world needs you."

Skill: [Auto-detects ElevenLabs]
      Generating voice... ✅
      Generating video... ✅

Result: Perfect lip-sync video, 2.5s
```

### Example 2: Long Monologue (With TTS)

```
User: Mentor delivers a speech: "In times of darkness,
      we must remember who we are. Our strength comes
      not from power, but from the bonds we share."

Skill: [Auto-calculates: 12 words = ~4.5s]
      Generating voice... ✅ (4.5s)
      Generating video... ✅

Result: Perfect lip-sync, natural pacing
```

### Example 3: Dialogue Without TTS (Fallback)

```
User: Hero says "Let's go."

Skill: ⚠️  No TTS configured
      Continue? y

      Generating with text-only prompt...
      ⚠️  Lip-sync quality: Approximate

Result: Video generated, but mouth movements are guessed
```

## Related Skills

- [Game Cutscene](../../film-video/game-cutscene-generator/) - Uses this skill for dialogue
- [Cinematic Film](../../film-video/cinematic-film/) - Uses this skill for all dialogue
- [Film Shot Prompt](../film-shot-prompt/) - Integrates lip-sync syntax

## FAQ

**Q: Do I need ElevenLabs for this to work?**
A: No, but highly recommended. Without TTS, lip-sync will be approximate (50-70% accuracy vs 95%+).

**Q: Can I use other TTS services?**
A: Yes, any MCP TTS tool will work. Or provide your own audio files.

**Q: What languages are supported?**
A: With ElevenLabs: 29 languages. Without TTS: English works best.

**Q: Can I use my own voice?**
A: Yes, upload voice samples to ElevenLabs for voice cloning, then use the custom voice ID.

**Q: How much does ElevenLabs cost?**
A: Free tier: 10,000 characters/month. Paid: $5/mo for 30,000 characters.

**Q: Will the skill work without any configuration?**
A: Yes, but you'll get a warning and approximate lip-sync. For professional results, configure TTS.
