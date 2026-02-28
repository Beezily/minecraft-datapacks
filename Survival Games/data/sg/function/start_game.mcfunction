# Mark game as running
scoreboard players set %game sg 1

# Timer ticks
scoreboard players set %timer sg 24100

# Increase game iteration by 1
scoreboard players add %iteration sg 1

# Tag all players with new iteration
scoreboard players operation @a sg = %iteration sg

# Clear everyone
clear @a
effect clear @a
xp set @a 0 levels
xp set @a 0 points

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
# No jump
execute as @a run attribute @s minecraft:jump_strength base set 0

# Disable all triggers to prevent team switches
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

# Reset all kills
scoreboard players reset * kills

# Set %next for each team for setup for the ID spawns
scoreboard players set %next Red 1
scoreboard players set %next Yellow 1
scoreboard players set %next Blue 1
scoreboard players set %next Green 1
scoreboard players set %next Aqua 1
scoreboard players set %next Purple 1

# Assigning unique spawn IDs to each team player
execute as @a unless entity @s[team=] run function sg:team_id/gen_team_id

# Now do those without teams
execute as @a if entity @s[team=] run function sg:team_id/gen_solo_id

# Add players needed to be part of their team back to their team
execute as @a[tag=toJoinRed] run team join Red
execute as @a[tag=toJoinYellow] run team join Yellow
execute as @a[tag=toJoinBlue] run team join Blue
execute as @a[tag=toJoinGreen] run team join Green
execute as @a[tag=toJoinAqua] run team join Aqua
execute as @a[tag=toJoinPurple] run team join Purple

tag @a remove toJoinRed
tag @a remove toJoinYellow
tag @a remove toJoinBlue
tag @a remove toJoinGreen
tag @a remove toJoinAqua
tag @a remove toJoinPurple

# Run tp once (I mean it will run on loop but it doesn't hurt)
function sg:scripts/start_tp with storage sg:settings

# Pick random value for supply drop to go to
execute store result score %supply_drop sg run random value 1..4

# Initialize all supply drop markers
function sg:scripts/create_supply_markers with storage sg:settings

# Initialize the init world border if not already
function sg:scripts/init_worldborder with storage sg:settings

# Adventure mode to all AND importantly reset death so not immediate spectate
gamemode adventure @a
scoreboard players reset * died
scoreboard players reset * kill_reward

# Just to give people peace of mind
effect give @a minecraft:instant_health 1 99
effect give @a minecraft:saturation 1 99
effect give @a minecraft:weakness 10 9 true

# Set %winner to none. If %winner is not reset then they just win immediately lol
scoreboard players set %winner sg 0

# Reset craft scores
scoreboard players reset * craft
scoreboard players reset * craft_cd
execute if score %summon_crafting sg matches 1 run scoreboard players enable @a craft

# Reset anvil scores
scoreboard players reset * anvil
scoreboard players reset * anvil_cd
execute if score %summon_anvil sg matches 1 run scoreboard players enable @a anvil

# Reset enchant scores
scoreboard players reset * enchant
scoreboard players reset * enchant_cd
execute if score %summon_enchant sg matches 1 run scoreboard players enable @a enchant

# Rules during game
scoreboard players enable @a rules
