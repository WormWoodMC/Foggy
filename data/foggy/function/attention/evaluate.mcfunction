execute as @a[gamemode=!creative,gamemode=!spectator] unless score @s foggy.attention matches -2147483648.. run scoreboard players set @s foggy.attention 0

function foggy:attention/darkness_pulse
function foggy:attention/campfire_pulse
function foggy:attention/underground_pulse
function foggy:attention/holding_light_pulse
function foggy:attention/alone_pulse
function foggy:attention/low_health_pulse
function foggy:attention/rain_pulse
function foggy:attention/night_pulse
function foggy:attention/no_light_inventory_pulse
function foggy:attention/soul_sand_pulse
function foggy:attention/passive_decay

# Store previous attention for threshold crossing detection
execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard players operation @s foggy.attn_prev = @s foggy.attention

# Track max attention per player
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s foggy.attention > @s foggy.p_max_attn run scoreboard players operation @s foggy.p_max_attn = @s foggy.attention

scoreboard players set #foggy foggy.attn_tick 0
