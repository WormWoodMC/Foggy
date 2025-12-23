execute store result score @s foggy.cooldown run random value 1800..3000

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 2 (Cold Touch)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

effect give @s minecraft:darkness 1 0 true

execute unless items entity @s armor.head minecraft:golden_helmet unless items entity @s armor.chest minecraft:golden_chestplate unless items entity @s armor.legs minecraft:golden_leggings unless items entity @s armor.feet minecraft:golden_boots run damage @s 2 minecraft:magic
execute unless items entity @s armor.head minecraft:golden_helmet unless items entity @s armor.chest minecraft:golden_chestplate unless items entity @s armor.legs minecraft:golden_leggings unless items entity @s armor.feet minecraft:golden_boots run playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.3 0.8
