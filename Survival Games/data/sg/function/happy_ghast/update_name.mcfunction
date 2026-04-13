# Runs as one happy ghast (@s)
# spawned_happy_ghast counts down negative to -6000

# ticks_left = 6000 + spawned_happy_ghast
scoreboard players operation %tmp sg = #6000 sg
scoreboard players operation %tmp sg += @s spawned_happy_ghast
execute if score %tmp sg matches ..0 run scoreboard players set %tmp sg 0

# Warning messages
execute if score @s spawned_happy_ghast matches -4800 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"1 minute","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -4800 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5400 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"30 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5400 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5800 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"10 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5800 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5820 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"9 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5820 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5840 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"8 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5840 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5860 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"7 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5860 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5880 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"6 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5880 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5900 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"5 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5900 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5920 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"4 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5920 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5940 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"3 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5940 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5960 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"2 seconds","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5960 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

execute if score @s spawned_happy_ghast matches -5980 run execute at @s run tellraw @a[distance=..8] [{"text":"A nearby happy ghast will expire in ","color":"red","bold":false},{"text":"1 second","color":"yellow","bold":false},{"text":"!","color":"red","bold":false}]
execute if score @s spawned_happy_ghast matches -5980 run execute at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 1

# Minutes branch (>= 1200 ticks)
execute if score %tmp sg matches 1200.. run scoreboard players operation @s stash = %tmp sg
execute if score %tmp sg matches 1200.. run scoreboard players operation @s stash /= #1200 sg
execute if score %tmp sg matches 1200.. store result storage sg:buffer v int 1 run scoreboard players get @s stash
execute if score %tmp sg matches 1200.. run function sg:happy_ghast/set_name_minutes with storage sg:buffer

# Seconds branch (< 1200 ticks), rounded up
execute if score %tmp sg matches ..1199 run scoreboard players operation @s stash = %tmp sg
execute if score %tmp sg matches ..1199 run scoreboard players add @s stash 19
execute if score %tmp sg matches ..1199 run scoreboard players operation @s stash /= #20 sg
execute if score %tmp sg matches ..1199 store result storage sg:buffer v int 1 run scoreboard players get @s stash
execute if score %tmp sg matches ..1199 run function sg:happy_ghast/set_name_seconds with storage sg:buffer