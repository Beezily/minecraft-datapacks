# Clears temps, does i=0 setup, then loops i=1..26, then inserts leftover temp1.

data remove storage sg:scramble temp1
data remove storage sg:scramble temp2
data modify storage sg:scramble args set value {}

# Step 0: choose r in 1..26 (avoids r=0 self-case)
execute store result score %scr_r sg run random value 1..26
execute store result storage sg:scramble args.r int 1 run scoreboard players get %scr_r sg
function sg:scramble/step0 with storage sg:scramble args

# Loop from i=1..26
scoreboard players set %scr_i sg 1
function sg:scramble/loop