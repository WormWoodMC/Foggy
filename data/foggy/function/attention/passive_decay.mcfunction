# Passive decay: attention drops by 1 per 20 ticks when above 40
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=41..}] if score #foggy foggy.attn_tick matches 20 run scoreboard players remove @s foggy.attention 1

# Faster decay in bright light when above 70: drops by 2 per 20 ticks
execute as @a[gamemode=!creative,gamemode=!spectator] if predicate foggy:is_in_light_12 if score @s foggy.attention matches 71.. if score #foggy foggy.attn_tick matches 20 run scoreboard players remove @s foggy.attention 2
