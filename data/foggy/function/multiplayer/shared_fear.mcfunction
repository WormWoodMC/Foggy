# Multiplayer shared fear mechanics
# Fear spreads between nearby players

execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function foggy:multiplayer/spread_fear

# Amplify manifestations when multiple players have high attention
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=80..}] at @s if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator,scores={foggy.attention=80..}] run function foggy:multiplayer/amplify_manifestations
