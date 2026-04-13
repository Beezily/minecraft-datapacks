# Run by dsGroup marker to make its own team generate an ID, then kill self
execute if entity @s[tag=dsGroupRed] as @a[scores={Red=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupYellow] as @a[scores={Yellow=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupBlue] as @a[scores={Blue=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupGreen] as @a[scores={Green=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupAqua] as @a[scores={Aqua=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupPurple] as @a[scores={Purple=0..},gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id

kill @s