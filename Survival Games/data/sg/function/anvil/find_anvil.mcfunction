# Recursive raycast function to find the chest for anvil
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ chest run scoreboard players set @s anvil 49
execute if block ^ ^ ^ chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:anvil/summon_anvil
execute unless score @s anvil matches 49 if block ^ ^ ^ anvil run scoreboard players set @s anvil 50
execute unless score @s anvil matches 49 if block ^ ^ ^ anvil align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:anvil/restore_anvil
execute unless score @s anvil matches 50 if block ^ ^ ^ chipped_anvil run scoreboard players set @s anvil 51
execute unless score @s anvil matches 50 if block ^ ^ ^ chipped_anvil align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:anvil/restore_anvil
scoreboard players add @s anvil 1
execute if score @s anvil matches 1..48 positioned ^ ^ ^0.1 run function sg:anvil/find_anvil
# This prints 48 times so a trick is to add the value once in the recursion end to stop it
execute if score @s anvil matches 49 run tellraw @s {"color":"red","text":"You must be looking at a chest to create the anvil!"}
execute if score @s anvil matches 49 at @s run playsound block.dispenser.fail master @s ~ ~ ~ 1 1 1
execute if score @s anvil matches 49 run scoreboard players add @s anvil 1
