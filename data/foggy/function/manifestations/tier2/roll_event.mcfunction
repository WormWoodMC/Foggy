execute store result score @s foggy.rng run random value 0..4

execute if score @s foggy.rng matches 0 run function foggy:manifestations/tier2/door_manipulation
execute if score @s foggy.rng matches 1 run function foggy:manifestations/tier2/light_snuffing
execute if score @s foggy.rng matches 2 run function foggy:manifestations/tier2/cold_touch
execute if score @s foggy.rng matches 3 run function foggy:manifestations/tier2/torch_flicker
execute if score @s foggy.rng matches 4 run function foggy:manifestations/tier2/distant_scream
