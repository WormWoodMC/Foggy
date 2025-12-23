execute store result score @s foggy.rng run random value 0..2

execute if score @s foggy.rng matches 0 run function foggy:manifestations/tier2/door_manipulation
execute if score @s foggy.rng matches 1 run function foggy:manifestations/tier2/light_snuffing
execute if score @s foggy.rng matches 2 run function foggy:manifestations/tier2/cold_touch
