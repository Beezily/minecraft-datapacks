# For i=1..26 pick r uniformly from 0..26 EXCLUDING i (prevents r=i weirdness).
# Then run step(i,r).

execute if score %scr_i sg matches 1..26 run data modify storage sg:scramble args set value {}

execute if score %scr_i sg matches 1..26 store result score %scr_r sg run random value 0..25
execute if score %scr_i sg matches 1..26 if score %scr_r sg >= %scr_i sg run scoreboard players add %scr_r sg 1

execute if score %scr_i sg matches 1..26 store result storage sg:scramble args.i int 1 run scoreboard players get %scr_i sg
execute if score %scr_i sg matches 1..26 store result storage sg:scramble args.r int 1 run scoreboard players get %scr_r sg

execute if score %scr_i sg matches 1..26 run function sg:scramble/step with storage sg:scramble args
execute if score %scr_i sg matches 1..26 run scoreboard players add %scr_i sg 1
execute if score %scr_i sg matches 1..26 run function sg:scramble/loop

execute if score %scr_i sg matches 27 run function sg:scramble/finish