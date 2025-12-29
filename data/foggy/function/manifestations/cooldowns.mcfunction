# Initialize cooldown for new players
execute as @a[gamemode=!creative,gamemode=!spectator] unless score @s foggy.cooldown matches -2147483648.. run scoreboard players set @s foggy.cooldown 0

# Decrement cooldowns
scoreboard players remove @a[scores={foggy.cooldown=1..}] foggy.cooldown 1
