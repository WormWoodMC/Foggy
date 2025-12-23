execute as @a[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.offhand minecraft:torch run function foggy:blindness/flicker
execute as @a[gamemode=!creative,gamemode=!spectator] unless items entity @s weapon.offhand minecraft:torch run effect give @s minecraft:blindness 6 0 true
