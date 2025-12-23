execute store result score @s foggy.cooldown run random value 2400..4800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 4 (The Watcher)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

# Jumpscare buildup
playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.1 0.5
schedule function foggy:manifestations/tier4/the_watcher_jumpscare 2s

execute anchored eyes positioned ^ ^ ^-12 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Small:1b,CustomName:'{"text":"..."}',Tags:["foggy.watcher"]}
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s facing entity @p[distance=..64,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
effect give @e[tag=foggy.watcher,limit=1,sort=nearest] minecraft:glowing 5 0 true
schedule function foggy:manifestations/tier4/the_watcher_cleanup 5s
