scoreboard objectives add foggy.attention dummy
scoreboard objectives add foggy.timer dummy
scoreboard objectives add foggy.cooldown dummy
scoreboard objectives add foggy.enabled dummy
scoreboard objectives add foggy.blindness_enabled dummy
scoreboard objectives add foggy.manifestations_enabled dummy
scoreboard objectives add foggy.bflicker dummy
scoreboard objectives add foggy.rng dummy
scoreboard objectives add foggy.hp dummy
scoreboard objectives add foggy.bell minecraft.custom:minecraft.bell_ring
scoreboard objectives add foggy.bell_prev dummy
scoreboard objectives add foggy.bell_mute dummy
scoreboard objectives add foggy.suffocate dummy
scoreboard objectives add foggy.sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add foggy.sleep_prev dummy
scoreboard objectives add foggy.intensity dummy
scoreboard objectives add foggy.streamer_mode dummy
scoreboard objectives add foggy.volume dummy
scoreboard objectives add foggy.jumpscare_count dummy
scoreboard objectives add foggy.version dummy
scoreboard objectives add foggy.max_tier dummy
scoreboard objectives add foggy.fear_spread_enabled dummy
scoreboard objectives add foggy.shared_cooldowns_enabled dummy
scoreboard objectives add foggy.compatible dummy

# Initialize v2.0.0 settings
scoreboard players set #foggy foggy.enabled 1
scoreboard players set #foggy foggy.blindness_enabled 1
scoreboard players set #foggy foggy.manifestations_enabled 1
scoreboard players set #foggy foggy.timer 0
scoreboard players set #foggy foggy.intensity 100
scoreboard players set #foggy foggy.volume 100
scoreboard players set #foggy foggy.jumpscare_count 0
scoreboard players set #foggy foggy.version 48
scoreboard players set #foggy foggy.max_tier 4
scoreboard players set #foggy foggy.fear_spread_enabled 1
scoreboard players set #foggy foggy.shared_cooldowns_enabled 0
scoreboard players set #foggy foggy.compatible 1

# Display welcome message for v2.0.0
tellraw @a [{"text":"⚠","color":"red"},{"text":" Foggy v2.0.0 ","color":"dark_red","bold":true},{"text":"has been loaded! ","color":"gray"},{"text":"Type /function foggy:config to customize","color":"dark_gray"}]

# Run version compatibility check
function foggy:version_check
