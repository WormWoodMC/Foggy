# Dramatic jumpscare moment - Enhanced for v2.0.0
execute if score #foggy foggy.volume matches 50 as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.scream master @a[distance=..32] ~ ~ ~ 0.5 0.3
execute if score #foggy foggy.volume matches 100 as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.scream master @a[distance=..32] ~ ~ ~ 1 0.3
execute if score #foggy foggy.volume matches 200 as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.scream master @a[distance=..32] ~ ~ ~ 1.5 0.3

# Enhanced flash effect with multiple stages
effect give @a[distance=..32] minecraft:blindness 1 1 true
schedule function foggy:manifestations/tier4/the_watcher_flash 1t

# Dramatic screen shake simulation
execute as @a[distance=..32] at @s run tp @s ~ ~5 ~ ~10 ~
schedule function foggy:manifestations/tier4/screen_shake_recovery 10t

# Enhanced particle effects for visual impact
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run particle minecraft:angry_villager ~ ~1 ~ 0.5 0.5 0.5 1 50 force
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run particle minecraft:soul ~ ~1 ~ 1 1 1 1 30 force
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run particle minecraft:witch ~ ~ ~ 0.8 0.8 0.8 1 20 force

# Enhanced content creator alerts
execute if score #foggy foggy.streamer_mode matches 1 run title @a[distance=..32] actionbar [{"text":"⚠ JUMPSCARE IN 3... ⚠","color":"red","bold":true}]
schedule function foggy:manifestations/tier4/streamer_countdown 20t

# Add jumpscare counter for statistics
scoreboard players add #foggy foggy.jumpscare_count 1

# Log jumpscare event for debugging
execute if entity @a[tag=foggy.debug] run tellraw @a[tag=foggy.debug] {"text":"[DEBUG] The Watcher jumpscare triggered!","color":"purple"}
