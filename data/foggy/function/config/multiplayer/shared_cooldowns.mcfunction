# Toggle Shared Cooldowns - v2.0.0
execute if score #foggy foggy.shared_cooldowns_enabled matches 0 run function foggy:config/multiplayer/enable_shared_cooldowns
execute if score #foggy foggy.shared_cooldowns_enabled matches 1 run function foggy:config/multiplayer/disable_shared_cooldowns
