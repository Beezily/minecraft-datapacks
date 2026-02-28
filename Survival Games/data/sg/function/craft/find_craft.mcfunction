# Recursive raycast function to find the chest for crafting
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ chest run scoreboard players set @s craft 49
execute if block ^ ^ ^ chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:craft/summon_craft
execute unless score @s craft matches 49 if block ^ ^ ^ crafting_table run scoreboard players set @s craft 50
execute unless score @s craft matches 49 if block ^ ^ ^ crafting_table align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:craft/restore_craft
scoreboard players add @s craft 1
execute if score @s craft matches 1..48 positioned ^ ^ ^0.1 run function sg:craft/find_craft
# This prints 48 times so a trick is to add the value once in the recursion end to stop it
execute if score @s craft matches 49 run tellraw @s {"color":"red","text":"You must be looking at a chest to create the crafting table!"}
execute if score @s craft matches 49 at @s run playsound block.dispenser.fail master @s ~ ~ ~ 1 1 1
execute if score @s craft matches 49 run scoreboard players add @s craft 1
