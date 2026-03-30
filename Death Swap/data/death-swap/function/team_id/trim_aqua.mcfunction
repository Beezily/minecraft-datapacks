# Recursive function to trim down the Aqua team until the count of the team matches half count
# We tag players with dsTrim who will not be considered in the swap
execute as @r[team=Aqua,tag=!dsTrim,gamemode=survival] run tag @s add dsTrim
execute store result score %team_count Aqua if entity @a[team=Aqua,tag=!dsTrim,gamemode=survival]
execute if score %team_count Aqua > %half_count ds run function death-swap:team_id/trim_aqua