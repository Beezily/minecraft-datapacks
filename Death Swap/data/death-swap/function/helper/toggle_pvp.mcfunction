# Helper to toggle nerf obsidian (literally toggling %nerf_obsidian dt)
scoreboard players add %pvp ds 1
scoreboard players operation %pvp ds %= #2 ds

execute if score %pvp ds matches 0 run tellraw @s {"color":"gold","text":"PVP has been disabled!"}
execute if score %pvp ds matches 0 run gamerule pvp false
execute if score %pvp ds matches 1 run tellraw @s {"color":"gold","text":"PVP has been enabled!"}
execute if score %pvp ds matches 1 run gamerule pvp true
