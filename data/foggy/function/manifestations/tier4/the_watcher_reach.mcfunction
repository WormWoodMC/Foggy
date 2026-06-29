damage @p 8 minecraft:magic
effect give @p minecraft:blindness 5 1 true
effect give @p minecraft:slowness 5 1 true
tellraw @p [{text:"It touched you.",color:"dark_red",bold:true}]
scoreboard players add @p foggy.p_watcher_seen 1
tag @p remove foggy.watcher_pursuing
tag @p remove foggy.watcher_target
kill @e[tag=foggy.watcher]
