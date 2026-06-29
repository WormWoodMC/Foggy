execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run tellraw @s [{text:"Ritual: Calm Descends",color:"aqua",bold:true},{text:" — your attention has been eased.",color:"gray"}]
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1

execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run scoreboard players remove @s foggy.attention 35
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run effect clear @s minecraft:darkness
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run effect give @s minecraft:resistance 30 0 true
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run function foggy:manifestations/tier4/the_watcher_banish
execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run scoreboard players add @s foggy.p_rituals 1

execute if score #foggy foggy.ritual_enabled matches 1 as @a[scores={foggy.ritual_count=3..,foggy.ritual_cooldown=..0}] run scoreboard players set @s foggy.ritual_cooldown 24000
execute as @a[scores={foggy.ritual_count=3..}] run scoreboard players set @s foggy.ritual_count 0
