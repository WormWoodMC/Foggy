summon minecraft:marker ~ ~ ~ {Tags:["foggy.flicker"],NoGravity:1b,Silent:1b}
setblock ~ ~ ~ air destroy
playsound minecraft:block.fire.extinguish ambient @s ~ ~ ~ 0.4 1
schedule function foggy:manifestations/tier2/torch_flicker_restore 40t
