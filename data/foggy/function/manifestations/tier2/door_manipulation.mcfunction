execute store result score @s foggy.cooldown run random value 600..1200
execute store result score @s foggy.rng run random value 0..3

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 2 (Door Manipulation)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

playsound minecraft:block.wooden_door.close ambient @s ~ ~ ~ 0.15 0.6

execute store result score @s foggy.rng run random value 0..7

execute if score @s foggy.rng matches 0 at @s positioned ~6 ~ ~ run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 1 at @s positioned ~-6 ~ ~ run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 2 at @s positioned ~ ~ ~6 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 3 at @s positioned ~ ~ ~-6 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 4 at @s positioned ~6 ~ ~6 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 5 at @s positioned ~-6 ~ ~6 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 6 at @s positioned ~6 ~ ~-6 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 7 at @s positioned ~-6 ~ ~-6 run function foggy:manifestations/tier2/door_toggle_at

execute store result score @s foggy.rng run random value 0..7

execute if score @s foggy.rng matches 0 at @s positioned ~10 ~ ~ run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 1 at @s positioned ~-10 ~ ~ run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 2 at @s positioned ~ ~ ~10 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 3 at @s positioned ~ ~ ~-10 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 4 at @s positioned ~10 ~ ~10 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 5 at @s positioned ~-10 ~ ~10 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 6 at @s positioned ~10 ~ ~-10 run function foggy:manifestations/tier2/door_toggle_at
execute if score @s foggy.rng matches 7 at @s positioned ~-10 ~ ~-10 run function foggy:manifestations/tier2/door_toggle_at
