execute as @a[gamemode=!creative,gamemode=!spectator] run function foggy:attention/sleep_reset

execute if score #foggy foggy.timer matches 200 run function foggy:attention/darkness_pulse
execute if score #foggy foggy.timer matches 200 run function foggy:attention/campfire_pulse
execute if score #foggy foggy.timer matches 300 run function foggy:attention/underground_pulse
execute if score #foggy foggy.timer matches 300 run function foggy:attention/holding_light_pulse
execute if score #foggy foggy.timer matches 400 run function foggy:attention/alone_pulse
execute if score #foggy foggy.timer matches 400 run function foggy:attention/low_health_pulse
execute if score #foggy foggy.timer matches 400 run function foggy:attention/rain_pulse
execute if score #foggy foggy.timer matches 600 run function foggy:attention/night_pulse
execute if score #foggy foggy.timer matches 600 run function foggy:attention/no_light_inventory_pulse

scoreboard players set @a[scores={foggy.attention=101..}] foggy.attention 100
scoreboard players set @a[scores={foggy.attention=..-1}] foggy.attention 0
