# Initialize bell tracking if needed
unless score @s foggy.bell matches -2147483648.. run scoreboard players set @s foggy.bell 0
unless score @s foggy.bell_prev matches -2147483648.. run scoreboard players set @s foggy.bell_prev 0
unless score @s foggy.bell_mute matches -2147483648.. run scoreboard players set @s foggy.bell_mute 0

execute unless score @s foggy.bell = @s foggy.bell_prev run scoreboard players set @s foggy.bell_mute 1200
scoreboard players operation @s foggy.bell_prev = @s foggy.bell
