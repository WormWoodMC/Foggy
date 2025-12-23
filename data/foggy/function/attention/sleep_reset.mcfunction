execute unless score @s foggy.sleep = @s foggy.sleep_prev run function foggy:attention/reset
scoreboard players operation @s foggy.sleep_prev = @s foggy.sleep
