
## Ritual success: reward players who rung bell 3 times within window

# Only run if ritual feature enabled
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run tellraw @s [{"text":"🔔 Ritual: Calm Descends","color":"aqua","bold":true},{"text":" — your attention has been eased.","color":"gray"}]
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1

# Reduce attention moderately (non-lethal, clamped)
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run scoreboard players remove @s foggy.attention 20

# Start ritual cooldown (prevent spam) and clear counter
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run scoreboard players set @s foggy.ritual_cooldown 24000
execute as @a[scores={foggy.ritual_count=3..}] run scoreboard players set @s foggy.ritual_count 0
