execute store result score @s foggy.cooldown run random value 3600..4800

execute if entity @s[tag=foggy.debug] run title @s actionbar [{"text":"Foggy: Tier 4 (Life Drain)","color":"gray"},{"text":" cd=","color":"dark_gray"},{"score":{"name":"@s","objective":"foggy.cooldown"},"color":"white"}]

execute if entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run scoreboard players set @s foggy.cooldown 1200
execute if entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] run scoreboard players set @s foggy.cooldown 1200
execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run scoreboard players set @s foggy.cooldown 1200
execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] run scoreboard players set @s foggy.cooldown 1200
execute if entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] run scoreboard players set @s foggy.cooldown 1200
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run scoreboard players set @s foggy.cooldown 1200

execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s minecraft:wither 3 0 true
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.25 0.8
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:haste"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:jump_boost"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run damage @s 2 minecraft:magic
