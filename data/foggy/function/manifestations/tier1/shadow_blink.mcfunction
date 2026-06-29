execute unless score #foggy foggy.safe_mode matches 1 run effect give @s minecraft:darkness 1 0 true
execute unless score #foggy foggy.safe_mode matches 1 run playsound minecraft:block.note_block.heartbeat ambient @s ~ ~ ~ 0.5 0.5
execute store result score @s foggy.cooldown run random value 400..800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 1 (Shadow Blink)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]
