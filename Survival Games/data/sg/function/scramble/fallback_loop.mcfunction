execute unless data storage sg:scramble temp1 run return 0
execute if score %scr_j sg matches 27.. run return 0

scoreboard players set %scr_success sg 0
data modify storage sg:scramble args set value {}
execute store result storage sg:scramble args.slot int 1 run scoreboard players get %scr_j sg

function sg:scramble/attempt_insert_slot with storage sg:scramble args

execute if score %scr_success sg matches 1 run data modify block ~ ~ ~ Items append from storage sg:scramble temp1
execute if score %scr_success sg matches 1 run data remove storage sg:scramble temp1

execute if score %scr_success sg matches 0 run scoreboard players add %scr_j sg 1
execute if score %scr_success sg matches 0 run function sg:scramble/fallback_loop