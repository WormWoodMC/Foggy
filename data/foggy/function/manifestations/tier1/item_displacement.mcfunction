execute store result score @s foggy.cooldown run random value 600..1200

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 1 (Item Displacement)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 0.2 0.9
execute at @s run spreadplayers ~ ~ 4 12 false @e[type=minecraft:item,distance=..8,limit=12,sort=nearest]
