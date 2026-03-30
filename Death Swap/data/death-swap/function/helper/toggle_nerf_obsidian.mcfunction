# Helper to toggle nerf obsidian (literally toggling %nerf_obsidian dt)
scoreboard players add %nerf_obsidian ds 1
scoreboard players operation %nerf_obsidian ds %= #2 ds

execute if score %nerf_obsidian ds matches 0 run tellraw @s {"color":"gold","text":"Obsidian nerf has been disabled!"}
execute if score %nerf_obsidian ds matches 1 run tellraw @s {"color":"gold","text":"Obsidian nerf has been enabled!"}
