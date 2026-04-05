# Starts countdown
scoreboard players set %game parkour 2

execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1 1

tellraw @a [{"text":"A player has completed the parkour. The game will end in ","color":"light_purple","bold":true},{"text":"2 minutes","color":"yellow","bold":true},{"text":"!","color":"light_purple","bold":true}]

bossbar set parkour:timer visible true

