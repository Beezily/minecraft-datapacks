# Only run if we still don't have a winner
execute unless score %winner sg matches 0 run return 0

# --- TEAM WINS (only that team alive) ---
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Red] unless entity @a[gamemode=adventure,team=!Red] run scoreboard players set %winner sg 1
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Yellow] unless entity @a[gamemode=adventure,team=!Yellow] run scoreboard players set %winner sg 2
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Blue] unless entity @a[gamemode=adventure,team=!Blue] run scoreboard players set %winner sg 3
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Green] unless entity @a[gamemode=adventure,team=!Green] run scoreboard players set %winner sg 4
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Aqua] unless entity @a[gamemode=adventure,team=!Aqua] run scoreboard players set %winner sg 5
execute if score %winner sg matches 0 if entity @a[gamemode=adventure,team=Purple] unless entity @a[gamemode=adventure,team=!Purple] run scoreboard players set %winner sg 6

# SOLO WIN (exactly 1 alive AND they have no team)
execute if score %winner sg matches 0 store result score %alive sg if entity @a[gamemode=adventure]
tag @a remove sgWinner
execute if score %winner sg matches 0 if score %alive sg matches 1 as @a[gamemode=adventure,limit=1,sort=arbitrary] if entity @s[team=] run tag @s add sgWinner
execute if score %winner sg matches 0 if score %alive sg matches 1 if entity @a[tag=sgWinner] run scoreboard players set %winner sg 7

# If still no winner, stop here
execute if score %winner sg matches 0 run return 0

# Initiate end sequence
scoreboard players set %timer sg -1

# Give everyone resistance so they don't die anymore, also give back jump for immediate win case (testing purposes)
effect clear @a
effect give @a resistance infinite 4 true
execute as @a run attribute @s minecraft:jump_strength base set 0.42

# Playsound for all alive players
execute as @a[gamemode=adventure] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# ANNOUNCE
execute if score %winner sg matches 1 run title @a title {"text":"Red wins!","color":"red","bold":true}
execute if score %winner sg matches 2 run title @a title {"text":"Yellow wins!","color":"yellow","bold":true}
execute if score %winner sg matches 3 run title @a title {"text":"Blue wins!","color":"blue","bold":true}
execute if score %winner sg matches 4 run title @a title {"text":"Green wins!","color":"green","bold":true}
execute if score %winner sg matches 5 run title @a title {"text":"Aqua wins!","color":"aqua","bold":true}
execute if score %winner sg matches 6 run title @a title {"text":"Purple wins!","color":"light_purple","bold":true}
execute if score %winner sg matches 7 run title @a title [{"selector":"@a[tag=sgWinner,limit=1]","color":"white","bold":true},{"text":" wins!","color":"white","bold":true}]