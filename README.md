# Foggy -- Dynamic Horror Datapack for Minecraft

![Foggy Banner](https://static.planetminecraft.com/files/image/minecraft/data-pack/2025/671/19416838-copilot_l.webp)

**An intelligent horror experience that adapts to player behavior.**

[![Download](https://img.shields.io/badge/Download-Planet%20Minecraft-green)](https://www.planetminecraft.com/data-pack/foggy-6804671/)
[![Version](https://img.shields.io/badge/Version-4.2.0-blue)](https://minecraft.net)
[![Minecraft](https://img.shields.io/badge/Minecraft-26.1.2-brightgreen)](https://minecraft.net)
[![License](https://img.shields.io/badge/License-Apache%202.0-purple)](LICENSE)

---

## Content Warning

Foggy has jump scares, ambient horror audio, and psychological effects. If you have anxiety, photosensitivity, or a heart condition, turn on **Safe Mode** or **Streamer Mode**. Not recommended for solo first-time play.

---

## What is Foggy?

Foggy watches what you do and makes things worse. The longer you stay in the dark, the more it notices you. It tracks attention based on how scared you should be, turns that into dread, and starts throwing horror events at you.

**The basics:**
- Stays in the dark? Attention goes up.
- Hold a torch or stand near light? Attention goes down.
- Attention stays high? Dread builds up.
- Dread gets high enough? Things start happening.

**What kind of things?**
- Tier 1 (attention 15-35): subtle sounds, items move, quick darkness flickers
- Tier 2 (attention 36-60): doors open and close, lights go out, cold touch
- Tier 3 (attention 61-80): phantom strikes, inventory rot, whispers, spectral arrows
- Tier 4 (attention 81-100): life drain, suffocation, The Watcher

---

## Installation

**Requirements:** Minecraft Java 26.1.2 or newer. That's it.

For servers with lots of players (5+), you will want at least 4GB RAM.

**Singleplayer:**
1. Download from [Planet Minecraft](https://www.planetminecraft.com/data-pack/foggy-6804671/)
2. Drop the Foggy folder into `.minecraft/saves/[YourWorld]/datapacks/`
3. Load the world
4. Run `/reload` if it was already loaded
5. Type `/function foggy:config` to set things up

**Multiplayer:**
1. Stop the server
2. Put Foggy folder in `[ServerRoot]/[WorldName]/datapacks/`
3. Start the server
4. Check it loaded with `/function foggy:config/stats`
5. Configure multiplayer: `/function foggy:config/advanced`

**Optional Resource Pack**
There is a resource pack with custom horror sounds. Not required, but recommended for the full experience.

---

## Getting Started

Run `/function foggy:config` to open the config menu. Click the buttons to change settings.

**Basic settings:**
- Intensity: Low (50%), Medium (100%), High (150%) -- how aggressive the horror is
- Streamer Mode: gives you warnings before jump scares
- Safe Mode: disables flashing lights and darkness effects
- Volume: Quiet (50%), Normal (100%), Loud (150%)
- Ambient Events: toggle subtle environment sounds
- Echo Whispers: toggle rare directional whispers
- Ritual Bell: toggle the bell mechanic

**Advanced settings:**
- Max Tier: limit how bad things can get (1-4)
- Manifestation Rate: how often events happen (25%-200%)
- Dread Multiplier: how fast dread builds (1x-3x)
- Dread Decay: how fast dread fades (slow/medium/fast)
- Fear Spread Radius: how far fear travels between players (close/normal/wide)

---

## The Watcher

When things get bad enough (Tier 4), The Watcher shows up. Here is how it works:

1. You will hear a distant sound. Something is coming.
2. A phantom with a red nameplate spawns behind you.
3. The sound gets louder. You get a final warning.
4. Jump scare. Blindness. Slowness.
5. Now it hunts you for up to 30 seconds.

**How to survive The Watcher:**
- **Ring a bell** -- three quick rings banishes it.
- **Stand in bright light** (light level 12+) -- it cannot follow you there.
- If it catches you: 8 hearts of damage, Blindness II, Slowness II, and the message "It touched you."

---

## Safe Mode

Safe Mode disables all flashing and darkness effects. Useful for players with photosensitivity or anyone who just hates the screen flashes. Toggle it in the config menu or with `/function foggy:config/safe_mode/toggle`.

---

## Ritual Bell

Ring a bell three times within 10 seconds to perform a ritual. Each successful ritual:
- Drops your attention by 35
- Clears darkness effects
- Gives you Resistance I for 30 seconds
- Banishes The Watcher if it is hunting you

There is a cooldown between rituals.

---

## Debug Commands

- `/tag @s add foggy.debug` -- shows live debug info on your actionbar
- `/tag @s remove foggy.debug` -- turns it off
- `/function foggy:debug/dread_debug` -- shows full dread system status

Debug overlay shows: `[ATT | DRD | gDRD | CD]` (attention, player dread, global dread, cooldown).

---

## Soul Sand and Soul Soil

Standing on soul sand or soul soil reduces your attention and prevents The Watcher from triggering. The blue fire calms the fog.

---

## Lore

Get the "Torn Field Notes" with `/function foggy:give_lore` or `/loot give @s loot foggy:chests/foggy_lore_book`. The notes contain the last writings of someone who did not make it.

---

## Statistics

Check your stats with `/function foggy:config/stats`. Tracks jumpscares, rituals performed, Watcher encounters, and max attention reached -- per player and globally.

---

## Quick Command Reference

```
/function foggy:config                        -- open config menu
/function foggy:config/stats                  -- view statistics
/function foggy:config/safe_mode/toggle       -- toggle safe mode
/function foggy:config/streamer/toggle        -- toggle streamer mode
/function foggy:dread/status                  -- check dread levels
/function foggy:give_lore                     -- get the lore book
/tag @s add foggy.debug                       -- enable debug overlay
```

---

## Building from Source

No build step. It is raw Minecraft functions and JSON. Drop and play.

---

## License

Apache 2.0. See the LICENSE file.

---

## Credits

Foggy was created for Minecraft Java Edition. Inspired by horror games that do not rely on jump scares alone, but on atmosphere and the feeling of being watched.
