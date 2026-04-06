# Run by the player who reached checkpoint 5
execute if score @s checkpoint matches 5.. run return 0
scoreboard players add @s checkpoint 1

tellraw @s [{"text":"[","color":"green","bold":true},{"text":"🏆","color":"yellow","bold":true},{"text":"] Welcome to finish. You were the ","color":"green","bold":true},{"text":"#","color":"yellow","bold":true},{"score":{"name":"%check5","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" player to reach here, and have earned ","color":"green","bold":true},{"score":{"name":"%score5","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" points","color":"yellow","bold":true},{"text":" for your team!","color":"green","bold":true}]
tellraw @a [{"selector":"@s","color":"yellow","bold":true},{"text":" was the ","color":"green","bold":true},{"text":"#","color":"yellow","bold":true},{"score":{"name":"%check5","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" player to finish the parkour, and has earned an ","color":"green","bold":true},{"text":"additional 10 points","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]

scoreboard players operation @s parkour += %score5 checkpoint
scoreboard players operation @s parkour += #10 parkour
scoreboard players add %check5 checkpoint 1
execute unless score %score5 checkpoint matches ..0 run scoreboard players remove %score5 checkpoint 1
execute at @n[type=marker,tag=parkourCheck5] run spawnpoint @s ~ ~ ~

execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

execute if score %game parkour matches 1 run function parkour:scripts/begin_countdown

gamemode spectator @s
