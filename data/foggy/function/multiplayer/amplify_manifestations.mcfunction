# Amplify manifestations when multiple players have high attention - but don't spiral out of control
execute if score #foggy foggy.intensity >= 150 unless entity @s[tag=foggy.amplified] run scoreboard players add @s foggy.attention 5
execute if score #foggy foggy.intensity >= 150 unless entity @s[tag=foggy.amplified] run tag @s add foggy.amplified
execute if score #foggy foggy.intensity >= 150 unless entity @s[tag=foggy.amplified] run tellraw @s [{"text":"⚠","color":"red"},{"text":" Collective fear intensifies the fog!","color":"dark_gray"}]

# Remove amplified tag when intensity drops
execute if score #foggy foggy.intensity < 150 if entity @s[tag=foggy.amplified] run tag @s remove foggy.amplified

# Only force tier 4 at extreme intensity
execute if score #foggy foggy.intensity >= 250 if score @s foggy.attention matches 80.. run function foggy:manifestations/tier4/select

# Visual amplification effect - disabled to avoid visual obstruction
