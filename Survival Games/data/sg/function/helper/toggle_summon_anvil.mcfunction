# Helper to toggle summon anvil (literally toggling %summon_anvil sg)
scoreboard players add %summon_anvil sg 1
scoreboard players operation %summon_anvil sg %= #2 sg

execute if score %summon_anvil sg matches 0 run tellraw @s {"color":"gold","text":"Summon anvil has been disabled!"}
execute if score %summon_anvil sg matches 0 as @a run trigger anvil set 0

execute if score %summon_anvil sg matches 1 run tellraw @s {"color":"gold","text":"Summon anvil has been enabled!"}
execute if score %summon_anvil sg matches 1 run scoreboard players enable @a anvil
execute if score %summon_anvil sg matches 1 run scoreboard players reset * anvil
execute if score %summon_anvil sg matches 1 run scoreboard players reset * anvil_cd
