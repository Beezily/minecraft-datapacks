# Logs the most recent damage source entity as: Ravager
# Category id: 19
scoreboard players set @s ds_cause_source 19
advancement revoke @s only death-swap:death_causes/source/ravager
execute if score %ravager ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
