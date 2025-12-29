# Reset total dread counter
scoreboard players set #foggy foggy.dread 0

# Only accumulate/decay dread if the dread system is enabled
execute if score #foggy foggy.dread_enabled matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=40..}] run scoreboard players operation @s foggy.player_dread += #foggy foggy.dread_multiplier
execute if score #foggy foggy.dread_enabled matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=..39}] run scoreboard players operation @s foggy.player_dread -= #foggy foggy.dread_decay

# Clamp player dread to 0-200 range
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.player_dread=-2147483648..-1}] run scoreboard players set @s foggy.player_dread 0
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.player_dread=201..}] run scoreboard players set @s foggy.player_dread 200

# Calculate total dread from all players
execute as @a[scores={foggy.player_dread=1..}] run scoreboard players operation #foggy foggy.dread += @s foggy.player_dread
execute if score #foggy foggy.dread_enabled matches 1 if score #foggy foggy.dread matches 40..79 run function foggy:dread/whisper
execute if score #foggy foggy.dread_enabled matches 1 if score #foggy foggy.dread matches 80..119 run function foggy:dread/nightmare
execute if score #foggy foggy.dread_enabled matches 1 if score #foggy foggy.dread matches 120.. run function foggy:dread/summon
