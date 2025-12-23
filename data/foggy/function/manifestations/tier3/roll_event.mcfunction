execute store result score @s foggy.rng run random value 0..2

execute if score @s foggy.rng matches 0 run function foggy:manifestations/tier3/phantom_strikes
execute if score @s foggy.rng matches 1 run function foggy:manifestations/tier3/inventory_corruption
execute if score @s foggy.rng matches 2 run function foggy:manifestations/tier3/false_sounds
