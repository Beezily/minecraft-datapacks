# Recursive function to trim down the Aqua team until the count of the team matches half count
# We tag players with dsTrim who will not be consideAqua in the swap
scoreboard players remove %team_count Aqua 1
execute as @a[team=Aqua,tag=!dsTrim,gamemode=survival] if score @s Aqua = %team_count Aqua run tag @s add dsTrim
# MUST recalculate %half_count ds, since our goal is to trim until %team_count <= %half_count
# But note trimming a player here trims both sides of the inequality. 
execute store result score %player_count ds if entity @a[gamemode=survival,tag=!dsTrim]
scoreboard players operation %half_count ds = %player_count ds
scoreboard players operation %half_count ds /= #2 ds
execute if score %team_count Aqua > %half_count ds run function death-swap:team_id/trim_aqua