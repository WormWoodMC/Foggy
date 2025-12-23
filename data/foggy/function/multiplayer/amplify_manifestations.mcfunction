# Amplify manifestations when multiple players have high attention
execute if score #foggy foggy.intensity >= 150 run scoreboard players add @s foggy.attention 5
execute if score #foggy foggy.intensity >= 150 run tellraw @s [{"text":"⚠","color":"red"},{"text":" Collective fear intensifies the fog!","color":"dark_gray"}]

# Force a tier 4 manifestation when conditions are met
execute if score #foggy foggy.intensity >= 200 run function foggy:manifestations/tier4/select

# Visual amplification effect
execute at @s run particle minecraft:soul_flame ~ ~ ~ 1 1 1 1 20 force
