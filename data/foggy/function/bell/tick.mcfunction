execute as @a[gamemode=!creative,gamemode=!spectator] run function foggy:bell/update
execute as @a[scores={foggy.bell_mute=1..}] run scoreboard players remove @s foggy.bell_mute 1
execute as @a[scores={foggy.ritual_cooldown=1..}] run scoreboard players remove @s foggy.ritual_cooldown 1
execute as @a run function foggy:bell/ritual_tick
