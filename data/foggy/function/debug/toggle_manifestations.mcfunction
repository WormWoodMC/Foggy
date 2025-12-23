execute store success score #foggy foggy.rng if score #foggy foggy.manifestations_enabled matches 1
execute if score #foggy foggy.rng matches 1 run scoreboard players set #foggy foggy.manifestations_enabled 0
execute if score #foggy foggy.rng matches 0 run scoreboard players set #foggy foggy.manifestations_enabled 1

execute if score #foggy foggy.manifestations_enabled matches 1 run tellraw @a [{"text":"Foggy: Manifestations enabled","color":"green"}]
execute if score #foggy foggy.manifestations_enabled matches 0 run tellraw @a [{"text":"Foggy: Manifestations disabled","color":"red"}]
