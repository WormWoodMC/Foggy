# Screen shake recovery - Enhanced for v2.0.0
execute as @a[distance=..32] at @s run tp @s ~ ~-5 ~ ~-10 ~

# Add disorientation effect
effect give @a[distance=..32] minecraft:nausea 3 1 true

# Streamer mode notification
execute if score #foggy foggy.streamer_mode matches 1 run title @a[distance=..32] actionbar [{"text":"⚠ JUMPSCARE IN 2... ⚠","color":"red","bold":true}]
