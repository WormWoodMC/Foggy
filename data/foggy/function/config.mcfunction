# Foggy Configuration Menu - v2.0.0
# Usage: /function foggy:config

tellraw @a {"text":"=== Foggy v2.0.0 Configuration ===","color":"gold","bold":true}
tellraw @a {"text":"Intensity: ","color":"gray"} 
tellraw @a [{"text":"[Low] ","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config/intensity/low"}},{"text":"[Medium] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function foggy:config/intensity/medium"}},{"text":"[High] ","color":"red","clickEvent":{"action":"run_command","value":"/function foggy:config/intensity/high"}}]
tellraw @a {"":""}
tellraw @a {"text":"Streamer Mode: ","color":"gray"}
tellraw @a [{"score":{"name":"#foggy","objective":"foggy.streamer_mode"},"color":"white"},{"text":" - ","color":"gray"},{"text":"[Toggle]","color":"aqua","clickEvent":{"action":"run_command","value":"/function foggy:config/streamer/toggle"}}]
tellraw @a {"":""}
tellraw @a {"text":"Jumpscare Volume: ","color":"gray"}
tellraw @a [{"text":"[Quiet] ","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config/volume/quiet"}},{"text":"[Normal] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function foggy:config/volume/normal"}},{"text":"[Loud] ","color":"red","clickEvent":{"action":"run_command","value":"/function foggy:config/volume/loud"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[⚙️ Advanced Settings]","color":"purple","bold":true,"clickEvent":{"action":"run_command","value":"/function foggy:config/advanced"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[📊 Statistics]","color":"blue","clickEvent":{"action":"run_command","value":"/function foggy:config/stats"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[❓ Help]","color":"gray","clickEvent":{"action":"run_command","value":"/function foggy:config/help"}}]
