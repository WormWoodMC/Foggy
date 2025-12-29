# Per-player countdown for visual effects to avoid constant obstruction
execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..}] run scoreboard players remove @s foggy.bflicker 1
execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.bflicker=..-1}] run scoreboard players set @s foggy.bflicker 0

# Torch held: rare short darkness flicker based on attention
execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.attention=60..,foggy.bflicker=0}] if items entity @s weapon.offhand minecraft:torch if predicate foggy:random/10_percent run function foggy:blindness/flicker

# No torch: apply persistent darkness tag instead of rapid reapplication
execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.attention=50..}] unless items entity @s weapon.offhand minecraft:torch unless entity @s[tag=foggy.has_darkness] run tag @s add foggy.has_darkness
execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..},scores={foggy.attention=50..}] unless items entity @s weapon.offhand minecraft:torch unless entity @s[tag=foggy.has_darkness] run scoreboard players set @s foggy.bflicker 60

# Apply persistent darkness effect (999999 seconds)
execute as @a[tag=foggy.has_darkness,gamemode=!creative,gamemode=!spectator,nbt=!{SleepTimer:1s..}] unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @s minecraft:darkness 999999 0 true

# Remove darkness when conditions no longer met
execute as @a[tag=foggy.has_darkness] if score @s foggy.attention matches ..49 run tag @s remove foggy.has_darkness
execute as @a[tag=foggy.has_darkness] if score @s foggy.attention matches ..49 run effect clear @s minecraft:darkness
execute as @a[tag=foggy.has_darkness] if items entity @s weapon.offhand minecraft:torch run tag @s remove foggy.has_darkness
execute as @a[tag=foggy.has_darkness] if items entity @s weapon.offhand minecraft:torch run effect clear @s minecraft:darkness
