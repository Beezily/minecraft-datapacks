#Removes all tags and scoreboards from the game before disabling the pack
tellraw @a [{"text":"removed - "},{"text":"Survival Games (Kikoshi Islands)","color":"light_purple","bold":true},{"text":" - ","color":"white","bold":false},{"text":"by Bzlbzlbzl","color":"light_purple"}]

# Bossbars
bossbar remove kikoshi-sg:timer

# Scoreboard displays 
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

# Scoreboards
scoreboard objectives remove sg
scoreboard objectives remove new_chest
scoreboard objectives remove kills
scoreboard objectives remove died

# Teams
team remove Red
team remove Yellow
team remove Blue
team remove Green
team remove Aqua
team remove Purple

# World border
worldborder center 0 0
worldborder set 59999968
worldborder warning distance 5
worldborder warning time 15

# Gamerules
gamerule advance_time true
gamerule mob_griefing true
gamerule spawn_mobs true
gamerule block_drops true
gamerule locator_bar true
gamerule immediate_respawn false

datapack disable "file/Survival Games (Kikoshi Islands)"
