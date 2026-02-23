# Recursive function to find stashable blocks and run on_stashable to mark it with current iteration
execute if block ^ ^ ^ #sg:stashable_container run scoreboard players set @s stash 24
execute if block ^ ^ ^ #sg:stashable_container align xyz positioned ~0.5 ~0.5 ~0.5 run function sg:anti_stash/on_stashable
scoreboard players add @s stash 1
execute if score @s stash matches 1..24 positioned ^ ^ ^0.2 run function sg:anti_stash/find_stashable