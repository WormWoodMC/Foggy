execute store result score @s foggy.cooldown run random value 4800..7200

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 4 (Suffocation)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

scoreboard players set @s foggy.suffocate 100

effect give @s minecraft:darkness 4 0 true
effect give @s minecraft:slowness 3 1 true
effect give @s minecraft:mining_fatigue 3 1 true
playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.7 1
