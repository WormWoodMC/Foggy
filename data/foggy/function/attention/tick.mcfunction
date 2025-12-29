execute as @a[gamemode=!creative,gamemode=!spectator] run function foggy:attention/sleep_reset

# Evaluate attention pulses every ~0.5s (10 ticks)
execute if score #foggy foggy.attn_tick matches 10 run function foggy:attention/evaluate

scoreboard players set @a[scores={foggy.attention=101..}] foggy.attention 100
scoreboard players set @a[scores={foggy.attention=..-1}] foggy.attention 0
