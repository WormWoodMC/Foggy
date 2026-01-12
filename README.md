# 🌫️ FOGGY - Dynamic Horror Datapack for Minecraft

<div align="center">

![Foggy Banner](https://static.planetminecraft.com/files/image/minecraft/data-pack/2025/671/19416838-copilot_l.webp)

**An intelligent horror experience that adapts to player behavior**

[![Download](https://img.shields.io/badge/Download-Planet%20Minecraft-green)](https://www.planetminecraft.com/data-pack/foggy-6804671/)
[![Version](https://img.shields.io/badge/Version-3.1.1-blue)](https://minecraft.net)
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

```markdown
# Foggy — Dynamic horror datapack for Minecraft

Foggy is a configurable horror datapack that responds to player behavior and environmental conditions. It tracks an "attention" value per player that can escalate into a shared "dread" state, triggering progressively severe manifestations as values rise.

Version: 4.0.0
Requires: Minecraft Java 1.21.1 or newer

----

## Overview

Foggy monitors player state (light level, health, location, weather, proximity to other players) and converts these inputs into two primary metrics:

- `attention`: a short-term measure of player vulnerability (0–100).
- `dread`: a longer-term accumulation derived from attention that can trigger manifestations when thresholds are reached.

Major systems:
- Attention and dread evaluation
- Four-tier manifestation system (Tier 1–4)
- Configurable intensity, volume, and multiplayer behavior
- Streamer mode for pre-warning jumpscares and action-bar visibility

## Installation

1. Ensure Minecraft Java 1.21.1 or later.
2. Place the `Foggy` folder in your world's `datapacks` directory.
3. Load the world and run `/reload`.
4. Open configuration with `/function foggy:config`.

For servers: stop the server, install the datapack, then start the server and verify with `/function foggy:config/stats`.

## Configuration

Use `/function foggy:config` to access the configuration menu. Available settings include:

- Intensity presets (Low / Medium / High)
- Volume presets (Quiet / Normal / Loud)
- Streamer mode (enable/disable)
- Dread multiplier and decay settings
- Multiplayer fear spread radius and shared cooldowns
- v4.0.0 toggles: Ambient Events, Echo Whispers, Ritual Bell

Toggle example:
```mcfunction
/function foggy:config/ambient/toggle
```

## Commands and Debugging

Common commands:

```mcfunction
/function foggy:config
/function foggy:config/stats
/function foggy:debug/dread_debug
```

Debugging:

```mcfunction
/tag @s add foggy.debug     # enable debug output for the current player
/tag @s remove foggy.debug  # disable debug output
```

## Mechanics (summary)

- Attention is evaluated every 10 ticks and clamped between 0 and 100.
- When attention ≥ 40, dread accumulates according to the configured multiplier; when attention < 40, dread decays at the configured rate.
- Manifestation tiers are selected based on attention and dread thresholds and are subject to cooldowns to avoid oversaturation.

Refer to `data/foggy/function` for the full implementation and fine-grained behavior.

## v4.0.0 Highlights

- Ambient Events: subtle, cosmetic environmental audio to improve atmosphere.
- Echo Whispers: rare directional ambient audio cues, cosmetic and configurable.
- Ritual Bell: a short ritual interaction that reduces attention with a cooldown.
- Configuration toggles for the new features are available in the config menu.

## Troubleshooting

If features are not active:

1. Confirm the datapack is installed and active with `/function foggy:config/stats`.
2. Run `/reload` after installing or updating the datapack.
3. Ensure you are not in Creative or Spectator mode (those modes are excluded from attention evaluation).

Performance tips:
- Lower the intensity preset to reduce event frequency.
- Disable multiplayer fear spread on high-player servers.

## Contributing and License

Contributions and bug reports are welcome. See `LICENSE` for license terms (Apache 2.0).

For community discussion and support, use the project Discord.

----
``` 
Shows attention, tier info, cooldowns, etc. Remove with:
