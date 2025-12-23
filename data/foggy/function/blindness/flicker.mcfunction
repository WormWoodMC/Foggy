scoreboard players remove @s foggy.bflicker 1
execute if score @s foggy.bflicker matches ..-1 run scoreboard players set @s foggy.bflicker 0

execute if score @s foggy.bflicker matches 0 run effect give @s minecraft:blindness 1 0 true
execute if score @s foggy.bflicker matches 0 run scoreboard players set @s foggy.bflicker 30
