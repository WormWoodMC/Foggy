# Remove blindness for flash effect
effect clear @a[distance=..32] minecraft:blindness

# Immediate jumpscare visual
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run particle minecraft:soul ~ ~1 ~ 2 2 2 1 100 force

# Play jumpscare sound
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 0.8 1.2

# Give player shock effect
effect give @a[distance=..32] minecraft:slowness 3 2 true
effect give @a[distance=..32] minecraft:mining_fatigue 3 2 true
