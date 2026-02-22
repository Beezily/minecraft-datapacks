# Clear any chest/beacon block the marker is inside
execute as @e[type=minecraft:marker,tag=sgSupply] at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:chest
execute as @e[type=minecraft:marker,tag=sgSupply] at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:beacon

# Un-forceload the chunk each marker is in
execute as @e[type=minecraft:marker,tag=sgSupply] at @s run forceload remove ~ ~

# Kill markers
kill @e[type=minecraft:marker,tag=sgSupply]