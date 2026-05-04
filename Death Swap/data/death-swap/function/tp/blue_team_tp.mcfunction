# This is just it's own function because then @r is random
# Run by player to teleport to random Blue teammate
# NOTE THAT set their own group score to a random teammate's group score for if lockout is on
tag @r[team=Blue,distance=0.1..,tag=!dsTrim,gamemode=survival] add dsTp
scoreboard players operation @s ds_group_order = @p[tag=dsTp] ds_group_order
scoreboard players operation @s ds_group = @p[tag=dsTp] ds_group
tp @s @p[tag=dsTp]
tag @a[tag=dsTp] remove dsTp
