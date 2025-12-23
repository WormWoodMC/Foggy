# Final streamer jump notification - Enhanced for v2.0.0
execute if score #foggy foggy.streamer_mode matches 1 run title @a[distance=..32] actionbar [{"text":"💀 JUMPSCARE NOW! 💀","color":"dark_red","bold":true}]

# Add dramatic flash effect
execute as @a[distance=..32] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force

# Play secondary sound for emphasis
execute if score #foggy foggy.volume matches 100 as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 0.8 1.5
execute if score #foggy foggy.volume matches 200 as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 1.2 1.5
