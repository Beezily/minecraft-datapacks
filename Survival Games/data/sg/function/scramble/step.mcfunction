# args: {i:<1..26>, r:<0..26 and r!=i>}
#
# temp2 = item from slot i (if any), slot i cleared
# slot i gets temp1 (if any), temp1 cleared
# if slot r had item:
#   temp1 = item from slot r, slot r cleared
#   slot r gets temp2 (if any), temp2 cleared
# else:
#   temp1 = temp2 (carry), temp2 cleared

data remove storage sg:scramble temp2
scoreboard players set %scr_rflag sg 0

$execute if data block ~ ~ ~ Items[{Slot:$(r)b}] run scoreboard players set %scr_rflag sg 1

$execute if data block ~ ~ ~ Items[{Slot:$(i)b}] run data modify storage sg:scramble temp2 set from block ~ ~ ~ Items[{Slot:$(i)b}]
$execute if data block ~ ~ ~ Items[{Slot:$(i)b}] run data remove block ~ ~ ~ Items[{Slot:$(i)b}]

$execute if data storage sg:scramble temp1 run data modify storage sg:scramble temp1.Slot set value $(i)b
execute if data storage sg:scramble temp1 run data modify block ~ ~ ~ Items append from storage sg:scramble temp1
execute if data storage sg:scramble temp1 run data remove storage sg:scramble temp1

$execute if score %scr_rflag sg matches 1 run data modify storage sg:scramble temp1 set from block ~ ~ ~ Items[{Slot:$(r)b}]
$execute if score %scr_rflag sg matches 1 run data remove block ~ ~ ~ Items[{Slot:$(r)b}]

$execute if score %scr_rflag sg matches 1 if data storage sg:scramble temp2 run data modify storage sg:scramble temp2.Slot set value $(r)b
execute if score %scr_rflag sg matches 1 if data storage sg:scramble temp2 run data modify block ~ ~ ~ Items append from storage sg:scramble temp2
execute if score %scr_rflag sg matches 1 if data storage sg:scramble temp2 run data remove storage sg:scramble temp2

execute if score %scr_rflag sg matches 0 if data storage sg:scramble temp2 run data modify storage sg:scramble temp1 set from storage sg:scramble temp2
execute if score %scr_rflag sg matches 0 if data storage sg:scramble temp2 run data remove storage sg:scramble temp2