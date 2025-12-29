# Fear spreads to distant players (wide range)
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run execute as @a[distance=..12,gamemode=!creative,gamemode=!spectator] if score @s foggy.attention < @p foggy.attention run scoreboard players add @s foggy.attention 2

# Visual fear spread effect - apply tag for persistent handling
execute as @a[scores={foggy.attention=70..}] unless entity @s[tag=foggy.high_fear] run tag @s add foggy.high_fear

# Notify streamer mode
execute if score #foggy foggy.streamer_mode matches 1 as @a[scores={foggy.attention=70..}] run title @s actionbar [{"text":"Fear spreading!","color":"red","bold":true}]
