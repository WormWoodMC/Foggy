# Darkness is the core mechanic - preventable by placing torches
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_in_darkness unless items entity @s weapon.* #foggy:lit_items run scoreboard players add @s foggy.attention 1
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_in_light_12 run scoreboard players remove @s foggy.attention 1
