# If temp1 exists, try 5 random empty slots; if still not placed, fall back to first empty.

execute if data storage sg:scramble temp1 run scoreboard players set %scr_attempt sg 5
execute if data storage sg:scramble temp1 run function sg:scramble/try_random_insert
execute if data storage sg:scramble temp1 run function sg:scramble/fallback_first_empty