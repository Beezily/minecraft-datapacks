# Run by dsGroup marker to make its own team generate an ID, then kill self
execute if entity @s[tag=dsGroupRed] as @a[team=Red,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupYellow] as @a[team=Yellow,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupBlue] as @a[team=Blue,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupGreen] as @a[team=Green,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupAqua] as @a[team=Aqua,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id
execute if entity @s[tag=dsGroupPurple] as @a[team=Purple,gamemode=survival,tag=!dsTrim,sort=random] run function death-swap:team_id/next_group_id

kill @s