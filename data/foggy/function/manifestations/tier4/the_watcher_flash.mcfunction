# Remove blindness for flash effect
effect clear @a[distance=..32] minecraft:blindness

# Immediate jumpscare effect - slowness instead of particles

# Play jumpscare sound
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 0.8 1.2

# Give player shock effect - capped at 4 seconds max
effect give @a[distance=..32] minecraft:slowness 2 2 true
effect give @a[distance=..32] minecraft:mining_fatigue 2 2 true
