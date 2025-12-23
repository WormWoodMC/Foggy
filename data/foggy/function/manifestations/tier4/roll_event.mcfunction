execute store result score @s foggy.rng run random value 0..3

execute if score @s foggy.rng matches 0 run function foggy:manifestations/tier4/life_drain
execute if score @s foggy.rng matches 1 run function foggy:manifestations/tier4/displacement
execute if score @s foggy.rng matches 2 run function foggy:manifestations/tier4/the_watcher
execute if score @s foggy.rng matches 3 run function foggy:manifestations/tier4/suffocation
