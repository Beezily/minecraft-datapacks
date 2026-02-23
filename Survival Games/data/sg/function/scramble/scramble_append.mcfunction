# newSlot = (ofs + step*i + 3*i*i) % 27
# Needs constants: #27 sg=27, #3 sg=3

scoreboard players operation %scr_slot sg = %scr_i sg
scoreboard players operation %scr_slot sg *= %scr_i sg
scoreboard players operation %scr_slot sg *= #3 sg

scoreboard players operation %scr_tmp sg = %scr_i sg
scoreboard players operation %scr_tmp sg *= %scr_step sg

scoreboard players operation %scr_slot sg += %scr_tmp sg
scoreboard players operation %scr_slot sg += %scr_ofs sg
scoreboard players operation %scr_slot sg %= #27 sg

execute store result storage sg:scramble stack.Slot byte 1 run scoreboard players get %scr_slot sg
data modify storage sg:scramble out append from storage sg:scramble stack