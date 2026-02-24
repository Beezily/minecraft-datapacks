## Survival Games - By Beezily

# (OLD) Ender chest loot mechs
#execute as @a[scores={new_chest=1..}] at @s rotated as @s anchored eyes run function sg:scripts/find_ender
#scoreboard players set @a[scores={new_chest=1..}] new_chest 0

# Admin mode loop
execute if score %admin sg matches 1..32 run function sg:scripts/admin_main

# Allow team joins only if game isn't running
execute unless score %game sg matches 1 as @a[scores={Red=1..}] run team join Red @s
execute unless score %game sg matches 1 as @a[scores={Yellow=1..}] run team join Yellow @s
execute unless score %game sg matches 1 as @a[scores={Blue=1..}] run team join Blue @s
execute unless score %game sg matches 1 as @a[scores={Green=1..}] run team join Green @s
execute unless score %game sg matches 1 as @a[scores={Aqua=1..}] run team join Aqua @s
execute unless score %game sg matches 1 as @a[scores={Purple=1..}] run team join Purple @s
execute unless score %game sg matches 1 as @a[scores={Solo=1..}] run team leave @s

execute unless score %game sg matches 1 as @a unless score @s Red matches 0 run scoreboard players enable @s Red
execute unless score %game sg matches 1 as @a unless score @s Yellow matches 0 run scoreboard players enable @s Yellow
execute unless score %game sg matches 1 as @a unless score @s Blue matches 0 run scoreboard players enable @s Blue
execute unless score %game sg matches 1 as @a unless score @s Green matches 0 run scoreboard players enable @s Green
execute unless score %game sg matches 1 as @a unless score @s Aqua matches 0 run scoreboard players enable @s Aqua
execute unless score %game sg matches 1 as @a unless score @s Purple matches 0 run scoreboard players enable @s Purple
execute unless score %game sg matches 1 as @a unless score @s Solo matches 0 run scoreboard players enable @s Solo

execute unless score %game sg matches 1 run scoreboard players set @a[scores={Red=1..}] Red 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Yellow=1..}] Yellow 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Blue=1..}] Blue 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Green=1..}] Green 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Aqua=1..}] Aqua 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Purple=1..}] Purple 0
execute unless score %game sg matches 1 run scoreboard players set @a[scores={Solo=1..}] Solo 0

# New loot spawn mechanics
execute as @a[scores={open_chest=1..}] at @s rotated as @s anchored eyes run function sg:scripts/find_chest
scoreboard players set @a[scores={open_chest=1..}] open_chest 0
# Replace loot if marker from wrong iteration, then kill (This works, but really necessary?)
execute as @e[type=minecraft:marker,tag=sgChest] unless score @s sg = %iteration sg at @s run data modify block ~ ~ ~ Items set value []
execute as @e[type=minecraft:marker,tag=sgChest] unless score @s sg = %iteration sg run kill @s

# Stashable replace mechanics (the function raycast handled with advancements)
execute as @e[type=minecraft:marker,tag=sgStash] unless score @s sg = %iteration sg at @s run data modify block ~ ~ ~ Items set value []
execute as @e[type=minecraft:marker,tag=sgStash] unless score @s sg = %iteration sg run kill @s

# Fix all anvils that break
execute as @a[scores={anvil_fix=1..}] at @s rotated as @s anchored eyes run function sg:scripts/fix_anvil
scoreboard players set @a[scores={anvil_fix=1..}] anvil_fix 0

# Kill all replaceable entities (like dogs, items, boats, etc) without current iteration, then mark all of them with iteration as well if new
execute as @e[type=#sg:entity_replace] if score @s sg matches 0.. unless score @s sg = %iteration sg run kill @s
execute as @e[type=#sg:entity_replace] unless score @s sg matches 0.. run scoreboard players operation @s sg = %iteration sg

# Do nothing if the game isn't running (reduces lag, probably not necessary)
execute unless score %game sg matches 1 run return 0

# Reward 3 levels and regeneration 2 for 4 seconds upon any kill
execute as @a[scores={kill_reward=1..}] run xp add @s 3 levels
execute as @a[scores={kill_reward=1..}] run effect give @s regeneration 4 1 false
scoreboard players set @a[scores={kill_reward=1..}] kill_reward 0

# If %enforce_players, remove players without current iteration
execute if score %enforce_players sg matches 1 as @a[gamemode=adventure] unless score @s sg = %iteration sg run team leave @s
execute if score %enforce_players sg matches 1 as @a[gamemode=adventure] unless score @s sg = %iteration sg run gamemode spectator

# Tellraw when spawn ghast
execute as @a[scores={spawned_happy_ghast=1..}] run tellraw @s {"color":"gray","text":"You have spawned a happy ghast for 5 minutes!"}
scoreboard players set @a[scores={spawned_happy_ghast=1..}] spawned_happy_ghast 0
# Happy ghast timer and name
execute as @e[type=minecraft:happy_ghast] run scoreboard players remove @s spawned_happy_ghast 1
execute as @e[type=minecraft:happy_ghast,scores={spawned_happy_ghast=..-6000}] run kill @s
execute as @e[type=minecraft:happy_ghast] run function sg:happy_ghast/update_name

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

# Force teleport during countdown
execute if score %game sg matches 1 if score %timer sg matches 24000..24100 run function sg:scripts/start_tp with storage sg:settings

# Release actions (run once when countdown hits 0)
execute if score %game sg matches 1 if score %timer sg matches 24000 run title @a title {"text":"GO!","color":"#ff8c00","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect clear @a
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:absorption 30 2 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:weakness 10 9 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:instant_health 1 99 true
execute if score %game sg matches 1 if score %timer sg matches 24000 run effect give @a minecraft:saturation 1 99 true
execute if score %game sg matches 1 if score %timer sg matches 24000 as @a run attribute @s minecraft:jump_strength base set 0.42
execute if score %game sg matches 1 if score %timer sg matches 24000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1

# Bossbar text during countdown
execute if score %game sg matches 1 if score %timer sg matches 24100 run bossbar set sg:timer name {"text":"Starting...","color":"#ff8c00","bold":true}

# Border control
# Border sounds (run before border phase gets set
# First shrink start (at 10:00 remaining)
execute if score %game sg matches 1 if score %timer sg matches 12000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
# At 10 minutes remaining (12000 ticks), shrink to half (592 -> 296) over 2 minutes (120s)
execute if score %game sg matches 1 if score %timer sg matches 12000 run function sg:scripts/shrink_worldborder_half with storage sg:settings

# Supply drop happens at 8 (9600 ticks) minutes left and drops at 6 (7200 ticks) minutes left
execute if score %game sg matches 1 if score %timer sg matches 7200..9600 as @e[type=marker,tag=sgSupply] at @s run function sg:scripts/supply_loop

# Final shrink start (at 5:00 remaining)
execute if score %game sg matches 1 if score %timer sg matches 6000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1 1
# At 5 minutes remaining (6000 ticks), shrink to 18-block radius (diameter 36) over 5 minutes (300s)
execute if score %game sg matches 1 if score %timer sg matches 6000 run function sg:scripts/shrink_worldborder_deathmatch with storage sg:settings


# PVP enabled text (clears weakness)
execute if score %game sg matches 1 if score %timer sg matches 23800 run tellraw @a {"text":"PvP is now enabled!","color":"red","bold":true}
execute if score %game sg matches 1 if score %timer sg matches 23800 as @a at @s run playsound minecraft:entity.ravager.attack master @s ~ ~ ~ 1 1 1
execute if score %game sg matches 1 if score %timer sg matches 23800 run effect clear @a minecraft:weakness

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

# Detect when the game should have ended, then set %timer to negative
execute if score %game sg matches 1 if score %winner sg matches 0 if entity @a[gamemode=adventure] as @a[gamemode=adventure,limit=1,sort=arbitrary] run function sg:end/check_winner

# Loop announce_end_main while counting down
execute if score %game sg matches 1 unless score %winner sg matches 0 run function sg:end/fireworks_tick

# When end screen has finished playing for 10 seconds end the game
execute if score %game sg matches 1 if score %timer sg matches ..-200 run function sg:end/end_game

# Game ticking
# Decrement main timer down to 0 (stops at 0)
execute if score %game sg matches 1 if score %timer sg matches 1.. run scoreboard players remove %timer sg 1
# Decrement past 0 when is negative
execute if score %game sg matches 1 if score %timer sg matches ..-1 run scoreboard players remove %timer sg 1
