execute store result score @s foggy.cooldown run random value 6000..9000
tag @s add foggy.watcher_target

execute if entity @s[tag=foggy.debug] run title @s actionbar [{text:"Foggy: Tier 4 (The Watcher)",color:"gray"},{text:" cd=",color:"dark_gray"},{score:{name:"@s",objective:"foggy.cooldown"},color:"white"}]

execute if score #foggy foggy.streamer_mode matches 1 run tellraw @s [{text:"[Streamer] Something is coming...",color:"gold"}]

execute if score #foggy foggy.volume matches 50 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.05 0.5
execute if score #foggy foggy.volume matches 100 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.1 0.5
execute if score #foggy foggy.volume matches 200 run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 0.15 0.5
execute if score #foggy foggy.streamer_mode matches 1 run title @s actionbar [{text:"Unknown presence approaching...",color:"dark_red"}]

schedule function foggy:manifestations/tier4/the_watcher_phase2 20t
schedule function foggy:manifestations/tier4/the_watcher_phase3 40t
schedule function foggy:manifestations/tier4/the_watcher_jumpscare 60t

scoreboard players add #foggy foggy.jumpscare_count 1
scoreboard players add @s foggy.p_jumpscares 1
