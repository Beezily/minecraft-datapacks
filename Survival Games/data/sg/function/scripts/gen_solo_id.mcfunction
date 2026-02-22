# Runs as ONE player (@s) at a time (and should only be called for @a[team=]).
# Picks the first available slot by checking %next in order:
# Red -> Yellow -> Blue -> Green -> Aqua -> Purple
# Assigns the slot number into that color objective on @s.
# If all 24 slots are full, hardcode @s to Red=1 and warn them

# -----------------
# Try RED
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Red matches 5.. run scoreboard players operation @s Red = %next Red
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Red matches 5.. run scoreboard players add %next Red 1

# -----------------
# Try YELLOW
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Yellow matches 5.. run scoreboard players operation @s Yellow = %next Yellow
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Yellow matches 5.. run scoreboard players add %next Yellow 1

# -----------------
# Try BLUE
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Blue matches 5.. run scoreboard players operation @s Blue = %next Blue
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Blue matches 5.. run scoreboard players add %next Blue 1

# -----------------
# Try GREEN
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Green matches 5.. run scoreboard players operation @s Green = %next Green
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Green matches 5.. run scoreboard players add %next Green 1

# -----------------
# Try AQUA
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Aqua matches 5.. run scoreboard players operation @s Aqua = %next Aqua
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Aqua matches 5.. run scoreboard players add %next Aqua 1

# -----------------
# Try PURPLE
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Purple matches 5.. run scoreboard players operation @s Purple = %next Purple
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] unless score %next Purple matches 5.. run scoreboard players add %next Purple 1

# -----------------
# Fallback: all full (24/24 used)
# -----------------
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run scoreboard players set @s Red 1
execute if entity @s[team=,scores={Red=0,Yellow=0,Blue=0,Green=0,Aqua=0,Purple=0}] if score %next Red matches 5.. if score %next Yellow matches 5.. if score %next Blue matches 5.. if score %next Green matches 5.. if score %next Aqua matches 5.. if score %next Purple matches 5.. run tellraw @s [{"text":"Warning: ","color":"red"},{"text":"All spawn slots are full. Placing you at a shared spawn.","color":"red"}]