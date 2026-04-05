# Game running
scoreboard players set %game parkour 1

# 2 minutes (ticks)
scoreboard players set %timer parkour 2400

# Show bossbar
bossbar set parkour:timer players @a
bossbar set parkour:timer visible false
bossbar set parkour:timer max 2400
bossbar set parkour:timer value 2400
bossbar set parkour:timer name {"text":"Timer","color":"yellow"}

# Tellraw
title @a subtitle {"text":"Reach the beacons as fast as possible!","bold":true,"color":"yellow"}
title @a title {"text":"Game Start!","bold":true,"color":"green"}

# Reset effects and inventory
effect clear @a
clear @a

# Reset hp and saturation
effect give @a instant_health 1 255 true
effect give @a saturation 1 255 true

# Adventure mode
gamemode adventure @a

# Reset player checkpoints (IMPORTANT CHECKPOINT IS SET TO 0 SPECIFICALLY)
scoreboard players set @a checkpoint 0
scoreboard players reset @a parkour

# Tp players and set spawn to parkourStart
execute as @e[type=marker,tag=parkourStart] at @s run spawnpoint @a ~ ~ ~
execute as @e[type=marker,tag=parkourStart] at @s run tp @a ~ ~ ~

# Sound
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1 1

# Checkpoint score stuffs
scoreboard players set %check1 checkpoint 1
scoreboard players set %check2 checkpoint 1
scoreboard players set %check3 checkpoint 1
scoreboard players set %check4 checkpoint 1
scoreboard players set %check5 checkpoint 1
scoreboard players set %score1 checkpoint 24
scoreboard players set %score2 checkpoint 24
scoreboard players set %score3 checkpoint 24
scoreboard players set %score4 checkpoint 24
scoreboard players set %score5 checkpoint 24

# Trigger team stuff so they don't get it during game
execute as @a run trigger Red set 0
execute as @a run trigger Yellow set 0
execute as @a run trigger Blue set 0
execute as @a run trigger Green set 0
execute as @a run trigger Aqua set 0
execute as @a run trigger Purple set 0
execute as @a run trigger Solo set 0

scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0

# Teleport everyone to me
tp @a @s