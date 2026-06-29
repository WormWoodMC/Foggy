execute as @a[tag=foggy.watcher_target,limit=1] run execute if score #foggy foggy.volume matches 50 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.3 0.5
execute as @a[tag=foggy.watcher_target,limit=1] run execute if score #foggy foggy.volume matches 100 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.6 0.5
execute as @a[tag=foggy.watcher_target,limit=1] run execute if score #foggy foggy.volume matches 200 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.9 0.5
execute as @a[tag=foggy.watcher_target,limit=1] if score #foggy foggy.streamer_mode matches 1 run title @s actionbar [{text:"JUMPSCARE IN 1...",color:"red",bold:true}]
