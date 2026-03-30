# Recursive function to trim down the Red team until the count of the team matches half count
# We tag players with dsTrim who will not be considered in the swap
execute as @r[team=Red,tag=!dsTrim,gamemode=survival] run tag @s add dsTrim
execute store result score %team_count Red if entity @a[team=Red,tag=!dsTrim,gamemode=survival]
execute if score %team_count Red > %half_count ds run function death-swap:team_id/trim_red