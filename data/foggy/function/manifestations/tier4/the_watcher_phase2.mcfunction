execute as @a[tag=foggy.watcher_target,limit=1] at @s anchored eyes positioned ^ ^ ^-12 run summon minecraft:phantom ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Silent:1b,Size:2,Attributes:[{Name:"minecraft:generic.max_health",Base:1024}],Health:1024f,Tags:["foggy.watcher"],CustomName:'[{text:"The Watcher",color:"red",bold:true}]',CustomNameVisible:1b}
execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run data merge entity @s {NoAI:1b}
effect give @e[tag=foggy.watcher,limit=1,sort=nearest] minecraft:glowing 5 0 true

execute as @a[tag=foggy.watcher_target,limit=1] run tellraw @s [{text:"The Watcher is here. Do not let it reach you.",color:"dark_red"}]
