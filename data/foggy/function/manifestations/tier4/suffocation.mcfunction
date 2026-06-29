execute store result score @s foggy.cooldown run random value 4800..7200
tag @s add foggy.suffocate_target

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 4 (Suffocation)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

scoreboard players set @s foggy.suffocate 40

effect give @s minecraft:darkness 4 0 true
playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.7 1

schedule function foggy:manifestations/tier4/suffocation_phase2 20t
