# Ends the game
# Unmark game as running
scoreboard players set %game ds 0

# Timer ticks reset
scoreboard players set %timer ds 0

# Put all players in survival mode and give resistance
execute as @a[gamemode=spectator] run tp @s @p[gamemode=survival]
gamemode survival @a[gamemode=spectator]
effect give @a resistance infinite 4 true

# Show bossbar to everyone
bossbar set ds:timer players @a
bossbar set ds:timer visible false
bossbar set ds:timer max 3600
bossbar set ds:timer value 3600
bossbar set ds:timer name {"text":"Starting...","color":"#037d5e","bold":true}

# Enable all triggers to allow team switches
scoreboard players enable @a Red
scoreboard players enable @a Yellow
scoreboard players enable @a Blue
scoreboard players enable @a Green
scoreboard players enable @a Aqua
scoreboard players enable @a Purple
scoreboard players enable @a Solo

scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0

# Reset death so not immediate spectate
scoreboard players reset * ds_died

# Remove center because why not
execute as @e[type=marker,tag=dsCenter] at @s run function death-swap:scripts/kill_unload

# Tellraw finish to all players
execute if score %iteration ds = %final_iteration ds run tellraw @a {"text":"The game has finished!","color":"gold"}
title @a title {"text":"Game Finished!","bold":true}

