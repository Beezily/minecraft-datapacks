#Run by all players per tick to see if should get saturation
# Hardcoded hunger check for rend: 11 = 4 + 9 seconds
execute store result score %temp rend run data get entity @s active_effects[{id:"minecraft:hunger"}].duration 1
execute if score %temp rend matches 100.. run return 0
# Actual data
execute store result score %temp rend run data get entity @s foodSaturationLevel 1
execute if score %temp rend matches ..1 run effect give @s saturation 1 0 true
execute store result score %temp rend run data get entity @s foodLevel 1
execute if score %temp rend matches ..19 run effect give @s saturation 1 0 true
