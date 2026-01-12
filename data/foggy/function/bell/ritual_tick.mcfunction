
## Ritual detection tick
# Decrement ritual timer if active
execute as @a[scores={foggy.ritual_timer=1..}] run scoreboard players remove @s foggy.ritual_timer 1

# If timer expired and there were 3+ rings, trigger success (only if ritual enabled)
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_timer=0,foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run function foggy:bell/ritual_success

# If timer expired, reset the ritual counter (prevents partial counts lingering)
execute as @a[scores={foggy.ritual_timer=0}] run scoreboard players set @s foggy.ritual_count 0
