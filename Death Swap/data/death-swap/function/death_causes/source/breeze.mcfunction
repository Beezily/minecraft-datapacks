# Logs the most recent damage source entity as: Breeze
# Category id: 4
scoreboard players set @s ds_cause_source 4
advancement revoke @s only death-swap:death_causes/source/breeze
execute if score %breeze ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
