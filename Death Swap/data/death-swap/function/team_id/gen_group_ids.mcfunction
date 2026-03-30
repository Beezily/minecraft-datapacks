# Gives a unique ID to each team player
# We also manage the case where one team may have more players than 1/2 of the count

# Get the count
execute store result score %player_count ds if entity @a[gamemode=survival]

# Init all %team_count to 0
scoreboard players set %team_count Red 0
scoreboard players set %team_count Yellow 0
scoreboard players set %team_count Blue 0
scoreboard players set %team_count Green 0
scoreboard players set %team_count Aqua 0
scoreboard players set %team_count Purple 0

# Generate team ID's
execute as @a[team=Red,gamemode=survival] run function death-swap:team_id/join_red
execute as @a[team=Yellow,gamemode=survival] run function death-swap:team_id/join_yellow
execute as @a[team=Blue,gamemode=survival] run function death-swap:team_id/join_blue
execute as @a[team=Green,gamemode=survival] run function death-swap:team_id/join_green
execute as @a[team=Aqua,gamemode=survival] run function death-swap:team_id/join_aqua
execute as @a[team=Purple,gamemode=survival] run function death-swap:team_id/join_purple

# Calculate half value that can't be exceeded
scoreboard players operation %half_count ds = %player_count ds
scoreboard players operation %half_count ds /= #2 ds

# %team_count of each score is the count of each player
execute if score %team_count Red > %half_count ds run function death-swap:team_id/trim_red
execute if score %team_count Yellow > %half_count ds run function death-swap:team_id/trim_yellow
execute if score %team_count Blue > %half_count ds run function death-swap:team_id/trim_blue
execute if score %team_count Green > %half_count ds run function death-swap:team_id/trim_green
execute if score %team_count Aqua > %half_count ds run function death-swap:team_id/trim_aqua
execute if score %team_count Purple > %half_count ds run function death-swap:team_id/trim_purple
# NOTE: Mathematically only one team will get trimmed, and we will assume that too

# Calculate new player count excluding those trimmed
execute store result score %player_count ds if entity @a[gamemode=survival,tag=!dsTrim]

# No need to calculate new individual team counts, updated in trim function
# Calculate largest team size, this will be our number of "buckets"
scoreboard players set %largest ds 0
execute if score %team_count Red > %largest ds run scoreboard players operation %largest ds = %team_count Red
execute if score %team_count Yellow > %largest ds run scoreboard players operation %largest ds = %team_count Yellow
execute if score %team_count Blue > %largest ds run scoreboard players operation %largest ds = %team_count Blue
execute if score %team_count Green > %largest ds run scoreboard players operation %largest ds = %team_count Green
execute if score %team_count Aqua > %largest ds run scoreboard players operation %largest ds = %team_count Aqua
execute if score %team_count Purple > %largest ds run scoreboard players operation %largest ds = %team_count Purple

# Add solo players to a team randomly. Team joining capped by the %largest ds score
# We will remove them later but this is for sorting purposes
execute as @a[gamemode=survival,team=] at @s run function death-swap:team_id/gen_solo_join

# Re-assign a unique ID to all players and update %team_count one final time
# Init all %team_count to 0
scoreboard players set %team_count Red 0
scoreboard players set %team_count Yellow 0
scoreboard players set %team_count Blue 0
scoreboard players set %team_count Green 0
scoreboard players set %team_count Aqua 0
scoreboard players set %team_count Purple 0

# Generate team ID's and count
execute as @a[team=Red,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_red
execute as @a[team=Yellow,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_yellow
execute as @a[team=Blue,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_blue
execute as @a[team=Green,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_green
execute as @a[team=Aqua,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_aqua
execute as @a[team=Purple,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/join_purple

# Make all dsTrim players have no team score
scoreboard players reset @a[team=Red,tag=dsTrim] Red
scoreboard players reset @a[team=Yellow,tag=dsTrim] Yellow
scoreboard players reset @a[team=Blue,tag=dsTrim] Blue
scoreboard players reset @a[team=Green,tag=dsTrim] Green
scoreboard players reset @a[team=Aqua,tag=dsTrim] Aqua
scoreboard players reset @a[team=Purple,tag=dsTrim] Purple

# Init iterator (is that what it's called?)
scoreboard players set %curr_group ds 0
scoreboard players set %curr_group_order ds 0

# Generate random groups. Need to pick first group as a max one
# We anchor this random pick at some random player in case it runs in an unloaded chunk
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupRed"]}
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupYellow"]}
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupBlue"]}
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupGreen"]}
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupAqua"]}
execute at @r run summon marker ~ ~ ~ {Tags:["dsGroup","dsGroupPurple"]}

# Start with a max group size team
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Red = %largest ds run tag @e[type=marker,tag=dsGroupRed] add dsGroupStart
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Yellow = %largest ds run tag @e[type=marker,tag=dsGroupYellow] add dsGroupStart
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Blue = %largest ds run tag @e[type=marker,tag=dsGroupBlue] add dsGroupStart
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Green = %largest ds run tag @e[type=marker,tag=dsGroupGreen] add dsGroupStart
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Aqua = %largest ds run tag @e[type=marker,tag=dsGroupAqua] add dsGroupStart
execute unless entity @e[type=marker,tag=dsGroupStart] if score %team_count Purple = %largest ds run tag @e[type=marker,tag=dsGroupPurple] add dsGroupStart

execute as @e[type=marker,tag=dsGroupStart,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id
execute as @e[type=marker,tag=dsGroup,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id
execute as @e[type=marker,tag=dsGroup,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id
execute as @e[type=marker,tag=dsGroup,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id
execute as @e[type=marker,tag=dsGroup,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id
execute as @e[type=marker,tag=dsGroup,limit=1,sort=random] run function death-swap:team_id/set_teams_group_id

# Just in case
kill @e[tag=dsGroup]

# Return all dsSolo players to their solo team
execute as @a[tag=dsSolo] run team leave @s
tag @a[tag=dsSolo] remove dsSolo

# Note we keep dsTrim tag after the end of this function
# The purpose of this function is to simply ID all players
