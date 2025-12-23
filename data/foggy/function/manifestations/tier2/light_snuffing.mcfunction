execute store result score @s foggy.cooldown run random value 1200..2400
execute store result score @s foggy.rng run random value 0..5

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 2 (Light Snuffing)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

execute if score @s foggy.rng matches 0 at @s positioned ~6 ~ ~ run function foggy:manifestations/tier2/snuff_at
execute if score @s foggy.rng matches 1 at @s positioned ~-6 ~ ~ run function foggy:manifestations/tier2/snuff_at
execute if score @s foggy.rng matches 2 at @s positioned ~ ~ ~6 run function foggy:manifestations/tier2/snuff_at
execute if score @s foggy.rng matches 3 at @s positioned ~ ~ ~-6 run function foggy:manifestations/tier2/snuff_at
execute if score @s foggy.rng matches 4 at @s positioned ~10 ~ ~ run function foggy:manifestations/tier2/snuff_at
execute if score @s foggy.rng matches 5 at @s positioned ~ ~ ~10 run function foggy:manifestations/tier2/snuff_at
