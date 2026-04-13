# Starts the game. Run by player clicking sign. 
execute unless score %game wins matches 0 run tellraw @s {"text":"A game is already in progress!","bold":false,"color":"gray"}
execute unless score %game wins matches 0 run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0 1
execute unless score %game wins matches 0 run return 0

execute store result score %count wins if entity @a[scores={queue=1}]

execute unless score %countdown wins matches 0.. if score %game wins matches 0 if score %count wins matches 2.. run scoreboard players set %countdown wins 100

execute if score %count wins matches ..1 run tellraw @s {"text":"Not enough players are queued to start the game!","bold":false,"color":"gray"}
execute if score %count wins matches ..1 at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0 1

