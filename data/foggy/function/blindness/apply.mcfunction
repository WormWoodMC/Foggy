execute as @a[gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={SleepTimer:1s..}] run scoreboard players remove @s foggy.bflicker 1
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.bflicker=..-1}] run scoreboard players set @s foggy.bflicker 0

execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=65..,foggy.bflicker=0}] unless entity @s[nbt={SleepTimer:1s..}] unless score #foggy foggy.safe_mode matches 1 if predicate foggy:random/10_percent run function foggy:blindness/flicker

execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=65..}] unless score #foggy foggy.safe_mode matches 1 unless entity @s[tag=foggy.has_darkness] unless entity @s[nbt={SleepTimer:1s..}] run tag @s add foggy.has_darkness
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.attention=65..}] unless score #foggy foggy.safe_mode matches 1 unless entity @s[tag=foggy.has_darkness] unless entity @s[nbt={SleepTimer:1s..}] run scoreboard players set @s foggy.bflicker 30

execute as @a[tag=foggy.has_darkness,gamemode=!creative,gamemode=!spectator] unless entity @s[nbt={SleepTimer:1s..}] unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @s minecraft:darkness 30 0 true

execute as @a[tag=foggy.has_darkness] if score @s foggy.attention matches ..64 run tag @s remove foggy.has_darkness
execute as @a[tag=foggy.has_darkness] if score @s foggy.attention matches ..64 run effect clear @s minecraft:darkness
