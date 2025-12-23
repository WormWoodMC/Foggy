execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_in_darkness run scoreboard players add @s foggy.attention 1
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_in_light_12 run scoreboard players remove @s foggy.attention 1
