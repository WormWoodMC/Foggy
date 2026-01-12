## Toggle Echo Whispers
execute if score #foggy foggy.echo_enabled matches 1 run scoreboard players set #foggy foggy.echo_enabled 0
execute if score #foggy foggy.echo_enabled matches 0 run scoreboard players set #foggy foggy.echo_enabled 1
execute if score #foggy foggy.echo_enabled matches 1 run tellraw @a [{"text":"Echo Whispers: ","color":"gray"},{"text":"Enabled","color":"green"}]
execute if score #foggy foggy.echo_enabled matches 0 run tellraw @a [{"text":"Echo Whispers: ","color":"gray"},{"text":"Disabled","color":"red"}]
