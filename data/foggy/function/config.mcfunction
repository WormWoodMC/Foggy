# Foggy Configuration Menu - v3.1.0
# Usage: /function foggy:config

tellraw @a {"text":"=== Foggy v3.1.0 Configuration ===","color":"gold","bold":true}
tellraw @a {"text":"Intensity: ","color":"gray"} 
tellraw @a [{"text":"[Low] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to suggest command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/intensity/low"}},{"text":"[Medium] ","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to suggest command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/intensity/medium"}},{"text":"[High] ","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Click to suggest command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/intensity/high"}}]
tellraw @a {"":""}
tellraw @a {"text":"Streamer Mode: ","color":"gray"}
tellraw @a [{"score":{"name":"#foggy","objective":"foggy.streamer_mode"},"color":"white"},{"text":" - ","color":"gray"},{"text":"[Toggle]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/streamer/toggle"}}]
tellraw @a {"":""}
tellraw @a {"text":"Jumpscare Volume: ","color":"gray"}
tellraw @a [{"text":"[Quiet] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click to fill command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/volume/quiet"}},{"text":"[Normal] ","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"Click to fill command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/volume/normal"}},{"text":"[Loud] ","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Click to fill command"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/volume/loud"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[⚙️ Advanced Settings]","color":"purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/advanced"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[📊 Statistics]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/stats"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[❓ Help]","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/help"}}]
tellraw @a {"":""}
tellraw @a [{"text":"[🧠 Dread Controls]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/dread"}}]
