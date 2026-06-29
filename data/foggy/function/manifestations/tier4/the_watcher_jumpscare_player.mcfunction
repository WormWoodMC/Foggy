execute unless score #foggy foggy.safe_mode matches 1 run effect give @s minecraft:blindness 1 1 true
effect give @s minecraft:slowness 4 1 true
execute unless score #foggy foggy.safe_mode matches 1 run playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.8 1.2

execute if score #foggy foggy.streamer_mode matches 1 run title @s actionbar [{text:"JUMPSCARE NOW!",color:"dark_red",bold:true}]

execute as @e[tag=foggy.watcher,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 0.3

schedule function foggy:manifestations/tier4/the_watcher_pursue 1s
