# 🌫️ FOGGY - Dynamic Horror Datapack for Minecraft

<div align="center">

![Foggy Banner](https://static.planetminecraft.com/files/image/minecraft/data-pack/2025/671/19416838-copilot_l.webp)

**An intelligent horror experience that adapts to player behavior**

[![Download](https://img.shields.io/badge/Download-Planet%20Minecraft-green)](https://www.planetminecraft.com/data-pack/foggy-6804671/)
[![Version](https://img.shields.io/badge/Version-3.1.0-blue)](https://minecraft.net)
[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.1-brightgreen)](https://minecraft.net)
[![License](https://img.shields.io/badge/License-Apache%202.0-purple)](LICENSE)

</div>

---

## ⚠️ Content Warning

Foggy features jump scares, ambient horror audio, and unsettling psychological elements designed to create genuine fear. Players with anxiety, photosensitivity, or heart conditions should enable **Streamer Mode** or avoid this datapack. Not recommended for solo play on first experience.

---

## Overview

Foggy is a horror datapack that watches what you do and reacts accordingly. The more scared you should be, the scarier things get.

### What it does
- Monitors your environment (darkness, health, isolation, etc.)
- Builds up "attention" based on scary conditions
- Converts attention into "dread" that accumulates over time
- Triggers increasingly intense horror events as dread rises
- Works in multiplayer - fear spreads between nearby players

### For content creators
- Streamer Mode warns you before jumpscares
- Adjustable intensity (25% to 200%)
- Volume controls for audio
- Real-time dread display on action bar
- Statistics tracking

### What to expect
- **Environmental stuff**: Doors opening, lights going out, weird sounds
- **Psychological effects**: Blindness, false audio cues, that creeping feeling
- **Physical danger**: Phantom damage, health drain, teleportation
- **The Watcher**: Shows up when things get really bad

## Installation

### Requirements
- Minecraft Java 1.21.1 or newer
- That's pretty much it

For servers with lots of players (5+), you'll want at least 4GB RAM allocated.

### Singleplayer
1. Download from [Planet Minecraft](https://www.planetminecraft.com/data-pack/foggy-6804671/)
2. Drop the Foggy folder into `.minecraft/saves/[YourWorld]/datapacks/`
3. Load the world
4. Run `/reload` if it was already loaded
5. Type `/function foggy:config` to set things up

### Multiplayer
1. Stop the server
2. Put Foggy folder in `[ServerRoot]/[WorldName]/datapacks/`
3. Start server back up
4. Check it loaded with `/function foggy:config/stats`
5. Configure multiplayer settings: `/function foggy:config/advanced`

### Optional Resource Pack
There's a resource pack with custom horror sounds. Not required, but recommended if you want the full experience.

## Configuration

### Quick start
```mcfunction
/function foggy:config
```
Everything's in there. Click stuff to change settings.

#### Basic Configuration
| Setting | Options | Description |
|---------|---------|-------------|
| **Intensity** | Low (50%) / Medium (100%) / High (150%) | Controls manifestation frequency and aggression |
| **Streamer Mode** | Enabled / Disabled | Displays warnings and countdowns before jump scares |
| **Volume** | Quiet (50%) / Normal (100%) / Loud (150%) | Adjusts audio levels for horror effects |

#### Advanced Dread System
| Parameter | Presets | Function |
|-----------|---------|----------|
| **Multiplier** | Calm (1x) / Balanced (2x) / Aggressive (3x) | Dread accumulation rate when attention ≥ 40 |
| **Decay** | Slow (0.5/tick) / Medium (1/tick) / Fast (2/tick) | Dread reduction rate when attention < 40 |
| **Fear Spread Radius** | Close (4 blocks) / Normal (8 blocks) / Wide (16 blocks) | Distance for multiplayer dread propagation |

#### Manifestation Control
- **Max Tier**: Limit horror intensity (1-4, default: 4)
- **Rate**: Custom manifestation frequency (25%, 50%, 100%, 150%, 200%)

### Quick Command Reference

#### Intensity Presets
```mcfunction
/function foggy:config/intensity/low      # 50% manifestation rate
/function foggy:config/intensity/medium   # 100% baseline
/function foggy:config/intensity/high     # 150% increased frequency
```

#### Dread System Commands
```mcfunction
/function foggy:config/dread                        # Open dread control panel
/function foggy:dread/status                        # Display current dread levels
/function foggy:dread/thresholds                    # Show trigger thresholds
/function foggy:config/dread/multiplier_balanced    # Set 2x accumulation
/function foggy:config/dread/decay_medium           # Set 1/tick decay
/function foggy:config/dread/radius_normal          # Set 8-block spread
```

#### Streamer Tools
```mcfunction
/function foggy:config/streamer/toggle   # Enable/disable streamer mode
/function foggy:config/streamer/enable   # Force enable warnings
/function foggy:config/streamer/disable  # Force disable warnings
```

#### Debug Commands
```mcfunction
/tag @s add foggy.debug                  # Enable debug display
/function foggy:debug/show_attention     # Display attention score
/function foggy:debug/dread_debug        # Complete dread system status
/function foggy:debug/force_tier4        # Trigger Tier 4 manifestation
```

---

## 🎯 System Mechanics

### Attention System
The attention system evaluates player conditions every 10 ticks (0.5 seconds) and adjusts scores based on environmental and behavioral factors:

#### Attention Increases (+)
| Factor | Increase | Condition |
|--------|----------|----------|
| **Darkness** | +1/pulse | Light level ≤ 4 |
| **Underground** | +1/pulse | Y-coordinate < 50 |
| **Nighttime** | +1/pulse | Game time 13000-23000 |
| **Rain/Thunder** | +2/pulse | Weather condition active |
| **Isolation** | +1/pulse | No players within 32 blocks |
| **Low Health** | +3/pulse | Health < 6 hearts (12 HP) |
| **No Light Sources** | +2/pulse | No torches/lanterns in inventory |

#### Attention Decreases (-)
| Factor | Decrease | Condition |
|--------|----------|----------|
| **Bright Light** | -1/pulse | Light level ≥ 12 |
| **Holding Light** | -1/pulse | Torch/lantern in hand |
| **Near Campfire** | -2/pulse | Within 1 block of campfire |
| **Near Players** | -1/pulse | Other players within 16 blocks |

Attention score is clamped between 0-100.

### Dread Accumulation
When attention ≥ 40, player dread increases by the configured multiplier each tick. When attention < 40, dread decays at the configured rate. Total dread is the sum of all player dread values.

#### Dread Thresholds
| Level | Dread Range | Effects |
|-------|-------------|----------|
| **Whisper** | 40-79 | Tier 1 manifestations: ambient sounds, minor item movement |
| **Nightmare** | 80-119 | Tier 2-3 manifestations: environmental manipulation, false sounds, phantom damage |
| **Summon** | 120+ | Tier 3-4 manifestations: life drain, displacement, **The Watcher** |

### Manifestation Tiers

#### Tier 1: Unease (Attention 10-30)
- **Ambient Dread**: Eerie sound effects and atmospheric tension
- **Item Displacement**: Items shift positions in inventory
- **Cooldown**: 40-80 seconds

#### Tier 2: Disturbance (Attention 31-60)
- **Door Manipulation**: Doors open/close autonomously
- **Light Snuffing**: Torches and light sources extinguish
- **Cold Touch**: Slowness and visual distortion effects
- **Cooldown**: 60-120 seconds

#### Tier 3: Terror (Attention 61-85)
- **Phantom Strikes**: Invisible damage sources
- **Inventory Corruption**: Food items transform into suspicious stew
- **False Sounds**: Deceptive audio cues (mob sounds, footsteps)
- **Cooldown**: 80-160 seconds

#### Tier 4: Nightmare (Attention 86-100)
- **Life Drain**: Gradual health loss with visual effects
- **Displacement**: Temporary teleportation to nearby locations
- **Suffocation**: Temporary breathing restriction
- **The Watcher**: Ultimate manifestation with jumpscare sequence
- **Cooldown**: 120-240 seconds

### Multiplayer Mechanics
When fear spread is enabled, players within the configured radius share dread values, causing cascading terror as groups experience synchronized manifestations. Shared cooldowns can be enabled to prevent manifestation spam in large groups.

---

## 📸 Media & Community Content

<div align="center">

*We feature exceptional community content! Submit your reaction videos, cinematic captures, or gameplay highlights via Discord.*

</div>

## Troubleshooting

**Nothing's happening**
- Make sure you're on 1.21.1 or newer
- Check the datapack is in the right folder
- Run `/reload`
- Type `/function foggy:config/stats` to verify it loaded
- You need to be in Survival (doesn't affect Creative/Spectator)

**Too scary / giving me anxiety**
- `/function foggy:config/intensity/low` - cuts events in half
- `/function foggy:config/streamer/enable` - warns before jumpscares
- `/function foggy:config/volume/quiet` - quieter sounds
- Limit max tier to 1 or 2 via `/function foggy:config/manifestation/max_tier`

**Server lag / TPS drops**
- Lower intensity: `/function foggy:config/intensity/low`
- Turn off fear spread: `/function foggy:config/multiplayer/fear_spread`
- Fewer players helps
- Make sure server has enough RAM (4GB+ for 5+ players)

**Conflicts with other datapacks**
- Check if they use scoreboards starting with `foggy.*`
- Needs pack_format 48 (1.21.1+)
- Try running Foggy alone to isolate the issue

### Debug mode
```mcfunction
/tag @s add foggy.debug
```
Shows attention, tier info, cooldowns, etc. Remove with:
```mcfunction
/tag @s remove foggy.debug
```

More debugging:
```mcfunction
/function foggy:debug/dread_debug    # full dread system info
/function foggy:debug/show_state     # all scoreboards
/function foggy:config/stats         # general stats
```

## Version History

See [CHANGELOG.md](CHANGELOG.md) for detailed release notes.

**v3.1.0** (Dec 2025) - Fixed critical dread system bugs, added missing functions  
**v3.0.0** (Dec 2025) - Added dread system and config overhaul  
**v2.0.0** (2024) - Jumpscare system, streamer mode, multiplayer features  
**v1.0.0** (2024) - Initial release

## Community

Join the Discord for support, bug reports, and sharing clips: https://discord.gg/6nS2KqxQtj

### Contributing
Found a bug? Want a feature? Open an issue or hit up Discord.

### Credits
Developed by WormWoodMC  
Pack format 48 (Minecraft 1.21.1+)  
Current version: v3.1.0

## License

Apache License 2.0 - see [LICENSE](LICENSE)

You can use it, modify it, redistribute it. Just give credit.

---

If you like the pack, leave a diamond on [Planet Minecraft](https://www.planetminecraft.com/data-pack/foggy-6804671/) or share your reaction videos.

Don't play alone. Or do, if you're brave.

<div align="center">

🌫️ **The fog is always watching** 🌫️

</div>
