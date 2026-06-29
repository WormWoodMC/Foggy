execute store result score @s foggy.rng run random value 0..3

execute if score @s foggy.rng matches 0 run function foggy:manifestations/tier1/item_displacement
execute if score @s foggy.rng matches 1 run function foggy:manifestations/tier1/ambient_dread
execute if score @s foggy.rng matches 2 run function foggy:manifestations/tier1/shadow_blink
execute if score @s foggy.rng matches 3 run function foggy:manifestations/tier1/chest_rattle
