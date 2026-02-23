# args: {slot:<0..26>}
# If temp1 exists AND slot is empty: set temp1.Slot and mark success=1.
# (Wrapper does the actual append + remove.)

$execute if data storage sg:scramble temp1 unless data block ~ ~ ~ Items[{Slot:$(slot)b}] run data modify storage sg:scramble temp1.Slot set value $(slot)b
$execute if data storage sg:scramble temp1 unless data block ~ ~ ~ Items[{Slot:$(slot)b}] run scoreboard players set %scr_success sg 1