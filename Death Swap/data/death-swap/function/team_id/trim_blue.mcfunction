# Recursive function to trim down the Blue team until the count of the team matches half count
# We tag players with dsTrim who will not be considered in the swap
execute as @r[team=Blue,tag=!dsTrim,gamemode=survival] run tag @s add dsTrim
execute store result score %team_count Blue if entity @a[team=Blue,tag=!dsTrim,gamemode=survival]
execute if score %team_count Blue > %half_count ds run function death-swap:team_id/trim_blue