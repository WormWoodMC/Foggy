
# Foggy — A small, reactive horror datapack

![Foggy Banner](https://static.planetminecraft.com/files/image/minecraft/data-pack/2025/671/19416838-copilot_l.webp)

[![Download](https://img.shields.io/badge/Download-Planet%20Minecraft-green)](https://www.planetminecraft.com/data-pack/foggy-6804671/)
[![Version](https://img.shields.io/badge/Version-3.2.0-blue)](https://github.com/WormWoodMC/Foggy/releases/tag/v3.2.0)
[![Minecraft](https://img.shields.io/badge/Minecraft-1.21.1-brightgreen)](https://minecraft.net)
[![License](https://img.shields.io/badge/License-Apache%202.0-purple)](LICENSE)

Foggy adds quiet, tense moments and occasional shocks that respond to player behavior. It aims to be fair: your choices matter, and the pack gives you options to tone things down or tailor the experience for streams.

---

## Content warning

Foggy can include jump scares, unsettling audio, and visual effects. If you have epilepsy, heart conditions, or severe anxiety, consider using `Streamer Mode`, reducing `Intensity`, or avoiding this pack.

## Quick start

1. Confirm you're running Minecraft Java 1.21.1 or newer.
2. Download the datapack and place the `Foggy` folder in your world's `datapacks/` directory.
3. Load the world and run `/reload` (or restart the server).
4. Run `/function foggy:config` to open the configuration menu.

For servers with many players, allocate extra RAM (4GB+ recommended for 5+ players).

## What Foggy does (short)

- Tracks simple environmental factors (darkness, time, health, nearby players).
- Builds an `attention` score that feeds into longer-term `dread` accumulation.
- Triggers manifestations that range from subtle ambience to dangerous events.
- Supports multiplayer: fear can spread between nearby players (configurable).

## Controls & useful commands

- Open configuration: `/function foggy:config`
- View dread status: `/function foggy:dread/status`
- Toggle streamer warnings: `/function foggy:config/streamer/toggle`
- Enable debug overlay (local): `/tag @s add foggy.debug`
- Remove debug: `/tag @s remove foggy.debug`

See the `data/foggy/function/config` directory for quick preset functions you can run directly.

## Configuration highlights

- Intensity presets: low / medium / high — affect how often manifestations occur.
- Streamer Mode: provides on-screen warnings and countdowns.
- Volume presets: quiet / normal / loud — useful without a resource pack.
- Manifestation limits: you can cap the maximum tier if you prefer milder play.

## Troubleshooting (short)

- Nothing appears? Run `/function foggy:config/stats` to check loading.
- Pack requires `pack_format` 48 (Minecraft 1.21.1+).
- If multiple datapacks use `foggy.*` scoreboards, rename or isolate them to avoid conflicts.

## For content creators

Streamer Mode and volume/intensity presets let you prepare warnings and make the pack safe for viewers. Use `/function foggy:config/streamer/enable` to force warnings before larger events.

## Development & changelog

See `CHANGELOG.md` for full release notes. This repository follows semantic versioning.

## Version

Current release: v3.2.0

---

If you'd like, I can expand specific sections (installation screenshots, a short GIF, or a more detailed command table). Pull requests and issues are welcome.

© WormWoodMC — Apache-2.0

