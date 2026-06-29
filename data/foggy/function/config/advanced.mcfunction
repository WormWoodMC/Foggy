tellraw @a {text:"=== Foggy Advanced Configuration ===",color:"gold",bold:true}
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Manifestation Settings:",color:"yellow",bold:true}
tellraw @a [{text:"Manifestation Rate: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.intensity"},color:"white"},{text:"%",color:"dark_gray"},{text:" [Change]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/manifestation/rate"}}]
tellraw @a [{text:"Max Tier: ",color:"gray"},{text:"4",color:"white"},{text:" [Change]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/manifestation/max_tier"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Multiplayer Settings:",color:"yellow",bold:true}
tellraw @a [{text:"Fear Spread: ",color:"gray"},{text:"ENABLED",color:"green"},{text:" [Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/multiplayer/fear_spread"}}]
tellraw @a [{text:"Shared Cooldowns: ",color:"gray"},{text:"DISABLED",color:"red"},{text:" [Toggle]",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/multiplayer/shared_cooldowns"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Statistics:",color:"yellow",bold:true}
tellraw @a [{text:"Jumpscares Triggered: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.jumpscare_count"},color:"white"}]
tellraw @a [{text:"Current Version: ",color:"gray"},{text:"v4.2.0",color:"white"}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"[Back to Main Config]",color:"green",click_event:{action:run_command,command:"/function foggy:config"}}]
