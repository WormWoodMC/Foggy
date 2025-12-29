# Nightmare level (dread 80-119)
# Aggressive visuals and streamer warnings
# Triggers tier 2-3 manifestations for players with high attention

execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=31..100,foggy.cooldown=..0}] run function foggy:manifestations/tier2/select
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=61..100,foggy.cooldown=..0}] run function foggy:manifestations/tier3/select
