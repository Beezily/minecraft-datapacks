# Recursive raycast function to find the chest for enchanting
# Drops out after 24 iterations without finding
execute if block ^ ^ ^ chest run scoreboard players set @s enchant 49
execute if block ^ ^ ^ chest align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:enchant/summon_enchant
execute unless score @s enchant matches 49 if block ^ ^ ^ enchanting_table run scoreboard players set @s enchant 50
execute unless score @s enchant matches 49 if block ^ ^ ^ enchanting_table align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:enchant/restore_enchant
scoreboard players add @s enchant 1
execute if score @s enchant matches 1..48 positioned ^ ^ ^0.1 run function sg:enchant/find_enchant
# This prints 48 times so a trick is to add the value once in the recursion end to stop it
execute if score @s enchant matches 49 run tellraw @s {"color":"red","text":"You must be looking at a chest to create the enchanting table!"}
execute if score @s enchant matches 49 at @s run playsound block.dispenser.fail master @s ~ ~ ~ 1 1 1
execute if score @s enchant matches 49 run scoreboard players add @s enchant 1
