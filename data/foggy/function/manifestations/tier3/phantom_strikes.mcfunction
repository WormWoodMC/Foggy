execute store result score @s foggy.cooldown run random value 900..1800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 3 (Phantom Strikes)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

effect give @s minecraft:darkness 3 0 true
effect give @s minecraft:slowness 2 0 true

execute if block ~ ~-1 ~ minecraft:soul_sand run playsound minecraft:entity.phantom.bite ambient @s ~ ~ ~ 0.4 0.8
execute if block ~ ~-1 ~ minecraft:soul_soil run playsound minecraft:entity.phantom.bite ambient @s ~ ~ ~ 0.4 0.8

execute store result score @s foggy.rng run random value 4..6
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil run damage @s 0 minecraft:magic
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil if score @s foggy.rng matches 4 run damage @s 4 minecraft:magic
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil if score @s foggy.rng matches 5 run damage @s 5 minecraft:magic
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil if score @s foggy.rng matches 6 run damage @s 6 minecraft:magic
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil run playsound minecraft:entity.phantom.bite ambient @s ~ ~ ~ 0.7 0.8
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil run playsound minecraft:entity.player.hurt ambient @s ~ ~ ~ 0.5 1
