# Recursive function to trim down the Green team until the count of the team matches half count
# We tag players with dsTrim who will not be considered in the swap
execute as @r[team=Green,tag=!dsTrim,gamemode=survival] run tag @s add dsTrim
execute store result score %team_count Green if entity @a[team=Green,tag=!dsTrim,gamemode=survival]
execute if score %team_count Green > %half_count ds run function death-swap:team_id/trim_green