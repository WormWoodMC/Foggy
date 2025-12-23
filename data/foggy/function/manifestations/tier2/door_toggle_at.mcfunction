execute unless block ~ ~1 ~ #foggy:trapdoors unless block ~ ~2 ~ #foggy:trapdoors if block ~ ~ ~ #foggy:wooden_doors[half=lower,open=true] run function foggy:manifestations/tier2/door_close_at
execute unless block ~ ~1 ~ #foggy:trapdoors unless block ~ ~2 ~ #foggy:trapdoors if block ~ ~ ~ #foggy:wooden_doors[half=lower,open=false] run function foggy:manifestations/tier2/door_open_at

execute unless block ~ ~2 ~ #foggy:trapdoors unless block ~ ~3 ~ #foggy:trapdoors at @s positioned ~ ~-1 ~ if block ~ ~ ~ #foggy:wooden_doors[half=lower,open=true] run function foggy:manifestations/tier2/door_close_at
execute unless block ~ ~2 ~ #foggy:trapdoors unless block ~ ~3 ~ #foggy:trapdoors at @s positioned ~ ~-1 ~ if block ~ ~ ~ #foggy:wooden_doors[half=lower,open=false] run function foggy:manifestations/tier2/door_open_at
