# Runs as ONE player (@s) at a time (and should only be called for @a[team=]).
# Picks the first available slot by checking %next in order:
# Red -> Yellow -> Blue -> Green -> Aqua -> Purple
# Assigns the slot number into that color objective on @s.
# If all 24 slots are full, hardcode @s to Red=1 and warn them

# I'm going to use %temp here to mark whether something passed or not. This prevents

# Try RED
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Red matches 5.. run function sg:team_id/join_red

# Try YELLOW
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Yellow matches 5.. run function sg:team_id/join_yellow

# Try BLUE
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Blue matches 5.. run function sg:team_id/join_blue

# Try GREEN
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Green matches 5.. run function sg:team_id/join_green

# Try AQUA
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Aqua matches 5.. run function sg:team_id/join_aqua

# Try PURPLE
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Purple matches 5.. run function sg:team_id/join_purple

# Fallback: all full (24/24 used)
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run tellraw @s [{"text":"Warning: ","color":"red"},{"text":"All spawn slots are full. Placing you at a shared spawn.","color":"red"}]
# Red if toJoinRed, same with other colors
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinRed] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Red 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinYellow] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Yellow 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinBlue] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Blue 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinGreen] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Green 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinAqua] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Aqua 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0},tag=toJoinPurple] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Purple 1
#Final fallback is just red1 who cares
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Red 1

