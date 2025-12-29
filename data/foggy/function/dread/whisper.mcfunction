# Whisper level (dread 40-79)
# Minor ambient events and quiet murmurs
# Triggers tier 1 manifestations for players with high attention

execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=10..100,foggy.cooldown=..0}] run function foggy:manifestations/tier1/select
