## Tropicana One in the quiver - By Beezily

# Allow team joins only if game isn't running
execute unless score %game oitq matches 1 as @a[scores={Red=1..}] run team join Red @s
execute unless score %game oitq matches 1 as @a[scores={Yellow=1..}] run team join Yellow @s
execute unless score %game oitq matches 1 as @a[scores={Blue=1..}] run team join Blue @s
execute unless score %game oitq matches 1 as @a[scores={Green=1..}] run team join Green @s
execute unless score %game oitq matches 1 as @a[scores={Aqua=1..}] run team join Aqua @s
execute unless score %game oitq matches 1 as @a[scores={Purple=1..}] run team join Purple @s
execute unless score %game oitq matches 1 as @a[scores={Solo=1..}] run team leave @s

execute unless score %game oitq matches 1 as @a unless score @s Red matches 0 run scoreboard players enable @s Red
execute unless score %game oitq matches 1 as @a unless score @s Yellow matches 0 run scoreboard players enable @s Yellow
execute unless score %game oitq matches 1 as @a unless score @s Blue matches 0 run scoreboard players enable @s Blue
execute unless score %game oitq matches 1 as @a unless score @s Green matches 0 run scoreboard players enable @s Green
execute unless score %game oitq matches 1 as @a unless score @s Aqua matches 0 run scoreboard players enable @s Aqua
execute unless score %game oitq matches 1 as @a unless score @s Purple matches 0 run scoreboard players enable @s Purple
execute unless score %game oitq matches 1 as @a unless score @s Solo matches 0 run scoreboard players enable @s Solo

execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Red=1..}] Red 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Yellow=1..}] Yellow 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Blue=1..}] Blue 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Green=1..}] Green 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Aqua=1..}] Aqua 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Purple=1..}] Purple 0
execute unless score %game oitq matches 1 run scoreboard players set @a[scores={Solo=1..}] Solo 0

# Do nothing if the game isn't running (reduces lag, probably not necessary)
execute unless score %game oitq matches 1 run return 0

# Death tracker puts in spectator before respawn
execute as @a[scores={died=1..}] run gamemode spectator
scoreboard players set @a[scores={died=1..}] oitq 100
scoreboard players set @a[scores={died=1..}] died 0

# Decrement player respawn timer every tick
scoreboard players remove @a[scores={oitq=1..}] oitq 1

# Respawning action bar for players
execute as @a[scores={oitq=81..100}] run title @s actionbar {"text":"Respawning in 5...","color":"gray"}
execute as @a[scores={oitq=61..80}] run title @s actionbar {"text":"Respawning in 4...","color":"gray"}
execute as @a[scores={oitq=41..60}] run title @s actionbar {"text":"Respawning in 3...","color":"gray"}
execute as @a[scores={oitq=21..40}] run title @s actionbar {"text":"Respawning in 2...","color":"gray"}
execute as @a[scores={oitq=1..20}] run title @s actionbar {"text":"Respawning in 1...","color":"gray"}

# When oitq score is 0 for any player, respawn them
execute as @a[scores={oitq=0},gamemode=spectator] run function tropicana-oitq:scripts/respawn

# Kill all arrows that missed
kill @e[type=arrow,nbt={inGround:1b}]

# Keep bossbar progress synced
execute if score %game oitq matches 1 store result bossbar tropicana-oitq:timer value run scoreboard players get %timer oitq

## Start Countdown Stuff 
# Countdown (5s)
execute if score %game oitq matches 1 if score %timer oitq matches 6100 run title @a title {"text":"5","color":"gray","bold":true}
execute if score %game oitq matches 1 if score %timer oitq matches 6080 run title @a title {"text":"4","color":"gray","bold":true}
execute if score %game oitq matches 1 if score %timer oitq matches 6060 run title @a title {"text":"3","color":"gray","bold":true}
execute if score %game oitq matches 1 if score %timer oitq matches 6040 run title @a title {"text":"2","color":"gray","bold":true}
execute if score %game oitq matches 1 if score %timer oitq matches 6020 run title @a title {"text":"1","color":"gray","bold":true}

# Pling each second to each player (only themselves)
execute if score %game oitq matches 1 if score %timer oitq matches 6100 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game oitq matches 1 if score %timer oitq matches 6080 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game oitq matches 1 if score %timer oitq matches 6060 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game oitq matches 1 if score %timer oitq matches 6040 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %game oitq matches 1 if score %timer oitq matches 6020 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1

# GO
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run title @a title {"text":"GO!","color":"white","bold":true}
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
# Starting kit
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run give @a stone_sword[unbreakable={}] 1
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run give @a bow[unbreakable={},enchantments={"power":255},enchantment_glint_override=false,tooltip_display={hide_tooltip:false,hidden_components:["enchantments"]},item_name={"bold":false,"color":"white","italic":false,"text":"Bow"}] 1
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run give @a minecraft:arrow 1
# Make players hittable immediately on GO
execute if score %game oitq matches 1 if score %timer oitq matches 6000 run effect clear @a minecraft:resistance

## Main Tick Stuff 
# Show remaining time. When less than 30s left shows seconds instead
# Minutes remaining
execute if score %game oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %tmp oitq = %timer oitq
execute if score %game oitq matches 1 if score %timer oitq matches 601.. run scoreboard players add %tmp oitq 1199
execute if score %game oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %mins oitq = %tmp oitq
execute if score %game oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %mins oitq /= #1200 oitq
execute if score %game oitq matches 1 if score %timer oitq matches 601.. run bossbar set tropicana-oitq:timer name [{"text":"","color":"gray","bold":true},{"score":{"name":"%mins","objective":"oitq"},"color":"gray","bold":true},{"text":" minutes remaining","color":"gray","bold":true}]
# Seconds remaining
execute if score %game oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %tmp oitq = %timer oitq
execute if score %game oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players add %tmp oitq 19
execute if score %game oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %secs oitq = %tmp oitq
execute if score %game oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %secs oitq /= #20 oitq
execute if score %game oitq matches 1 if score %timer oitq matches 1..600 run bossbar set tropicana-oitq:timer name [{"text":"","color":"gray","bold":true},{"score":{"name":"%secs","objective":"oitq"},"color":"gray","bold":true},{"text":" seconds remaining","color":"gray","bold":true}]
# COUNTDOWN override during countdown
execute if score %game oitq matches 1 if score %timer oitq matches 6001..6100 run bossbar set tropicana-oitq:timer name {"text":"Starting...","color":"gray"}

# Time's up (run once when timer hits 0)
execute if score %game oitq matches 1 if score %timer oitq matches 0 run function tropicana-oitq:scripts/end_game

# Kill tracker gives arrow if got kill, then reset kill tracker (kills refill saturation)
execute as @a[scores={kill_track=1..}] run give @s arrow
execute as @a[scores={kill_track=1..}] run effect give @s saturation 60 9 false
scoreboard players set @a[scores={kill_track=1..}] kill_track 0

# Make it impossible to drop items
execute as @e[type=minecraft:item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=minecraft:item] run data modify entity @s PickupDelay set value 0

# Main timer tick
execute if score %game oitq matches 1 if score %timer oitq matches 1.. run scoreboard players remove %timer oitq 1
