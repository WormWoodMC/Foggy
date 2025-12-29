# Holding light is your primary defense - significantly reduces dread
execute as @a[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.mainhand #foggy:lit_items run scoreboard players remove @s foggy.attention 2
execute as @a[gamemode=!creative,gamemode=!spectator] if items entity @s weapon.offhand #foggy:lit_items run scoreboard players remove @s foggy.attention 2
