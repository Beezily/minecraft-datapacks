# Queues the player for the game. Run by player clicking sign. 
execute unless score @s queue matches 1 run tellraw @s {"text":"You have joined the queue!","color":"blue","bold":true}
execute unless score @s queue matches 1 at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2 1

execute if score @s queue matches 1 run tellraw @s {"text":"You are already queued for the next game!","color":"blue"}
execute if score @s queue matches 1 at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 0 1

execute unless score @s queue matches 1 run scoreboard players set @s queue 1