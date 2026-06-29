execute if score #foggy foggy.safe_mode matches 0 run scoreboard players set #foggy foggy.safe_mode 1
execute if score #foggy foggy.safe_mode matches 1 run scoreboard players set #foggy foggy.safe_mode 0
execute if score #foggy foggy.safe_mode matches 1 run tellraw @a [{text:"Photosensitive Safe Mode: ",color:"gray"},{text:"ENABLED",color:"green",bold:true}]
execute if score #foggy foggy.safe_mode matches 0 run tellraw @a [{text:"Photosensitive Safe Mode: ",color:"gray"},{text:"DISABLED",color:"red",bold:true}]
