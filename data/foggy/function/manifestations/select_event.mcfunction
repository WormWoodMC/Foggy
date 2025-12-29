# Tier 1 (15-35): Minor audio cues and item displacement - noticeable but not threatening
execute if score #foggy foggy.max_tier matches 1.. as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.cooldown=..0,foggy.attention=15..35}] run function foggy:manifestations/tier1/select

# Tier 2 (36-60): Environmental interference - lights snuff, doors close, minor slowness
execute if score #foggy foggy.max_tier matches 2.. as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.cooldown=..0,foggy.attention=36..60}] run function foggy:manifestations/tier2/select

# Tier 3 (61-80): Direct threats - phantom strikes, inventory corruption, weakness effects
execute if score #foggy foggy.max_tier matches 3.. as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.cooldown=..0,foggy.attention=61..80}] run function foggy:manifestations/tier3/select

# Tier 4 (81-100): Extreme danger - displacement, life drain, suffocation, the watcher
execute if score #foggy foggy.max_tier matches 4 as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.cooldown=..0,foggy.attention=81..100}] run function foggy:manifestations/tier4/select
