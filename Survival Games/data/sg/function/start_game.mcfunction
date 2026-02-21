# Mark game as running
scoreboard players set %game sg 1

# Timer ticks
scoreboard players set %timer sg 24100

# Increase game iteration by 1
scoreboard players add %iteration sg 1

# Clear everyone
clear @a
effect clear @a

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
bossbar set sg:timer players @a
bossbar set sg:timer visible true
bossbar set sg:timer max 24000
bossbar set sg:timer value 24000
bossbar set sg:timer name {"text":"Starting...","color":"#ff8c00","bold":true}

# Set time to be noon
time set noon

# Freeze players for countdown (6s just to be safe)
effect give @a minecraft:slowness 6 255 true
effect give @a minecraft:resistance 6 255 true

# Disable all triggers to prevent team switches
execute as @a run trigger Red set 0