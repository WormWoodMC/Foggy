# Rain adds attention only if you're outside in darkness (preventable by shelter + light)
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_raining if predicate foggy:is_in_darkness run scoreboard players add @s foggy.attention 1
