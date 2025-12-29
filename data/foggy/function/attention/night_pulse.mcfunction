# Night only adds attention if you're also in darkness (preventable with torches)
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_nighttime if predicate foggy:is_in_darkness run scoreboard players add @s foggy.attention 1
