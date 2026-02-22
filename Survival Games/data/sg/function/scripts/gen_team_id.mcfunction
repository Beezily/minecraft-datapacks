# Gives a unique ID to each team player
# Requires: %next in each team objective already initialized (e.g. %next Red = 1, etc.)
# Overflow (5th+) will get a tag toJoin<Color> then leave the team with no ID assigned

# -----------------
# RED
# -----------------
execute if entity @s[team=Red] if score @s Red matches 0 unless score %next Red matches 5.. run scoreboard players operation @s Red = %next Red
execute if entity @s[team=Red] if score @s Red matches 0 unless score %next Red matches 5.. run scoreboard players add %next Red 1
execute if entity @s[team=Red] if score @s Red matches 0 if score %next Red matches 5.. run tag @s add toJoinRed
execute if entity @s[team=Red] if score @s Red matches 0 if score %next Red matches 5.. run team leave @s

# -----------------
# YELLOW
# -----------------
execute if entity @s[team=Yellow] if score @s Yellow matches 0 unless score %next Yellow matches 5.. run scoreboard players operation @s Yellow = %next Yellow
execute if entity @s[team=Yellow] if score @s Yellow matches 0 unless score %next Yellow matches 5.. run scoreboard players add %next Yellow 1
execute if entity @s[team=Yellow] if score @s Yellow matches 0 if score %next Yellow matches 5.. run tag @s add toJoinYellow
execute if entity @s[team=Yellow] if score @s Yellow matches 0 if score %next Yellow matches 5.. run team leave @s

# -----------------
# BLUE
# -----------------
execute if entity @s[team=Blue] if score @s Blue matches 0 unless score %next Blue matches 5.. run scoreboard players operation @s Blue = %next Blue
execute if entity @s[team=Blue] if score @s Blue matches 0 unless score %next Blue matches 5.. run scoreboard players add %next Blue 1
execute if entity @s[team=Blue] if score @s Blue matches 0 if score %next Blue matches 5.. run tag @s add toJoinBlue
execute if entity @s[team=Blue] if score @s Blue matches 0 if score %next Blue matches 5.. run team leave @s

# -----------------
# GREEN
# -----------------
execute if entity @s[team=Green] if score @s Green matches 0 unless score %next Green matches 5.. run scoreboard players operation @s Green = %next Green
execute if entity @s[team=Green] if score @s Green matches 0 unless score %next Green matches 5.. run scoreboard players add %next Green 1
execute if entity @s[team=Green] if score @s Green matches 0 if score %next Green matches 5.. run tag @s add toJoinGreen
execute if entity @s[team=Green] if score @s Green matches 0 if score %next Green matches 5.. run team leave @s

# -----------------
# AQUA
# -----------------
execute if entity @s[team=Aqua] if score @s Aqua matches 0 unless score %next Aqua matches 5.. run scoreboard players operation @s Aqua = %next Aqua
execute if entity @s[team=Aqua] if score @s Aqua matches 0 unless score %next Aqua matches 5.. run scoreboard players add %next Aqua 1
execute if entity @s[team=Aqua] if score @s Aqua matches 0 if score %next Aqua matches 5.. run tag @s add toJoinAqua
execute if entity @s[team=Aqua] if score @s Aqua matches 0 if score %next Aqua matches 5.. run team leave @s

# -----------------
# PURPLE
# -----------------
execute if entity @s[team=Purple] if score @s Purple matches 0 unless score %next Purple matches 5.. run scoreboard players operation @s Purple = %next Purple
execute if entity @s[team=Purple] if score @s Purple matches 0 unless score %next Purple matches 5.. run scoreboard players add %next Purple 1
execute if entity @s[team=Purple] if score @s Purple matches 0 if score %next Purple matches 5.. run tag @s add toJoinPurple
execute if entity @s[team=Purple] if score @s Purple matches 0 if score %next Purple matches 5.. run team leave @s