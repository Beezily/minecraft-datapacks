# Helper to toggle nerf obsidian (literally toggling %water_kill dt)
scoreboard players add %water_kill parkour 1
scoreboard players operation %water_kill parkour %= #2 parkour

execute if score %water_kill parkour matches 0 run tellraw @s {"color":"gold","text":"Water kill has been disabled!"}
execute if score %water_kill parkour matches 1 run tellraw @s {"color":"gold","text":"Water kill has been enabled!"}
