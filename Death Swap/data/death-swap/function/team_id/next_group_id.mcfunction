# Based on %curr_group ds and %curr_group_count ds we fill the buckets up
# This function is run by each player (order determined by lines which run this function)
scoreboard players operation @s ds_group = %curr_group ds
scoreboard players operation @s ds_group_order = %curr_group_order ds

# ALSO IMPORTANTLY SUMMONS A MARKER FOR THE SWAP
# Putting this here because it's convenient that every player without dsTrim is running this function
# Summon dsSwap markers, then assign players to their marker
execute at @s run summon marker ~ ~ ~ {Tags:["dsSwap","dsMe"]}
execute at @s run tp @n[type=marker,tag=dsMe] @s
execute at @s run forceload add ~ ~ ~ ~
scoreboard players operation @n[type=marker,tag=dsMe] ds_group = @s ds_group
scoreboard players operation @n[type=marker,tag=dsMe] ds_group_order = @s ds_group_order
tag @e[tag=dsMe] remove dsMe

# Updates iterator scores for next run
scoreboard players add %curr_group_order ds 1
execute if score %curr_group_order ds >= %largest ds run scoreboard players add %curr_group ds 1
execute if score %curr_group_order ds >= %largest ds run scoreboard players set %curr_group_order ds 0
