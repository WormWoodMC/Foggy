tellraw @a {text:"=== Foggy Statistics ===",color:"gold",bold:true}
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Global:",color:"yellow",bold:true}
tellraw @a [{text:"Attn Threshold Hit: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.jumpscare_count"},color:"white"}]
tellraw @a [{text:"Active Dread: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.dread"},color:"red"}]
tellraw @a [{text:"Max Tier: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.max_tier"},color:"white"}]
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Your Stats:",color:"yellow",bold:true}
tellraw @a [{text:"Jumpscares: ",color:"gray"},{score:{name:"@s",objective:"foggy.p_jumpscares"},color:"white"}]
tellraw @a [{text:"Rituals: ",color:"gray"},{score:{name:"@s",objective:"foggy.p_rituals"},color:"white"}]
tellraw @a [{text:"Watcher Encounters: ",color:"gray"},{score:{name:"@s",objective:"foggy.p_watcher_seen"},color:"white"}]
tellraw @a [{text:"Max Attention: ",color:"gray"},{score:{name:"@s",objective:"foggy.p_max_attn"},color:"white"}]
tellraw @a [{text:"Player Dread: ",color:"gray"},{score:{name:"@s",objective:"foggy.player_dread"},color:"red"}]
tellraw @a {text:"",color:"gray"}
tellraw @a {text:"Settings:",color:"yellow",bold:true}
tellraw @a [{text:"Intensity: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.intensity"},color:"white"},{text:"%",color:"dark_gray"}]
tellraw @a [{text:"Volume: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.volume"},color:"white"},{text:"%",color:"dark_gray"}]
tellraw @a [{text:"Safe Mode: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.safe_mode"},color:"white"},{text:" (1=on)",color:"dark_gray"}]
tellraw @a [{text:"Streamer Mode: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.streamer_mode"},color:"white"},{text:" (1=on)",color:"dark_gray"}]
tellraw @a [{text:"Fear Spread: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.fear_spread_enabled"},color:"white"},{text:" (1=on)",color:"dark_gray"}]
tellraw @a [{text:"Pack Format: ",color:"gray"},{score:{name:"#foggy",objective:"foggy.version"},color:"white"}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"[Back to Main Config]",color:"green",click_event:{action:run_command,command:"/function foggy:config"}}]
