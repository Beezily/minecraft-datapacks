# Unload forceload and kill
# removes beacon if there is one
execute at @s if block ~ ~-1 ~ beacon run setblock ~ ~-1 ~ emerald_block
execute at @s run forceload remove ~ ~ ~ ~
kill @s