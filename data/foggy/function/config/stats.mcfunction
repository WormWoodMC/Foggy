# Statistics Menu - v3.0.0
tellraw @a {"text":"=== Foggy Statistics ===","color":"gold","bold":true}
tellraw @a {"text":"","color":"gray"}
tellraw @a [{"text":"• Jumpscares Triggered: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.jumpscare_count"},"color":"white"}]
tellraw @a [{"text":"• Pack Format: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.version"},"color":"white"}]
tellraw @a [{"text":"• Manifestation Intensity: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.intensity"},"color":"white"},{"text":"%","color":"dark_gray"}]
tellraw @a [{"text":"• Volume Level: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.volume"},"color":"white"},{"text":"%","color":"dark_gray"}]
tellraw @a [{"text":"• Max Tier: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.max_tier"},"color":"white"}]
tellraw @a [{"text":"• Multiplayer Fear Spread: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.fear_spread_enabled"},"color":"white"},{"text":" (1 = on)","color":"dark_gray"}]
tellraw @a [{"text":"• Streamer Mode: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.streamer_mode"},"color":"white"},{"text":" (1 = on)","color":"dark_gray"}]
tellraw @a [{"text":"• Dread: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.dread"},"color":"red"},{"text":" total","color":"dark_gray"}]
tellraw @a [{"text":"• Player Dread: ","color":"gray"},{"text":"check actionbar while streamer-mode is enabled","color":"yellow"}]
tellraw @a {"text":"","color":"gray"}
tellraw @a [{"text":"[← Back to Main Config]","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config"}}]
