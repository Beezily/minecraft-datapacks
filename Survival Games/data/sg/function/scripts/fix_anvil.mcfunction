# Recursive raycast function to fix any anvils
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ chipped_anvil run scoreboard players set @s anvil_fix 48
execute if block ^ ^ ^ chipped_anvil run setblock ^ ^ ^ anvil
execute if block ^ ^ ^ damaged_anvil run scoreboard players set @s anvil_fix 48
execute if block ^ ^ ^ damaged_anvil run setblock ^ ^ ^ anvil
scoreboard players add @s anvil_fix 1
execute if score @s anvil_fix matches 1..48 positioned ^ ^ ^0.1 run function sg:scripts/fix_anvil