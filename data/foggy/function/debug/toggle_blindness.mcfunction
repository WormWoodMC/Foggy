execute store success score #foggy foggy.rng if score #foggy foggy.blindness_enabled matches 1
execute if score #foggy foggy.rng matches 1 run scoreboard players set #foggy foggy.blindness_enabled 0
execute if score #foggy foggy.rng matches 0 run scoreboard players set #foggy foggy.blindness_enabled 1

execute if score #foggy foggy.blindness_enabled matches 1 run tellraw @a [{"text":"Foggy: Blindness enabled","color":"green"}]
execute if score #foggy foggy.blindness_enabled matches 0 run tellraw @a [{"text":"Foggy: Blindness disabled","color":"red"}]
