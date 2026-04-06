# Run by the player who reached checkpoint 4
execute if score @s checkpoint matches 4.. run return 0
scoreboard players add @s checkpoint 1

tellraw @s [{"text":"[","color":"gold","bold":true},{"text":"🏆","color":"yellow","bold":true},{"text":"] Welcome to ","color":"gold","bold":true},{"text":"checkpoint ","color":"yellow","bold":true},{"text":"4","color":"yellow","bold":true},{"text":". You were the ","color":"gold","bold":true},{"text":"#","color":"yellow","bold":true},{"score":{"name":"%check4","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" player to reach here, and have earned ","color":"gold","bold":true},{"score":{"name":"%score4","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" points","color":"yellow","bold":true},{"text":" for your team!","color":"gold","bold":true}]
scoreboard players operation @s parkour += %score4 checkpoint
scoreboard players add %check4 checkpoint 1
execute unless score %score4 checkpoint matches ..0 run scoreboard players remove %score4 checkpoint 1
execute at @n[type=marker,tag=parkourCheck4] run spawnpoint @s ~ ~ ~

execute at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1