# Run by each solo player, randomly joins an available team that doesn't exceed %largest ds in size
# Run at the player in case marker spawning despawns
# REMOVED: We don't need dsSolo since we do not join a team
#tag @s add dsSolo
tag @s add dsMe

# Summon pick markers
execute unless score %team_count Red = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickRed"]}
execute unless score %team_count Yellow = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickYellow"]}
execute unless score %team_count Blue = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickBlue"]}
execute unless score %team_count Green = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickGreen"]}
execute unless score %team_count Aqua = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickAqua"]}
execute unless score %team_count Purple = %largest ds at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickPurple"]}

# Fallback: All players solo, we summon red or something idk, doesn't matter how many we summon
# WARNING: MUST SUMMON AT LEAST ONE. FOR SIMPLICITY I WILL JUST SUMMON RED
execute if score %largest ds matches 0 at @r run summon marker ~ ~ ~ {Tags:["dsPick","dsPickRed"]}

# Pick random choice
execute as @e[type=marker,tag=dsPick,limit=1,sort=random] run tag @s add dsPicked

# Make self join team
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickRed] run function death-swap:team_id/join_red
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickYellow] run function death-swap:team_id/join_yellow
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickBlue] run function death-swap:team_id/join_blue
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickGreen] run function death-swap:team_id/join_green
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickAqua] run function death-swap:team_id/join_aqua
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickPurple] run function death-swap:team_id/join_purple

# Increment count score
# REMOVED: Handled in function join_team
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickRed] run scoreboard players add %team_count Red 1
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickYellow] run scoreboard players add %team_count Yellow 1
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickBlue] run scoreboard players add %team_count Blue 1
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickGreen] run scoreboard players add %team_count Green 1
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickAqua] run scoreboard players add %team_count Aqua 1
#execute if entity @e[type=marker,tag=dsPicked,tag=dsPickPurple] run scoreboard players add %team_count Purple 1

# Cleanup: Kill all dsPick markers, remove Me tag
kill @e[type=marker,tag=dsPick]
tag @s remove dsMe
