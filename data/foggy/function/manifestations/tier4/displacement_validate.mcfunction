scoreboard players set @s foggy.rng 1

execute if block ~ ~ ~ minecraft:lava run scoreboard players set @s foggy.rng 0
execute if block ~ ~-1 ~ minecraft:lava run scoreboard players set @s foggy.rng 0
execute if block ~ ~ ~ minecraft:fire run scoreboard players set @s foggy.rng 0
execute if block ~ ~ ~ minecraft:cactus run scoreboard players set @s foggy.rng 0
execute if entity @s[y=-64,dy=3] run scoreboard players set @s foggy.rng 0

execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s foggy.rng 0
execute unless block ~ ~1 ~ minecraft:air run scoreboard players set @s foggy.rng 0

execute if score @s foggy.bflicker matches 0 if block ~1 ~ ~ minecraft:lava run scoreboard players set @s foggy.rng 0
execute if score @s foggy.bflicker matches 0 if block ~-1 ~ ~ minecraft:lava run scoreboard players set @s foggy.rng 0
execute if score @s foggy.bflicker matches 0 if block ~ ~ ~1 minecraft:lava run scoreboard players set @s foggy.rng 0
execute if score @s foggy.bflicker matches 0 if block ~ ~ ~-1 minecraft:lava run scoreboard players set @s foggy.rng 0

execute if score @s foggy.rng matches 0 run tp @s @e[tag=foggy.tp_origin,limit=1,sort=nearest]
