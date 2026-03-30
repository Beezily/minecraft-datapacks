# Helper to toggle nerf obsidian (literally toggling %nerf_obsidian dt)
scoreboard players add %clear_rounds ds 1
scoreboard players operation %clear_rounds ds %= #2 ds

execute if score %clear_rounds ds matches 0 run tellraw @s {"color":"gold","text":"Clear at round start has been disabled!"}
execute if score %clear_rounds ds matches 1 run tellraw @s {"color":"gold","text":"Clear at round start has been enabled!"}
