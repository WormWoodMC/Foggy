tellraw @a {text:"=== Dread Controls ===",color:"dark_red",bold:true}
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"System: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.dread_enabled"},color:"white"},{text:" (1=on, 0=off)",color:"gray"}]
tellraw @a [{text:"[Enable]",color:"green",click_event:{action:run_command,command:"/function foggy:config/dread/enable"}},{text:" ",color:"gray"},{text:"[Disable]",color:"red",click_event:{action:run_command,command:"/function foggy:config/dread/disable"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"Multiplier: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.dread_multiplier"},color:"yellow"},{text:"x per tick",color:"gray"}]
tellraw @a [{text:"[Calm]",color:"green",click_event:{action:run_command,command:"/function foggy:config/dread/multiplier_calm"}},{text:" ",color:"gray"},{text:"[Balanced]",color:"gold",click_event:{action:run_command,command:"/function foggy:config/dread/multiplier_balanced"}},{text:" ",color:"gray"},{text:"[Aggressive]",color:"dark_red",click_event:{action:run_command,command:"/function foggy:config/dread/multiplier_aggressive"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"Decay: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.dread_decay"},color:"yellow"},{text:" per tick drop",color:"gray"}]
tellraw @a [{text:"[Slow]",color:"green",click_event:{action:run_command,command:"/function foggy:config/dread/decay_slow"}},{text:" ",color:"gray"},{text:"[Medium]",color:"gold",click_event:{action:run_command,command:"/function foggy:config/dread/decay_medium"}},{text:" ",color:"gray"},{text:"[Fast]",color:"dark_red",click_event:{action:run_command,command:"/function foggy:config/dread/decay_fast"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"Fear Spread Radius: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.fear_spread_radius"},color:"yellow"},{text:" blocks",color:"gray"}]
tellraw @a [{text:"[Close]",color:"green",click_event:{action:run_command,command:"/function foggy:config/dread/radius_close"}},{text:" ",color:"gray"},{text:"[Normal]",color:"gold",click_event:{action:run_command,command:"/function foggy:config/dread/radius_normal"}},{text:" ",color:"gray"},{text:"[Wide]",color:"dark_red",click_event:{action:run_command,command:"/function foggy:config/dread/radius_wide"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"[Back to Main Config]",color:"green",click_event:{action:run_command,command:"/function foggy:config"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"[Dread Status]",color:"blue",click_event:{action:run_command,command:"/function foggy:dread/status"}}]
tellraw @a [{text:"[Dread Thresholds]",color:"gold",click_event:{action:run_command,command:"/function foggy:dread/thresholds"}}]
