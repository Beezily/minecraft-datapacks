# A setup function for find_stashable. 
# I need to set score and execute the find anchored eyes and rotated @s, and revoke etc
scoreboard players set @s stash 1
advancement revoke @s only sg:anti_stash/container_use
execute at @s rotated as @s anchored eyes run function sg:anti_stash/find_stashable
