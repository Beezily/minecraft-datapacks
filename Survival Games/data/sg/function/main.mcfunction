## Survival Games - By Beezily

# Ender chest loot mechs
#execute as @a[scores={new_chest=1..}] at @s rotated as @s anchored eyes run function sg:scripts/find_ender
#scoreboard players set @a[scores={new_chest=1..}] new_chest 0

# New loot spawn mechanics

# Allow team joins only if game isn't running
execute as @a[scores={Red=1..}] run team join Red @s
execute as @a[scores={Yellow=1..}] run team join Yellow @s
execute as @a[scores={Blue=1..}] run team join Blue @s
execute as @a[scores={Green=1..}] run team join Green @s
execute as @a[scores={Aqua=1..}] run team join Aqua @s
execute as @a[scores={Purple=1..}] run team join Purple @s

execute unless score %game sg matches 1 as @a unless score @s Red matches 0.. run scoreboard players enable @s Red
execute unless score %game sg matches 1 as @a unless score @s Yellow matches 0.. run scoreboard players enable @s Yellow
execute unless score %game sg matches 1 as @a unless score @s Blue matches 0.. run scoreboard players enable @s Blue
execute unless score %game sg matches 1 as @a unless score @s Green matches 0.. run scoreboard players enable @s Green
execute unless score %game sg matches 1 as @a unless score @s Aqua matches 0.. run scoreboard players enable @s Aqua
execute unless score %game sg matches 1 as @a unless score @s Purple matches 0.. run scoreboard players enable @s Purple

execute unless score %game sg matches 1 as @a unless score @s Red matches 0.. run scoreboard players enable @s Red
execute unless score %game sg matches 1 as @a unless score @s Yellow matches 0.. run scoreboard players enable @s Yellow
execute unless score %game sg matches 1 as @a unless score @s Blue matches 0.. run scoreboard players enable @s Blue
execute unless score %game sg matches 1 as @a unless score @s Green matches 0.. run scoreboard players enable @s Green
execute unless score %game sg matches 1 as @a unless score @s Aqua matches 0.. run scoreboard players enable @s Aqua
execute unless score %game sg matches 1 as @a unless score @s Purple matches 0.. run scoreboard players enable @s Purple

scoreboard players set @a[scores={Red=1..}] Red 0
scoreboard players set @a[scores={Yellow=1..}] Yellow 0
scoreboard players set @a[scores={Blue=1..}] Blue 0
scoreboard players set @a[scores={Green=1..}] Green 0
scoreboard players set @a[scores={Aqua=1..}] Aqua 0
scoreboard players set @a[scores={Purple=1..}] Purple 0

# Do nothing if the game isn't running
execute unless score %game sg matches 1 run return 0

# Death to spectator mechanics
gamemode spectator @a[scores={died=1..}]
scoreboard players set @a[scores={died=1..}] died 0

# Keep bossbar progress synced to timer (even during countdown)
execute store result bossbar sg:timer value run scoreboard players get %timer sg

# 5-second countdown before release
execute if score %game sg matches 1 if score %timer sg matches 24100 run title @a title {"text":"5","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24080 run title @a title {"text":"4","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24060 run title @a title {"text":"3","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24040 run title @a title {"text":"2","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24020 run title @a title {"text":"1","color":"#ff8c00","bold":true}

# Sound plings during countdown
execute if score %game sg matches 1 if score %timer sg matches 24100 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game sg matches 1 if score %timer sg matches 24080 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game sg matches 1 if score %timer sg matches 24060 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game sg matches 1 if score %timer sg matches 24040 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game sg matches 1 if score %timer sg matches 24020 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1

# Release actions (run once when countdown hits 0)
execute if score %game sg matches 1 if score %timer sg matches 24000 run title @a title {"text":"GO!","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:absorption 30 2 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:weakness 10 9 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:instant_health 1 99 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:saturation 1 99 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# Bossbar text during countdown
execute if score %game sg matches 1 if score %timer sg matches 24100 run bossbar set sg:timer name {"text":"Starting...","color":"#ff8c00","bold":true}

# Border control
# Border sounds (run before border phase gets set
# First shrink start (at 10:00 remaining)
execute if score %game sg matches 1 if score %timer sg matches 12000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
# At 10 minutes remaining (12000 ticks), shrink to half (592 -> 296) over 2 minutes (120s)
execute if score %game sg matches 1 if score %timer sg matches 12000 run worldborder set 296 120s

# Final shrink start (at 5:00 remaining)
execute if score %game sg matches 1 if score %timer sg matches 6000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
# At 5 minutes remaining (6000 ticks), shrink to 18-block radius (diameter 36) over 5 minutes (300s)
execute if score %game sg matches 1 if score %timer sg matches 6000 run worldborder set 36 300s


# PVP enabled text
execute if score %game sg matches 1 if score %timer sg matches 23800 run tellraw @a {"text":"PvP is now enabled!","color":"red","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 23800 as @a at @s run playsound minecraft:entity.ravager.attack master @s ~ ~ ~ 1 1 1


# Bossbar phase text (bold orange)
# Grace period text (first 10 seconds after release)
execute if score %game sg matches 1 if score %timer sg matches 23800..24000 run bossbar set sg:timer name {"text":"Grace Period","color":"#ff8c00","bold":true}

# Before first shrink: show "X minutes until Border Shrink" (timer > 12000)
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run scoreboard players operation %tmp sg = %timer sg
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run scoreboard players remove %tmp sg 12000
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run scoreboard players add %tmp sg 1199
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run scoreboard players operation %mins sg = %tmp sg
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run scoreboard players operation %mins sg /= #1200 sg
execute if score %game sg matches 1 if score %timer sg matches 12001..23800 run bossbar set sg:timer name [{"text":"","color":"#ff8c00","bold":true},{"score":{"name":"%mins","objective":"sg"},"color":"#ff8c00","bold":true},{"text":" minutes until Border Shrink","color":"#ff8c00","bold":true}]

# First shrink window: (9601..12000)
execute if score %game sg matches 1 if score %timer sg matches 9601..12000 run bossbar set sg:timer name {"text":"Border shrinking...","color":"#ff8c00","bold":true}

# Between shrinks: show "X minutes until Border Shrink" (6001..9600)
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run scoreboard players operation %tmp sg = %timer sg
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run scoreboard players remove %tmp sg 6000
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run scoreboard players add %tmp sg 1199
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run scoreboard players operation %mins sg = %tmp sg
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run scoreboard players operation %mins sg /= #1200 sg
execute if score %game sg matches 1 if score %timer sg matches 6001..9600 run bossbar set sg:timer name [{"text":"","color":"#ff8c00","bold":true},{"score":{"name":"%mins","objective":"sg"},"color":"#ff8c00","bold":true},{"text":" minutes until Border Shrink","color":"#ff8c00","bold":true}]

# Final shrink window: (1..6000)
execute if score %game sg matches 1 if score %timer sg matches 1..6000 run bossbar set sg:timer name {"text":"Border shrinking...","color":"#ff8c00","bold":true}

# Deathmatch: timer = 0
execute if score %game sg matches 1 if score %timer sg matches 0 run bossbar set sg:timer name {"text":"DEATHMATCH","color":"#ff8c00","bold":true}
# Also set time to midnight
execute if score %game sg matches 1 if score %timer sg matches 0 run time set midnight

# Dragon roar sound on deathmatch
execute if score %game sg matches 1 if score %timer sg matches 1 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

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

# Game ticking
# Decrement main timer down to 0 (stops at 0)
execute if score %game sg matches 1 if score %timer sg matches 1.. run scoreboard players remove %timer sg 1
