## Toggle Ritual Bell feature
execute if score #foggy foggy.ritual_enabled matches 1 run scoreboard players set #foggy foggy.ritual_enabled 0
execute if score #foggy foggy.ritual_enabled matches 0 run scoreboard players set #foggy foggy.ritual_enabled 1
execute if score #foggy foggy.ritual_enabled matches 1 run tellraw @a [{"text":"Ritual Bell: ","color":"gray"},{"text":"Enabled","color":"green"}]
execute if score #foggy foggy.ritual_enabled matches 0 run tellraw @a [{"text":"Ritual Bell: ","color":"gray"},{"text":"Disabled","color":"red"}]
