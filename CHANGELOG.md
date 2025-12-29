# Changelog

All notable changes to this project are documented here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [3.1.1] - 2025-12-29

### Added
- Sleep exclusions: sleeping players are excluded from blindness and all manifestations.
- Sleep reset: sleeping now fully resets dread/attention and clears active effects and tags.
- Persistent darkness handling: tag-based system (`foggy.has_darkness`, `foggy.high_fear`) to apply effects once and only remove when conditions are no longer met.

### Changed
- Replaced visually obtrusive blaze/soul/witch/flash particles with gameplay effects (blindness/slowness) or greatly reduced counts.
- Prevented seizure-inducing strobing by using long-duration darkness (persistent) instead of reapplying blindness every tick.
- Attention pulse rebalancing for fair, preventable gameplay:
  - Night only raises attention when also in darkness.
  - Rain raises attention only when in darkness/outdoors.
  - Underground raises attention only in darkness.
  - Holding light now reduces attention more strongly (both hands rewarded).
  - Low health attention gain reduced; scales gently with lower health.
- Amplify behavior refactor: no repeated auto-escalation. Uses `foggy.amplified` tag to trigger once; clears when intensity drops. Tier 4 force now requires extreme intensity.
- Tier ranges reorganized for clarity and progression: Tier 1 (15–35), Tier 2 (36–60), Tier 3 (61–80), Tier 4 (81–100).

### Fixed
- Blindness reapplication causing strobing and potential health risks; replaced with persistent darkness and clean removal logic.
- Sleep did not reliably stop effects; now properly prevents and resets.
- Particle clutter creating visual obstruction; removed or minimized across manifestations and multiplayer effects.

### Removed
- `soul_flame` and other heavy particle visuals from amplification and jumpscares.
- Flash/witch particle bursts during jumpscares in favor of effect-based cues.

### Technical Notes
- Long-duration darkness applied once; removal when attention < 50 or when holding a torch.
- New/updated tags: `foggy.has_darkness`, `foggy.high_fear`, `foggy.amplified` cleared on reset.
- Manifestation selection excludes sleeping players (`SleepTimer` NBT check).

## [3.1.0] - 2025-12-29

### Fixed
- **CRITICAL**: Dread system wasn't triggering anything - turns out I forgot to create the whisper/nightmare/summon functions that tick.mcfunction was calling. Whoops.
- Dread was still accumulating even when disabled. Added proper state checks.
- Attention pulses were only firing every 121 ticks instead of every 10. The evaluate function resets the counter to 0, but the tick function was checking for 121+ before resetting. This meant pulses happened ~6 seconds apart instead of 0.5s. Fixed the logic.
- Dread accumulation/decay now respects the enabled flag properly.

### Added
- `foggy:dread/whisper` - handles dread 40-79, triggers Tier 1 stuff
- `foggy:dread/nightmare` - handles dread 80-119, triggers Tier 2-3 events  
- `foggy:dread/summon` - handles dread 120+, triggers Tier 3-4 including The Watcher
- New debug command `/function foggy:debug/dread_debug` shows everything about the dread system
- Better comments in dread/tick.mcfunction explaining what each section does

### Changed
- Cleaned up dread system architecture - now has proper three-tier escalation
- All dread score modifications now check if system is enabled first
- Rewrote some function comments to be more helpful
- Adjusted manifestation thresholds slightly for better balance

### Documentation
- Rewrote README to be more technical and less casual
- Added proper tables for attention factors and dread thresholds
- Created this changelog
- Better command reference with examples
- Added troubleshooting section

### Technical Notes
- Attention now evaluates every 10 ticks like it should
- Dread properly accumulates when attention >= 40, decays when < 40
- Three dread levels correctly trigger their respective manifestation tiers
- State management is consistent across all dread functions now

---

## [3.0.0] - 2025-12

### Added
- **Configuration Hub**: Comprehensive menu system with clickable options (`/function foggy:config`)
- **Dread System**: Complete dread escalation mechanics with multiplier/decay/radius controls
  - Dread multiplier presets: Calm (1x), Balanced (2x), Aggressive (3x)
  - Decay rate presets: Slow (0.5/tick), Medium (1/tick), Fast (2/tick)
  - Fear spread radius: Close (4 blocks), Normal (8 blocks), Wide (16 blocks)
- **Streamer Mode Enhancement**: Real-time dread status display on action bar
  - Shows total dread and player dread values
  - Visible warnings before manifestations
- **Dread Commands**:
  - `/function foggy:dread/status` - Display current dread levels
  - `/function foggy:dread/thresholds` - Show trigger breakpoints
  - `/function foggy:config/dread` - Open dread control panel
- **Help System**: Interactive help menu (`/function foggy:config/help`)
- **Statistics Dashboard**: Track jumpscares and system performance (`/function foggy:config/stats`)

### 🆕 Scoreboards
- `foggy.player_dread` - Individual player dread accumulation
- `foggy.dread` - Total server dread (sum of all players)
- `foggy.dread_enabled` - System enable/disable flag
- `foggy.dread_multiplier` - Configurable accumulation rate
- `foggy.dread_decay` - Configurable decay rate
- `foggy.fear_spread_radius` - Multiplayer dread sharing distance
- `foggy.attn_tick` - Attention system tick counter

### 🔄 Changed
- Updated pack format to 48 (Minecraft 1.21.1 compatibility)
- Reorganized configuration functions into logical subdirectories
- Improved initialization sequence with default value assignment
- Enhanced multiplayer fear spread with configurable radius system
- Refined version check mechanism

### 📚 Documentation
- Updated README with dread system explanation
- Added configuration examples and command reference
- Documented dread thresholds: Whisper (40-79), Nightmare (80-119), Summon (120+)

### 🎯 Technical Details
- **Load Function**: Initializes 8 new scoreboards for dread system
- **Tick Function**: Added dread system processing and streamer mode display
- **Attention System**: Now feeds into dread accumulation calculation
- **Multiplayer**: Fear spread respects configurable radius (4/8/16 blocks)

---

## [2.0.0] - 2024

### Added
- **Enhanced Jumpscare System**: Dramatic buildup with screen effects
  - Flash effects using blindness with custom duration
  - Gradual sound escalation before jumpscare peak
  - Screen shake recovery mechanics
- **Streamer Mode**: Visual countdown warnings before jumpscares
  - Configurable enable/disable
  - Title-based warning system
  - 3-2-1 countdown before major events
- **Volume Control System**:
  - Quiet (50% volume)
  - Normal (100% baseline)
  - Loud (150% volume)
- **Intensity Settings**:
  - Low (50% manifestation rate)
  - Medium (100% baseline)
  - High (150% frequency)
- **Multiplayer Features**:
  - Shared fear mechanics between nearby players
  - Configurable fear spread radius
  - Optional shared cooldowns to prevent spam
  - Amplified manifestations in groups
- **Configuration Menu**: Interactive clickable menu system
- **Statistics Tracking**: Jumpscare counter and performance metrics

### 🆕 Manifestations
- **Tier 4 Enhancements**:
  - The Watcher: Ultimate entity manifestation with glowing effect
  - Player Displacement: Teleportation mechanic with validation
  - Life Drain: Gradual health loss with visual feedback
  - Suffocation: Temporary breathing restriction effect

### 🔄 Changed
- Rebalanced attention thresholds for more gradual progression
- Improved blindness flickering algorithm
- Optimized cooldown calculation for better performance
- Enhanced bell interaction detection
- Refined sleep reset mechanics

### 🐛 Fixed
- Critical bugs in fear spreading mechanics
- Multiplayer synchronization issues
- Cooldown timer inconsistencies
- Edge cases in manifestation selection

### 🎯 Technical Details
- Added `foggy.intensity` scoreboard (range: 50-200)
- Added `foggy.volume` scoreboard (range: 50-150)
- Added `foggy.streamer_mode` flag (0/1)
- Added `foggy.jumpscare_count` tracker
- Implemented random number generation for volume variation
- Created modular configuration function structure

---

## [1.0.0] - 2024

### Initial Release
- **Core Attention System**: Monitors player behavior and environment
  - Darkness detection (light level ≤ 4)
  - Underground detection (Y < 50)
  - Nighttime tracking (game time 13000-23000)
  - Weather monitoring (rain/thunder)
  - Isolation detection (no players within 32 blocks)
  - Low health tracking (<6 hearts)
  - Light source inventory check
- **Four-Tier Manifestation System**:
  - **Tier 1 (10-30 attention)**: Ambient dread, item displacement
  - **Tier 2 (31-60 attention)**: Door manipulation, light snuffing, cold touch
  - **Tier 3 (61-85 attention)**: Phantom strikes, inventory corruption, false sounds
  - **Tier 4 (86-100 attention)**: Life drain, displacement, The Watcher
- **Blindness System**: Flickering darkness effect based on attention
- **Bell Mechanics**: Temporary respite from ambient sounds
- **Cooldown System**: Prevents manifestation spam (40-240 seconds based on tier)
- **Multiplayer Support**: Basic shared fear mechanics

### 🆕 Manifestations
- **Tier 1**: Ambient Dread (eerie sounds), Item Displacement (inventory shuffling)
- **Tier 2**: Door Manipulation (autonomous door control), Light Snuffing (torch extinguishing), Cold Touch (slowness effect)
- **Tier 3**: Phantom Strikes (invisible damage), Inventory Corruption (food transformation), False Sounds (deceptive audio)
- **Tier 4**: Life Drain (health loss), Player Displacement (teleportation), The Watcher (entity summon), Suffocation (breathing restriction)

### 📊 Scoreboards Implemented
- `foggy.attention` - Core fear metric (0-100)
- `foggy.timer` - Global tick counter
- `foggy.cooldown` - Per-player manifestation cooldown
- `foggy.enabled` - Global system enable flag
- `foggy.blindness_enabled` - Blindness effect toggle
- `foggy.manifestations_enabled` - Manifestation system toggle
- `foggy.bflicker` - Blindness flicker timer
- `foggy.rng` - Random number generation
- `foggy.hp` - Health tracking (x10 for precision)
- `foggy.bell` - Bell interaction counter
- `foggy.sleep` - Sleep detection

### 🎯 Technical Details
- Pack format: 26 (Minecraft 1.20.x compatible)
- Attention evaluation: Every 10 ticks (0.5 seconds)
- Global timer reset: Every 1200 ticks (60 seconds)
- Attention clamping: 0-100 range
- Supports Creative/Spectator immunity

---

## [Unreleased] - Future Roadmap

### 🔮 Planned Features
- **Custom Resource Pack**: Complete audio overhaul with original horror sounds
- **Additional Manifestations**:
  - Shadow entities that follow players
  - Structural changes (temporary wall/floor modifications)
  - Weather manipulation tied to dread levels
  - Time distortion effects
- **Lore System**:
  - Discoverable journal entries
  - Hidden narrative elements
  - Achievement system for horror milestones
- **Advanced Configuration**:
  - Per-dimension intensity settings
  - Biome-specific manifestation variants
  - Custom attention factor weighting
- **Performance Optimizations**:
  - Server-side efficiency improvements for 20+ player servers
  - Reduced tick load for low-end hardware
  - Optional lightweight mode
- **Integration Support**:
  - Compatibility API for other horror datapacks
  - Webhook notifications for server admins
  - Metrics export for analytics

### 🐛 Known Issues
- None currently reported

---

## Migration Guides

### Migrating from v3.0.0 to v3.1.0
Just update and reload. This is a bugfix release - no breaking changes.

If you want to verify everything's working:
```
/function foggy:debug/dread_debug
/function foggy:config/stats
```
Then go somewhere dark and check if manifestations trigger.

### Migrating from v2.0.0 to v3.0.0
**Required actions**:
1. Backup your world before updating
2. Install v3.0.0 and run `/reload`
3. Reconfigure dread settings: `/function foggy:config/dread`
4. Verify multiplayer settings: `/function foggy:config/advanced`

**New features to configure**:
- Dread multiplier (default: Balanced - 2x)
- Dread decay rate (default: Medium - 1/tick)
- Fear spread radius (default: Normal - 8 blocks)

**Breaking changes**:
- Attention thresholds now feed into dread system
- Manifestation triggers use dread levels instead of pure attention
- Old attention-based triggers still function but now influenced by total dread

### Migrating from v1.0.0 to v2.0.0
**Required actions**:
1. Backup your world
2. Remove old datapack completely
3. Install v2.0.0 and run `/reload`
4. Configure new settings: `/function foggy:config`

**New features to configure**:
- Intensity level (default: Medium)
- Volume level (default: Normal)
- Streamer Mode (default: Disabled)

**Breaking changes**:
- Pack format updated to 26+ (requires Minecraft 1.20+)
- Scoreboard names unchanged (no data loss)
- Configuration system completely redesigned

---

## Bug Reports

Found a bug? Drop by the Discord or open an issue with:
- Version (run `/function foggy:config/stats`)
- Minecraft version
- Singleplayer or server
- How to reproduce it
- Debug output if possible (`/tag @s add foggy.debug`)
- Other datapacks you're running

### Feature Requests
Hit us up on Discord: https://discord.gg/6nS2KqxQtj

Be specific about what you want and why. Screenshots or examples help.

---

**[3.1.0]**: https://github.com/WormWoodMC/Foggy/releases/tag/v3.1.0  
**[3.0.0]**: https://github.com/WormWoodMC/Foggy/releases/tag/v3.0.0  
**[2.0.0]**: https://github.com/WormWoodMC/Foggy/releases/tag/v2.0.0  
**[1.0.0]**: https://github.com/WormWoodMC/Foggy/releases/tag/v1.0.0
