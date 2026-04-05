#Removes all tags and scoreboards from the game before disabling the pack
tellraw @a [{"text":"removed - "},{"text":"Death Swap","color":"dark_green","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Bossbars
bossbar remove ds:timer

# Scoreboard displays 
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

# Scoreboards
scoreboard objectives remove ds
scoreboard objectives remove team_tp
scoreboard objectives remove rules

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

# Don't reset gamerules, don't know what they were previously / don't care

datapack disable "file/Death Swap"
