tellraw @a [{"text":"reload - "},{"text":"One in the quiver (Tropicana)","color":"gray","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

scoreboard objectives add oitq dummy

# Constants
scoreboard players set #20 oitq 20
scoreboard players set #60 oitq 60
scoreboard players set #1199 oitq 1199
scoreboard players set #1200 oitq 1200
scoreboard players set #599 oitq 599

# Variables
scoreboard players set %game oitq 0
scoreboard players set %timer oitq 0
scoreboard players set %tmp oitq 0
scoreboard players set %mins oitq 0
scoreboard players set %secs oitq 0
scoreboard players set %r oitq 0

# Bossbar
bossbar remove tropicana-oitq:timer
bossbar add tropicana-oitq:timer {"text":"OITQ","color":"gray"}
bossbar set tropicana-oitq:timer color white
bossbar set tropicana-oitq:timer max 6000
bossbar set tropicana-oitq:timer value 6000
bossbar set tropicana-oitq:timer players @a
bossbar set tropicana-oitq:timer visible false

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

# Team join scoreboards
scoreboard objectives add Red trigger
scoreboard objectives add Yellow trigger
scoreboard objectives add Blue trigger
scoreboard objectives add Green trigger
scoreboard objectives add Aqua trigger
scoreboard objectives add Purple trigger
scoreboard objectives add Solo trigger

# Kill counter
scoreboard objectives add kills playerKillCount
scoreboard objectives setdisplay below_name kills
scoreboard objectives setdisplay list kills

# Kill tracker
scoreboard objectives add kill_track playerKillCount

# Death tracker
scoreboard objectives add died deathCount

# Gamerules
gamerule advance_time false
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule block_drops false
gamerule locator_bar false
gamerule immediate_respawn true
gamerule fall_damage false
gamerule keep_inventory true
gamerule fire_spread_radius_around_player 0

# Set time
time set noon