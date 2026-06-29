execute store result score @s foggy.cooldown run random value 1800..2400

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 2 (Torch Flicker)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~1 ~ ~ if block ~1 ~ ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~-1 ~ ~ if block ~-1 ~ ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~ ~1 if block ~ ~ ~1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~ ~-1 if block ~ ~ ~-1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~1 ~ if block ~ ~1 ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~-1 ~ if block ~ ~-1 ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~1 ~ ~1 if block ~1 ~ ~1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~-1 ~ ~-1 if block ~-1 ~ ~-1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~1 ~ ~-1 if block ~1 ~ ~-1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~-1 ~ ~1 if block ~-1 ~ ~1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~1 ~1 if block ~ ~1 ~1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~ ~1 ~-1 if block ~ ~1 ~-1 minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~1 ~1 ~ if block ~1 ~1 ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place
execute at @s positioned ~-1 ~1 ~ if block ~-1 ~1 ~ minecraft:torch run function foggy:manifestations/tier2/torch_flicker_place

playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.3 1
