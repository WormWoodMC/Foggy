execute store result score @s foggy.cooldown run random value 1200..1800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 4 (Displacement)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

execute store result score @s foggy.rng run random value 0..4
execute if score @s foggy.rng matches 0 run scoreboard players set @s foggy.bflicker 1
execute unless score @s foggy.rng matches 0 run scoreboard players set @s foggy.bflicker 0

execute if block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players set @s foggy.cooldown 0
execute if block ~ ~-1 ~ minecraft:crying_obsidian run title @s actionbar [{"text":"Foggy: Displacement blocked (crying obsidian)","color":"dark_gray"}]

execute unless block ~ ~-1 ~ minecraft:crying_obsidian run effect give @s minecraft:nausea 3 0 true
execute unless block ~ ~-1 ~ minecraft:crying_obsidian run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.6 0.9

execute unless block ~ ~-1 ~ minecraft:crying_obsidian run summon minecraft:marker ~ ~ ~ {Tags:["foggy.tp_origin"],NoGravity:1b}
execute unless block ~ ~-1 ~ minecraft:crying_obsidian run summon minecraft:marker ~ ~ ~ {Tags:["foggy.tp_target"],NoGravity:1b}

execute unless block ~ ~-1 ~ minecraft:crying_obsidian run scoreboard players set @s foggy.hp 3
execute unless block ~ ~-1 ~ minecraft:crying_obsidian run function foggy:manifestations/tier4/displacement_attempt

kill @e[tag=foggy.tp_origin]
kill @e[tag=foggy.tp_target]
