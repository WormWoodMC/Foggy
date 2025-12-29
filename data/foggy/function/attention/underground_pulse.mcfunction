# Underground only scary when dark (preventable by lighting caves)
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_underground if predicate foggy:is_in_darkness run scoreboard players add @s foggy.attention 1
