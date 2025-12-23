execute if block ~ ~ ~ minecraft:torch run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.6 1
execute if block ~ ~ ~ minecraft:torch run setblock ~ ~ ~ air
execute if block ~ ~ ~ minecraft:wall_torch run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.6 1
execute if block ~ ~ ~ minecraft:wall_torch run setblock ~ ~ ~ air

execute if block ~ ~ ~ minecraft:campfire[lit=true] run playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.7 1
execute if block ~ ~ ~ minecraft:campfire[lit=true] run setblock ~ ~ ~ minecraft:campfire[lit=false]
