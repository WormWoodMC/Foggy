execute store result score @s foggy.cooldown run random value 1800..2400
execute store result score @s foggy.rng run random value 0..7
execute store result score @s foggy.hp run random value 0..2

execute if score @s foggy.rng matches 0 at @s positioned ~30 ~ ~ run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 1 at @s positioned ~-30 ~ ~ run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 2 at @s positioned ~ ~ ~30 run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 3 at @s positioned ~ ~ ~-30 run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 4 at @s positioned ~21 ~ ~21 run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 5 at @s positioned ~-21 ~ ~21 run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 6 at @s positioned ~21 ~ ~-21 run function foggy:manifestations/tier2/distant_scream_play
execute if score @s foggy.rng matches 7 at @s positioned ~-21 ~ ~-21 run function foggy:manifestations/tier2/distant_scream_play

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 2 (Distant Scream)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]
