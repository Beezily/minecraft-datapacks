#Removes all tags and scoreboards from the game before disabling the pack
tellraw @a [{"text":"removed - "},{"text":"Survival Games","color":"light_purple","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Beezily","color":"light_purple"}]

# Bossbars
bossbar remove sg:timer

# Scoreboard displays 
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

# Scoreboards
scoreboard objectives remove sg
scoreboard objectives remove new_chest
scoreboard objectives remove open_chest
scoreboard objectives remove kills
scoreboard objectives remove died
scoreboard objectives remove kill_reward
scoreboard objectives remove anvil_fix
scoreboard objectives remove spawned_happy_ghast
scoreboard objectives remove stash
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

# World border
worldborder center 0 0
worldborder set 59999968
worldborder warning distance 5
worldborder warning time 15

# Don't reset gamerules, don't know what they were previously / don't care

datapack disable "file/Survival Games"
