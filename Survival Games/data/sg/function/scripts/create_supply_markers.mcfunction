# Run this using function sg:create_supply_markers with storage sg:settings

# Remove old supply markers (avoids duplicates)
kill @e[type=minecraft:marker,tag=sgSupply]

# Drop 1
$execute positioned $(supply1x) $(supply1y) $(supply1z) run forceload add ~ ~
$execute positioned $(supply1x) $(supply1y) $(supply1z) run summon minecraft:marker ~ ~ ~ {Tags:["sgSupply","sgDrop1"]}

# Drop 2
$execute positioned $(supply2x) $(supply2y) $(supply2z) run forceload add ~ ~
$execute positioned $(supply2x) $(supply2y) $(supply2z) run summon minecraft:marker ~ ~ ~ {Tags:["sgSupply","sgDrop2"]}

# Drop 3
$execute positioned $(supply3x) $(supply3y) $(supply3z) run forceload add ~ ~
$execute positioned $(supply3x) $(supply3y) $(supply3z) run summon minecraft:marker ~ ~ ~ {Tags:["sgSupply","sgDrop3"]}

# Drop 4
$execute positioned $(supply4x) $(supply4y) $(supply4z) run forceload add ~ ~
$execute positioned $(supply4x) $(supply4y) $(supply4z) run summon minecraft:marker ~ ~ ~ {Tags:["sgSupply","sgDrop4"]}

# Remove any stuff from prev game
execute as @e[type=marker,tag=sgSupply] at @s run fill ~ ~ ~ ~ ~ ~ air replace chest
execute as @e[type=marker,tag=sgSupply] at @s run fill ~ ~ ~ ~ ~ ~ air replace beacon
