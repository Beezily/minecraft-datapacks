# Recursive function to trim down the Yellow team until the count of the team matches half count
# We tag players with dsTrim who will not be considered in the swap
execute as @r[team=Yellow,tag=!dsTrim,gamemode=survival] run tag @s add dsTrim
execute store result score %team_count Yellow if entity @a[team=Yellow,tag=!dsTrim,gamemode=survival]
execute if score %team_count Yellow > %half_count ds run function death-swap:team_id/trim_yellow