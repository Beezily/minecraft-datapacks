tellraw @a [{"text":"reload - "},{"text":"Survival Games","color":"light_purple","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Main scoreboard
scoreboard objectives add sg dummy

# Ender Chest mechanics
scoreboard objectives add new_chest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add open_chest minecraft.used:minecraft.chest

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
scoreboard players set #1200 sg 1200
scoreboard players set #24000 sg 24000
scoreboard players set #12000 sg 12000
scoreboard players set #9600 sg 9600
scoreboard players set #6000 sg 6000

# Variables
scoreboard players set %game sg 0
scoreboard players set %timer sg 0
scoreboard players set %tmp sg 0
scoreboard players set %mins sg 0
scoreboard players set %random sg 0
execute unless score %iteration sg matches 0.. run scoreboard players set %iteration sg 0

# Team join scores
scoreboard objectives add Red trigger
scoreboard objectives add Yellow trigger
scoreboard objectives add Blue trigger
scoreboard objectives add Green trigger
scoreboard objectives add Aqua trigger
scoreboard objectives add Purple trigger

# Bossbar
bossbar remove sg:timer
bossbar add sg:timer {"text":"Survival Games","color":"#ff8c00","bold":true}
bossbar set sg:timer color red
bossbar set sg:timer max 24000
bossbar set sg:timer value 24000
bossbar set sg:timer players @a
bossbar set sg:timer visible false

# World border
worldborder center 175.5 193.5
worldborder set 588
worldborder warning distance 0
worldborder warning time 0

# Kill counter
scoreboard objectives add kills playerKillCount
scoreboard objectives setdisplay below_name kills
scoreboard objectives setdisplay list kills

# Death scoreboard
scoreboard objectives add died deathCount

# Gamerules
gamerule advance_time false
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule block_drops false
gamerule locator_bar false
gamerule immediate_respawn true
gamerule fire_spread_radius_around_player 0

# Set time
time set noon