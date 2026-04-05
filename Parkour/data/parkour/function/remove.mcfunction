#Removes all tags and scoreboards from the game before disabling the pack
tellraw @a [{"text":"removed - "},{"text":"Parkour","color":"yellow","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Scoreboards
scoreboard objectives remove parkour
scoreboard objectives remove checkpoint
scoreboard objectives remove parkour_snowball
scoreboard objectives remove admin

# Teams
team remove Red
team remove Yellow
team remove Blue
team remove Green
team remove Aqua
team remove Purple

# Team triggers
scoreboard objectives remove Red
scoreboard objectives remove Yellow
scoreboard objectives remove Blue
scoreboard objectives remove Green
scoreboard objectives remove Aqua
scoreboard objectives remove Purple
scoreboard objectives remove Solo

# Bossbars
bossbar remove parkour:timer

# Remove markers
function parkour:admin/clear_settings

# We do not care about gamerules

datapack disable "file/Parkour"
