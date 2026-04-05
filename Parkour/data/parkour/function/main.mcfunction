## Parkour - By Beezily

# Admin mode loop
execute if entity @a[scores={admin=1..}] if score %admin parkour matches 1..8 run function parkour:scripts/admin_main

# Allow team joins only if game isn't running
execute unless score %game parkour matches 1 as @a[scores={Red=1..}] run team join Red @s
execute unless score %game parkour matches 1 as @a[scores={Yellow=1..}] run team join Yellow @s
execute unless score %game parkour matches 1 as @a[scores={Blue=1..}] run team join Blue @s
execute unless score %game parkour matches 1 as @a[scores={Green=1..}] run team join Green @s
execute unless score %game parkour matches 1 as @a[scores={Aqua=1..}] run team join Aqua @s
execute unless score %game parkour matches 1 as @a[scores={Purple=1..}] run team join Purple @s
execute unless score %game parkour matches 1 as @a[scores={Solo=1..}] run team leave @s

execute unless score %game parkour matches 1 as @a unless score @s Red matches 0 run scoreboard players enable @s Red
execute unless score %game parkour matches 1 as @a unless score @s Yellow matches 0 run scoreboard players enable @s Yellow
execute unless score %game parkour matches 1 as @a unless score @s Blue matches 0 run scoreboard players enable @s Blue
execute unless score %game parkour matches 1 as @a unless score @s Green matches 0 run scoreboard players enable @s Green
execute unless score %game parkour matches 1 as @a unless score @s Aqua matches 0 run scoreboard players enable @s Aqua
execute unless score %game parkour matches 1 as @a unless score @s Purple matches 0 run scoreboard players enable @s Purple
execute unless score %game parkour matches 1 as @a unless score @s Solo matches 0 run scoreboard players enable @s Solo

execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Red=1..}] Red 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Yellow=1..}] Yellow 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Blue=1..}] Blue 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Green=1..}] Green 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Aqua=1..}] Aqua 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Purple=1..}] Purple 0
execute unless score %game parkour matches 1 run scoreboard players set @a[scores={Solo=1..}] Solo 0

# Do nothing if the game isn't running (reduces lag, probably not necessary)
execute unless score %game parkour matches 1.. run return 0

# Snowball stuff
execute as @a[scores={parkour_snowball=1..}] run kill @s
scoreboard players set @a[scores={parkour_snowball=1..}] parkour_snowball 0
execute as @a unless items entity @s container.* snowball run give @s snowball[custom_name={"bold":true,"color":"gold","italic":false,"text":"Respawn Snowball"},lore=[{"color":"gray","italic":false,"text":"Throw this snowball to instantly"},{"color":"gray","italic":false,"text":"respawn to your last checkpoint!"}],enchantment_glint_override=true] 1
kill @e[type=snowball]

# Saturation
effect give @a saturation infinite 0 true

# Make it impossible to drop items
execute as @e[type=minecraft:item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=minecraft:item] run data modify entity @s PickupDelay set value 0

# Water kill
execute if score %water_kill parkour matches 1 as @a at @s if block ~ ~ ~ water run kill @s
execute if score %water_kill parkour matches 1 as @a at @s if block ~ ~1 ~ water run kill @s

# Update bossbar
execute store result bossbar parkour:timer value run scoreboard players get %timer parkour
# Compute seconds remaining (round up) secs = (ticks + 19) / 20
scoreboard players operation %temp parkour = %timer parkour
scoreboard players add %temp parkour 19
scoreboard players operation %temp parkour /= #20 parkour
# Bossbar name: "Time Left: Xs" (bold red)
bossbar set parkour:timer name [{"text":"Time Left: ","color":"red","bold":true},{"score":{"name":"%temp","objective":"parkour"},"color":"red","bold":true},{"text":"s","color":"red","bold":true}]

# Sounds and warnings
execute if score %timer parkour matches 100 run tellraw @a [{"text":"Game ends in 5...","color":"red","bold":true}]
execute if score %timer parkour matches 80 run tellraw @a [{"text":"Game ends in 4...","color":"red","bold":true}]
execute if score %timer parkour matches 60 run tellraw @a [{"text":"Game ends in 3...","color":"red","bold":true}]
execute if score %timer parkour matches 40 run tellraw @a [{"text":"Game ends in 2...","color":"red","bold":true}]
execute if score %timer parkour matches 20 run tellraw @a [{"text":"Game ends in 1...","color":"red","bold":true}]
execute if score %timer parkour matches 100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer parkour matches 80 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer parkour matches 60 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer parkour matches 40 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score %timer parkour matches 20 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1

# Checkpoint mechanics
execute as @e[type=marker,tag=parkourCheck1] at @s as @a[distance=..0.8,scores={checkpoint=0}] run function parkour:checkpoint/check1
execute as @e[type=marker,tag=parkourCheck2] at @s as @a[distance=..0.8,scores={checkpoint=1}] run function parkour:checkpoint/check2
execute as @e[type=marker,tag=parkourCheck3] at @s as @a[distance=..0.8,scores={checkpoint=2}] run function parkour:checkpoint/check3
execute as @e[type=marker,tag=parkourCheck4] at @s as @a[distance=..0.8,scores={checkpoint=3}] run function parkour:checkpoint/check4
execute as @e[type=marker,tag=parkourCheck5] at @s as @a[distance=..0.8,scores={checkpoint=4}] run function parkour:checkpoint/check5

# Invisible and boots
effect give @a invisibility 1 0 true
execute as @a[team=Red] unless items entity @s armor.feet *[custom_data~{parkourRed:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=16733525,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#FF5555","italic":false,"text":"Red Team"},custom_data={parkourRed:1b},unbreakable={}] 1
execute as @a[team=Yellow] unless items entity @s armor.feet *[custom_data~{parkourYellow:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=16777045,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#FFFF55","italic":false,"text":"Yellow Team"},custom_data={parkourYellow:1b},unbreakable={}] 1
execute as @a[team=Blue] unless items entity @s armor.feet *[custom_data~{parkourBlue:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=5592575,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#5555FF","italic":false,"text":"Blue Team"},custom_data={parkourBlue:1b},unbreakable={}] 1
execute as @a[team=Green] unless items entity @s armor.feet *[custom_data~{parkourGreen:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=5635925,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#55FF55","italic":false,"text":"Green Team"},custom_data={parkourGreen:1b},unbreakable={}] 1
execute as @a[team=Aqua] unless items entity @s armor.feet *[custom_data~{parkourAqua:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=5636095,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#55FFFF","italic":false,"text":"Aqua Team"},custom_data={parkourAqua:1b},unbreakable={}] 1
execute as @a[team=Purple] unless items entity @s armor.feet *[custom_data~{parkourPurple:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=16733695,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#FF55FF","italic":false,"text":"Purple Team"},custom_data={parkourPurple:1b},unbreakable={}] 1
execute as @a[team=] unless items entity @s armor.feet *[custom_data~{parkourSolo:1b}] run item replace entity @s armor.feet with leather_boots[dyed_color=16777215,enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_name={"color":"#FFFFFF","italic":false,"text":"Solo Team"},custom_data={parkourSolo:1b},unbreakable={}] 1

# Time's up (run once when timer hits 0)
execute if score %game parkour matches 2 if score %timer parkour matches 0 run function parkour:scripts/end_game

# Main timer tick if in final parkour stage
execute if score %game parkour matches 2 if score %timer parkour matches 1.. run scoreboard players remove %timer parkour 1
