# Kills all checkpoints and markers
execute as @e[type=marker,tag=parkourCheck] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=parkourCheck] at @s run setblock ~ ~-1 ~ emerald_block
execute as @e[type=marker,tag=parkourCheck] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 emerald_block

execute as @e[type=marker,tag=parkourEnd] at @s run setblock ~ ~ ~ air
execute as @e[type=marker,tag=parkourEnd] at @s run setblock ~ ~-1 ~ emerald_block
execute as @e[type=marker,tag=parkourEnd] at @s run setblock ~ ~-2 ~ emerald_block
execute as @e[type=marker,tag=parkourEnd] at @s run fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 emerald_block

execute as @e[type=marker,tag=parkourMarker] at @s run function parkour:scripts/unload_kill
