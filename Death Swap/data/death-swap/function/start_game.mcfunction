# Mark game as running
scoreboard players set %game ds 1

# Timer ticks
scoreboard players set %timer ds 3600

# Clear iteration to fresh new 1
scoreboard players set %iteration ds 1

# Clear everyone
effect clear @a
clear @a
xp set @a 0 levels
xp set @a 0 points

# Show bossbar to everyone
bossbar set ds:timer players @a
bossbar set ds:timer visible true
bossbar set ds:timer max 3600
bossbar set ds:timer value 3600
bossbar set ds:timer name {"text":"Starting...","color":"#037d5e","bold":true}
bossbar set ds:timer color green

# Disable all triggers to prevent team switches
execute as @a run trigger Red set 0
execute as @a run trigger Yellow set 0
execute as @a run trigger Blue set 0
execute as @a run trigger Green set 0
execute as @a run trigger Aqua set 0
execute as @a run trigger Purple set 0
execute as @a run trigger Solo set 0

scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0

# Reset all deaths
scoreboard players reset * deaths

# Survival mode to all AND importantly reset death so not immediate spectate
gamemode survival @a
scoreboard players reset * ds_died

# Starter gear
give @a stone_axe 1
give @a stone_pickaxe 1
give @a stone_shovel 1
give @a cooked_beef 3

# Just to give people peace of mind
effect give @a minecraft:instant_health 1 99 true
effect give @a minecraft:saturation 1 99 true

# Find new center and then teleport players
function death-swap:scripts/gen_new_spot

# Tellraw current round to all players
tellraw @a [{"text":"Starting round ","color":"green","bold":true},{"score":{"name":"%iteration","objective":"ds"},"color":"gold","bold":true},{"text":"! Swapping in 3 minutes.","color":"green","bold":true}]
execute if score %iteration ds = %final_iteration ds run tellraw @a {"text":"This is the final round!","color":"dark_green"}
title @a title {"text":"Round Start!","bold":true}

