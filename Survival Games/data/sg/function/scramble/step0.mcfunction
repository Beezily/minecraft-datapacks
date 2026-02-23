# args: {r:<1..26>}
# temp1 = slot0 (if any), slot0 cleared
# slot0 gets item from slot r (if any), slot r cleared

data remove storage sg:scramble temp1
data remove storage sg:scramble temp2

execute if data block ~ ~ ~ Items[{Slot:0b}] run data modify storage sg:scramble temp1 set from block ~ ~ ~ Items[{Slot:0b}]
execute if data block ~ ~ ~ Items[{Slot:0b}] run data remove block ~ ~ ~ Items[{Slot:0b}]

$execute if data block ~ ~ ~ Items[{Slot:$(r)b}] run data modify storage sg:scramble temp2 set from block ~ ~ ~ Items[{Slot:$(r)b}]
$execute if data block ~ ~ ~ Items[{Slot:$(r)b}] run data remove block ~ ~ ~ Items[{Slot:$(r)b}]

execute if data storage sg:scramble temp2 run data modify storage sg:scramble temp2.Slot set value 0b
execute if data storage sg:scramble temp2 run data modify block ~ ~ ~ Items append from storage sg:scramble temp2
execute if data storage sg:scramble temp2 run data remove storage sg:scramble temp2