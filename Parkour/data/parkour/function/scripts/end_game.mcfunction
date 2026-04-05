# Ends the game

# Title
title @a title {"text":"Times up!","color":"yellow","bold":true}

# Clear inventory
clear @a

# Sounds and bossbar
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1 1
bossbar set parkour:timer visible false

# Mark game as ended
scoreboard players set %game parkour 0

# Adventure mode all players
gamemode adventure @a

# Put them back in cage (this might be too mean)
#function parkour:helper/back_to_spawn

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



