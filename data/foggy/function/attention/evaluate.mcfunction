# Initialize attention for any new players
execute as @a[gamemode=!creative,gamemode=!spectator] unless score @s foggy.attention matches -2147483648.. run scoreboard players set @s foggy.attention 0

# Runs all attention pulses and resets the attention tick counter
function foggy:attention/darkness_pulse
function foggy:attention/campfire_pulse
function foggy:attention/underground_pulse
function foggy:attention/holding_light_pulse
function foggy:attention/alone_pulse
function foggy:attention/low_health_pulse
function foggy:attention/rain_pulse
function foggy:attention/night_pulse
function foggy:attention/no_light_inventory_pulse

# reset cadence counter
scoreboard players set #foggy foggy.attn_tick 0
