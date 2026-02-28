#Removes all tags and scoreboards from the game before disabling the pack
tellraw @a [{"text":"removed - "},{"text":"One in the quiver (Tropicana)","color":"gray","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Scoreboards
scoreboard objectives remove oitq
scoreboard objectives remove died
scoreboard objectives remove kills
scoreboard objectives remove kill_track

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
bossbar remove tropicana-oitq:timer

# We do not care about gamerules

datapack disable "file/One in the quiver (Tropicana)"
