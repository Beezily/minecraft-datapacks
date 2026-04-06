tellraw @a [{"text":"reload - "},{"text":"Parkour","color":"yellow","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

scoreboard objectives add parkour dummy
scoreboard objectives add checkpoint dummy
scoreboard objectives add parkour_snowball minecraft.used:minecraft.snowball
scoreboard objectives add admin trigger

# Constants
scoreboard players set #2 parkour 2
scoreboard players set #10 parkour 10
scoreboard players set #20 parkour 20
scoreboard players set #60 parkour 60
scoreboard players set #1199 parkour 1199
scoreboard players set #1200 parkour 1200
scoreboard players set #599 parkour 599

# Variables
scoreboard players set %game parkour 0
scoreboard players set %timer parkour 0
execute unless score %water_kill parkour matches 0.. run scoreboard players set %water_kill parkour 1
execute unless score %lava_kill parkour matches 0.. run scoreboard players set %lava_kill parkour 1
execute unless score %pvp parkour matches 0.. run scoreboard players set %pvp parkour 0

# Bossbar
bossbar remove parkour:timer
bossbar add parkour:timer {"text":"Time Left","color":"yellow"}
bossbar set parkour:timer color yellow
bossbar set parkour:timer max 2400
bossbar set parkour:timer value 2400
bossbar set parkour:timer players @a
bossbar set parkour:timer visible false

# Teams
team add Red
team modify Red friendlyFire false
team modify Red seeFriendlyInvisibles true
team modify Red collisionRule never
team modify Red color red
team add Yellow
team modify Yellow friendlyFire false
team modify Yellow seeFriendlyInvisibles true
team modify Yellow collisionRule never
team modify Yellow color yellow
team add Blue
team modify Blue friendlyFire false
team modify Blue seeFriendlyInvisibles true
team modify Blue collisionRule never
team modify Blue color blue
team add Green
team modify Green friendlyFire false
team modify Green seeFriendlyInvisibles true
team modify Green collisionRule never
team modify Green color green
team add Aqua
team modify Aqua friendlyFire false
team modify Aqua seeFriendlyInvisibles true
team modify Aqua collisionRule never
team modify Aqua color aqua
team add Purple
team modify Purple friendlyFire false
team modify Purple seeFriendlyInvisibles true
team modify Purple collisionRule never
team modify Purple color light_purple

# Team join scoreboards
scoreboard objectives add Red trigger
scoreboard objectives add Yellow trigger
scoreboard objectives add Blue trigger
scoreboard objectives add Green trigger
scoreboard objectives add Aqua trigger
scoreboard objectives add Purple trigger
scoreboard objectives add Solo trigger

scoreboard objectives setdisplay list parkour

# Gamerules
gamerule advance_time false
gamerule advance_weather false
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule block_drops false
gamerule locator_bar false
gamerule immediate_respawn true
gamerule fall_damage false
gamerule keep_inventory true
gamerule show_death_messages false
gamerule max_block_modifications 100000
gamerule fire_spread_radius_around_player 0
gamerule respawn_radius 0
execute if score %pvp parkour matches 0 run gamerule pvp false