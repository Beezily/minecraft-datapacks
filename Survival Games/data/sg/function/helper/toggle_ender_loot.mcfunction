# Helper to toggle ender loot (literally toggling %ender_loot sg)
scoreboard players add %ender_loot sg 1
scoreboard players operation %ender_loot sg %= #2 sg

execute if score %ender_loot sg matches 0 run tellraw @s {"color":"gold","text":"Enderchest loot has been disabled!"}
execute if score %ender_loot sg matches 1 run tellraw @s {"color":"gold","text":"Enderchest loot has been enabled!"}
