# Recursive raycast function to find the ender chest
# Drops out after 12 iterations without finding
execute positioned ^ ^ ^0.2 if block ^ ^ ^ ender_chest run scoreboard players set @s new_chest 12
execute positioned ^ ^ ^0.2 if block ^ ^ ^ ender_chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:scripts/set_loot
scoreboard players add @s new_chest 1
execute if score @s new_chest matches 1..24 positioned ^ ^ ^0.2 run function sg:scripts/find_chest