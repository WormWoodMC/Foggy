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
scoreboard objectives add foggy.player_dread dummy
scoreboard objectives add foggy.dread dummy
scoreboard objectives add foggy.dread_enabled dummy
scoreboard objectives add foggy.dread_multiplier dummy
scoreboard objectives add foggy.dread_decay dummy
scoreboard objectives add foggy.fear_spread_radius dummy
scoreboard objectives add foggy.attn_tick dummy
scoreboard objectives add foggy.man_tick dummy

scoreboard objectives add foggy.ambient_enabled dummy
scoreboard objectives add foggy.ritual_count dummy
scoreboard objectives add foggy.ritual_timer dummy
scoreboard objectives add foggy.ritual_cooldown dummy
scoreboard objectives add foggy.echo_enabled dummy
scoreboard objectives add foggy.ritual_enabled dummy

# v4.2.0 objectives
scoreboard objectives add foggy.safe_mode dummy
scoreboard objectives add foggy.p_jumpscares dummy
scoreboard objectives add foggy.p_max_attn dummy
scoreboard objectives add foggy.p_rituals dummy
scoreboard objectives add foggy.p_watcher_seen dummy
scoreboard objectives add foggy.attn_prev dummy

scoreboard players set #foggy foggy.enabled 1
scoreboard players set #foggy foggy.blindness_enabled 1
scoreboard players set #foggy foggy.manifestations_enabled 1
scoreboard players set #foggy foggy.timer 0
scoreboard players set #foggy foggy.intensity 100
scoreboard players set #foggy foggy.volume 100
scoreboard players set #foggy foggy.jumpscare_count 0
scoreboard players set #foggy foggy.version 101
scoreboard players set #foggy foggy.max_tier 4
scoreboard players set #foggy foggy.fear_spread_enabled 1
scoreboard players set #foggy foggy.shared_cooldowns_enabled 0
scoreboard players set #foggy foggy.compatible 1
scoreboard players set #foggy foggy.player_dread 0
scoreboard players set #foggy foggy.dread 0
scoreboard players set #foggy foggy.dread_enabled 1
scoreboard players set #foggy foggy.dread_multiplier 2
scoreboard players set #foggy foggy.dread_decay 1
scoreboard players set #foggy foggy.fear_spread_radius 8
scoreboard players set #foggy foggy.attn_tick 0
scoreboard players set #foggy foggy.man_tick 0

scoreboard players set #foggy foggy.ambient_enabled 1
scoreboard players set #foggy foggy.ritual_count 0
scoreboard players set #foggy foggy.ritual_timer 0
scoreboard players set #foggy foggy.ritual_cooldown 0
scoreboard players set #foggy foggy.echo_enabled 1
scoreboard players set #foggy foggy.ritual_enabled 1

# v4.2.0 initial values
scoreboard players set #foggy foggy.safe_mode 0

execute as @a run scoreboard players set @s foggy.attention 0
execute as @a run scoreboard players set @s foggy.player_dread 0
execute as @a run scoreboard players set @s foggy.cooldown 0
execute as @a run scoreboard players set @s foggy.bflicker 0
execute as @a run scoreboard players set @s foggy.bell 0
execute as @a run scoreboard players set @s foggy.bell_prev 0
execute as @a run scoreboard players set @s foggy.bell_mute 0
execute as @a run scoreboard players set @s foggy.suffocate 0
execute as @a run scoreboard players set @s foggy.sleep 0
execute as @a run scoreboard players set @s foggy.sleep_prev 0
execute as @a run scoreboard players set @s foggy.hp 20
execute as @a run scoreboard players set @s foggy.jumpscare_count 0
execute as @a run scoreboard players set @s foggy.rng 0
execute as @a run scoreboard players set @s foggy.ritual_count 0
execute as @a run scoreboard players set @s foggy.ritual_timer 0
execute as @a run scoreboard players set @s foggy.ritual_cooldown 0
execute as @a run scoreboard players set @s foggy.echo_enabled 1
execute as @a run scoreboard players set @s foggy.ritual_enabled 1

# v4.2.0 player init
execute as @a run scoreboard players set @s foggy.p_jumpscares 0
execute as @a run scoreboard players set @s foggy.p_max_attn 0
execute as @a run scoreboard players set @s foggy.p_rituals 0
execute as @a run scoreboard players set @s foggy.p_watcher_seen 0
execute as @a run scoreboard players set @s foggy.attn_prev 0

tellraw @a [{text:"⚠",color:"red"},{text:" Foggy v4.2.0 ",color:"dark_red",bold:true},{text:"loaded! ",color:"gray"},{text:"Type /function foggy:config",color:"dark_gray"}]

function foggy:version_check
