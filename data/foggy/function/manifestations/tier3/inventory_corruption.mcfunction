execute store result score @s foggy.cooldown run random value 2400..3600

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 3 (Inventory Corruption)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

playsound minecraft:entity.husk.ambient ambient @s ~ ~ ~ 0.4 0.8

scoreboard players set @s foggy.hp 0

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:golden_apple run function foggy:manifestations/tier3/corrupt_golden_apple
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:golden_apple run scoreboard players set @s foggy.hp 1

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_beef run function foggy:manifestations/tier3/corrupt_cooked_beef
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_beef run scoreboard players set @s foggy.hp 1

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_porkchop run function foggy:manifestations/tier3/corrupt_cooked_porkchop
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_porkchop run scoreboard players set @s foggy.hp 1

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_chicken run function foggy:manifestations/tier3/corrupt_cooked_chicken
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_chicken run scoreboard players set @s foggy.hp 1

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:baked_potato run function foggy:manifestations/tier3/corrupt_baked_potato
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:baked_potato run scoreboard players set @s foggy.hp 1

execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_mutton run function foggy:manifestations/tier3/corrupt_cooked_mutton
execute if score @s foggy.hp matches 0 if items entity @s container.* minecraft:cooked_mutton run scoreboard players set @s foggy.hp 1
