# Generic death cause: falling_anvil
# Sets the most recent generic damage cause for @s.
# Objective needed somewhere in your load/setup function:
# scoreboard objectives add ds_cause_generic dummy
scoreboard players set @s ds_cause_generic 17
advancement revoke @s only death-swap:death_causes/generic/falling_anvil
execute if score %falling_anvil ds_cause_generic >= %lockout_limit ds run scoreboard players set @s ds_cause_generic -1
