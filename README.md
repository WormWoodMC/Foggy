# 🌫️ FOGGY - A Horror Datapack for Minecraft

<div align="center">

![Foggy Banner](https://static.planetminecraft.com/files/image/minecraft/data-pack/2025/671/19416838-copilot_l.webp)

**Experience true fear in Minecraft**

[![Download](https://img.shields.io/badge/Download-Planet%20Minecraft-green)](https://www.planetminecraft.com/data-pack/foggy-6804671/)
[![Version](https://img.shields.io/badge/Version-1.21.1-blue)](https://minecraft.net)
[![License](https://img.shields.io/badge/License-MIT-purple)](LICENSE)

</div>

---

## ⚠️ Heads Up

This pack has jump scares, creepy sounds, and some genuinely unsettling moments. If you're easily startled or have anxiety, maybe sit this one out—or at least turn on Streamer Mode first.

---

## 🎮 What's Inside

### The Basics
- **Fog that watches you** - It reacts to what you're doing
- **Things get worse over time** - Four levels of "oh no"
- **Pay attention and it notices** - The more aware you are, the more it messes with you
- **Bring friends** - Misery loves company, and so does this datapack

### For Streamers & YouTubers
- **Streamer Mode** - Get a heads up before jump scares so you don't throw your mouse
- **Adjustable intensity** - Dial it up or down depending on your audience
- **Volume settings** - Because not everyone wants their eardrums destroyed
- **Great for content** - Your chat will love watching you suffer

### The Scary Stuff
- **Something is watching** - You'll feel it before you see it
- **Mind games** - Blindness, weird sounds, that feeling you're not alone
- **Things move on their own** - Did that block just...?
- **It can hurt you** - Eventually

---

## 📥 Getting Started

### Playing Solo
1. Grab the datapack
2. Drop it in your world's `datapacks` folder
3. Load up your world and run `/reload`
4. Good luck

### On a Server
1. Shut down the server first
2. Put the `foggy` folder in your world's `datapacks` directory
3. Start it back up
4. Everyone gets to be scared together

### Resource Pack
There's an optional resource pack with custom sounds. Highly recommended if you want the full experience.

---

## 🎛️ Settings

Open the menu:
```
/function foggy:config
```

### What You Can Change
- **Intensity** - Low, Medium, or High (for the brave)
- **Streamer Mode** - Warnings before the scary bits
- **Volume** - How loud the jump scares hit
- **Dread multiplier & decay** - Adjust how fast the fog tracks player dread and how quickly it slips away
- **Fear spread radius** - Choose whether the fog shares dread with tight-knit groups or spreads across the whole party

### Quick Commands
```
/function foggy:config/intensity/high
/function foggy:config/streamer/toggle
/function foggy:config/volume/loud
```

### Dread Commands
```
/function foggy:config/dread           # Open the full dread control panel
/function foggy:config/dread/multiplier_calm|balanced|aggressive
/function foggy:config/dread/decay_slow|medium|fast
/function foggy:config/dread/radius_close|normal|wide
/function foggy:dread/status            # Instant readout of dread totals
/function foggy:dread/thresholds        # Describe the whisper/nightmare/summon breakpoints
```

Streamer Mode now shows the current total/player dread on the action bar, so content creators can keep a calm face while the fog builds toward its whispers, nightmares, and final summons.

### Dread Control Shortcuts
```
/function foggy:config/dread
```

---

## 🎯 How This Thing Works

### What Makes It Notice You
- Hanging out in the dark
- Low on health
- No one else around
- Deep underground
- Bad weather, late at night

### The Four Stages
1. **Just Vibes (10-30)** - Weird sounds, uneasy feeling
2. **Getting Weird (31-60)** - Stuff moves, shadows flicker
3. **Not Great (61-85)** - You start taking damage, environment shifts
4. **Run (86-100)** - The Watcher shows up. Good luck.

### With Friends
- Fear is contagious—get close to someone scared and you'll feel it too
- More scared players = worse manifestations
- At least you'll have someone to scream with

---

## 📸 Media

<div align="center">

*Got a good clip? Send it over and I might feature it here!*

</div>

---

## 🐛 Something Wrong?

### Common Fixes
- **Nothing happening?** - Make sure you're on 1.21.1 and the pack is enabled
- **Too scary?** - `/function foggy:config/intensity/low`
- **Lag?** - Fewer players or lower intensity helps

### Debug Info
Want to see what's going on under the hood?
```
/tag @s add foggy.debug
```

---

## 🔄 Version History

### v3.0.0 - CURRENT
- **NEW**: Comprehensive configuration hub with streamlined intensity, volume, streamer, advanced manifestation, and dread menus plus dedicated help/stats readouts so you can adjust each fear parameter without memorizing commands (@data/foggy/function/config.mcfunction#1-21, @data/foggy/function/config/help.mcfunction#1-15, @data/foggy/function/config/stats.mcfunction#1-14, @data/foggy/function/config/dread.mcfunction#1-20).
- **NEW**: Dread escalation system that tracks player attention, exposes multiplier/decay/radius controls, and feeds a streamer-mode action bar so creators can see how close the fog is to whisper/nightmare/summon, plus helper readouts that explain thresholds (@data/foggy/function/dread/tick.mcfunction#1-9, @data/foggy/function/config/dread/enable.mcfunction#1-3, @data/foggy/function/config/dread/streamer_status.mcfunction#1-1, @data/foggy/function/streamer/dread_status.mcfunction#1-1, @data/foggy/function/dread/status.mcfunction#1-1, @data/foggy/function/dread/thresholds.mcfunction#1-3).
- **NEW**: Multiplayer fear spread now respects configurable radiuses with close/normal/wide presets so server admins can tailor how quickly dread jumps from player to player while still showing Streamer Mode warnings (@data/foggy/function/multiplayer/shared_fear.mcfunction#1-9, @data/foggy/function/multiplayer/spread_fear_radius_close.mcfunction#1-8, @data/foggy/function/multiplayer/spread_fear_radius_wide.mcfunction#1-8).
- **IMPROVED**: Initialization routine registers the new dread scoreboards, default tuning values, and a v3 welcome message while keeping pack metadata synced for `pack_format` 48 deployments (@data/foggy/function/load.mcfunction#1-57, @pack.mcmeta#1-7).

### v2.0.0 - MAJOR UPDATE
- **NEW**: Enhanced jumpscare system with dramatic buildup and flash effects
- **NEW**: Streamer Mode with visual warnings before jump scares
- **NEW**: Clickable configuration menu for easy settings
- **NEW**: Volume control system (Quiet/Normal/Loud)
- **NEW**: Intensity settings that affect manifestation frequency
- **NEW**: Multiplayer shared fear mechanics
- **IMPROVED**: Better performance and optimization
- **IMPROVED**: More balanced progression system
- **FIXED**: Critical bugs in fear spreading mechanics

### v1.0.0
- First release
- Core systems working
- Basic multiplayer support

### What's Next
- Custom resource pack with sounds
- More manifestation types
- Lore system
- Server optimizations

---

## 💬 Get in Touch

Got questions? Found a bug? Just want to tell me how much I scared you?

[\[Discord Server Link\]](https://discord.gg/6nS2KqxQtj)

---

## 📄 License

Apache License 2.0

---

## ⭐ If You Liked It

- Drop a diamond on Planet Minecraft
- Share it with friends who scare easily
- Send me your reaction clips

---

<div align="center">

**Built late at night when I probably should have been sleeping**

*Don't play alone. Or do. I'm not your mom.*

</div>
