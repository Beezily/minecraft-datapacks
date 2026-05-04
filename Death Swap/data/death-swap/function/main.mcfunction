## Death Swap - By Beezily

# Allow team joins only if game isn't running
execute unless score %game ds matches 1 as @a[scores={Red=1..}] run team join Red @s
execute unless score %game ds matches 1 as @a[scores={Yellow=1..}] run team join Yellow @s
execute unless score %game ds matches 1 as @a[scores={Blue=1..}] run team join Blue @s
execute unless score %game ds matches 1 as @a[scores={Green=1..}] run team join Green @s
execute unless score %game ds matches 1 as @a[scores={Aqua=1..}] run team join Aqua @s
execute unless score %game ds matches 1 as @a[scores={Purple=1..}] run team join Purple @s
execute unless score %game ds matches 1 as @a[scores={Solo=1..}] run team leave @s

execute unless score %game ds matches 1 as @a[scores={Red=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Yellow=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Blue=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Green=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Aqua=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Purple=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1
execute unless score %game ds matches 1 as @a[scores={Solo=1..}] at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 1 1

execute unless score %game ds matches 1 as @a unless score @s Red matches 0 run scoreboard players enable @s Red
execute unless score %game ds matches 1 as @a unless score @s Yellow matches 0 run scoreboard players enable @s Yellow
execute unless score %game ds matches 1 as @a unless score @s Blue matches 0 run scoreboard players enable @s Blue
execute unless score %game ds matches 1 as @a unless score @s Green matches 0 run scoreboard players enable @s Green
execute unless score %game ds matches 1 as @a unless score @s Aqua matches 0 run scoreboard players enable @s Aqua
execute unless score %game ds matches 1 as @a unless score @s Purple matches 0 run scoreboard players enable @s Purple
execute unless score %game ds matches 1 as @a unless score @s Solo matches 0 run scoreboard players enable @s Solo

execute unless score %game ds matches 1 run scoreboard players set @a[scores={Red=1..}] Red 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Yellow=1..}] Yellow 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Blue=1..}] Blue 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Green=1..}] Green 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Aqua=1..}] Aqua 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Purple=1..}] Purple 0
execute unless score %game ds matches 1 run scoreboard players set @a[scores={Solo=1..}] Solo 0

# Tellraw rules and rules trigger
execute as @a[scores={rules=1..}] run function death-swap:scripts/tell_rules
execute as @a unless score @s rules matches 0 run scoreboard players enable @s rules
execute as @a unless score @s rules matches 0 run scoreboard players set @s rules 0

# Do nothing if the game isn't running (reduces lag, probably not necessary)
execute unless score %game ds matches 1 run return 0

#Tellraw and sounds for swapping warning
execute if score %timer ds matches 100 run tellraw @a {"text":"Swapping in 5...","bold":true,"color":light_purple}
execute if score %timer ds matches 80 run tellraw @a {"text":"Swapping in 4...","bold":true,"color":light_purple}
execute if score %timer ds matches 60 run tellraw @a {"text":"Swapping in 3...","bold":true,"color":light_purple}
execute if score %timer ds matches 40 run tellraw @a {"text":"Swapping in 2...","bold":true,"color":light_purple}
execute if score %timer ds matches 20 run tellraw @a {"text":"Swapping in 1...","bold":true,"color":light_purple}
execute if score %timer ds matches 0 run tellraw @a {"text":"SURVIVE for 30 seconds!","bold":true,"color":red}
execute if score %timer ds matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches 80 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches 60 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
# Ravager sound doesn't play since too far away, we do it in start_survive instead
#execute if score %timer ds matches 0 as @a at @s run playsound minecraft:entity.ravager.roar master @s ~ ~ ~ 1 1 1

# Swap all players then start survive (start survive AFTER since it sets %timer to -1)
execute if score %timer ds matches 0 run function death-swap:scripts/swap
execute if score %timer ds matches 0 run function death-swap:scripts/start_survive

# Update bossbar dynamically
# Positive timer: 0..3600 ticks
execute if score %timer ds matches 0..6000 store result bossbar ds:timer value run scoreboard players get %timer ds
execute if score %timer ds matches 0..6000 run scoreboard players operation %temp ds = %timer ds
execute if score %timer ds matches 0..6000 run scoreboard players operation %temp ds += #19 ds
execute if score %timer ds matches 0..6000 run scoreboard players operation %temp ds /= #20 ds
execute if score %timer ds matches 0..6000 run bossbar set ds:timer name [{"text":"Swapping in ","bold":true,"color":"#037d5e"},{"score":{"name":"%temp","objective":"ds"},"bold":true,"color":"red"},{"text":"s","bold":true,"color":"red"},{"text":"...","bold":true,"color":"#037d5e"}]
# Negative timer: -601..-1 ticks
execute if score %timer ds matches -601..-1 run bossbar set ds:timer max 600
execute if score %timer ds matches -601..-1 run scoreboard players operation %temp ds = %timer ds
execute if score %timer ds matches -601..-1 run scoreboard players operation %temp ds += #601 ds
execute if score %timer ds matches -601..-1 store result bossbar ds:timer value run scoreboard players get %temp ds

# Tellraw and sounds for survive next round
execute unless score %iteration ds = %final_iteration ds if score %timer ds matches -501 run tellraw @a {"text":"Next round in 5...","bold":false,"color":"green"}
execute unless score %iteration ds = %final_iteration ds if score %timer ds matches -521 run tellraw @a {"text":"Next round in 4...","bold":false,"color":"green"}
execute unless score %iteration ds = %final_iteration ds if score %timer ds matches -541 run tellraw @a {"text":"Next round in 3...","bold":false,"color":"green"}
execute unless score %iteration ds = %final_iteration ds if score %timer ds matches -561 run tellraw @a {"text":"Next round in 2...","bold":false,"color":"green"}
execute unless score %iteration ds = %final_iteration ds if score %timer ds matches -581 run tellraw @a {"text":"Next round in 1...","bold":false,"color":"green"}
execute if score %iteration ds = %final_iteration ds if score %timer ds matches -501 run tellraw @a {"text":"Game ends in 5...","bold":false,"color":"green"}
execute if score %iteration ds = %final_iteration ds if score %timer ds matches -521 run tellraw @a {"text":"Game ends in 4...","bold":false,"color":"green"}
execute if score %iteration ds = %final_iteration ds if score %timer ds matches -541 run tellraw @a {"text":"Game ends in 3...","bold":false,"color":"green"}
execute if score %iteration ds = %final_iteration ds if score %timer ds matches -561 run tellraw @a {"text":"Game ends in 2...","bold":false,"color":"green"}
execute if score %iteration ds = %final_iteration ds if score %timer ds matches -581 run tellraw @a {"text":"Game ends in 1...","bold":false,"color":"green"}
execute if score %timer ds matches -601 run tellraw @a[gamemode=survival] {"text":"You have survived!","bold":true,"color":"gold"}
execute if score %timer ds matches -501 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches -521 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches -541 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches -561 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches -581 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer ds matches -601 as @a[gamemode=survival] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

# Start next round when timer ends or end game if %iteration = %final_iteration
# NOTE: End game must be run first because the next_round adds to %iteration
# @r is needed to keep spawned markers loaded
execute if score %timer ds matches -601 if score %iteration ds = %final_iteration ds run function death-swap:scripts/end_game
execute if score %timer ds matches -601 unless score %iteration ds = %final_iteration ds at @r run function death-swap:scripts/next_round

# Calculate score increment if died during swap period
# ONLY IF LOCKOUT MODE IS OFF
execute if score %lockout ds matches 0 as @a[scores={ds_died=1..}] run gamemode spectator @s
execute if score %lockout ds matches 0 run scoreboard players reset @a[scores={ds_died=1..}] ds_died

# Put all players that died into spectator mode, they will be respawned next round
# ONLY IF LOCKOUT MODE IS ON
execute if score %lockout ds matches 1 if score %timer ds matches ..-1 as @a[scores={ds_died=1..}] run function death-swap:lockout/determine_cause
execute if score %lockout ds matches 1 run scoreboard players reset @a[scores={ds_died=1..}] ds_died

# team_tp trigger (only 1 time use)
execute as @a[team=!,scores={team_tp=1..}] run tellraw @s {"text":"You have used your team teleport this round and teleported to a random teammate!","bold":false,"color":"light_purple"}
execute as @a[team=!,scores={team_tp=1..}] run effect give @s minecraft:regeneration 4 2 false
execute as @a[team=Red,scores={team_tp=1..}] at @s run function death-swap:tp/red_team_tp
execute as @a[team=Yellow,scores={team_tp=1..}] at @s run function death-swap:tp/yellow_team_tp
execute as @a[team=Blue,scores={team_tp=1..}] at @s run function death-swap:tp/blue_team_tp
execute as @a[team=Green,scores={team_tp=1..}] at @s run function death-swap:tp/green_team_tp
execute as @a[team=Aqua,scores={team_tp=1..}] at @s run function death-swap:tp/aqua_team_tp
execute as @a[team=Purple,scores={team_tp=1..}] at @s run function death-swap:tp/purple_team_tp
scoreboard players set @a[scores={team_tp=1..}] team_tp 0

# Enforce spectators stay near their teams
# RED
execute as @a[gamemode=spectator,team=Red] at @s unless entity @a[team=Red,gamemode=!spectator,distance=..24] if entity @a[team=Red,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Red] at @s unless entity @a[team=Red,gamemode=!spectator,distance=..24] if entity @a[team=Red,gamemode=!spectator] run tp @s @r[team=Red,gamemode=!spectator]

# YELLOW
execute as @a[gamemode=spectator,team=Yellow] at @s unless entity @a[team=Yellow,gamemode=!spectator,distance=..24] if entity @a[team=Yellow,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Yellow] at @s unless entity @a[team=Yellow,gamemode=!spectator,distance=..24] if entity @a[team=Yellow,gamemode=!spectator] run tp @s @r[team=Yellow,gamemode=!spectator]

# BLUE
execute as @a[gamemode=spectator,team=Blue] at @s unless entity @a[team=Blue,gamemode=!spectator,distance=..24] if entity @a[team=Blue,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Blue] at @s unless entity @a[team=Blue,gamemode=!spectator,distance=..24] if entity @a[team=Blue,gamemode=!spectator] run tp @s @r[team=Blue,gamemode=!spectator]

# GREEN
execute as @a[gamemode=spectator,team=Green] at @s unless entity @a[team=Green,gamemode=!spectator,distance=..24] if entity @a[team=Green,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Green] at @s unless entity @a[team=Green,gamemode=!spectator,distance=..24] if entity @a[team=Green,gamemode=!spectator] run tp @s @r[team=Green,gamemode=!spectator]

# AQUA
execute as @a[gamemode=spectator,team=Aqua] at @s unless entity @a[team=Aqua,gamemode=!spectator,distance=..24] if entity @a[team=Aqua,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Aqua] at @s unless entity @a[team=Aqua,gamemode=!spectator,distance=..24] if entity @a[team=Aqua,gamemode=!spectator] run tp @s @r[team=Aqua,gamemode=!spectator]

# PURPLE
execute as @a[gamemode=spectator,team=Purple] at @s unless entity @a[team=Purple,gamemode=!spectator,distance=..24] if entity @a[team=Purple,gamemode=!spectator] run title @s actionbar {"text":"Stay close to a teammate!","color":"red"}
execute as @a[gamemode=spectator,team=Purple] at @s unless entity @a[team=Purple,gamemode=!spectator,distance=..24] if entity @a[team=Purple,gamemode=!spectator] run tp @s @r[team=Purple,gamemode=!spectator]

# Reset the source to -1 for all players if lockout mode, so irrelevant damages also pass through
execute if score %lockout ds matches 1 run scoreboard players set @a ds_cause_generic -1
execute if score %lockout ds matches 1 run scoreboard players set @a ds_cause_source -1

# Game ticking
# Decrement main timer down to 0 (stops at 0)
execute if score %game ds matches 1 if score %timer ds matches 1.. run scoreboard players remove %timer ds 1
# Decrement past 0 when is negative
execute if score %game ds matches 1 if score %timer ds matches ..-1 run scoreboard players remove %timer ds 1
