# Game running
scoreboard players set %game oitq 1
scoreboard players set %started oitq 0
scoreboard players set %ended oitq 0

# 5 minutes (ticks)
scoreboard players set %timer oitq 6000

# 5-second countdown (ticks)
scoreboard players set %countdown oitq 100

# Show bossbar
bossbar set tropicana-oitq:timer players @a
bossbar set tropicana-oitq:timer visible true
bossbar set tropicana-oitq:timer max 6000
bossbar set tropicana-oitq:timer value 6000
bossbar set tropicana-oitq:timer name {"text":"Starting...","color":"gray"}

# Reset effects and inventory
effect clear @a
clear @a

# Freeze players during countdown
effect give @a minecraft:slowness 6 255 true
effect give @a minecraft:resistance 6 255 true

# Reset scores
scoreboard players reset * kills
scoreboard players reset * kill_track
scoreboard players reset * died



