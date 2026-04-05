# Manual retry. Literally same thing lol, but no add iteration

# Timer ticks
scoreboard players set %timer ds 6000

# Add iteration by 1
#scoreboard players add %iteration ds 1

# Clear everyone if %clear_rounds
execute if score %clear_rounds ds matches 1 run effect clear @a
execute if score %clear_rounds ds matches 1 run clear @a
execute if score %clear_rounds ds matches 1 run xp set @a 0 levels
execute if score %clear_rounds ds matches 1 run xp set @a 0 points

# Show bossbar to everyone
bossbar set ds:timer players @a
bossbar set ds:timer visible true
bossbar set ds:timer max 6000
bossbar set ds:timer value 6000
bossbar set ds:timer name {"text":"Starting...","color":"#037d5e","bold":true}
bossbar set ds:timer color green

# Enable team tp for teams
scoreboard players enable @a[team=!] team_tp

# Starter gear if %clear_rounds or died (in spectator)
execute if score %clear_rounds ds matches 1 run give @a stone_axe 1
execute if score %clear_rounds ds matches 1 run give @a stone_pickaxe 1
execute if score %clear_rounds ds matches 1 run give @a stone_shovel 1
execute if score %clear_rounds ds matches 1 run give @a cooked_beef 3

execute unless score %clear_rounds ds matches 1 run give @a[gamemode=spectator] stone_axe 1
execute unless score %clear_rounds ds matches 1 run give @a[gamemode=spectator] stone_pickaxe 1
execute unless score %clear_rounds ds matches 1 run give @a[gamemode=spectator] stone_shovel 1
execute unless score %clear_rounds ds matches 1 run give @a[gamemode=spectator] cooked_beef 3

# Give fresh health
effect give @a minecraft:instant_health 1 99 true
effect give @a minecraft:saturation 1 99 true

# Find new center and then teleport players
function death-swap:scripts/gen_new_spot

# Survival mode to all AND importantly reset death so not immediate spectate
gamemode survival @a
scoreboard players reset * ds_died

# Tellraw current round to all players
tellraw @a [{"text":"Starting ","color":"green","bold":true},{"text":"Round ","color":"gold","bold":true},{"score":{"name":"%iteration","objective":"ds"},"color":"gold","bold":true},{"text":"! Swapping in 5 minutes.","color":"green","bold":true}]
execute if score %iteration ds = %final_iteration ds run tellraw @a {"text":"This is the final round!","color":"dark_green"}
title @a title {"text":"Round Start!","bold":true}