execute if score #foggy foggy.max_tier matches 1.. as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.cooldown=..0,foggy.attention=15..35}] unless entity @s[nbt={SleepTimer:1s..}] run function foggy:manifestations/tier1/select

execute if score #foggy foggy.max_tier matches 2.. as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.cooldown=..0,foggy.attention=36..60}] unless entity @s[nbt={SleepTimer:1s..}] run function foggy:manifestations/tier2/select

execute if score #foggy foggy.max_tier matches 3.. as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.cooldown=..0,foggy.attention=61..80}] unless entity @s[nbt={SleepTimer:1s..}] run function foggy:manifestations/tier3/select

execute if score #foggy foggy.max_tier matches 4 as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.cooldown=..0,foggy.attention=81..100}] unless entity @s[nbt={SleepTimer:1s..}] run function foggy:manifestations/tier4/select
