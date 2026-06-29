execute if block ~ ~ ~ minecraft:chest run playsound minecraft:block.chest.open ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ minecraft:chest run playsound minecraft:block.chest.close ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ minecraft:chest run scoreboard players set @s foggy.hp 1

execute if block ~ ~ ~ minecraft:barrel run playsound minecraft:block.barrel.open ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ minecraft:barrel run playsound minecraft:block.barrel.close ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ minecraft:barrel run scoreboard players set @s foggy.hp 1

execute if block ~ ~ ~ #minecraft:shulker_boxes run playsound minecraft:block.shulker_box.open ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ #minecraft:shulker_boxes run playsound minecraft:block.shulker_box.close ambient @s ~ ~ ~ 0.5 0.8
execute if block ~ ~ ~ #minecraft:shulker_boxes run scoreboard players set @s foggy.hp 1
