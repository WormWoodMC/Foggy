execute if score #foggy foggy.manifestations_enabled matches 1 run function foggy:manifestations/cooldowns

# Only attempt to select events every 2 seconds (40 ticks)
execute if score #foggy foggy.manifestations_enabled matches 1 if score #foggy foggy.man_tick matches 40 run function foggy:manifestations/select_event
execute if score #foggy foggy.manifestations_enabled matches 1 if score #foggy foggy.man_tick matches 40 run scoreboard players set #foggy foggy.man_tick 0
