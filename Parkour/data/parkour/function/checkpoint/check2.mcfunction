# Run by the player who reached checkpoint 2
execute if score @s checkpoint matches 2.. run return 0
scoreboard players add @s checkpoint 1

tellraw @s [{"text":"[","color":"gold","bold":true},{"text":"🏆","color":"yellow","bold":true},{"text":"] Welcome to ","color":"gold","bold":true},{"text":"checkpoint ","color":"yellow","bold":true},{"text":"2","color":"yellow","bold":true},{"text":". You were the ","color":"gold","bold":true},{"text":"#","color":"yellow","bold":true},{"score":{"name":"%check2","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" player to reach here, and have earned ","color":"gold","bold":true},{"score":{"name":"%score2","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" points","color":"yellow","bold":true},{"text":" for your team!","color":"gold","bold":true}]
scoreboard players operation @s parkour += %score2 checkpoint
scoreboard players add %check2 checkpoint 1
scoreboard players remove %score2 checkpoint 1
execute at @n[type=marker,tag=parkourCheck2] run spawnpoint @s ~ ~ ~

execute at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1