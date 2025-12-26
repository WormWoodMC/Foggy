# Fear spreads to nearby players (close range)
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run execute as @a[distance=..4,gamemode=!creative,gamemode=!spectator] if score @s foggy.attention < @p foggy.attention run scoreboard players add @s foggy.attention 2

# Visual fear spread effect
execute as @a[scores={foggy.attention=70..}] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.2 0.2 0.2 1 10 force

# Notify streamer mode
execute if score #foggy foggy.streamer_mode matches 1 as @a[scores={foggy.attention=70..}] run title @s actionbar [{"text":"Fear spreading!","color":"red","bold":true}]
