# Foggy: Migration Guide 1.21.1 → 26.1.2

**Target:** Minecraft 26.1.2 (Data pack format 101.1)
**From:** Minecraft 1.21.1 (Data pack format 48)
**Date:** June 2026

---

## Overview

This guide documents every breaking change across 7 major Minecraft releases (1.21.2 → 26.1.2) that affects Foggy. The migration must be applied incrementally; skipping versions will miss important intermediate format changes.

**Migration order:**
1. 1.21.2 (pack_format 57) -- item components, gamerule changes
2. 1.21.5 (pack_format 71) -- **SNBT text components** (biggest change)
3. 1.21.9 (pack_format 88) -- pack.mcmeta format change
4. 1.21.11 (pack_format 94) -- gamerule registry
5. 26.1 (pack_format 101) -- world storage, stricter validation

---

## Step 1: 1.21.2 (pack_format 57)

### Folder Renames (already done in Foggy)
| Old | New | Status |
|-----|-----|--------|
| `functions/` | `function/` | Done |
| `predicates/` | `predicate/` | Done |
| `loot_tables/` | `loot_table/` | Done |
| `advancements/` | `advancement/` | N/A |
| `recipes/` | `recipe/` | N/A |
| `item_modifiers/` | `item_modifier/` | N/A |
| `tags/blocks/` | `tags/block/` | Done |
| `tags/items/` | `tags/item/` | Done |
| `tags/functions/` | `tags/function/` | Done |
| `tags/entity_types/` | `tags/entity_type/` | N/A |
| `tags/fluids/` | `tags/fluid/` | N/A |
| `tags/game_events/` | `tags/game_event/` | N/A |

### Food / Consumable Component Split
In 1.21.2, `food` was split into `food` (nutrition data) + `consumable` (eating behavior).
- Foggy uses no item components in commands, so no change needed.

### Item Component Changes
- `fire_resistant` → `damage_resistant` with `types` field
- `lock` → item predicate format
- `boat`/`chest_boat` entity types split per variant
- Foggy uses no item components → no change needed.

### Gamerule Format
- `doInsomnia` → `do_insomnia`, etc. Foggy uses none → no change.

### pack.mcmeta
- Update `pack_format` to `57`.

---

## Step 2: 1.21.4 (pack_format 61)

### Predicate Changes
- `stepping_on` now only evaluates if entity is on ground. Foggy uses no stepping_on predicates → no change.

### Component Changes
- `model` → `asset_id` in equippable. N/A for Foggy.

### pack.mcmeta
- Update `pack_format` to `61`.

---

## Step 3: 1.21.5 (pack_format 71) -- MAJOR

### Text Components: JSON → SNBT

This is the single biggest change. Every `tellraw`, `title`, `playsound`, `bossbar`, and `scoreboard` display command must be converted.

**Old JSON format:**
```mcfunction
tellraw @a [{"text":"Hello","color":"red","bold":true}]
title @s actionbar [{"text":"Status","color":"gray"}]
tellraw @s [{"text":"Click here","color":"green","clickEvent":{"action":"run_command","value":"/help"}}]
tellraw @s [{"text":"Hover me","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Info"}]}}]
```

**New SNBT format:**
```mcfunction
tellraw @a [{text:"Hello",color:"red",bold:true}]
title @s actionbar [{text:"Status",color:"gray"}]
tellraw @s [{text:"Click here",color:"green",click_event:{action:"run_command",command:"/help"}}]
tellraw @s [{text:"Hover me",color:"aqua",hover_event:{action:"show_text",value:[{text:"Info"}]}}]
```

**Specific conversion rules:**

| Old JSON | New SNBT | Notes |
|----------|----------|-------|
| `{"text":"..."}` | `{text:"..."}` | Remove outer quotes on object |
| `"key":"value"` | `key:"value"` | Unquote SNBT keys |
| `"color":"red"` | `color:"red"` | Maps directly |
| `"bold":true` | `bold:true` | Maps directly |
| `"italic":true` | `italic:true` | Maps directly |
| `"clickEvent":{...}` | `click_event:{...}` | camelCase → snake_case |
| `"action":"run_command"` | `action:"run_command"` | No change |
| `"value":"/cmd"` | `command:"/cmd"` | `value` → `command` for click events |
| `"hoverEvent":{...}` | `hover_event:{...}` | camelCase → snake_case |
| `"show_text"` | `show_text` | No change |

### Player NBT Changes
- Spawn data consolidated: `SpawnX`/`SpawnY`/`SpawnZ` → `respawn:{pos:[I;x,y,z]}`
- `SpawnAngle` → `respawn:{angle:f}`
- `SpawnDimension` → `respawn:{dimension:"..."}`
- `SpawnForced` → `respawn:{forced:true}`
- Foggy reads no player NBT → no change needed.

### /data Command Changes
- `/data` supports heterogeneous lists natively (previously JSON-only).
- Foggy uses no `/data` commands → no change needed.

### /setblock, /fill, /clone, /place strict mode
- New `strict` placement mode added. Existing commands unaffected.

### pack.mcmeta
- Update `pack_format` to `71`.

---

## Step 4: 1.21.6-1.21.8 (pack_format 80-81)

### Item Model Changes
- `gui_light` → `gui_light` behavior changed. N/A.
- Various GUI/screen changes. N/A.

### pack.mcmeta
- Update `pack_format` to `80` (1.21.6) or `81` (1.21.7-8).

---

## Step 5: 1.21.9-1.21.10 (pack_format 88.0) -- MAJOR

### pack.mcmeta Format Overhaul

The `pack.mcmeta` format has been completely rewritten. The old `pack_format` field is replaced with `min_format`/`max_format`.

**Old format (1.21.8 and below):**
```json
{
  "pack": {
    "pack_format": 48,
    "description": "Foggy v4.2.0"
  }
}
```

**New format (1.21.9+ only, no legacy support):**
```json
{
  "pack": {
    "description": "Foggy v4.2.0",
    "min_format": [88, 0],
    "max_format": [88, 0]
  }
}
```

**New format (1.21.9+ with legacy support for pre-1.21.9):**
```json
{
  "pack": {
    "pack_format": 88,
    "description": "Foggy v4.2.0",
    "supported_formats": {
      "min_inclusive": 48,
      "max_inclusive": 88
    },
    "min_format": [88, 0],
    "max_format": [88, 0]
  }
}
```

### Particle Changes
- `flash` particle now requires `color` parameter. Foggy uses no particles → no change.

### pack.mcmeta
- Restructure to new `min_format`/`max_format` format.
- Set to `[88, 0]` for 1.21.9.

---

## Step 6: 1.21.11 (pack_format 94.1)

### Gamerule Registry
All gamerules moved to a registry. Must use `minecraft:` prefix and `snake_case`:
- `doFireTick` → `minecraft:do_fire_tick`
- `doMobSpawning` → `minecraft:do_mob_spawning`
- etc.

Foggy uses no `/gamerule` commands → no change needed.

### pack.mcmeta
- Update to `[94, 1]`.

---

## Step 7: 26.1-26.1.2 (pack_format 101.1)

### World Storage Changes (server-level, not datapack-level)
- Default dimensions stored in `dimensions/` subfolder.
- Player data moved to `players/` subdirectory.
- Command storage now namespaced.
- These are world-format changes, not datapack changes → no change needed.

### Stricter NBT Validation
- All JSON properties now strictly typed.
- Deprecated command syntax generates warnings (will error in 27.0).
- Full JSON required for commands where previously shorthand worked.
- Review all predicate JSON files for strict type compliance.

### Dimension Type Changes
- `has_ender_dragon_fight` field now required.
- Schema moved to new `attributes` system.
- Already using default dimension types → no change needed unless overriding.

### Block Tags
- `#dirt` split into `#dirt`, `#moss_blocks`, `#grass_blocks`, `#substrate_overworld`.
- `#wooden_doors` and `#trapdoors` still valid → check if Foggy tags need updating.

### pack.mcmeta
- Update to `[101, 1]` or `[101, 0]` for 26.1.
- Using supported_formats if backward compat needed.

---

## Automated Migration Tasks

### Task 1: Convert all JSON text components to SNBT

Scan all 190 .mcfunction files for JSON text patterns and convert.

**Patterns to find and replace:**

1. `[{"text":"` → `[{text:"`
2. `","color":"` → `,color:"`
3. `","bold":true` → `,bold:true`
4. `","italic":true` → `,italic:true`
5. `"clickEvent":{"action":"run_command","value":"` → `click_event:{action:"run_command",command:"`
6. `"clickEvent":{"action":"suggest_command","value":"` → `click_event:{action:"suggest_command",command:"`
7. `"hoverEvent":{"action":"show_text","value":[` → `hover_event:{action:"show_text",value:[`
8. `"hoverEvent":{"action":"show_text","value":{"text":"` → `hover_event:{action:"show_text",value:{text:"`
9. `}]` trailing → no change needed in SNBT
10. `"text":"` within JSON → `text:"`
11. `"color":"` → `color:"`
12. `"bold":` → `bold:`
13. `"italic":` → `italic:`
14. `"underlined":` → `underlined:`
15. `"strikethrough":` → `strikethrough:`
16. `"obfuscated":` → `obfuscated:`
17. `"score":{"name":"` → `score:{name:"`
18. `"score":{"name":"#foggy","objective":"` → `score:{name:"#foggy",objective:"`
19. `"selector":"` → `selector:"`

**Regex approach:**
- Find: `"(\w+)":"` → Replace: `$1:"` (unquote SNBT keys)
- Find: `"(\w+)":(\d+)` → Replace: `$1:$2` (numeric values)
- Find: `"clickEvent"` → Replace: `click_event`
- Find: `"hoverEvent"` → Replace: `hover_event`
- Find: `"action":"run_command","value"` → Replace: `action:"run_command",command`
- Find: `"action":"suggest_command","value"` → Replace: `action:"suggest_command",command`

### Task 2: Update pack.mcmeta

Convert to new format with min/max_format.

### Task 3: Validate all JSON predicate files

Ensure strict type compliance for 26.1.

### Task 4: Check block tags

Verify `#wooden_doors` and `#trapdoors` still function correctly.

---

## Verification

After migration, check:
1. Datapack loads without errors: `/reload`
2. Config menu renders correctly: `/function foggy:config`
3. All tier events trigger correctly: `/function foggy:debug/force_tier1` etc.
4. Stats display correctly: `/function foggy:config/stats`
5. Watcher sequence works: `/function foggy:debug/force_the_watcher`
6. No warnings in server console about deprecated syntax

---

## Summary of pack.mcmeta values by version

| Minecraft | pack_format | Foggy Action |
|-----------|-------------|--------------|
| 1.21.1 | 48 | Starting point |
| 1.21.2-1.21.3 | 57 | Intermediate step |
| 1.21.4 | 61 | Intermediate step |
| 1.21.5 | 71 | **Major: SNBT conversion** |
| 1.21.6 | 80 | Intermediate step |
| 1.21.7-1.21.8 | 81 | Intermediate step |
| 1.21.9-1.21.10 | 88.0 | **Major: pack.mcmeta format** |
| 1.21.11 | 94.1 | Gamerule registry |
| 26.1-26.1.2 | 101.1 | Stricter validation |
| 26.2 | 107.1 | Future |
| 26.3 (snapshot) | 108.0 | Future |
