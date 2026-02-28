# Game running
scoreboard players set %game oitq 1

# 5 minutes (ticks)
scoreboard players set %timer oitq 6100

# Show bossbar
bossbar set tropicana-oitq:timer players @a
bossbar set tropicana-oitq:timer visible true
bossbar set tropicana-oitq:timer max 6000
bossbar set tropicana-oitq:timer value 6000
bossbar set tropicana-oitq:timer name {"text":"Starting...","color":"gray"}

# Reset effects and inventory
effect clear @a
clear @a

# Reset hp and saturation
effect give @a instant_health 1 255 true
effect give @a saturation 1 255 true

# No damage during countdown
effect give @a minecraft:resistance 6 255 true

# Reset scores
scoreboard players reset * kills
scoreboard players reset * kill_track
scoreboard players reset * died

# Adventure mode
gamemode adventure @a

# Trigger team stuff so they don't get it during game
execute as @a run trigger Red set 0
execute as @a run trigger Yellow set 0
execute as @a run trigger Blue set 0
execute as @a run trigger Green set 0
execute as @a run trigger Aqua set 0
execute as @a run trigger Purple set 0
execute as @a run trigger Solo set 0

scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0


