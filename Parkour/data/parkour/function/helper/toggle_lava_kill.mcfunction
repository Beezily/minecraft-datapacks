# Helper to toggle nerf obsidian (literally toggling %lava_kill)
scoreboard players add %lava_kill parkour 1
scoreboard players operation %lava_kill parkour %= #2 parkour

execute if score %lava_kill parkour matches 0 run tellraw @s {"color":"gold","text":"Lava kill has been disabled!"}
execute if score %lava_kill parkour matches 1 run tellraw @s {"color":"gold","text":"Lava kill has been enabled!"}
