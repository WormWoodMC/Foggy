# Simple test: Manually trigger the full flow
tellraw @s {"text":"TESTING FOGGY SYSTEM...","color":"gold","bold":true}

# Step 1: Ensure player has scores
scoreboard players set @s foggy.attention 0
tellraw @s [{"text":"✓ Set attention to 0","color":"green"}]

# Step 2: Simulate being in darkness by adding attention
scoreboard players add @s foggy.attention 35
tellraw @s [{"text":"✓ Added 35 to attention (now: ","color":"green"},{"score":{"name":"@s","objective":"foggy.attention"},"color":"yellow"},{"text":") - Above tier 1 threshold (10)","color":"green"}]

# Step 3: Check what tier should trigger
execute if score @s foggy.attention matches 10..30 run tellraw @s [{"text":"✓ Tier 1 SHOULD trigger (attention 10-30)","color":"green"}]
execute if score @s foggy.attention matches 31..60 run tellraw @s [{"text":"✓ Tier 2 SHOULD trigger (attention 31-60)","color":"green"}]

# Step 4: Actually check if manifestations_enabled is on
execute if score #foggy foggy.manifestations_enabled matches 1 run tellraw @s [{"text":"✓ Manifestations ENABLED","color":"green"}]
execute unless score #foggy foggy.manifestations_enabled matches 1 run tellraw @s [{"text":"✗ Manifestations DISABLED - NO EVENTS WILL TRIGGER","color":"red"}]

# Step 5: Check cooldown
tellraw @s [{"text":"  Your cooldown: ","color":"gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"yellow"}]

# Step 6: Check max tier
tellraw @s [{"text":"  Max tier: ","color":"gray"},{"score":{"name":"#foggy","objective":"foggy.max_tier"},"color":"yellow"}]

# Step 7: Manually try tier 1
tellraw @s {"text":"Attempting to trigger tier 1...","color":"aqua"}
execute if score #foggy foggy.max_tier matches 1.. if score @s foggy.cooldown matches ..0 if score @s foggy.attention matches 10..30 run function foggy:manifestations/tier1/select
execute if score #foggy foggy.max_tier matches 1.. if score @s foggy.cooldown matches ..0 if score @s foggy.attention matches 10..30 run tellraw @s [{"text":"✓ Tier 1 triggered!","color":"green"}]
execute if score #foggy foggy.max_tier matches 1.. unless score @s foggy.cooldown matches ..0 run tellraw @s [{"text":"✗ Cooldown prevents tier 1","color":"red"}]
execute if score #foggy foggy.max_tier matches 1.. unless score @s foggy.attention matches 10.. run tellraw @s [{"text":"✗ Attention too low for tier 1","color":"red"}]

tellraw @s {"text":"TEST COMPLETE","color":"gold","bold":true}
