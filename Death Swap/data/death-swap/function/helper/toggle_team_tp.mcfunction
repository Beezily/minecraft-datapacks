# Helper to toggle nerf obsidian (literally toggling %team_tp ds)
scoreboard players add %team_tp ds 1
scoreboard players operation %team_tp ds %= #2 ds

execute if score %team_tp ds matches 0 run tellraw @s {"color":"gold","text":"Team tp has been disabled!"}
execute if score %team_tp ds matches 1 run tellraw @s {"color":"gold","text":"Team tp has been enabled!"}
