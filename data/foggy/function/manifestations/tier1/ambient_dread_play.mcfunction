execute store result score @s foggy.cooldown run random value 1800..3600
execute store result score @s foggy.rng run random value 0..3
execute store result score @s foggy.hp run random value 0..3
execute store result score @s foggy.bflicker run random value 0..3

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 1 (Ambient Dread)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

execute if score @s foggy.bflicker matches 0 if score @s foggy.hp matches 0 at @s positioned ~10 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 0 if score @s foggy.hp matches 1 at @s positioned ~15 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 0 if score @s foggy.hp matches 2 at @s positioned ~20 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 0 if score @s foggy.hp matches 3 at @s positioned ~25 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here

execute if score @s foggy.bflicker matches 1 if score @s foggy.hp matches 0 at @s positioned ~-10 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 1 if score @s foggy.hp matches 1 at @s positioned ~-15 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 1 if score @s foggy.hp matches 2 at @s positioned ~-20 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 1 if score @s foggy.hp matches 3 at @s positioned ~-25 ~ ~ run function foggy:manifestations/tier1/ambient_dread_play_here

execute if score @s foggy.bflicker matches 2 if score @s foggy.hp matches 0 at @s positioned ~ ~ ~10 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 2 if score @s foggy.hp matches 1 at @s positioned ~ ~ ~15 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 2 if score @s foggy.hp matches 2 at @s positioned ~ ~ ~20 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 2 if score @s foggy.hp matches 3 at @s positioned ~ ~ ~25 run function foggy:manifestations/tier1/ambient_dread_play_here

execute if score @s foggy.bflicker matches 3 if score @s foggy.hp matches 0 at @s positioned ~ ~ ~-10 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 3 if score @s foggy.hp matches 1 at @s positioned ~ ~ ~-15 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 3 if score @s foggy.hp matches 2 at @s positioned ~ ~ ~-20 run function foggy:manifestations/tier1/ambient_dread_play_here
execute if score @s foggy.bflicker matches 3 if score @s foggy.hp matches 3 at @s positioned ~ ~ ~-25 run function foggy:manifestations/tier1/ambient_dread_play_here
