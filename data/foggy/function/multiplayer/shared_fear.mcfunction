## Multiplayer shared fear mechanics
## Fear spreads between nearby players with configurable radius

execute if score #foggy foggy.fear_spread_radius matches ..5 run function foggy:multiplayer/spread_fear_radius_close
execute if score #foggy foggy.fear_spread_radius matches 6..10 run function foggy:multiplayer/spread_fear
execute if score #foggy foggy.fear_spread_radius matches 11.. run function foggy:multiplayer/spread_fear_radius_wide

# Amplify manifestations when multiple players have high attention
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=80..}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator,scores={foggy.attention=80..}] run function foggy:multiplayer/amplify_manifestations
