execute if score #foggy foggy.enabled matches 1 run scoreboard players add #foggy foggy.timer 1

execute if score #foggy foggy.enabled matches 1 run function foggy:blindness/tick
execute if score #foggy foggy.enabled matches 1 run function foggy:attention/tick
execute if score #foggy foggy.enabled matches 1 run function foggy:bell/tick
execute if score #foggy foggy.enabled matches 1 run function foggy:manifestations/tick
execute if score #foggy foggy.enabled matches 1 if score #foggy foggy.fear_spread_enabled matches 1 run function foggy:multiplayer/shared_fear
execute as @a[scores={foggy.suffocate=1..}] run function foggy:manifestations/tier4/suffocation_tick

execute if score #foggy foggy.timer matches 1200.. run scoreboard players set #foggy foggy.timer 0
