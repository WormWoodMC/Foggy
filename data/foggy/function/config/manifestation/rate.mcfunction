# Manifestation Rate Configuration - v2.0.0
tellraw @a {"text":"=== Manifestation Rate Settings ===","color":"gold","bold":true}
tellraw @a {"text":"","color":"gray"}
tellraw @a [{"text":"• Very Rare (25%)","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config/manifestation/set_rate_25"}}]
tellraw @a [{"text":"• Rare (50%)","color":"aqua","clickEvent":{"action":"run_command","value":"/function foggy:config/manifestation/set_rate_50"}}]
tellraw @a [{"text":"• Normal (100%)","color":"yellow","clickEvent":{"action":"run_command","value":"/function foggy:config/manifestation/set_rate_100"}}]
tellraw @a [{"text":"• Frequent (150%)","color":"orange","clickEvent":{"action":"run_command","value":"/function foggy:config/manifestation/set_rate_150"}}]
tellraw @a [{"text":"• Very Frequent (200%)","color":"red","clickEvent":{"action":"run_command","value":"/function foggy:config/manifestation/set_rate_200"}}]
tellraw @a {"":"","color":"gray"}
tellraw @a [{"text":"[← Back to Advanced]","color":"green","clickEvent":{"action":"run_command","value":"/function foggy:config/advanced"}}]
