tellraw @a {text:"=== Foggy v4.2.0 Configuration ===",color:"gold",bold:true}
tellraw @a {text:"Intensity: ",color:"gray"}
tellraw @a [{text:"[Low] ",color:"green",click_event:{action:run_command,command:"/function foggy:config/intensity/low"}},{text:"[Medium] ",color:"yellow",click_event:{action:run_command,command:"/function foggy:config/intensity/medium"}},{text:"[High] ",color:"red",click_event:{action:run_command,command:"/function foggy:config/intensity/high"}}]
tellraw @a {text:""}
tellraw @a {text:"Safe Mode: ",color:"gray"}
tellraw @a [{score:{name:"#foggy",objective:"foggy.safe_mode"},color:"white"},{text:" - ",color:"gray"},{text:"[Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/safe_mode/toggle"}}]
tellraw @a {text:""}
tellraw @a {text:"Ambient Events: ",color:"gray"}
tellraw @a [{score:{name:"#foggy",objective:"foggy.ambient_enabled"},color:"white"},{text:" - ",color:"gray"},{text:"[Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/ambient/toggle"}}]
tellraw @a {text:""}
tellraw @a {text:"Echo Whispers: ",color:"gray"}
tellraw @a [{score:{name:"#foggy",objective:"foggy.echo_enabled"},color:"white"},{text:" - ",color:"gray"},{text:"[Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/echo/toggle"}}]
tellraw @a {text:""}
tellraw @a {text:"Ritual Bell: ",color:"gray"}
tellraw @a [{score:{name:"#foggy",objective:"foggy.ritual_enabled"},color:"white"},{text:" - ",color:"gray"},{text:"[Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/ritual/toggle"}}]
tellraw @a {text:""}
tellraw @a {text:"Streamer Mode: ",color:"gray"}
tellraw @a [{score:{name:"#foggy",objective:"foggy.streamer_mode"},color:"white"},{text:" - ",color:"gray"},{text:"[Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/streamer/toggle"}}]
tellraw @a {text:""}
tellraw @a {text:"Jumpscare Volume: ",color:"gray"}
tellraw @a [{text:"[Quiet] ",color:"green",click_event:{action:run_command,command:"/function foggy:config/volume/quiet"}},{text:"[Normal] ",color:"yellow",click_event:{action:run_command,command:"/function foggy:config/volume/normal"}},{text:"[Loud] ",color:"red",click_event:{action:run_command,command:"/function foggy:config/volume/loud"}}]
tellraw @a {text:""}
tellraw @a [{text:"[Advanced Settings]",color:"purple",bold:true,click_event:{action:run_command,command:"/function foggy:config/advanced"}}]
tellraw @a {text:""}
tellraw @a [{text:"[Statistics]",color:"blue",click_event:{action:run_command,command:"/function foggy:config/stats"}}]
tellraw @a {text:""}
tellraw @a [{text:"[Help]",color:"gray",click_event:{action:run_command,command:"/function foggy:config/help"}}]
tellraw @a {text:""}
tellraw @a [{text:"[Dread Controls]",color:"red",click_event:{action:run_command,command:"/function foggy:config/dread"}}]
