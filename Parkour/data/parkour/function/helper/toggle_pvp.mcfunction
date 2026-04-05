# Helper to toggle nerf obsidian (literally toggling %nerf_obsidian dt)
scoreboard players add %pvp parkour 1
scoreboard players operation %pvp parkour %= #2 parkour

execute if score %pvp parkour matches 0 run tellraw @s {"color":"gold","text":"PVP has been disabled!"}
execute if score %pvp parkour matches 0 run gamerule pvp false
execute if score %pvp parkour matches 1 run tellraw @s {"color":"gold","text":"PVP has been enabled!"}
execute if score %pvp parkour matches 1 run gamerule pvp true
