# Ends the game

# Title
title @a title {"text":"Times up!","color":"gray","bold":true}

# Respawn player if dead (RUN BEFORE CLEAR INVENTORY)
execute as @a[scores={oitq=1..}] run scoreboard players set @s oitq 0
execute as @a[gamemode=spectator] run function tropicana-oitq:scripts/respawn

# Clear inventory
clear @a

# Sounds and bossbar
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1
bossbar set tropicana-oitq:timer visible false

# No more killing, resistance to all
effect give @a minecraft:resistance infinite 4 true

# Mark game as ended
scoreboard players set %game oitq 0

# Kill stray arrows and items
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:item]

# Re-enable triggers to join teams
scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0

scoreboard players enable @a Red
scoreboard players enable @a Yellow
scoreboard players enable @a Blue
scoreboard players enable @a Green
scoreboard players enable @a Aqua
scoreboard players enable @a Purple
scoreboard players enable @a Solo



