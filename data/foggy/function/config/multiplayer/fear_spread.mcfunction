# Toggle Fear Spread - v2.0.0
execute if score #foggy foggy.fear_spread_enabled matches 0 run function foggy:config/multiplayer/enable_fear_spread
execute if score #foggy foggy.fear_spread_enabled matches 1 run function foggy:config/multiplayer/disable_fear_spread
