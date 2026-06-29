# Version compatibility check
execute if score #foggy foggy.version matches 101 run tellraw @a [{text:"Foggy loaded for Minecraft 26.1.2",color:"green"}]
execute if score #foggy foggy.version matches 101 run scoreboard players set #foggy foggy.compatible 1

# Fallback for unknown versions
execute unless score #foggy foggy.version matches 101 run tellraw @a [{text:"Warning: Foggy may not be fully compatible with this version",color:"yellow"}]
execute unless score #foggy foggy.version matches 101 run scoreboard players set #foggy foggy.compatible 0
