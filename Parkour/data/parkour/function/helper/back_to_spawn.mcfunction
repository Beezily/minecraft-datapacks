# Helper to put everyone back to spawn (cage)
execute as @e[type=marker,tag=parkourSpawn] at @s run spawnpoint @a ~ ~ ~
kill @a
