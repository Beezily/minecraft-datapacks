tellraw @a [{"text":"reload - "},{"text":"Death Swap","color":"dark_green","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Main scoreboard
scoreboard objectives add ds dummy
scoreboard objectives add team_tp trigger
scoreboard objectives add rules trigger

# Teams
team add Red
team modify Red friendlyFire false
team modify Red color red
team add Yellow
team modify Yellow friendlyFire false
team modify Yellow color yellow
team add Blue
team modify Blue friendlyFire false
team modify Blue color blue
team add Green
team modify Green friendlyFire false
team modify Green color green
team add Aqua
team modify Aqua friendlyFire false
team modify Aqua color aqua
team add Purple
team modify Purple friendlyFire false
team modify Purple color light_purple

# Constants
scoreboard players set #1 ds 1
scoreboard players set #2 ds 2
scoreboard players set #19 ds 19
scoreboard players set #20 ds 20
scoreboard players set #601 ds 601

# Variables
scoreboard players set %game ds 0
scoreboard players set %timer ds 0
scoreboard players set %iteration ds 0
execute unless score %final_iteration ds matches 0.. run scoreboard players set %final_iteration ds 6
execute unless score %nerf_lava ds matches 0.. run scoreboard players set %nerf_lava ds 1
execute unless score %nerf_obsidian ds matches 0.. run scoreboard players set %nerf_obsidian ds 1
execute unless score %clear_rounds ds matches 0.. run scoreboard players set %clear_rounds ds 1
execute unless score %pvp ds matches 0.. run scoreboard players set %pvp ds 1
execute unless score %team_tp ds matches 0.. run scoreboard players set %team_tp ds 1

# Team join scores
scoreboard objectives add Red trigger
scoreboard objectives add Yellow trigger
scoreboard objectives add Blue trigger
scoreboard objectives add Green trigger
scoreboard objectives add Aqua trigger
scoreboard objectives add Purple trigger
scoreboard objectives add Solo trigger

# Bossbar
bossbar remove ds:timer
bossbar add ds:timer {"text":"Death Swap","color":"#037d5e","bold":true}
bossbar set ds:timer color green
bossbar set ds:timer max 6000
bossbar set ds:timer value 6000
bossbar set ds:timer players @a
bossbar set ds:timer visible false

# Kill counter
scoreboard objectives add deaths deathCount
scoreboard objectives setdisplay below_name deaths
scoreboard objectives setdisplay list deaths

# Death scoreboard
scoreboard objectives add ds_died deathCount

# Ordering scoreboard
scoreboard objectives add ds_group dummy
scoreboard objectives add ds_group_order dummy

# Gamerules
gamerule show_advancement_messages false
gamerule locator_bar true
gamerule immediate_respawn true
gamerule keep_inventory false
gamerule spectators_generate_chunks true
execute if score %pvp ds matches 1 run gamerule pvp true
difficulty hard

