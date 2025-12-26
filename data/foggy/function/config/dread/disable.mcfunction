scoreboard players set #foggy foggy.dread_enabled 0
tellraw @a [{"text":"Dread system ","color":"gray"},{"text":"DISABLED","color":"red","bold":true}]
tellraw @a {"text":"The fog will stop escalating based on dread until you re-enable it.","color":"dark_gray"}
