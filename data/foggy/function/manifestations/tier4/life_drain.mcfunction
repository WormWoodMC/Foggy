execute store result score @s foggy.cooldown run random value 3600..4800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 4 (Life Drain)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil if predicate foggy:random/50_percent run damage @s 4 minecraft:magic
execute unless block ~ ~-1 ~ minecraft:soul_sand unless block ~ ~-1 ~ minecraft:soul_soil run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.25 0.8
