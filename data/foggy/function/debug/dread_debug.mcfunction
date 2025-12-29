# Debug command to show complete dread system status
tellraw @s {"text":"=== Foggy Dread System Status ===","color":"gold","bold":true}
tellraw @s [{"text":"Dread Enabled: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread_enabled"},"color":"white"}]
tellraw @s [{"text":"Attention: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.attention"},"color":"yellow"}]
tellraw @s [{"text":"Player Dread: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.player_dread"},"color":"red"}]
tellraw @s [{"text":"Total Dread: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread"},"color":"dark_red"}]
tellraw @s [{"text":"Dread Multiplier: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread_multiplier"},"color":"white"}]
tellraw @s [{"text":"Dread Decay: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread_decay"},"color":"white"}]
tellraw @s [{"text":"Attention Tick: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.attn_tick"},"color":"white"}]
tellraw @s {"text":"","color":"gray"}
tellraw @s {"text":"Thresholds:","color":"aqua"}
tellraw @s [{"text":"  • Whisper: 40-79","color":"green"}]
tellraw @s [{"text":"  • Nightmare: 80-119","color":"gold"}]
tellraw @s [{"text":"  • Summon: 120+","color":"red"}]
