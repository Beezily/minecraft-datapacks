# Recursive raycast function to find the ender chest
# Drops out after 12 iterations without finding
execute positioned ^ ^ ^0.4 if block ^ ^ ^ ender_chest run scoreboard players set @s new_chest 12
execute positioned ^ ^ ^0.4 if block ^ ^ ^ ender_chest align xyz positioned ~0.5 ~0.5 ~0.5 run function kikoshi-sg:scripts/create_loot
scoreboard players add @s new_chest 1
execute if score @s new_chest matches 1..12 positioned ^ ^ ^0.4 run function kikoshi-sg:scripts/find_ender