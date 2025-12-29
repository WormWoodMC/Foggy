# Foggy System Diagnostic
tellraw @s [{"text":"=== FOGGY SYSTEM DIAGNOSTIC ===","color":"gold"}]

# Check if foggy objectives exist
tellraw @s [{"text":"Checking scoreboards...","color":"aqua"}]
scoreboard players display name #foggy foggy.attention foggy.attention
execute if score #foggy foggy.enabled matches 1 run tellraw @s [{"text":"✓ Scoreboards created: YES","color":"green"}]
execute unless score #foggy foggy.enabled matches 1 run tellraw @s [{"text":"✗ Scoreboards created: NO","color":"red"}]

# Check global settings
tellraw @s [{"text":"Global Settings:","color":"aqua"}]
tellraw @s [{"text":"  Enabled: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.enabled"},"color":"yellow"}]
tellraw @s [{"text":"  Dread Enabled: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread_enabled"},"color":"yellow"}]
tellraw @s [{"text":"  Manifestations Enabled: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.manifestations_enabled"},"color":"yellow"}]
tellraw @s [{"text":"  Dread Multiplier: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread_multiplier"},"color":"yellow"}]

# Check player scores
tellraw @s [{"text":"Your Scores:","color":"aqua"}]
execute store result score @s foggy.hp run attribute @s minecraft:generic.max_health get
tellraw @s [{"text":"  Attention: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.attention"},"color":"yellow"}]
tellraw @s [{"text":"  Player Dread: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.player_dread"},"color":"yellow"}]
tellraw @s [{"text":"  Total Dread: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread"},"color":"yellow"}]
tellraw @s [{"text":"  Cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"yellow"}]
tellraw @s [{"text":"  Timer: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.timer"},"color":"yellow"}]

# Check tick status
tellraw @s [{"text":"Tick Status:","color":"aqua"}]
tellraw @s [{"text":"  Attention Tick: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.attn_tick"},"color":"yellow"}]

# Check location predicates
tellraw @s [{"text":"Location Check:","color":"aqua"}]
execute if predicate foggy:is_in_darkness run tellraw @s [{"text":"  ✓ In Darkness","color":"green"}]
execute unless predicate foggy:is_in_darkness run tellraw @s [{"text":"  ✗ In Darkness","color":"red"}]
execute if predicate foggy:is_underground run tellraw @s [{"text":"  ✓ Underground","color":"green"}]
execute unless predicate foggy:is_underground run tellraw @s [{"text":"  ✗ Underground","color":"red"}]
execute if predicate foggy:is_nighttime run tellraw @s [{"text":"  ✓ Nighttime","color":"green"}]
execute unless predicate foggy:is_nighttime run tellraw @s [{"text":"  ✗ Nighttime","color":"red"}]

tellraw @s [{"text":"=== END DIAGNOSTIC ===","color":"gold"}]
