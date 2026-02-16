## Tropicana One in the quiver - By Beezily

# Only run if game active
execute unless score %game oitq matches 1 run return 0

# Kill all arrows that missed
kill @e[type=arrow,nbt={inGround:1b}]

# Keep bossbar progress synced
execute store result bossbar tropicana-oitq:timer value run scoreboard players get %timer oitq

# -------------------------
# Countdown (5s)
# -------------------------
execute if score %started oitq matches 0 if score %countdown oitq matches 100 run title @a title {"text":"5","color":"gray","bold":true}
execute if score %started oitq matches 0 if score %countdown oitq matches 80 run title @a title {"text":"4","color":"gray","bold":true}
execute if score %started oitq matches 0 if score %countdown oitq matches 60 run title @a title {"text":"3","color":"gray","bold":true}
execute if score %started oitq matches 0 if score %countdown oitq matches 40 run title @a title {"text":"2","color":"gray","bold":true}
execute if score %started oitq matches 0 if score %countdown oitq matches 20 run title @a title {"text":"1","color":"gray","bold":true}

# Pling each second to each player (only themselves)
execute if score %started oitq matches 0 if score %countdown oitq matches 100 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started oitq matches 0 if score %countdown oitq matches 80 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started oitq matches 0 if score %countdown oitq matches 60 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started oitq matches 0 if score %countdown oitq matches 40 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1
execute if score %started oitq matches 0 if score %countdown oitq matches 20 run execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1

# Decrement countdown
execute if score %started oitq matches 0 if score %countdown oitq matches 1.. run scoreboard players remove %countdown oitq 1

# GO (once)
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run title @a title {"text":"GO!","color":"white","bold":true}
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1

# Starting kit (give once on GO)
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run give @a stone_sword[unbreakable={}] 1
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run give @a bow[unbreakable={},enchantments={"power":255},enchantment_glint_override=false,tooltip_display={hide_tooltip:false,hidden_components:["enchantments"]},item_name={"bold":false,"color":"white","italic":false,"text":"Bow"}] 1
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run give @a minecraft:arrow 1

# Mark started
execute if score %started oitq matches 0 if score %countdown oitq matches 0 run scoreboard players set %started oitq 1

# Bossbar during countdown
execute if score %started oitq matches 0 run bossbar set tropicana-oitq:timer name {"text":"Starting...","color":"gray"}

# -------------------------
# Main timer tick (after GO)
# -------------------------
execute if score %started oitq matches 1 if score %timer oitq matches 1.. run scoreboard players remove %timer oitq 1

# -------------------------
# Bossbar text updates
# - Above 30s remaining: show minutes remaining
# - At 30s or less: show seconds remaining (updates every tick)
# -------------------------

# Minutes remaining (timer >= 601 ticks, i.e., > 30s)
execute if score %started oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %tmp oitq = %timer oitq
execute if score %started oitq matches 1 if score %timer oitq matches 601.. run scoreboard players add %tmp oitq 1199
execute if score %started oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %mins oitq = %tmp oitq
execute if score %started oitq matches 1 if score %timer oitq matches 601.. run scoreboard players operation %mins oitq /= #1200 oitq
execute if score %started oitq matches 1 if score %timer oitq matches 601.. run bossbar set tropicana-oitq:timer name [{"text":"","color":"gray","bold":true},{"score":{"name":"%mins","objective":"oitq"},"color":"gray","bold":true},{"text":" minutes remaining","color":"gray","bold":true}]

# Seconds remaining (timer 1..600 ticks)
execute if score %started oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %tmp oitq = %timer oitq
execute if score %started oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players add %tmp oitq 19
execute if score %started oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %secs oitq = %tmp oitq
execute if score %started oitq matches 1 if score %timer oitq matches 1..600 run scoreboard players operation %secs oitq /= #20 oitq
execute if score %started oitq matches 1 if score %timer oitq matches 1..600 run bossbar set tropicana-oitq:timer name [{"text":"","color":"gray","bold":true},{"score":{"name":"%secs","objective":"oitq"},"color":"gray","bold":true},{"text":" seconds remaining","color":"gray","bold":true}]

# -------------------------
# Time's up (run once when timer hits 0)
# -------------------------
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run title @a title {"text":"Times up!","color":"gray","bold":true}
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run clear @a
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 1 1
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run bossbar set tropicana-oitq:timer visible false
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run effect give @a minecraft:resistance infinite 4 true
execute if score %started oitq matches 1 if score %timer oitq matches 0 if score %ended oitq matches 0 run scoreboard players set %ended oitq 1

# Kill tracker gives arrow if got kill, then reset kill tracker
execute as @a[scores={kill_track=1..}] run give @s arrow
execute as @a[scores={kill_track=1..}] run effect give @s saturation 60 9 false
scoreboard players set @a[scores={kill_track=1..}] kill_track 0

# Death tracker puts in spectator before respawn
execute as @a[scores={died=1..}] run gamemode spectator
scoreboard players set @a[scores={died=1..}] oitq 100
scoreboard players set @a[scores={died=1..}] died 0

# ---------------------------------------
# Respawn countdown for players in "death timer"
# oitq = ticks remaining until respawn
# ---------------------------------------

# Decrement timer every tick (stops at 0)
scoreboard players remove @a[scores={oitq=1..}] oitq 1

# Show actionbar once per second:
# 5s -> score 100..81
# 4s -> 80..61
# 3s -> 60..41
# 2s -> 40..21
# 1s -> 20..1

execute as @a[scores={oitq=81..100}] run title @s actionbar {"text":"Respawning in 5...","color":"gray"}
execute as @a[scores={oitq=61..80}] run title @s actionbar {"text":"Respawning in 4...","color":"gray"}
execute as @a[scores={oitq=41..60}] run title @s actionbar {"text":"Respawning in 3...","color":"gray"}
execute as @a[scores={oitq=21..40}] run title @s actionbar {"text":"Respawning in 2...","color":"gray"}
execute as @a[scores={oitq=1..20}] run title @s actionbar {"text":"Respawning in 1...","color":"gray"}

# When finished (timer hits 0), run your respawn function once.
# To avoid re-running every tick, only run it on players who are currently spectator.
execute as @a[scores={oitq=0},gamemode=spectator] run function tropicana-oitq:scripts/respawn
