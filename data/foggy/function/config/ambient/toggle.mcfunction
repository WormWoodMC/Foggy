## Toggle Ambient Events
execute if score #foggy foggy.ambient_enabled matches 1 run scoreboard players set #foggy foggy.ambient_enabled 0
execute if score #foggy foggy.ambient_enabled matches 0 run scoreboard players set #foggy foggy.ambient_enabled 1
execute if score #foggy foggy.ambient_enabled matches 1 run tellraw @a [{"text":"Ambient Events: ","color":"gray"},{"text":"Enabled","color":"green"}]
execute if score #foggy foggy.ambient_enabled matches 0 run tellraw @a [{"text":"Ambient Events: ","color":"gray"},{"text":"Disabled","color":"red"}]
