# Statistics Menu - v2.0.0
tellraw @a {"text":"=== Foggy v2.0.0 Statistics ===","color":"gold","bold":true}
tellraw @a {"text":"","color":"gray"}
tellraw @a [{"text":"• Jumpscares Triggered: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.jumpscare_count"},"color":"white"}]
tellraw @a [{"text":"• Current Version: ","color":"gray"},{"text":"v2.0.0","color":"white"}]
tellraw @a [{"text":"• Pack Format: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.version"},"color":"white"}]
tellraw @a [{"text":"• Current Intensity: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.intensity"},"color":"white"},{"text":"%","color":"dark_gray"}]
tellraw @a [{"text":"• Volume Level: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.volume"},"color":"white"},{"text":"%","color":"dark_gray"}]
tellraw @a [{"text":"• Max Tier: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.max_tier"},"color":"white"}]
tellraw @a {"":"","color":"gray"}
tellraw @a [{"text":"[← Back to Main Config]","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config"}}]
