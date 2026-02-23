# Runs as one happy ghast (@s)
# spawned_happy_ghast counts down negative to -6000

# ticks_left = 6000 + spawned_happy_ghast
scoreboard players operation %tmp sg = #6000 sg
scoreboard players operation %tmp sg += @s spawned_happy_ghast
execute if score %tmp sg matches ..0 run scoreboard players set %tmp sg 0

# Minutes branch (>= 1200 ticks)
execute if score %tmp sg matches 1200.. run scoreboard players operation @s stash = %tmp sg
execute if score %tmp sg matches 1200.. run scoreboard players operation @s stash /= #1200 sg
execute if score %tmp sg matches 1200.. store result storage sg:buffer v int 1 run scoreboard players get @s stash
execute if score %tmp sg matches 1200.. run function sg:happy_ghast/set_name_minutes with storage sg:buffer

# Seconds branch (< 1200 ticks)
execute if score %tmp sg matches ..1199 run scoreboard players operation @s stash = %tmp sg
execute if score %tmp sg matches ..1199 run scoreboard players operation @s stash /= #20 sg
execute if score %tmp sg matches ..1199 store result storage sg:buffer v int 1 run scoreboard players get @s stash
execute if score %tmp sg matches ..1199 run function sg:happy_ghast/set_name_seconds with storage sg:buffer