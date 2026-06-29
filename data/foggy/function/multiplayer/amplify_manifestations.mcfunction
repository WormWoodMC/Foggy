execute if score #foggy foggy.dread >= 120 unless entity @s[tag=foggy.amplified] run scoreboard players add @s foggy.attention 5
execute if score #foggy foggy.dread >= 120 unless entity @s[tag=foggy.amplified] run tag @s add foggy.amplified
execute if score #foggy foggy.dread >= 120 unless entity @s[tag=foggy.amplified] run tellraw @s [{text:"⚠",color:"red"},{text:" Collective fear intensifies the fog!",color:"dark_gray"}]

execute if score #foggy foggy.dread < 120 if entity @s[tag=foggy.amplified] run tag @s remove foggy.amplified

execute if score #foggy foggy.dread >= 160 if score @s foggy.attention matches 80.. run function foggy:manifestations/tier4/select
