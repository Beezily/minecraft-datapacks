# Mark game as running
scoreboard players set %game sg 1

# Timer = 20 minutes in ticks
scoreboard players set %timer sg 24000

# 5 second countdown before release
scoreboard players set %countdown sg 100
scoreboard players set %started sg 0

# Grace period countdown (10 seconds) starts AFTER release
scoreboard players set %grace sg 0

# Reset sound effect?
scoreboard players set %dm sg 0

# Border phase tracking
# 0 = full size
# 1 = shrink-to-half in progress/done
# 2 = waiting for final shrink
# 3 = final shrink running/done
scoreboard players set %border_phase sg 0

# Reset worldborder to full map size
worldborder center 175.5 193.5
worldborder set 588
worldborder warning distance 0
worldborder warning time 0

# Show bossbar to everyone
bossbar set kikoshi-sg:timer players @a
bossbar set kikoshi-sg:timer visible true
bossbar set kikoshi-sg:timer max 24000
bossbar set kikoshi-sg:timer value 24000
bossbar set kikoshi-sg:timer name {"text":"Starting...","color":"#ff8c00","bold":true}

# Set time to be noon
time set noon

# Freeze players for countdown (6s just to be safe)
effect give @a minecraft:slowness 6 255 true
effect give @a minecraft:resistance 6 255 true
