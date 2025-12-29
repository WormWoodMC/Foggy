execute as @a[gamemode=!creative,gamemode=!spectator] store result score @s foggy.hp run data get entity @s Health 10
# Low health increases attention - preventable by healing
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.hp=..119}] run scoreboard players add @s foggy.attention 1
execute as @a[gamemode=!creative,gamemode=!spectator,scores={foggy.hp=..59}] run scoreboard players add @s foggy.attention 1
