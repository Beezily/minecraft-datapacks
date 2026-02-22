# Teams enable
scoreboard players enable @a Red
scoreboard players enable @a Yellow
scoreboard players enable @a Blue
scoreboard players enable @a Green
scoreboard players enable @a Aqua
scoreboard players enable @a Purple
scoreboard players enable @a Solo

# End game and timer
scoreboard players set %game sg 0
scoreboard players set %timer sg 0

# Reset bossbar
bossbar set sg:timer value 24000
bossbar set sg:timer visible false

# World border reset
function sg:scripts/start_tp with storage sg:settings

# Reset all supply drops
function sg:scripts/remove_supply_markers

# Set time
time set noon