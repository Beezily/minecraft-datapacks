# Teams trigger reset and enable
scoreboard players set @a Red 0
scoreboard players set @a Yellow 0
scoreboard players set @a Blue 0
scoreboard players set @a Green 0
scoreboard players set @a Aqua 0
scoreboard players set @a Purple 0
scoreboard players set @a Solo 0

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
function sg:scripts/init_worldborder with storage sg:settings

# Reset all supply drops
function sg:scripts/remove_supply_markers

# Set time
time set noon

# Teleports all spectators to an alive player, then gamemode adventure all + resistance
execute as @a[gamemode=spectator] run tp @s @r[gamemode=adventure]
gamemode adventure @a
effect give @a resistance infinite 4 true
effect give @a saturation infinite 0 true
