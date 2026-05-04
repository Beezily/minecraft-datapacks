# Generic death cause: freezing
# Sets the most recent generic damage cause for @s.
# Objective needed somewhere in your load/setup function:
# scoreboard objectives add ds_cause_generic dummy
scoreboard players set @s ds_cause_generic 12
advancement revoke @s only death-swap:death_causes/generic/freezing
execute if score %freezing ds_cause_generic >= %lockout_limit ds run scoreboard players set @s ds_cause_generic -1
