# Recursive raycast function to find the chest
# Drops out after 24 iterations without finding
execute positioned ^ ^ ^0.2 if block ^ ^ ^ chest run scoreboard players set @s open_chest 24
execute positioned ^ ^ ^0.2 if block ^ ^ ^ chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:scripts/set_loot
scoreboard players add @s open_chest 1
execute if score @s open_chest matches 1..24 positioned ^ ^ ^0.2 run function sg:scripts/find_chest
