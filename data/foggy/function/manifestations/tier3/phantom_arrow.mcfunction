execute store result score @s foggy.cooldown run random value 2400..3600

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 3 (Phantom Arrow)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute at @s positioned ~ ~6 ~ run summon minecraft:spectral_arrow ~ ~ ~ {Motion:[0.0,-0.5,0.0],PierceLevel:3,damage:0.0,NoGravity:0b,Tags:["foggy.phantom_arrow"],Pickup:0b}
schedule function foggy:manifestations/tier3/phantom_arrow_cleanup 40t
playsound minecraft:entity.phantom.shoot ambient @s ~ ~ ~ 0.3 1.2
