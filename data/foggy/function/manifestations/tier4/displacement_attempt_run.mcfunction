execute if score @s foggy.bflicker matches 0 run spreadplayers ~ ~ 5 15 false @e[tag=foggy.tp_target,limit=1,sort=nearest]
execute if score @s foggy.bflicker matches 1 run spreadplayers ~ ~ 10 18 false @e[tag=foggy.tp_target,limit=1,sort=nearest]

tp @s @e[tag=foggy.tp_target,limit=1,sort=nearest]

function foggy:manifestations/tier4/displacement_validate

execute if score @s foggy.rng matches 0 run scoreboard players remove @s foggy.hp 1
execute if score @s foggy.rng matches 0 if score @s foggy.hp matches 1.. run function foggy:manifestations/tier4/displacement_attempt_run
