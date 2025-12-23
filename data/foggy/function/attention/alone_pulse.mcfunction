execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless entity @a[distance=0.1..32] run scoreboard players add @s foggy.attention 1
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @a[distance=0.1..16] run scoreboard players remove @s foggy.attention 1
