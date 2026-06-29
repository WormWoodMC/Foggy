# Max Tier Configuration - v2.0.0
tellraw @a {text:"=== Maximum Manifestation Tier ===",color:"gold",bold:true}
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"• Tier 1 Only (Mild)",color:"green",click_event:{action:run_command,command:"/function foggy:config/manifestation/set_max_tier_1"}}]
tellraw @a [{text:"• Tier 2 Only (Moderate)",color:"aqua",click_event:{action:run_command,command:"/function foggy:config/manifestation/set_max_tier_2"}}]
tellraw @a [{text:"• Tier 3 Only (Intense)",color:"yellow",click_event:{action:run_command,command:"/function foggy:config/manifestation/set_max_tier_3"}}]
tellraw @a [{text:"• All Tiers (Extreme)",color:"red",click_event:{action:run_command,command:"/function foggy:config/manifestation/set_max_tier_4"}}]
tellraw @a {text:"",color:"gray"}
tellraw @a [{text:"[← Back to Advanced]",color:"green",click_event:{action:run_command,command:"/function foggy:config/advanced"}}]
