# Generic death cause: fireworks
# Sets the most recent generic damage cause for @s.
# Objective needed somewhere in your load/setup function:
# scoreboard objectives add ds_cause_generic dummy
scoreboard players set @s ds_cause_generic 3
advancement revoke @s only death-swap:death_causes/generic/fireworks
execute if score %fireworks ds_cause_generic >= %lockout_limit ds run scoreboard players set @s ds_cause_generic -1
