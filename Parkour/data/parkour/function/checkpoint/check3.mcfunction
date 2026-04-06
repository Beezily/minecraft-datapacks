# Run by the player who reached checkpoint 3
execute if score @s checkpoint matches 3.. run return 0
scoreboard players add @s checkpoint 1

tellraw @s [{"text":"[","color":"gold","bold":true},{"text":"🏆","color":"yellow","bold":true},{"text":"] Welcome to ","color":"gold","bold":true},{"text":"checkpoint ","color":"yellow","bold":true},{"text":"3","color":"yellow","bold":true},{"text":". You were the ","color":"gold","bold":true},{"text":"#","color":"yellow","bold":true},{"score":{"name":"%check3","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" player to reach here, and have earned ","color":"gold","bold":true},{"score":{"name":"%score3","objective":"checkpoint"},"color":"yellow","bold":true},{"text":" points","color":"yellow","bold":true},{"text":" for your team!","color":"gold","bold":true}]
scoreboard players operation @s parkour += %score3 checkpoint
scoreboard players add %check3 checkpoint 1
execute unless score %score3 checkpoint matches ..0 run scoreboard players remove %score3 checkpoint 1
execute at @n[type=marker,tag=parkourCheck3] run spawnpoint @s ~ ~ ~

execute at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1 1