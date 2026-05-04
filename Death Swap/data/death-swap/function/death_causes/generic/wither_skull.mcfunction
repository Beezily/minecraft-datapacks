# Generic death cause: wither_skull
# Sets the most recent generic damage cause for @s.
# Objective needed somewhere in your load/setup function:
# scoreboard objectives add ds_cause_generic dummy
scoreboard players set @s ds_cause_generic 23
advancement revoke @s only death-swap:death_causes/generic/wither_skull
execute if score %wither_skull ds_cause_generic >= %lockout_limit ds run scoreboard players set @s ds_cause_generic -1
