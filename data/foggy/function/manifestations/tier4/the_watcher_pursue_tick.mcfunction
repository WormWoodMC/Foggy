execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run tp @s ^ ^ ^0.4 facing entity @p[distance=..64]

execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s if entity @p[distance=..3] run function foggy:manifestations/tier4/the_watcher_reach

execute as @a[tag=foggy.watcher_pursuing] if predicate foggy:is_in_light_12 run function foggy:manifestations/tier4/the_watcher_banish
execute as @a[tag=foggy.watcher_pursuing] at @s if block ~ ~-1 ~ minecraft:soul_sand run function foggy:manifestations/tier4/the_watcher_banish
execute as @a[tag=foggy.watcher_pursuing] at @s if block ~ ~-1 ~ minecraft:soul_soil run function foggy:manifestations/tier4/the_watcher_banish
