## Kikoshi Islands Survival Games - By Beezily

# Death to spectator mechanics
gamemode spectator @a[scores={died=1..}]
scoreboard players set @a[scores={died=1..}] died 0

# Do nothing if the game isn't running
execute unless score %game sg matches 1 run return 0

# Ender chest loot mechs
execute as @a[scores={new_chest=1..}] at @s rotated as @s anchored eyes run function kikoshi-sg:scripts/find_ender
scoreboard players set @a[scores={new_chest=1..}] new_chest 0

# Keep bossbar progress synced to timer (even during countdown)
execute store result bossbar kikoshi-sg:timer value run scoreboard players get %timer sg

# -------------------------
# 5-second countdown before release
# -------------------------
execute if score %started sg matches 0 if score %countdown sg matches 100 run title @a title {"text":"5","color":"#ff8c00","bold":true}
execute if score %started sg matches 0 if score %countdown sg matches 80 run title @a title {"text":"4","color":"#ff8c00","bold":true}
execute if score %started sg matches 0 if score %countdown sg matches 60 run title @a title {"text":"3","color":"#ff8c00","bold":true}
execute if score %started sg matches 0 if score %countdown sg matches 40 run title @a title {"text":"2","color":"#ff8c00","bold":true}
execute if score %started sg matches 0 if score %countdown sg matches 20 run title @a title {"text":"1","color":"#ff8c00","bold":true}

# Sound plings during countdown
execute if score %started sg matches 0 if score %countdown sg matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started sg matches 0 if score %countdown sg matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started sg matches 0 if score %countdown sg matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started sg matches 0 if score %countdown sg matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started sg matches 0 if score %countdown sg matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1


# Decrement countdown
execute if score %started sg matches 0 if score %countdown sg matches 1.. run scoreboard players remove %countdown sg 1

# Release actions (run once when countdown hits 0)
execute if score %started sg matches 0 if score %countdown sg matches 0 run title @a title {"text":"GO!","color":"#ff8c00","bold":true}
execute if score %started sg matches 0 if score %countdown sg matches 0 run effect give @a minecraft:absorption 30 2 true
execute if score %started sg matches 0 if score %countdown sg matches 0 run effect give @a minecraft:weakness 10 9 true
execute if score %started sg matches 0 if score %countdown sg matches 0 run effect give @a minecraft:instant_health 1 99 true
execute if score %started sg matches 0 if score %countdown sg matches 0 run effect give @a minecraft:saturation 1 99 true
execute if score %started sg matches 0 if score %countdown sg matches 0 run fill 159 28 177 191 28 209 minecraft:air replace minecraft:barrier
execute if score %started sg matches 0 if score %countdown sg matches 0 run scoreboard players set %grace sg 200
execute if score %started sg matches 0 if score %countdown sg matches 0 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
execute if score %started sg matches 0 if score %countdown sg matches 0 run scoreboard players set %started sg 1

# Bossbar text during countdown
execute if score %started sg matches 0 run bossbar set kikoshi-sg:timer name {"text":"Starting...","color":"#ff8c00","bold":true}

# -------------------------
# Game ticking (only after release)
# -------------------------

# Decrement main timer down to 0 (stops at 0)
execute if score %started sg matches 1 if score %timer sg matches 1.. run scoreboard players remove %timer sg 1

# Decrement grace timer (10 seconds)
execute if score %started sg matches 1 if score %grace sg matches 1.. run scoreboard players remove %grace sg 1

# -------------------------
# Border control
# -------------------------

# Border sounds (run before border phase gets set
# First shrink start (at 10:00 remaining)
execute if score %started sg matches 1 if score %border_phase sg matches 0 if score %timer sg matches 12000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# Final shrink start (at 5:00 remaining)
execute if score %started sg matches 1 if score %border_phase sg matches 2 if score %timer sg matches 6000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# At 10 minutes remaining (12000 ticks), shrink to half (592 -> 296) over 2 minutes (120s)
execute if score %started sg matches 1 if score %border_phase sg matches 0 if score %timer sg matches 12000 run worldborder set 296 120s
execute if score %started sg matches 1 if score %border_phase sg matches 0 if score %timer sg matches 12000 run scoreboard players set %border_phase sg 1

# After the first shrink completes (at 8 minutes remaining = 9600), mark "waiting for final shrink"
execute if score %started sg matches 1 if score %border_phase sg matches 1 if score %timer sg matches 9600 run scoreboard players set %border_phase sg 2

# At 5 minutes remaining (6000 ticks), shrink to 12-block radius (diameter 24) over 5 minutes (300s)
execute if score %started sg matches 1 if score %border_phase sg matches 2 if score %timer sg matches 6000 run worldborder set 30 300s
execute if score %started sg matches 1 if score %border_phase sg matches 2 if score %timer sg matches 6000 run scoreboard players set %border_phase sg 3


# PVP enabled text
execute if score %timer sg matches 23800 if score %pvp_announced sg matches 0 run tellraw @a {"text":"PvP is now enabled!","color":"red","bold":true}
execute if score %timer sg matches 23800 if score %pvp_announced sg matches 0 as @a at @s run playsound minecraft:entity.ravager.attack master @s ~ ~ ~ 1 1 1
execute if score %timer sg matches 23800 if score %pvp_announced sg matches 0 run scoreboard players set %pvp_announced sg 1

# -------------------------
# Bossbar phase text (bold orange)
# -------------------------

# Grace period text (first 10 seconds after release)
execute if score %started sg matches 1 if score %grace sg matches 1.. run bossbar set kikoshi-sg:timer name {"text":"Grace Period","color":"#ff8c00","bold":true}

# ---- Before first shrink: show "X minutes until Border Shrink" (timer > 12000)
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run scoreboard players operation %tmp sg = %timer sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run scoreboard players remove %tmp sg 12000
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run scoreboard players add %tmp sg 1199
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run scoreboard players operation %mins sg = %tmp sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run scoreboard players operation %mins sg /= #1200 sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 12001.. run bossbar set kikoshi-sg:timer name [{"text":"","color":"#ff8c00","bold":true},{"score":{"name":"%mins","objective":"sg"},"color":"#ff8c00","bold":true},{"text":" minutes until Border Shrink","color":"#ff8c00","bold":true}]

# ---- First shrink window: (9601..12000)
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 9601..12000 run bossbar set kikoshi-sg:timer name {"text":"Border shrinking...","color":"#ff8c00","bold":true}

# ---- Between shrinks: show "X minutes until Border Shrink" (6001..9600)
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run scoreboard players operation %tmp sg = %timer sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run scoreboard players remove %tmp sg 6000
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run scoreboard players add %tmp sg 1199
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run scoreboard players operation %mins sg = %tmp sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run scoreboard players operation %mins sg /= #1200 sg
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 6001..9600 run bossbar set kikoshi-sg:timer name [{"text":"","color":"#ff8c00","bold":true},{"score":{"name":"%mins","objective":"sg"},"color":"#ff8c00","bold":true},{"text":" minutes until Border Shrink","color":"#ff8c00","bold":true}]

# ---- Final shrink window: (1..6000)
execute if score %started sg matches 1 if score %grace sg matches 0 if score %timer sg matches 1..6000 run bossbar set kikoshi-sg:timer name {"text":"Border shrinking...","color":"#ff8c00","bold":true}

# ---- Deathmatch: timer = 0
execute if score %started sg matches 1 if score %timer sg matches 0 run bossbar set kikoshi-sg:timer name {"text":"DEATHMATCH","color":"#ff8c00","bold":true}
# Also set time to midnight
execute if score %started sg matches 1 if score %timer sg matches 0 run time set midnight

# Dragon roar sound on deathmatch
execute if score %started sg matches 1 if score %timer sg matches 0 if score %dm sg matches 0 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
execute if score %started sg matches 1 if score %timer sg matches 0 if score %dm sg matches 0 run scoreboard players set %dm sg 1

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
