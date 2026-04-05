# run by dsCenter marker to go to random spot and load it
#execute at @s run forceload remove ~ ~ ~ ~
execute store result entity @s Pos[0] double 1 run random value -1500000..1500000
execute store result entity @s Pos[2] double 1 run random value -1500000..1500000
#execute at @s run forceload add ~ ~ ~ ~

# World spawn
execute at @s run setworldspawn ~ ~ ~

# Ok so if I leave the following below in find_new_spot (makes the most sense) it
# Literally doesn't run. So we try to do it directly here (force game to run it)
# Summon random markers
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotRed"]}
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotYellow"]}
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotBlue"]}
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotGreen"]}
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotAqua"]}
execute as @s at @p run summon marker ~ ~ ~ {Tags:["dsSpot","dsSpotPurple"]}

# Do not forceload, doesn't work anyways
#execute as @s at @s positioned ~500 ~ ~0 run forceload add ~ ~ ~ ~
#execute as @s at @s positioned ~250 ~ ~433 run forceload add ~ ~ ~ ~
#execute as @s at @s positioned ~-250 ~ ~433 run forceload add ~ ~ ~ ~
#execute as @s at @s positioned ~-500 ~ ~0 run forceload add ~ ~ ~ ~
#execute as @s at @s positioned ~-250 ~ ~-433 run forceload add ~ ~ ~ ~
#execute as @s at @s positioned ~250 ~ ~-433 run forceload add ~ ~ ~ ~

# Reset %valid score
scoreboard players set %valid ds 1

# Teleport random markers to random areas and tag them with
execute as @s at @s positioned ~500 ~ ~0 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread
execute as @s at @s positioned ~250 ~ ~433 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread
execute as @s at @s positioned ~-250 ~ ~433 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread
execute as @s at @s positioned ~-500 ~ ~0 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread
execute as @s at @s positioned ~-250 ~ ~-433 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread
execute as @s at @s positioned ~250 ~ ~-433 as @e[type=marker,tag=dsSpot,limit=1,sort=random] run function death-swap:scripts/tp_spread

# Non-teams can go anywhere
execute as @s at @s if score %valid ds matches 1 if entity @a[team=] store success score %valid ds run spreadplayers ~ ~ 10 500 false @a[team=]
# Kill all the dsSpot markers (just in case)
kill @e[type=marker,tag=dsSpot]
# Kill self too if spread was good
execute if score %valid ds matches 1 if entity @s[type=marker,tag=dsCenter] run kill @s

execute if score %valid ds matches 0 run tellraw @a {"text":"Error: Bad spawn. Trying again...","bold":false,"color":red}
# Run this function again if there was ever an invalid spread (like stuck in ocean or something)
execute if score %valid ds matches 0 run function death-swap:scripts/go_new_spot
