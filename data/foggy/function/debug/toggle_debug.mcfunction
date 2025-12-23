execute store success score #foggy foggy.rng if entity @s[tag=foggy.debug]
execute if score #foggy foggy.rng matches 1 run tag @s remove foggy.debug
execute if score #foggy foggy.rng matches 0 run tag @s add foggy.debug

execute if entity @s[tag=foggy.debug] run tellraw @s [{"text":"Foggy debug: ON","color":"green"}]
execute unless entity @s[tag=foggy.debug] run tellraw @s [{"text":"Foggy debug: OFF","color":"red"}]
