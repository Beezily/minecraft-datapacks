# Helper to toggle enforce players (literally toggling %enforce_players sg)
scoreboard players add %enforce_players sg 1
scoreboard players operation %enforce_players sg %= #2 sg

execute if score %enforce_players sg matches 0 run tellraw @s {"color":"gold","text":"Enforce players has been disabled!"}
execute if score %enforce_players sg matches 1 run tellraw @s {"color":"gold","text":"Enforce players has been enabled!"}
