execute store result score @s foggy.cooldown run random value 2400..3600
execute store result score @s foggy.rng run random value 0..4

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 3 (Screen Text Horror)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute if score @s foggy.rng matches 0 run title @s subtitle [{text:"it knows you are here",color:"dark_gray",italic:true}]
execute if score @s foggy.rng matches 1 run title @s subtitle [{text:"look behind you",color:"dark_gray",italic:true}]
execute if score @s foggy.rng matches 2 run title @s subtitle [{text:"the fog remembers your name",color:"dark_gray",italic:true}]
execute if score @s foggy.rng matches 3 run title @s subtitle [{text:"you should not have come",color:"dark_gray",italic:true}]
execute if score @s foggy.rng matches 4 run title @s subtitle [{text:"something is watching",color:"dark_gray",italic:true}]

playsound minecraft:entity.enderman.stare ambient @s ~ ~ ~ 0.3 0.8
