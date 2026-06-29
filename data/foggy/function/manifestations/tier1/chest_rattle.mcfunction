execute store result score @s foggy.cooldown run random value 600..1200
execute store result score @s foggy.rng run random value 0..7
scoreboard players set @s foggy.hp 0

execute if score @s foggy.rng matches 0 at @s positioned ~4 ~ ~ run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 1 at @s positioned ~-4 ~ ~ run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 2 at @s positioned ~ ~ ~4 run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 3 at @s positioned ~ ~ ~-4 run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 4 at @s positioned ~4 ~ ~4 run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 5 at @s positioned ~-4 ~ ~4 run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 6 at @s positioned ~4 ~ ~-4 run function foggy:manifestations/tier1/chest_rattle_at
execute if score @s foggy.rng matches 7 at @s positioned ~-4 ~ ~-4 run function foggy:manifestations/tier1/chest_rattle_at

execute if score @s foggy.hp matches 0 run scoreboard players set @s foggy.cooldown 0

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 1 (Chest Rattle)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]
