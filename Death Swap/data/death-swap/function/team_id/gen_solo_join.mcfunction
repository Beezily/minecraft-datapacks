# Run by each solo player, randomly joins an available team that doesn't exceed %largest ds in size
# Run at the player in case marker spawning despawns
tag @s add dsSolo
tag @s add dsMe

# Summon pick markers
execute unless score %team_count Red = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickRed"]}
execute unless score %team_count Yellow = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickYellow"]}
execute unless score %team_count Blue = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickBlue"]}
execute unless score %team_count Green = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickGreen"]}
execute unless score %team_count Aqua = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickAqua"]}
execute unless score %team_count Purple = %largest ds run summon marker ~ ~ ~ {Tags:["dsPick","dsPickPurple"]}

# Pick random choice
execute as @e[type=marker,tag=dsPick,limit=1,sort=random] run tag @s add dsPicked

# Make self join team
execute as @e[type=marker,tag=dsPicked,tag=dsPickRed] run team join Red @e[tag=dsMe,tag=dsSolo,limit=1]
execute as @e[type=marker,tag=dsPicked,tag=dsPickYellow] run team join Yellow @e[tag=dsMe,tag=dsSolo,limit=1]
execute as @e[type=marker,tag=dsPicked,tag=dsPickBlue] run team join Blue @e[tag=dsMe,tag=dsSolo,limit=1]
execute as @e[type=marker,tag=dsPicked,tag=dsPickGreen] run team join Green @e[tag=dsMe,tag=dsSolo,limit=1]
execute as @e[type=marker,tag=dsPicked,tag=dsPickAqua] run team join Aqua @e[tag=dsMe,tag=dsSolo,limit=1]
execute as @e[type=marker,tag=dsPicked,tag=dsPickPurple] run team join Purple @e[tag=dsMe,tag=dsSolo,limit=1]

# Increment count score
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickRed] run scoreboard players add %team_count Red 1
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickYellow] run scoreboard players add %team_count Yellow 1
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickBlue] run scoreboard players add %team_count Blue 1
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickGreen] run scoreboard players add %team_count Green 1
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickAqua] run scoreboard players add %team_count Aqua 1
execute if entity @e[type=marker,tag=dsPicked,tag=dsPickPurple] run scoreboard players add %team_count Purple 1

# Cleanup: Kill all dsPick markers, remove Me tag
kill @e[type=marker,tag=dsPick]
tag @s remove dsMe
