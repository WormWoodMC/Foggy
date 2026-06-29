tag @s remove foggy.watcher_pursuing
tag @s remove foggy.watcher_target
kill @e[tag=foggy.watcher]
effect clear @s minecraft:darkness
effect clear @s minecraft:blindness
effect clear @s minecraft:slowness
playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.8 0.5
tellraw @s [{text:"The Watcher has been banished.",color:"green"}]
