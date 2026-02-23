# Recursive raycast function to fix any anvils
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ chipped_anvil run scoreboard players set @s new_chest 24
execute if block ^ ^ ^ chipped_anvil run setblock ^ ^ ^ anvil
execute if block ^ ^ ^ damaged_anvil run scoreboard players set @s new_chest 24
execute if block ^ ^ ^ damaged_anvil run setblock ^ ^ ^ anvil
scoreboard players add @s new_chest 1
execute if score @s new_chest matches 1..24 positioned ^ ^ ^0.2 run function sg:scripts/fix_anvil