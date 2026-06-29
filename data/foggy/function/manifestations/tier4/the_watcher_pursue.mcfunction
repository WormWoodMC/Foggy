execute as @a[tag=foggy.watcher_pursuing] at @s run effect give @s minecraft:darkness 30 0 true
execute as @a[tag=foggy.watcher_pursuing] run tellraw @s [{text:"The Watcher is hunting you. Ring a bell or step into light to banish it.",color:"dark_red"}]
schedule function foggy:manifestations/tier4/the_watcher_cleanup 30s
