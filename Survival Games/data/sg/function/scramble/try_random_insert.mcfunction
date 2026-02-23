# Attempts left in %scr_attempt. Stops if temp1 gone or attempts hit 0.

execute unless data storage sg:scramble temp1 run return 0
execute if score %scr_attempt sg matches 0 run return 0

scoreboard players set %scr_success sg 0
data modify storage sg:scramble args set value {}
execute store result storage sg:scramble args.slot int 1 run random value 0..26

function sg:scramble/attempt_insert_slot with storage sg:scramble args

execute if score %scr_success sg matches 1 run data modify block ~ ~ ~ Items append from storage sg:scramble temp1
execute if score %scr_success sg matches 1 run data remove storage sg:scramble temp1

execute if score %scr_success sg matches 0 run scoreboard players remove %scr_attempt sg 1
execute if score %scr_success sg matches 0 run function sg:scramble/try_random_insert