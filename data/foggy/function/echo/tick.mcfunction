## Echo whispers: rare, directional, cosmetic-only whispers

execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate foggy:random/0_5_percent if score #foggy foggy.ambient_enabled matches 1 run execute at @s positioned ^ ^ ^1 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.28 1 0.01
