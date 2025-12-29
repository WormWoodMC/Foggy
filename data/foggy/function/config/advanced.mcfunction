# Advanced Configuration Menu - v2.0.0
tellraw @a {"text":"=== Foggy Advanced Configuration ===","color":"gold","bold":true}
tellraw @a {"text":"","color":"gray"}
tellraw @a {"text":"Manifestation Settings:","color":"yellow","bold":true}
tellraw @a [{"text":"• Manifestation Rate: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.intensity"},"color":"white"},{"text":"%","color":"dark_gray"},{"text":" [Change]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/manifestation/rate"}}]
tellraw @a [{"text":"• Max Tier: ","color":"gray"},{"text":"4","color":"white"},{"text":" [Change]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/manifestation/max_tier"}}]
tellraw @a {"":"","color":"gray"}
tellraw @a {"text":"Multiplayer Settings:","color":"yellow","bold":true}
tellraw @a [{"text":"• Fear Spread: ","color":"gray"},{"text":"ENABLED","color":"green"},{"text":" [Toggle]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/multiplayer/fear_spread"}}]
tellraw @a [{"text":"• Shared Cooldowns: ","color":"gray"},{"text":"DISABLED","color":"red"},{"text":" [Toggle]","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config/multiplayer/shared_cooldowns"}}]
tellraw @a {"":"","color":"gray"}
tellraw @a {"text":"Statistics:","color":"yellow","bold":true}
tellraw @a [{"text":"• Jumpscares Triggered: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.jumpscare_count"},"color":"white"}]
tellraw @a [{"text":"• Current Version: ","color":"gray"},{"text":"v3.1.0","color":"white"}]
tellraw @a {"":"","color":"gray"}
tellraw @a [{"text":"[← Back to Main Config]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Click, then press Enter"}},"clickEvent":{"action":"suggest_command","value":"/function foggy:config"}}]
