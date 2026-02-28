# Helper to toggle summon enchanting (literally toggling %summon_enchant sg)
scoreboard players add %summon_enchant sg 1
scoreboard players operation %summon_enchant sg %= #2 sg

execute if score %summon_enchant sg matches 0 run tellraw @s {"color":"gold","text":"Summon enchanting has been disabled!"}
execute if score %summon_enchant sg matches 0 as @a run trigger enchant set 0

execute if score %summon_enchant sg matches 1 run tellraw @s {"color":"gold","text":"Summon enchanting has been enabled!"}
execute if score %summon_enchant sg matches 1 run scoreboard players enable @a enchant
execute if score %summon_enchant sg matches 1 run scoreboard players reset * enchant
execute if score %summon_enchant sg matches 1 run scoreboard players reset * enchant_cd
