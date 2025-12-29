# Summon level (dread 120+)
# Manifests the Watcher and major jolts
# Triggers tier 4 manifestations for players with very high attention

execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=61..100,foggy.cooldown=..0}] run function foggy:manifestations/tier3/select
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=86..100,foggy.cooldown=..0}] run function foggy:manifestations/tier4/select
