execute store result score @s foggy.cooldown run random value 600..1200

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 3 (False Sounds)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

execute if items entity @s armor.head minecraft:carved_pumpkin run scoreboard players set @s foggy.cooldown 0
execute if items entity @s armor.head minecraft:carved_pumpkin run title @s actionbar [{"text":"Foggy: False Sounds blocked (pumpkin)","color":"dark_gray"}]

execute unless items entity @s armor.head minecraft:carved_pumpkin run execute store result score @s foggy.rng run random value 0..3
execute unless items entity @s armor.head minecraft:carved_pumpkin run execute store result score @s foggy.hp run random value 0..3

execute unless items entity @s armor.head minecraft:carved_pumpkin if score @s foggy.hp matches 0 at @s positioned ~10 ~ ~ run function foggy:manifestations/tier3/false_sound_here
execute unless items entity @s armor.head minecraft:carved_pumpkin if score @s foggy.hp matches 1 at @s positioned ~-10 ~ ~ run function foggy:manifestations/tier3/false_sound_here
execute unless items entity @s armor.head minecraft:carved_pumpkin if score @s foggy.hp matches 2 at @s positioned ~ ~ ~10 run function foggy:manifestations/tier3/false_sound_here
execute unless items entity @s armor.head minecraft:carved_pumpkin if score @s foggy.hp matches 3 at @s positioned ~ ~ ~-10 run function foggy:manifestations/tier3/false_sound_here
