# Recursive raycast function to find the chest
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ ender_chest run scoreboard players set @s open_chest 48
execute if block ^ ^ ^ ender_chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:scripts/create_ender_loot
scoreboard players add @s open_chest 1
execute if score @s open_chest matches 1..48 positioned ^ ^ ^0.1 run function sg:scripts/find_ender
