# Helper to toggle summon crafting (literally toggling %enforce_players sg)
scoreboard players add %summon_crafting sg 1
scoreboard players operation %summon_crafting sg %= #2 sg

execute if score %summon_crafting sg matches 0 run tellraw @s {"color":"gold","text":"Summon crafting has been disabled!"}
execute if score %summon_crafting sg matches 0 as @a run trigger craft set 0

execute if score %summon_crafting sg matches 1 run tellraw @s {"color":"gold","text":"Summon crafting has been enabled!"}
execute if score %summon_crafting sg matches 1 run scoreboard players enable @a craft
execute if score %summon_crafting sg matches 1 run scoreboard players reset * craft
execute if score %summon_crafting sg matches 1 run scoreboard players reset * craft_cd
