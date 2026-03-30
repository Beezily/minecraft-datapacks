# Helper to toggle nerf lava (literally toggling %nerf_lava dt)
scoreboard players add %nerf_lava ds 1
scoreboard players operation %nerf_lava ds %= #2 ds

execute if score %nerf_lava ds matches 0 run tellraw @s {"color":"gold","text":"Lava nerf has been disabled!"}
execute if score %nerf_lava ds matches 1 run tellraw @s {"color":"gold","text":"Lava nerf has been enabled!"}
